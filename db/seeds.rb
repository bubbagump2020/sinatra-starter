# Add seed data here. Seed your database with `rake db:seed

user = User.create({ name: "Josh "})
list = List.create({ user_id: user.id })
item = Item.create({ name: "Bananas"})