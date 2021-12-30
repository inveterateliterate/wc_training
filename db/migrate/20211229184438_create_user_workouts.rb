class CreateUserWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_workouts do |t|
      t.references :user, foreign_key: true, null: false
      t.references :workout, foreign_key: true, null: false
      t.boolean :complete, null: false, default: false
      t.date :date, null: false
      t.text :notes

      t.timestamps
    end
  end
end
