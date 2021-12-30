class CreateWorkoutSetDrills < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_set_drills do |t|
      t.references :workout, foreign_key: true, null: false
      t.references :drill, foreign_key: true, null: false
      t.integer :set_number
      t.boolean :between_sets, null: false, default: false

      t.timestamps
    end
  end
end
