



mike = Customer.create(name: "Mike", contact: "555-5555")
mike2 = Customer.create(name: "Mike2", contact: "123-4567")
bob = Customer.create(name: "Bob", contact: "877-5555")
linda = Customer.create(name: "Linda", contact: "444-4567")
jane = Customer.create(name: "Jane", contact: "555-5555")
larry = Customer.create(name: "Larry", contact: "333-4567")

pizza = Item.create(name: "Pizza Pie", category: "Food", price: 12)
slice = Item.create(name: "Pizza Slice", category: "Food", price: 3)
burger = Item.create(name: "Hamburger", category: "Food", price: 5)
soda = Item.create(name: "Soda", category: "Beverage", price: 2)
tv = Item.create(name: "Television", category: "Entertainment", price: 12)
stereo = Item.create(name: "Stereo", category: "Entertainment", price: 12)

s1 = Sale.create(customer_id: mike.id, item_id: pizza.id, sale_date: Time.now)
s2 = Sale.create(customer_id: mike2.id, item_id: pizza.id, sale_date: Time.now)
s3 = Sale.create(customer_id: bob.id, item_id: burger.id, sale_date: Time.now)
s4 = Sale.create(customer_id: bob.id, item_id: tv.id, sale_date: Time.now)
s5 = Sale.create(customer_id: linda.id, item_id: soda.id, sale_date: Time.now)
s6 = Sale.create(customer_id: jane.id, item_id: stereo.id, sale_date: Time.now)
s7 = Sale.create(customer_id: mike.id, item_id: pizza.id, sale_date: Time.now)

