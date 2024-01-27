module Seeds
  module WorkoutSeeder
    class << self
      include Seeder

      def seed_db
        @program = create_program
        seed_workouts
      end

      def models_to_clean
        [
          UserDrill,
          UserWorkout,
          Drill,
          Circuit,
          Workout,
          Program
        ]
      end

      def models_seeded
        [
          Workout,
          Circuit,
          Drill,
          Program
        ]
      end

      def create_program
        Program.create(FactoryBot.attributes_for(:program))
      end

      def seed_workouts
        (1..12).to_a.each { |week_num| create_workout(week_num) }
      end

      def create_workout(week_num)
        workout_data(week_num).each do |workout_info|
          workout = @program.workouts.find_or_create_by(workout_info.except('circuits'))
          create_circuits(workout, workout_info)
        end
      end

      def create_circuits(workout, workout_info)
        workout_info['circuits'].each do |circuit_info|
          circuit = workout.circuits.create!(circuit_info.except('drills'))
          create_drills(circuit, circuit_info)
        end
      end

      def create_drills(circuit, circuit_info)
        circuit_info['drills'].each do |drill_info|
          circuit.drills.create!(drill_info)
        end
      end

      def workout_data(week_num)
        file_path = "#{Rails.root}/lib/seeds/workouts/week_#{week_num}.json"
        file = File.read(file_path)
        JSON.parse(file)['workouts']
      end
    end
  end
end
