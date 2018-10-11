class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :initial_date
      t.datetime :final_date
      t.references :activitie, foreign_key: true

      t.timestamps
    end
  end
end
