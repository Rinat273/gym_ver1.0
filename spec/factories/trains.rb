# class JSONStruct < OpenStruct
#   def as_json(*args)
#     super.as_json['table']
#   end
# end

FactoryBot.define do
  factory :train do
    train_plan 
  end
end