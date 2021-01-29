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