class CreateUserDrills < ActiveRecord::Migration[7.1]
  def change
    create_table :user_drills do |t|
      t.references :user, null: false, foreign_key: true
      t.references :drill, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
