# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :email => 'user@example.com', :password => 'Welcome1', :password_confirmation => 'Welcome1'
puts 'New user created: ' << user.email
user2 = User.create! :email => 'admin@example.com', :password => 'Welcome1', :password_confirmation => 'Welcome1'
puts 'New user created: ' << user2.email
user2.add_role :admin


100.times do |t|

  desc = ""
  rand(10).times do
    desc += Faker::Lorem.sentence
  end
  Post.create(title: "Post #{t}", description: desc)

end