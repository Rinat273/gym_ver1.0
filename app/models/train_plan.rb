class TrainPlan < ApplicationRecord
  belongs_to :train_type
  belongs_to :exercise_type
  has_many :trains
  has_many :exercises
  validates :sequence_number, comparison: { greater_than: 0 }
end
