class ApplicationController < ActionController::Base 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
    before_action :authenticated?, :current_customer, :current_shopping_cart 
    def current_customer 
        if session[:user_id] @customer = Customer.find(session[:user_id]) 
        end 
    end 
    def current_shopping_cart 
        if login? @shopping_cart = @customer.shopping_cart 

        else 
          
            if session[:shopping_cart] 
                @shopping_cart = ShoppingCart.find(session[:shopping_cart]) 
        
            else 
                @shopping_cart = ShoppingCart.create session[:shopping_cart] = @shopping_cart.id 
        end 
    end 
end 
    def login? 
        !!current_customer 
    end 

    def authenticated? 
        redirect_to store_login_path unless login?
    end 

    private
    
        def render_unprocessable_entity(invalid)
            render json: {errors: invalid.record.errors}, status: :unprocessable_entity
        end 
    
        def render_not_found(error)
            byebug
            render json: {error: "#{error.model} Not Found"}, status: :not_found
        end 
    end
    