module Seeds
  class WorkoutSeeder < Seeder
    NUM_WEEKS = 12
    WEEKDAYS = %i(monday tuesday wednesday thursday friday)

    def seed_db
      create_workouts
    end

    def models_to_clean
      [
        Workout,
      ]
    end

    def models_seeded
      [
        Workout,
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
  end
end
