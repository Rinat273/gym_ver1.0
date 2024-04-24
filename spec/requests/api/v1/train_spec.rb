require 'rails_helper'
require 'pry'
require 'json'

RSpec.describe "Trains", type: :request do
  describe "GET /index" do
       describe 'Creation' do
        let!(:train) { create(:train) }
      it "status http 200" do
        get "/api/v1/trains"
        expect(response.status).to eq(200)
      end
    end
  end

  describe "POST /create" do
    it 'Creation' do
      train_plan = create(:train_plan)
        post "/api/v1/trains", params: { train: {train_plan_id: train_plan.id } }
        expect(response.status).to eq(201)
    end
  end
end