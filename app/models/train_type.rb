class TrainType < ApplicationRecord
  has_many :train_plans
  validates :title, presence: true

  def subject
    title
  end
end
