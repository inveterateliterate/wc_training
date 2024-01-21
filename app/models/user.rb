class User < ApplicationRecord
  include NameConcerns
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_programs
  has_many :user_workouts
  has_many :workouts, through: :user_workouts
  has_many :user_drills
  has_many :drills, through: :user_drills

  validates_presence_of :email
  validates_uniqueness_of :email

  normalizes :email, with: -> email { email.strip.downcase }
end
