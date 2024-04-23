class Exercise < ApplicationRecord
  belongs_to :train_plan
  validates :approach_number, comparison: { greater_than: 0 }
  
  def name_with_initial
    "Номер: #{id}"
  end
end
