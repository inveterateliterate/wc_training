class CreateUserWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :user_workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      t.date :date, null: false
      t.text :notes
      t.boolean :complete, null: false, default: false

      t.timestamps
    end
  end
end
