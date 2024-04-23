class TrainPlan < ApplicationRecord
  belongs_to :train_type
  belongs_to :exercise_type
end
