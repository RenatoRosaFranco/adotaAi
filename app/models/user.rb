# frozen_string_literal: true

class User < ApplicationRecord
  self.table_name = 'users'
  self.primary_key = 'id'

  after_create :create_profile
  has_one :profile, :dependent => :destroy
  has_many :animals, :dependent => :destroy

  def set_admin_account
    self.admin = true
    save
  end

  def revoke_admin_privileges
    self.admin = false
    save
  end

  def is_admin?
    self.admin
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
end
