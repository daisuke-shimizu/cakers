class Customers::CartItemsController < ApplicationController
    before_action :authenticate_customer!	
    def index
        @cart_items = CartItem.all
    end

    def create
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.customer_id = current_customer.id 
        @cart_item.save
        redirect_to customers_cart_items_path
    end

    def destroy
    end

    private
        def cart_item_params
            params.require(:cart_item).permit(:amount,:item_id)
        end  
end
