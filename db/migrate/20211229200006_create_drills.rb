class CreateDrills < ActiveRecord::Migration[7.0]
  def change
    create_table :drills do |t|
      t.string :name
      t.integer :drill_type, null: false
      t.integer :num_reps, null: false
      t.integer :run_type
      t.integer :lift_type
      t.integer :distance
      t.integer :distance_unit
      t.integer :rep_rest_time
      t.integer :rest_time_unit, default: 0
      t.integer :time_goal
      t.text :description

      t.timestamps
    end
  end
end
