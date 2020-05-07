require 'pry' 
class CommandLineInterface  

def blank_line 
    puts "" 
end 

def greet 
    puts "Welcome to the Item Store!"
end 

def description 
    "The Item Store is a place where a Customer can go to purchase an Item through a Sale. As an owner, the user can modify information in the customers table. "
end 


def menu 
    puts "Please select one: "
    puts "(C)reate new customer" 
    puts "(R)ead all customer names" 
    puts "(U)pdate a customers info"
    puts "(D)elete last customer"
    input = gets.chomp 
    
    add_customer if input.upcase == "C" 
    puts all_customer_names if input.upcase == "R"
    update_contact_info if input.upcase == "U"
    delete_last_customer if input.upcase == "D"  
    input 
end 

def show_all_customers 
    Customer.all 
end 

def all_customer_names 
    Customer.all.map {|customer| customer.name}
end 

def add_customer
    puts "Customer Name? "
    name = gets.chomp
    puts "Contact info? "
    contact = gets.chomp 
    new_customer = Customer.create(name: name, contact: contact)
    
end 

def update_contact_info 
    puts "Customer name? "
    name = gets.chomp 
    customer = Customer.find_by(name: name)
    puts "#{customer.name}: #{customer.contact}"
    print "Enter new contact info: "
    new_contact = gets.chomp 
    customer.update(contact: new_contact)  
end 

def delete_last_customer 
    customer = Customer.last 
    customer.destroy 
end 

end 

