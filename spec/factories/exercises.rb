# создаем фабрику exercise
FactoryBot.define do
  factory :exercise do
    approach_number  { 1 }
    repeats { 10 }
    mass { 30 } 
    train_plan
  end
end