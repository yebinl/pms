# README

* Git Clone
    git clone https://github.com/yebinl/pms.git

* Versions
    Ruby 3.0.0
    Rails 6.1.1

* Database 
    sqlite3

* Database initialization
    Run the following commands to create and setup the database:
    bundle exec rake db:create
    bundle exec rake db:setup

* Run the server
    bundle exec rails s

* URL to visit the site:
    http://localhost:3000

This is a sample PMS (Property Management System). It has following functions: 1. Sign up, Log in, Log out and Delete account 2. Add, remove, edit and delete a room 3. Add, remove, edit and delete a guest 4. Assign a guest to a room, and check out a guest from a room.

Project Repo: https://github.com/yebinl/pms.git

I built this system in Ruby on Rails. In order to implement all these features, I created 3 tables: Rooms, Guests and Assignments. Rooms table has two columns: room number and description. Guests table has two columns: guest name and phone. Assignments table has two columns: room's id and guest's id. I associated these three tables with Rails keywords has_one and belongs_to. Assignments table belongs_to both Rooms and Guests, and Rooms&Guests all have_one Assignments. With this design, I implement all CRUD features that needed.

I implemented the user features by using Devise. By adding "before_action :authenticate_user", I filtered all Create, Update, Delete request and redirect them to the signin page, except Read request.

For testing, I added RSpec to this project. In the specs folder, I tested models and requests(routes) separately. For the models, the test can check presence, uniqueness as well as other validation requirements (such as length, invalid char). By sending the test data to the database and check the feedback, we can compare it with the expected result. For the routes testing, we can send GET, PUT, DELETE requests to all routes we have and compare the feedback with the expected result.