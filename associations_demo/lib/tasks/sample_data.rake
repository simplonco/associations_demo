namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    15.times do |n|
      myname = Faker::Name.first_name + " " + Faker::Name.last_name
      
      cust = Customer.create!(name: myname)

      r= rand(10)

      r.times do
        cust_id= cust.id 
        orderdate = rand(10.years).ago
        ord = Order.create!(customer_id: cust_id ,
                            order_date: orderdate)
      end
    end

    10.times do |n|
      suppl_name = Faker::Name.last_name
      sup= Supplier.create!(name: suppl_name)

      account_num = "Simplon_Suplier_" + rand(1000).to_s
      cred_rating = rand(5)

      acc = Account.create!(supplier_id: sup.id, account_number: account_num)
      ah = AccountHistory.create!(account_id: acc.id, credit_rating: cred_rating)
    end
  end
end 