# frozen_string_literal: true
class Profile < ApplicationRecord
  self.table_name  = 'profiles'
  self.primary_key = 'id'

  has_one_attached :avatar, :optional => true
  belongs_to :user
end
