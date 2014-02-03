class OrdersController < ApplicationController
	def show
		@order= Order.find(params[:id])
		@customer = Customer.find(@order.customer_id)
	end
end
