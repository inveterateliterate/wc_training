module Seeds
  class UserSeeder < Seeder
    NUM_USERS = 3
    EMAIL_USERNAME = ENV['EMAIL_USERNAME']
    EMAIL_HOST = ENV['EMAIL_HOST']

    def seed_db
      # create_admin_user
      create_users
    end

    def models_to_clean
      [
        User,
      ]
    end

    def models_seeded
      [
        User,
      ]
    end

    # def create_admin_user
    #   AdminUser.create!(FactoryBot.attributes_for(:admin_user, email: "#{EMAIL_USERNAME}+admin@#{EMAIL_HOST}"))
    # end

    def create_users
      users_array = Array.new(NUM_USERS) do |_n|
        # FactoryBot.attributes_for(:user, email: "#{EMAIL_USERNAME}+n@#{EMAIL_HOST}")
        FactoryBot.attributes_for(:user)
      end
      User.create!(users_array)
    end
  end
end
