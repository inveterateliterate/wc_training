module Seeds
  class UserWorkoutSeeder < Seeder

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
      date = Date.today
      user_workout_array = users.pluck(:id).flat_map do |user_id|
        workouts.pluck(:id).map do |workout_id|
          { user_id: user_id, workout_id: workout_id, date: date }
        end
      end
      @user_workouts = UserWorkout.create!(user_workout_array)
    end

    def create_user_workout_drills
      # come back to this
    end
  end
end
