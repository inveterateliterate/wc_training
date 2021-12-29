FactoryBot.define do
  factory :workout do
    week_num { 1 }
    day_num { Workout.day_nums.keys.sample }
  end
end
