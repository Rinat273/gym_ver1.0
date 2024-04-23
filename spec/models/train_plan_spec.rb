require 'rails_helper'

describe TrainPlan do
  describe "validations" do
    it { should validate_presence_of :sequence_number }
  end

  describe "assotiations" do
    it { should belong_to :train_type }
    it { should belong_to :exercise_type }
    it { should have_many :trains }
    it { should have_many :exercises }
  end
end

RSpec. describe TrainPlan do
  describe 'Creation' do
    let (:train_plan) { create(:train_plan) }

    it 'validation' do
      expect(train_plan).to validate_presence_of(:sequence_number)
    end
  end
end