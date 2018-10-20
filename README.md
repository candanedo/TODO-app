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

The app must include unit tests with Rspec.


### Instructions.

You can clone the repository like you would with any other project, and then proceed to run the bundle install. 

After this you need to create and migrate the postgres db, for that run rake db:setup or you can also use the rake db:create and the rake db:migrate

You can initialize the server now: rails s.

Then start redis server with redis-server

Now the only thing you are missing is configuring Sidekiq, for that simply type this to the command line exec sidekiq -C config/sidekiq.yml, but make sure to be in the project directory.

Then you would be able to use the project locally.


