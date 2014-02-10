namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    15.times do |n|
      myname = Faker::Name.first_name + " " + Faker::Name.last_name
      
      cust = Customer.create!(name: myname)

      r= rand(10)

      r.times do
        cust_id= cust.id 
        mo= rand(12)
        if mo < 10 then 
          mo = "0" + mo.to_s
        else
          mo = mo.to_s
        end 
        orderdate = rand(10.years).ago
        ord = Order.create!(customer_id: cust_id ,
                            order_date: orderdate)
      end
    end
  end
end 