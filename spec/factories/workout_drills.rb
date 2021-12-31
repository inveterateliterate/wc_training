FactoryBot.define do
  factory :workout_drill do
    order_in_circuit { 1 }
    circuit_name { 'Long Run' }
    workout
    drill
  end
end
