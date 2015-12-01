# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Post.create title: "User1", body: "co", user_id: 1
Post.create title: "User2", body: "coca", user_id: 2
Post.create title: "User3", body: "cola", user_id: 3
Post.create title: "User4", body: "coca-cola", user_id: 4

