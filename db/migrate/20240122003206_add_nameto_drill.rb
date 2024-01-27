class AddNametoDrill < ActiveRecord::Migration[7.1]
  def change
    add_column :drills, :name, :string, null: false
  end
end
