class Workout < ApplicationRecord
  belongs_to :program

  has_many :user_workouts
  has_many :users, through: :user_workouts
  has_many :circuits
  has_many :drills, through: :circuits

  validates_presence_of :week_num, :day_num
  validates_uniqueness_of :day_num, scope: %i[week_num program_id]

  enum day_num: {
    sunday: 0,
    monday: 1,
    tuesday: 2,
    wednesday: 3,
    thursday: 4,
    friday: 5,
    saturday: 6,
  }

  scope :for_week, -> (week_num) { where(week_num: week_num) }
  scope :for_day, -> (day_num) { where(day_num: day_num) } # to be able to use across other models (might be another way?)

  def title
    "Week #{week_num}: #{day_num.titleize}"
  end
end
