raise "Don't do this in production." if Rails.env.production?

# Call seeder service class in lib
Seeds::UserSeeder.new.run
