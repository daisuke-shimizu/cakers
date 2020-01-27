class Customers::OrdersController < ApplicationController
    def new
        @address = Adderess.new
    end
    def create
        @order = Order.new
        @order.customer_id = current_customer.id
        @order.shipping_cost = 800
        # @order.total_payment = current_customer.cart_items 
        @order.payment_method = params[:payment_method]
        @order.
    end
    
end
