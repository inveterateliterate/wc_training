class CreateDrillSets < ActiveRecord::Migration[7.0]
  def change
    create_table :drill_sets do |t|
      t.integer :num_set_reps, null: false

      t.timestamps
    end
  end
end
