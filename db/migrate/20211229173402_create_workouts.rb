class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.integer :week_num, null: false
      t.integer :day_num, null: false

      t.timestamps
    end
  end
end
