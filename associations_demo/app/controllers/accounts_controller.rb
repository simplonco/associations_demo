class AccountsController < ApplicationController

	def show
		@account =  Account.find(params[:id])
		@supplier = Supplier.find(@account.supplier_id)
		@account_history = AccountHistory.find_by account_id: @account.id
	end

end
