# frozen_string_literal: true

class Category < ApplicationRecord
  self.table_name  = 'categories'
  self.primary_key = 'id'

  has_many :races, :dependent => :destroy
  belongs_to :category, :optional => true
  belongs_to :user
end
