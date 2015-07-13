# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create!(username: Faker::Name.name)
end

20.times do
  Contact.create!(name: Faker::Name.name, email: Faker::Internet.email, user_id: rand(10) + 1)
end

used_combos = []
50.times do
  new_combo = [rand(20) + 1, rand(10) + 1]
  while used_combos.include?(new_combo)
    new_combo = [rand(20) + 1, rand(10) + 1]
  end
  used_combos << new_combo
  ContactShare.create!(contact_id: new_combo[0], user_id: new_combo[1] )
end
