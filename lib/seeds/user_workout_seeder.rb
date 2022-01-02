module Seeds
  module UserWorkoutSeeder
    # generates the whole program for the user
    class << self
      include Seeder

      def seed_db
        create_user_workouts
        create_user_workout_drills
      end

      def models_to_clean
        [
          UserWorkout,
          UserWorkoutDrill,
        ]
      end

      def models_seeded
        [
          UserWorkout,
          UserWorkoutDrill,
        ]
      end

      def create_user_workouts
        user_workouts_array = users.pluck(:id).flat_map do |user_id|
          user_workout_hash(user_id)
        end
        @user_workouts = UserWorkout.create!(user_workouts_array)
      end

      def user_workout_hash(user_id)
        start_date = Date.parse('Monday')
        program.map do |workout|
          multiplier = workout.week_num - 1
          date = start_date + (multiplier * 7 + workout.day_num.to_i).days
          { user_id: user_id, workout_id: workout.id, date: date }
        end
      end

      def create_user_workout_drills
        # for each user workout, collect the drills for that workout
        user_workout_drills_array = @user_workouts.flat_map do |user_workout|
          user_workout_drills_hash(user_workout)
        end
        UserWorkoutDrill.create!(user_workout_drills_array)
      end

      def user_workout_drills_hash(user_workout)
        user_workout.workout.workout_drills.pluck(:id).map do |workout_drill_id|
          { user_id: user_workout.user_id, workout_drill_id: workout_drill_id }
        end
      end

      def program
        # assume all workouts seeded for now
        @program ||= Workout.order(:week_num, :day_num)
      end
    end
  end
end
