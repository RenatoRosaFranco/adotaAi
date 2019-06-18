# frozen_string_literal: true

class Animal < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  SITUATIONS = [
      'Procurando dono',
      'Em Processo de Adoção',
      'Adotado'
  ]

  def getAge
    Date.today.year - birthdate.year
  end
end
