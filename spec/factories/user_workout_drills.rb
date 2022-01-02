FactoryBot.define do
  factory :user_workout_drill do
    user
    workout_drill
    notes { "MyText" }
  end
end
