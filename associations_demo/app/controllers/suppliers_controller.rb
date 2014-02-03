class SuppliersController < ApplicationController
	def show
		@supplier= Supplier.find(params[:id])
		# binding.pry
		@account = Account.find_by supplier_id: @supplier.id
	end
end
