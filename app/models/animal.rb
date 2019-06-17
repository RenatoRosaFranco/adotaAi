class Animal < ApplicationRecord
  belongs_to :user

  def getAge
    Date.today.year - birthdate.year
  end
end
