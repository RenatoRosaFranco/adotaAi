# frozen_string_literal: true

class Region < ApplicationRecord
  extend BRPopulate

  self.table_name = 'regions'
  self.primary_key = 'id'

  has_many :states, :dependent => :destroy

  def self.populate_data
    BRpopulate.populate
  end
end
