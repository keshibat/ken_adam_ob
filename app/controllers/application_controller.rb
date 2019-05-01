class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        # r = Seller.all
        # x = Seller.joins(:users).where(email: params["user"]["email"]).first
        if params["commit"] == 'Sign up'
            check = User.find_by(email: params["user"]["email"])
            # byebug
            pages_path(:id => check[:id])
        elsif Seller.joins(:users).where(email: params["user"]["email"]).first
            user_root_path
        else
            user_root_path
        end
    end

    private
    def after_sign_out_path_for(resources_or_scope)
        new_user_session_path
    end
end
