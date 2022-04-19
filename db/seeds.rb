# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

##Create Admin & Normal User
User.first_or_create([{email: 'admin@mail.com', password: '123456'}, {email: 'user@mail.com', password: '123456'}])

Author.first_or_create([{name: 'Michale'}, {name: 'Steave'}])

Category.first_or_create([{name: 'Novel'}, {name: 'Drama'}])

Book.first_or_create([{name: 'Ikigai', description: 'For great live life', publish_at: DateTime.now, author_id: 1, category_ids: [1]}, {name: 'Secret', description: 'For futures', publish_at: DateTime.now, author_id: 2, category_ids: [2]}])