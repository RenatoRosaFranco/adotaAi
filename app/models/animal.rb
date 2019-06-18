# frozen_string_literal: true

class Animal < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  def getAge
    Date.today.year - birthdate.year
  end
end
