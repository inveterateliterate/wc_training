module Seeds
  module Seeder

    def run
      before_seed
      seed_db
      after_seed
    end

    def before_seed
      # can include any other setup or cleanup prior to seeding
      clean_db
      # PaperTrail.enabled = false
      puts "RUNNING #{formatted_seeder_name}"
    end

    def clean_db
      puts '==========================================='
      puts "CLEANING #{formatted_seeder_name} MODELS"
      models_to_clean.each(&:destroy_all)
      puts "FINISHED CLEANING #{formatted_seeder_name} MODELS"
    end

    def models_to_clean
      raise NotImplementedError, 'must be implemented by utility modules'
    end

    def seed_db
      raise NotImplementedError, 'must be implemented by utility modules'
    end

    def after_seed
      # can include any other configs needed after seeding
      # PaperTrail.enabled = true
      print_database_rows
      puts "FINISHED #{formatted_seeder_name}"
    end

    def print_database_rows
      models_seeded.each do |table|
        num_created = table.count
        puts "#{num_created} #{table.name.pluralize(num_created)} seeded"
      end
    end

    def models_seeded
      [] # optional hook to log models seeded
    end

    def formatted_seeder_name
      @formatted_seeder_name ||= name.demodulize.underscore.upcase.tr('_', ' ')
    end

    ## HELPERS AND COMMON ATTRIBUTES CAN GO BELOW

    def users
      @users ||= User.all
    end

    def workouts
      @workouts ||= Workout.all
    end

    def drills
      @drills ||= Drill.all
    end
  end
end

