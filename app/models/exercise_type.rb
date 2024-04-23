class ExerciseType < ApplicationRecord
  has_many :train_plans
  validates :title, presence: true, length: { minimum: 3 }

  def subject
    title
  end
end

