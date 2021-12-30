module Seeds
  module UserSeeder
    class << self
      include Seeder

      NUM_USERS = 3
      EMAIL_USERNAME = Rails.application.credentials.email_username
      EMAIL_HOST = Rails.application.credentials.email_host
      PASSWORD = Rails.application.credentials.default_password

      def seed_db
        create_admin_user unless AdminUser.count > 0
        create_users
      end

      def models_to_clean
        [
          UserWorkoutDrill,
          UserWorkout,
          User,
        ]
      end

      def models_seeded
        [
          AdminUser,
          User,
        ]
      end

      def create_admin_user
        AdminUser.create!(FactoryBot.attributes_for(:admin_user, email: "#{EMAIL_USERNAME}+admin@#{EMAIL_HOST}", password: PASSWORD))
      end

      def create_users
        users_array = Array.new(NUM_USERS) do |num|
          FactoryBot.attributes_for(:user, email: "#{EMAIL_USERNAME}+#{num}@#{EMAIL_HOST}", password: PASSWORD)
        end
        User.create!(users_array)
      end
    end
  end
end
