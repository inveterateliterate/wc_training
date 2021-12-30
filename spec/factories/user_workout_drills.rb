FactoryBot.define do
  factory :user_workout_drill do
    user_workout
    drill
    notes { "MyText" }
  end
end
