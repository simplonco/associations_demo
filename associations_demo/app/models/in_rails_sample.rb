class InRailsSample
def self.customer_url
	no_command = true
	until no_command == false
		n = rand(Customer.count)
		if Order.where(customer_id: n).count != 0
			no_command = false 
		end
	end

	"/customers/#{n}" 	
end
end