class Customers::CartItemsController < ApplicationController
    def index
        @cart_items = CartItem.all
    end
    def create
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.customer_id = current_user.:id
        @cart_item.save
        redirect_to customer_cart_items_path
    end
    private
        def
            params.require(:cart_item)permit.(:amount)
        end
end
