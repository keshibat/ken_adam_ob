class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def stripe
        user_id = params[:data][:object][:client_reference_id]
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        product_id = payment.metadata.product_id
        @purchased = ProductListing.find(product_id)
        @listing = ProductPurchasedListing.create(product_name: @purchased.product_name, description: @purchased.description, was_price: @purchased.was_price, price: @purchased.price, reference_number: "222222", expiry_date: @purchased.expiry_date, user_id: user_id)
        # p "listing id " + listing_id
        # p "user id " + user_id
        # render json: ""
    end

    def payment
        @get1 = ProductListing.find(params[:id])
        @company = Seller.where(id: @get1.seller_id).first
        # for stripe
        @chosenProduct = ProductListing.find(params[:id])
        stripe_session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            client_reference_id: current_user.id,
            line_items: [{
                name: @chosenProduct.product_name,
                description: @chosenProduct.description,
                amount: @chosenProduct.price,
                currency: 'aud',
                quantity: 1,
            }],
            payment_intent_data: {
                metadata: {
                    product_id: @chosenProduct.id
                }
            },
            success_url: 'http://localhost:3000/product_purchased_listings',
            cancel_url: 'http://localhost:3000/cancel'
            )
            @stripe_session_id = stripe_session.id
    end

    def success
    end
end
