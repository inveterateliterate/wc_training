module Seeds
  class WorkoutSeeder < Seeder
    NUM_WEEKS = 12
    WEEKDAYS = %i(monday tuesday wednesday thursday friday)

    def seed_db
      create_workouts
      create_conditioning_sets
      create_conditioning_exercises
      create_conditioning_
    end

    def models_to_clean
      [
        Workout,
        ConditioningSet,
      ]
    end

    def models_seeded
      [
        Workout,
        ConditioningSet
      ]
    end

    def create_workouts
      workouts_array = Array.new(NUM_WEEKS) do |n|
        WEEKDAYS.map do |day_num|
          FactoryBot.attributes_for(:workout, week_num: n + 1, day_num: day_num)
        end
      end.flatten
      Workout.create!(workouts_array)
    end

    def create_conditioning_sets
      # run_types.keys.length == WEEKDAYS.length
      cs_array = ConditioningSet.run_types.keys.flat_map do |run_type|
        Array.new(NUM_WEEKS) { { run_type: run_type }}
      end
      ConditioningSet.create!(cs_array)
    end
  end
end
