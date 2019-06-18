# frozen_string_literal: true

class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string   :name
      t.date     :birthdate
      t.string   :animal_type
      t.string   :animal_race
      t.string   :size
      t.string   :gender
      t.boolean  :vacined
      t.boolean  :castred
      t.boolean  :vermifuged
      t.boolean  :chiped
      t.text     :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
