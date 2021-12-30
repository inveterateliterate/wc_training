module Seeds
  module UserWorkoutSeeder
    class << self
      include Seeder

      def seed_db
        create_user_workouts
        create_user_workout_drills
      end

      def models_to_clean
        []
      end

      def models_seeded
        [
          UserWorkout,
          UserWorkoutDrill,
        ]
      end

      def create_user_workouts
        user_workout_array = users.pluck(:id).flat_map do |user_id|
          user_workout_hash(user_id)
        end
        @user_workouts = UserWorkout.create!(user_workout_array)
      end

      def user_workout_hash(user_id)
        date = Date.today
        workouts.pluck(:id).map do |workout_id|
          { user_id: user_id, workout_id: workout_id, date: date }
        end
      end

      def create_user_workout_drills
        # come back to this
      end
    end
  end
end
