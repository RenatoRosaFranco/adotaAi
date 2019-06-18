# frozen_string_literal: true

class AddColumnPictureToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :picture, :string
  end
end
