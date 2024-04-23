require 'rails_helper'

describe TrainType do
  describe "validations" do
    it { should validate_presence_of :title }
  end

  describe "assotiations" do
    it { should have_many :train_plans }
  end
end


# describe TrainType do
#   describe "#subject" do
#     it "returns the train_type title" do
#       train_type = create(:train_type, title: 'Сardio')

#       expect(train_type.subject).to  eq 'Сardio'
#     end
#   end
# end

RSpec. describe TrainType do
  describe 'Creation' do
    let (:train_type) { create(:train_type) }

    it 'validation' do
      expect(train_type).to validate_presence_of(:title)
    end
  end
end
