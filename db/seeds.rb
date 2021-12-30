raise "Don't do this in production." if Rails.env.production?

Seeds::UserSeeder.new.run
Seeds::WorkoutSeeder.new.run
Seeds::UserWorkoutSeeder.new.run
