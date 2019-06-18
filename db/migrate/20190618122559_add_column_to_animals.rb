class AddColumnToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :addopted_situation, :string
  end
end
