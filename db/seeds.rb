Administrator.create(email: "james.rhodes@marvel.af.mil", password: "password", first_name: "James", last_name: "Rhodes")
Administrator.create(email: "carol.danvers@marvel.af.mil", password: "password", first_name: "Carol", last_name: "Danvers")

%w[civilian military].each do |role|
  Role.create(name: role)
end