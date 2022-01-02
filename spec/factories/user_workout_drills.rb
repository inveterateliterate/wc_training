FactoryBot.define do
  factory :user_workout_drill do
    user_workout
    workout_drill
    notes { "MyText" }
  end
end
