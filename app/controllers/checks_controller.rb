class ChecksController < ApplicationController
    def index
        if current_user != nil
            # cart quantity check
            @quantity = Cart.where(user_id: current_user.id).count
            # seller check needed - no adding to cart for seller
            @sellerCheck = Seller.where(user_id: current_user.id).first
        end
    end
end