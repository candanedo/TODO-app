# README

TODO App

Yo should develop a TODO App that includes the following features

Users should login to the App (Devise/Omniauth)

Users can create, read, update and delete (CRUD) lists of TODOs

Users can CRUD taks on a list

Users can export their lists with their tasks to CSV and PDF files.

Users should receive weekly email including pending tasks (using emails and
BackgroundJobs with Sidekiq and Redis)

Users can update your profile: name, email, description and photo (photo must be 
uploaded, you could use paperclip for this task)

The app must include unit tests with Rspec and integration with Capybara


### Use the project
You can clone the repository like you would with any other project, and them proceed to run the bundle install. After this you need to create and migrate the postgres db for that rund rake db:setup
