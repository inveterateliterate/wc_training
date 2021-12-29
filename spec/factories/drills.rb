FactoryBot.define do
  factory :drill do
    name { 'Long Run' }
    drill_type { :conditioning }
    distance_unit { :miles }
    time_goal { 30 }
    description { '30 minutes at the fastest pace you can run' }

    ## add lifts too

    trait :long_run do
      name { 'Long Run' }
      drill_type { :conditioning }
      run_type { :long_run }
      distance_unit { :miles }
      time_goal { 30 }
      description { '30 minutes at the fastest pace you can run' }
    end

    trait :hundreds do
      name { "100's on the minute" }
      drill_type { :conditioning }
      run_type { :hundreds }
      distance { 100 }
      distance_unit { :yards }
      description { "100’s each in 1 minute (20 seconds for the 100yd sprint, and 40 seconds recovery to jog back) This should take a total of 10 consecutive minutes" }
    end

    trait :speed_training do
      name { 'Speed Training - 60' }
      drill_type { :conditioning }
      run_type { :speed_training }
      distance { 60 }
      distance_unit { :yards }
      rep_rest_time { 20 }
      rest_time_unit { :seconds }
      description { '60 yard sprints with 20 seconds rest in between each' }
    end

    trait :yard_sets do
      name { 'Yard Set (25)' }
      drill_type { :conditioning }
      run_type { :yard_sets }
      distance { 300 }
      distance_unit { :yards }
      rep_rest_time { 2 }
      rest_time_unit { :minutes }
      description { '300’s with 2 minute rest in between each (25 yards up and back 6 times)' }
    end

    trait :mile_reps do
      name { 'Mile Reps' }
      drill_type { :conditioning }
      run_type { :mile_reps }
      distance { 0.5 }
      distance_unit { :miles }
      rep_rest_time { 3 }
      rest_time_unit { :minutes }
      time_goal { 3.5 }
      description { '½ miles in 3:30 with 3 min rest in between each' }
    end
  end
end
