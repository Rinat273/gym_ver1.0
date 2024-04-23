class Train < ApplicationRecord
  belongs_to :train_plan
  has_many :workouts
  has_many :exercises, through: :train_plan

  def name_with_initial
    "Номер: #{id}"
  end
end