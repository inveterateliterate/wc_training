class AdminUser < ApplicationRecord
  include NameConcerns
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  # validates_presence_of :first_name, :last_name, :email
  validates_presence_of :email
  validates_uniqueness_of :email
end
