class Customers::CartItemsController < ApplicationController
    before_action :authenticate_customer!	
    def index
        @cart_items = current_customer.cart_items
    end

    def create
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.customer_id = current_customer.id 
        
        exist_item = CartItem.find_by(item_id:@cart_item.item_id,customer_id:@cart_item.customer_id)
        if exist_item.present?
            
            exist_item.amount =  exist_item.amount + @cart_item.amount
            exist_item.update(amount: exist_item.amount)
        else
            @cart_item.save
        end
        
        redirect_to customers_cart_items_path
    end

    def destroy
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
        redirect_to customers_cart_items_path
    end

    def destroy_all
        
        cart_items = current_customer.cart_items.destroy_all
        redirect_to root_path
    end

    private
        def cart_item_params
            params.require(:cart_item).permit(:amount,:item_id)
        end  
end
