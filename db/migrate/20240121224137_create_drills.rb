class CreateDrills < ActiveRecord::Migration[7.1]
  def change
    create_table :drills do |t|
      t.references :circuit, null: false, foreign_key: true
      t.integer :exercise_type, null: false
      t.integer :position, null: false
      t.integer :num_reps, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
