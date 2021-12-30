FactoryBot.define do
  factory :user_workout do
    date { Date.today }
    user
    workout
  end
end
