Rails Decal 2015: Project 2
======
__Title:__ Lum

__Team Members:__ Arun Ramamurthy, Akash Khosla, Han Chen, Kangsik Lee

__Demo Link:__ https://www.youtube.com/watch?v=x72SoJa1Qaw

__Idea:__ A web application for clubs and student organizations dedicated to fostering relationships between current organization members and organization alumni. Users can make and comment on posts and send private messages. Users are tagged with their current status, either member or alumni, which years they served for, and the projects and positions that are/were associated with them.

__Models and Descriptions:__
User
* Has: name, email, year-started, year-ended, (many) Posts, (many) Comments, (many) Tags

Tag
* Has: name, description, (many) Users

Comment
* Has: body, user_id, post_id

Post
* Has: title, body, (many) Tags, user_id

__Features:__
* Users can log in, create comments directed to specific subsets of Users via tagging, choose to add existing tags to posts and their own profile, create new tags, create posts
* Posts can be searched to find all posts containing some keyword

__Division of Labor:__
* Arun:concept development, implemented tags
* Akash:HTML styling, implemented searching
* Han:Added models, debugging
* Kangsik:Implemented comments and posts

