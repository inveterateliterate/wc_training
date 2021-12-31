class CreateWorkoutDrills < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_drills do |t|
      t.references :workout, foreign_key: true, null: false
      t.references :drill, foreign_key: true, null: false
      t.integer :circuit_number, default: 1, null: false
      t.integer :order_in_circuit, null: false
      t.string :circuit_name
      t.boolean :between_circuits, null: false, default: false

      t.timestamps
    end
  end
end
