raise "Don't do this in production." if Rails.env.production?

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Seeds::UserSeeder.run
Seeds::WorkoutSeeder.run
# Seeds::UserWorkoutSeeder.run
