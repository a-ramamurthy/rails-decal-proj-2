Rails Decal 2015: Project 2
======
__Title:__ Lum 

__Team Members:__ Arun Ramamurthy, Akash Khosla, Han Chen, Kangsik Lee 

__Demo Link:__  

__Idea:__ A web application for clubs and student organizations dedicated to fostering relationships between current organization members and organization alumni. Users can make and comment on posts and send private messages. Users are tagged with their current status, either member or alumni, which years they served for, and the projects and positions that are/were associated with them.

__Models and Descriptions:__
User
* Has: name, email, year began, year ended, (many) Posts, (many) Comments, (many) Tags

Tag
* Has: name, description, (many) Users

Comment
* Has: text, datetime, (many) Tags, User, Post

Post
* Has: text, datetime, (many) Tags, User

__Features:__
* Users can log in, create comments directed to specific subsets of Users, choose and search for tags, create new tags
* Tags can be searched to find all Users associated with that Tag 

__Division of Labor:__
* Arun:
* Akash:
* Han:
* Kangsik




