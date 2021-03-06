class ApplicationController < ActionController::Base
    before_action :authorize, :set_cart

    def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice: "Please log in"
        end
    end

    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue
        @cart = Cart.create()
        session[:cart_id] = @cart.id
        return @cart
    end
end
