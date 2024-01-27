FactoryBot.define do
  factory :drill do
    exercise_type { :conditioning }
    num_reps { 1 }
    position { 1 }
    name { 'Long Run' }
    description { '30 minutes at the fastest pace you can run' }
    circuit

    trait :hundreds do
      exercise_type { :conditioning }
      num_reps { 10 }
      description { "100's each in 1 minute (20 seconds for the 100yd sprint, and 40 seconds recovery to jog back) This should take a total of 10 consecutive minutes" }
    end

    trait :speed_training do
      exercise_type { :conditioning }
      num_reps { 6 }
      description { '60 yard sprints with 20 seconds rest in between each' }
    end

    trait :yard_sets do
      exercise_type { :conditioning }
      num_reps { 4 }
      description { "300's with 2 minute rest in between each (25 yards up and back 6 times)" }
    end

    trait :mile_reps do
      exercise_type { :conditioning }
      num_reps { 3 }
      description { '½ miles in 3:30 with 3 min rest in between each' }
    end
  end
end
