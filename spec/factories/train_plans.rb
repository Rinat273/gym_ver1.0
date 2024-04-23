FactoryBot.define do
  factory :train_plan do
    sequence_number { 4 }
    train_type
    exercise_type
  end
end