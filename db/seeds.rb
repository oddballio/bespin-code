Administrator.create(email: "james.rhodes@marvel.af.mil", password: "password", first_name: "James", last_name: "Rhodes")
Administrator.create(email: "carol.danvers@marvel.af.mil", password: "password", first_name: "Carol", last_name: "Danvers")

%w[civilian military].each do |role|
  Role.create(name: role)
end

Review.destroy_all
Service.destroy_all
User.destroy_all

5.times do |_|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    role: Role.all.sample
  )
end

[
  {
    name: 'Fuel Depot',
    description: 'Fuel station'
  },
  {
    name: 'Polygon',
    description: 'Military facility'
  }
].each do |service|
  Service.create(
    name: service[:name],
    description: service[:description]
  )
end

service = Service.first
users = User.all.shuffle
5.times do |_|
  Review.create(
    rating: [true, false].sample,
    content: Faker::Lorem.paragraph,
    service: service,
    user: users.delete_at(0)
  )
end