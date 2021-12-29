FactoryBot.define do
  factory :conditioning_set do
    run_type { ConditioningSet.run_types.keys.sample }
  end
end
