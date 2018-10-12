# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  user = User.new(
      :name                  => "Eduardo Javier Candanedo Contreras",
      :email                 => "eduardo.candanedo.94@gmail.com",
      :password              => "edjacaco010294",
      :password_confirmation => "edjacaco010294"
  )
  user.save
   
  user = User.new(
      :name                  => "Manuel Gomez",
      :email                 => "manuel.gomez@gmail.com",
      :password              => "edjacaco",
      :password_confirmation => "edjacaco"
  )
  user.save

    user = User.new(
      :name                  => "Marifer Candanedo",
      :email                 => "mafercaco@gmail.com",
      :password              => "edjacaco",
      :password_confirmation => "edjacaco"
  )
  user.save

   user = User.new(
      :name                  => "Maria Candanedo",
      :email                 => "mafercado@gmail.com",
      :password              => "edjacaco",
      :password_confirmation => "edjacaco"
  )
  user.save
  
  activity = Activitie.new(
  	:name                    => "Go to the Gym",
  	:description             => "To the Gran Plaza Gym",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 1

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Groceries",
  	:description             => "For this week",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 1

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to the store",
  	:description             => "Check all cashiers records",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 1

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to the Gym",
  	:description             => "To the Zentralia´s Gym",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 2

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to Guadalajara",
  	:description             => "To get the merchandise",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"10/10/2018",
  	:user_id                 => 2

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Pick up mom",
  	:description             => "at the entrance of Country side Mall",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 2

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to work",
  	:description             => "at MagmaLabs",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 3

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to the Family meal",
  	:description             => "at Grandma´s house",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"10/10/2018",
  	:user_id                 => 3

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to the movies",
  	:description             => "at cinepols",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"12/10/2018",
  	:user_id                 => 3

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to the Gym",
  	:description             => "To the Gran Plaza Gym",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 4

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to the Gym",
  	:description             => "To the Gran Plaza Gym",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 4

  )
  activity.save
  activity = Activitie.new(
  	:name                    => "Go to the Gym",
  	:description             => "To the Gran Plaza Gym",
  	:initial_date            => "10/10/2018",
  	:final_date              =>	"15/10/2018",
  	:user_id                 => 4

  )
  activity.save
  
  task = Task.new(
    :name                    => "Leg day",
    :description             => "Push ups day",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id             => 1

  )
  task.save
  task = Task.new(
    :name                    => "Bicep day",
    :description             => "Push ups day",
    :initial_date            => "11/10/2018",
    :final_date              => "11/10/2018",
    :activitie_id             => 1

  )
  task.save
  task = Task.new(
    :name                    => "Tricep day",
    :description             => "Push ups day",
    :initial_date            => "12/10/2018",
    :final_date              => "12/10/2018",
    :activitie_id             => 1

  )
  task.save
  task = Task.new(
    :name                    => "Chest day",
    :description             => "Push ups day",
    :initial_date            => "13/10/2018",
    :final_date              => "13/10/2018",
    :activitie_id             => 1

  )
  task.save
  task = Task.new(
    :name                    => "Back day",
    :description             => "Push ups day",
    :initial_date            => "14/10/2018",
    :final_date              => "14/10/2018",
    :activitie_id             => 1

  )
  task.save
  task = Task.new(
    :name                    => "Abdomen day",
    :description             => "Push ups day",
    :initial_date            => "15/10/2018",
    :final_date              => "15/10/2018",
    :activitie_id             => 1

  )
  task = Task.new(
    :name                    => "Fruits day",
    :description             => "Get apples, bananas, papaya, etc",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id             => 2

  )
  task.save
  task = Task.new(
    :name                    => "Vegetables day",
    :description             => "Get tomatoe, onions, carrots, etc",
    :initial_date            => "11/10/2018",
    :final_date              => "11/10/2018",
    :activitie_id             => 2

  )
  task.save
  task = Task.new(
    :name                    => "Meat day",
    :description             => "get Beef meat",
    :initial_date            => "12/10/2018",
    :final_date              => "12/10/2018",
    :activitie_id             => 2

  )
  task.save
  task = Task.new(
    :name                    => "Chicken day",
    :description             => "Get Chicken",
    :initial_date            => "13/10/2018",
    :final_date              => "13/10/2018",
    :activitie_id             => 2

  )
  task.save
  task = Task.new(
    :name                    => "Pastas day",
    :description             => "Get rice, spaghetti, fusili, etc",
    :initial_date            => "14/10/2018",
    :final_date              => "14/10/2018",
    :activitie_id             => 2

  )
  task.save
  task = Task.new(
    :name                    => "Grains day",
    :description             => "Get peanuts, almonds, nuts, etc",
    :initial_date            => "15/10/2018",
    :final_date              => "15/10/2018",
    :activitie_id             => 2

  )
  task = Task.new(
    :name                    => "Check Fernanda",
    :description             => "Last week she lost 300 pesos",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id             => 3

  )
  task.save
  task = Task.new(
    :name                    => "Check Manolo",
    :description             => "Everything is been fine",
    :initial_date            => "11/10/2018",
    :final_date              => "11/10/2018",
    :activitie_id             => 3

  )
  task.save
  task = Task.new(
    :name                    => "Check Inventory",
    :description             => "Last week 3 products missing",
    :initial_date            => "12/10/2018",
    :final_date              => "12/10/2018",
    :activitie_id             => 3

  )
  task.save
  task = Task.new(
    :name                    => "Check for promotions with providers",
    :description             => "Specially Kuul",
    :initial_date            => "13/10/2018",
    :final_date              => "13/10/2018",
    :activitie_id             => 3

  )
  task.save
  task = Task.new(
    :name                    => "Check the taxes reports",
    :description             => "Tax reports 2018",
    :initial_date            => "14/10/2018",
    :final_date              => "14/10/2018",
    :activitie_id             => 3

  )
  task.save
  task = Task.new(
    :name                    => "Check Payroll",
    :description             => "Employees Payroll",
    :initial_date            => "15/10/2018",
    :final_date              => "15/10/2018",
    :activitie_id             => 3

  )
  task.save
    task = Task.new(
    :name                    => "Leg day",
    :description             => "Push ups day",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id             => 4

  )
  task.save
  task = Task.new(
    :name                    => "Bicep day",
    :description             => "Push ups day",
    :initial_date            => "11/10/2018",
    :final_date              => "11/10/2018",
    :activitie_id             => 4

  )
  task.save
  task = Task.new(
    :name                    => "Tricep day",
    :description             => "Push ups day",
    :initial_date            => "12/10/2018",
    :final_date              => "12/10/2018",
    :activitie_id             => 4

  )
  task.save
  task = Task.new(
    :name                    => "Chest day",
    :description             => "Push ups day",
    :initial_date            => "13/10/2018",
    :final_date              => "13/10/2018",
    :activitie_id             => 4

  )
  task.save
  task = Task.new(
    :name                    => "Back day",
    :description             => "Push ups day",
    :initial_date            => "14/10/2018",
    :final_date              => "14/10/2018",
    :activitie_id             => 4

  )
  task.save
  task = Task.new(
    :name                    => "Abdomen day",
    :description             => "Push ups day",
    :initial_date            => "15/10/2018",
    :final_date              => "15/10/2018",
    :activitie_id             => 4

  )
  task.save
    task = Task.new(
    :name                    => "Get merchandise from providers",
    :description             => "All products",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id             => 5

  )
  task.save
  task = Task.new(
    :name                    => "Monday",
    :description             => "at 3 O´clock",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id            => 6

  )
  task.save
  task = Task.new(
    :name                    => "Tuesday",
    :description             => "at 5 O´clock",
    :initial_date            => "11/10/2018",
    :final_date              => "11/10/2018",
    :activitie_id            => 6

  )
  task.save
  task = Task.new(
    :name                    => "Wensday",
    :description             => "at 2 O´clock",
    :initial_date            => "12/10/2018",
    :final_date              => "12/10/2018",
    :activitie_id            => 6

  )
  task.save
    task = Task.new(
    :name                    => "Thursday",
    :description             => "at 3 O´clock",
    :initial_date            => "13/10/2018",
    :final_date              => "13/10/2018",
    :activitie_id            => 6

  )
  task.save
  task = Task.new(
    :name                    => "Friday",
    :description             => "at 4 O´clock",
    :initial_date            => "14/10/2018",
    :final_date              => "14/10/2018",
    :activitie_id            => 6

  )
  task.save
    task = Task.new(
    :name                    => "Saturday",
    :description             => "at 12 O´clock",
    :initial_date            => "15/10/2018",
    :final_date              => "15/10/2018",
    :activitie_id            => 6

  )
  task.save
   task.save
  task = Task.new(
    :name                    => "Monday",
    :description             => "at 9AM in the office",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id            => 7

  )
  task.save
  task = Task.new(
    :name                    => "Tuesday",
    :description             => "at 9AM in the office",
    :initial_date            => "11/10/2018",
    :final_date              => "11/10/2018",
    :activitie_id            => 7

  )
  task.save
  task = Task.new(
    :name                    => "Wensday",
    :description             => "at 9AM in the office",
    :initial_date            => "12/10/2018",
    :final_date              => "12/10/2018",
    :activitie_id            => 7

  )
  task.save
    task = Task.new(
    :name                    => "Thursday",
    :description             => "at 9AM in the office",
    :initial_date            => "13/10/2018",
    :final_date              => "13/10/2018",
    :activitie_id            => 7

  )
  task.save
  task = Task.new(
    :name                    => "Friday",
    :description             => "at 9AM in the office",
    :initial_date            => "14/10/2018",
    :final_date              => "14/10/2018",
    :activitie_id            => 7

  )
  task.save
    task = Task.new(
    :name                    => "Saturday",
    :description             => "No office, check for pendings",
    :initial_date            => "15/10/2018",
    :final_date              => "15/10/2018",
    :activitie_id            => 7

  )
  task.save
  task = Task.new(
    :name                    => "Wedsnday",
    :description             => "Family Reunion at Grandma´s",
    :initial_date            => "10/10/2018",
    :final_date              => "10/10/2018",
    :activitie_id            => 7

  )
  task.save

 #activities = Activtie.new(name: "Go to the Gym", description: "At the Central Park Mall", initial_date: DateTime.new(2018,10,8,17), final_date: DateTime.new(2018,10,13,19), user_id: 1)
 