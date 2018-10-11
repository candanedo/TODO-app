class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.datetime :initial_date
      t.datetime :final_date

      t.timestamps
    end
  end
end
