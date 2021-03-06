# frozen_string_literal: true

class Profile < ApplicationRecord
  self.table_name  = 'profiles'
  self.primary_key = 'id'

  has_one_attached :avatar

  belongs_to :user
  belongs_to :state, :optional => true
  belongs_to :city,  :optional => true
end
