# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email

initial_tags = Tag.create([{name: 'public_relations', description: "Manages communications outside of the club"},
						   {name: 'current_member'},
						   {name: 'alumni'},
						   {name: 'president'},
						   {name: 'fundraising'},
						   {name: 'social'}])

initial_users = User.create!([{name: 'Alice', email: 'alice@berkeley.edu', password: 'hunter123', password_confirmation: 'hunter123', year_started: 2014, year_ended: nil,  organization: "Rowing"},
							  {name: 'Bob', email: 'bob@berkeley.edu', password: 'hunter123', password_confirmation: 'hunter123', year_started: 2015, year_ended: nil,  organization: "Rowing"},
							  {name: 'Catherine', email: 'catherine@berkeley.edu', password: 'hunter123', password_confirmation: 'hunter123', year_started: 2010, year_ended: 2014, organization: "Rowing"},
							  {name: 'Dave', email: 'david@berkeley.edu', password: 'hunter123', password_confirmation: 'hunter123', year_started: 2011, year_ended: 2013,  organization: "Rowing"},
							  {name: 'Mike', email: 'puncher800@gmail.com', password: 'hunter123', password_confirmation: 'hunter123', year_started: 2013, year_ended: nil,  organization: "Boxing"}])

initial_users[0].tags << initial_tags[0] << initial_tags[1] << initial_tags[4]
initial_users[1].tags << initial_tags[1] << initial_tags[4]
initial_users[2].tags << initial_tags[0] << initial_tags[2] << initial_tags[3] << initial_tags[4]
initial_users[3].tags << initial_tags[2]
initial_users[4].tags << initial_tags[1] 

initial_posts = Post.create([{title: "BBQ on Friday!", body: "Please bring at least one item to share. The party begins at 7!", user_id: initial_users[0].id},
							 {title: "Competition Practice Tips", body: "Post any tips for the upcoming meet! Here's mine: Don't forget to stretch before every race!", user_id: initial_users[1].id},
							 {title: "Help needed!", body: "I need advice on raising money for the club. Does anyone have any experience in this?", user_id: initial_users[0].id}])

initial_posts[0].tags << initial_tags[0] << initial_tags[5]
initial_posts[2].tags << initial_tags[4]

initial_comments = Comment.create([{body: "So excited!", user_id: initial_users[1].id, post_id: initial_posts[0].id},
								   {body: "Eat a couple of bananas the morning of, and pasta the night before.", user_id: initial_users[1].id, post_id: initial_posts[1].id},
								   {body: "Stretch every night!", user_id: initial_users[3].id, post_id: initial_posts[1].id}]) 

