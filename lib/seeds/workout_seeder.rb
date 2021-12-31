module Seeds
  module WorkoutSeeder
    class << self
      include Seeder

      NUM_WEEKS = 12
      WEEKDAYS = %i(monday tuesday wednesday thursday friday)

      def seed_db
        create_workouts
        create_drills
        create_sets
      end

      def models_to_clean
        [
          WorkoutSetDrill,
          Drill,
          Workout,
        ]
      end

      def models_seeded
        [
          Workout,
          Drill,
          WorkoutSetDrill,
        ]
      end

      def create_workouts
        workouts_array = Array.new(NUM_WEEKS) { |num| week_workout(num) }.flatten
        Workout.create!(workouts_array)
      end

      def week_workout(num)
        WEEKDAYS.map do |day_num|
          FactoryBot.attributes_for(:workout, week_num: num + 1, day_num: day_num)
        end
      end

      def create_drills
        create_conditioning_drills
        # create_lifting_drills
      end

      def create_conditioning_drills
        cs_drills = Drill.run_types.keys.map do |run_type|
          FactoryBot.attributes_for(:drill, run_type)
        end
        Drill.create!(cs_drills)
      end

      # will want to be more clever about this
      def create_sets
        sets = WEEKDAYS.flat_map.with_index do |weekday, index|
          workout_set_drils(weekday, index)
        end
        WorkoutSetDrill.create!(sets)
      end

      def workout_set_drils(weekday, index)
        workouts.send(weekday).map do |workout|
          { drill_id: drills[index].id, workout_id: workout.id, set_number: 1 }
        end
      end
    end
  end
end
