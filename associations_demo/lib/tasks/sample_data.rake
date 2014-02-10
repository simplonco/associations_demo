namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    populateCustomer if Customer.count < 10
    populateSupplier if Supplier.count < 10
    populateAssembly if AssembliesAndPart.count  < 10

  end
end 

def populateCustomer
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
end 

def populateSupplier
  10.times do |n|
    suppl_name = Faker::Name.last_name
    sup= Supplier.create!(name: suppl_name)

    account_num = "Simplon_Suplier_" + rand(1000).to_s
    cred_rating = rand(5)

    acc = Account.create!(supplier_id: sup.id, account_number: account_num)
    ah = AccountHistory.create!(account_id: acc.id, credit_rating: cred_rating)
  end  
end

def populateAssembly
  10.times do |n|
    part_n = Faker::Name.last_name + "_OO" + rand(100).to_s
    p = Part.create!(part_number:part_n)
  end

  10.times do |n|
    na = Faker::Name.first_name
    a = Assembly.create!(name:na)
  end

  30.times do |n|
    pa = AssembliesAndPart.create!(assembly_id:rand(10), part_id:rand(10) )
  end
  
end