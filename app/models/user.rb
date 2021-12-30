class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_workouts
  has_many :workouts, through: :user_workouts

  validates_presence_of :email
  validates_uniqueness_of :email
end
