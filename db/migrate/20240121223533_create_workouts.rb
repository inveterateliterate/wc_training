class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.integer :day_num, null: false
      t.integer :week_num, null: false
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
