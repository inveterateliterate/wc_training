class CreateCircuits < ActiveRecord::Migration[7.1]
  def change
    create_table :circuits do |t|
      t.references :workout, null: false, foreign_key: true
      t.integer :position, null: false
      t.integer :num_reps, null: false

      t.timestamps
    end
  end
end
