class CreateUserWorkoutDrills < ActiveRecord::Migration[7.0]
  def change
    create_table :user_workout_drills do |t|
      t.references :user_workout, null: false, foreign_key: true
      t.references :workout_drill, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
