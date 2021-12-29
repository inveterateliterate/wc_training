# Base seeder class that adds some before/after actions to seeding.
module Seeds
  class Seeder

    def run
      formatted_seeder_name = self.class.name.demodulize.underscore.upcase
      clean_db(formatted_seeder_name)
      PaperTrail.enabled = false
      puts "RUNNING #{formatted_seeder_name}"
      seed_db
      PaperTrail.enabled = true
      print_database_rows
      puts "FINISHED #{formatted_seeder_name}"
    end

    def clean_db(formatted_seeder_name)
      puts '==========================================='
      puts "CLEANING #{formatted_seeder_name} MODELS"
      tables_to_clean.each { |table| table.destroy_all }
      puts 'FINISHED CLEANING'
    end

    def tables_to_clean
      raise NotImplementedError, 'must be implemented by subclasses'
    end

    def seed_db
      raise NotImplementedError, "must be implemented by subclass."
    end

    def print_database_rows
      tables_seeded.each do |table|
        num_created = table.count
        puts "#{num_created} #{table.name.pluralize(num_created)} seeded"
      end
    end

    def tables_seeded
      [] # optional hoook to log tables seeded
    end
  end
end
