class ApplicationController < ActionController::Base
    
    def after_sign_in_path_for(resource)
        if current_user.id != nil
            # check if user has a business package
            check1 = User.where(id: current_user.id).first
        else
            check1 = User.where(email: params["user"]["email"]).first
        end
        check2 = Seller.where(user_id: check1.id).first
        # check if user has never signed up
        if params["commit"] == 'Sign up'
            signup = User.find_by(email: params["user"]["email"])
            # byebug
            checks_path(:id => signup[:id])
        elsif check2 == nil
            # send to buyers listings
            product_purchased_listings_path
        else
            # send to sellers listings
            product_listings_path(:seller_id => check2.id)
        end
    end

    private
    def after_sign_out_path_for(resources_or_scope)
        new_user_session_path
    end
end
