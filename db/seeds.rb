puts 'Lets cook putas!'
 10.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address: Faker::Address.full_address
    )
end

    Pizza.create(
        name:"Tirolese",
        ingredients:"Tomato sauce, Stracchino cheese, Speck (smoked ham), sometimes mushrooms"
    )
    Pizza.create(
        name:"APIZZA (White clam pie)",
        ingredients:"Clams, Pecorino Romano, Garlic, Olive oil, Oregano"
    )
    Pizza.create(
        name:"Buffalo Chicken",
        ingredients:"Hot sauce, Monterey Jack cheese, Blue cheese, Chicken breast cutlets, Spring onions, Olive oil"
    )
    Pizza.create(
        name:"Carolina Reaper",
        ingredients:"Tomato sauce, Cheese, Carolina Reaper chili peppers (hottest chili pepper of the world)"
    )
    Pizza.create(
        name:"Chicken Alfredo",
        ingredients:"Butter, Garlic, Onion, Grilled shredded chicken, Heavy cream, Milk, Parmesan, Mozzarella, Olive oil, Ground black pepper or white pepper, Green Onions"
    )

20.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id: Pizza.all[rand(Pizza.count)].id,
        restaurant_id: Restaurant.all[rand(Restaurant.count)].id
    )
end

puts 'Pizzas are ready my G'