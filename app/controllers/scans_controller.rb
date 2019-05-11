class ScansController < ApplicationController
    def outcome
        if current_user != nil
            # cart quantity check
            @quantity = Cart.where(user_id: current_user.id).count
            # seller check needed - no adding to cart for seller
            @sellerCheck = Seller.where(user_id: current_user.id).first
        end
        # check if deal exists or has already been used
        @outcome = ProductPurchasedListing.where(reference_number: params[:ref]).first
        if @outcome == nil || @outcome.reference_number == "used"
            @outcome_check = "used"
        else
            @outcome_check = "accept"
            @outcome_update = ProductPurchasedListing.update(@outcome.id, :reference_number => "used")
            @outcome_update.save
        end
    end
end