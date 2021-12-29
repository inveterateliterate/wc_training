class CreateConditioningSets < ActiveRecord::Migration[7.0]
  def change
    create_table :conditioning_sets do |t|
      t.integer :run_type, null: false

      t.timestamps
    end
  end
end
