require 'rails_helper'

describe ExerciseType do
  describe "validations" do
    it { should validate_presence_of :title }
  end

  describe "assotiations" do
    it { should have_many :train_plans }
  end
end


# describe ExerciseType do
#   describe "#subject" do
#     it "returns the exercise_type title" do
#       exercise_type = create(:exercise_type, title: 'Run')

#       expect(exercise_type.subject).to  eq 'Run'
#     end
#   end
# end

RSpec. describe ExerciseType do
  describe 'Creation' do
    let (:exercise_type) { create(:exercise_type) }

    it 'validation' do
      expect(exercise_type).to validate_presence_of(:title)
    end
  end
end