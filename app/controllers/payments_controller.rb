class PaymentsController < ApplicationController
    require 'rqrcode_png'
    skip_before_action :verify_authenticity_token
    def stripe
        user_id = params[:data][:object][:client_reference_id]
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        product_id = payment.metadata.product_id
        cartIds = product_id.split(",")
        cartIds.each do |item|
            # get product info
            @purchased = Cart.find(item)
            # insert into ProductPurchasedListing
            ProductPurchasedListing.create(company_name: @purchased.company_name, product_name: @purchased.product_name, description: @purchased.description, was_price: @purchased.was_price, price: @purchased.price, reference_number: @purchased.reference_number, expiry_date: @purchased.expiry_date, qrcode: @purchased.qrcode, user_id: user_id)
            # destroy cart item id in cart model
            @purchased.destroy
        end
    end

    def payment
        # if not signed in
        if current_user == nil
            redirect_to user_session_path
        else
            ###################################################
            ######### Just incase hacking in the browser#######
            ###################################################
            @carts = Cart.where(user_id: current_user.id)
            # cart quantity check
            @quantity = Cart.where(user_id: current_user.id).count
            # seller check needed - no adding to cart for seller
            @sellerCheck = Seller.where(user_id: current_user.id).first
            # get sum for stripe
            userCart = Cart.where(user_id: current_user.id)
            # grand total
            @sumForStripe = 0
            # cart savings calculations for display only
            @savings = 0
            userCart.each do |price|
            @sumForStripe += price[:price].to_i
            @savings += price[:was_price].to_i
            end

            # grab all cart id's for user now, just in case user adds more deals while in stripe.
            userDeals = Cart.where(user_id: current_user.id)
            @dealIds = []
            userDeals.each do |deal|
            @dealIds << deal[:id]
            end
            stripe_session = Stripe::Checkout::Session.create(
                payment_method_types: ['card'],
                client_reference_id: current_user.id,
                line_items: [{
                    name: "Kendo Deals PTY LTD",
                    description: "Number of Kendo Deals #{@quantity}",
                    amount: @sumForStripe*100,
                    currency: 'aud',
                    quantity: 1,
                }],
                payment_intent_data: {
                    metadata: {
                        product_id: @dealIds.join(",")
                    }
                },
                success_url: 'http://localhost:3000/payments/success',
                cancel_url: 'http://localhost:3000/cancel'
            )
            @stripe_session_id = stripe_session.id
        end
    end

    def success
        if current_user != nil
            # cart quantity check
            @quantity = Cart.where(user_id: current_user.id).count
            # seller check needed - no adding to cart for seller
            @sellerCheck = Seller.where(user_id: current_user.id).first
        end
    end
end
