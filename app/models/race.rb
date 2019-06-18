# frozen_string_literal: true

class Race < ApplicationRecord
  self.table_name  = 'races'
  self.primary_key = 'id'

  belongs_to :category
  belongs_to :user
end
