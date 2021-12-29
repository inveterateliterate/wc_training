module Seeds
  class WorkoutSeeder < Seeder
    NUM_WEEKS = 12
    WEEKDAYS = %i(monday tuesday wednesday thursday friday)

    def seed_db
      create_workouts
      create_drills
    end

    def models_to_clean
      [
        Workout,
        Drill,
      ]
    end

    def models_seeded
      [
        Workout,
        Drill,
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

    def create_drills
      create_conditioning_drills
      # create_lifting_drills
    end

    def create_conditioning_drills
      cs_drills = Drill.run_types.keys.flat_map do |run_type|
        Array.new(NUM_WEEKS) { FactoryBot.attributes_for(:drill, run_type) }
      end
      Drill.create!(cs_drills)
    end
  end
end
