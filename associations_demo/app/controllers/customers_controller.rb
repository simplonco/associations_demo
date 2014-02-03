class CustomersController < ApplicationController
def show
	@customer= Customer.find(params[:id])
	@orders= Order.where(customer_id: @customer.id) 
end 

end
