raise "Don't do this in production." if Rails.env.production?

Seeds::UserSeeder.run
Seeds::WorkoutSeeder.run
Seeds::UserWorkoutSeeder.run
