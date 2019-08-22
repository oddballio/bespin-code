# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Administrator.create(email: "james.rhodes@marvel.af.mil", password: "password", first_name: "James", last_name: "Rhodes")
Administrator.create(email: "carol.danvers@marvel.af.mil", password: "password", first_name: "Carol", last_name: "Danvers")