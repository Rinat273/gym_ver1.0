require 'rails_helper'
require 'pry'

RSpec.describe "Workouts" do
  describe "GET /index" do
    describe "Creation" do
      let!(:workout) { create(:workout) }
      it "status http 200" do
        train = create(:train)
        get "/api/v1/trains/#{train.id}/workouts"
        expect(response.status).to eq(200)
      end
    end
  end

  describe "POST /create" do
    it "status http 201" do
      exercise = create(:exercise)
      train = create(:train)
      post "/api/v1/trains/#{train.id}/workouts",
      params: { workout: { train_id: train.id, exercise_id: exercise.id } }
      expect(response.status).to eq(201)
    end
    it "status http 400" do
      train = create(:train)
      post "/api/v1/trains/#{train.id}/workouts",
      params: { }
      expect(response.status).to eq(400)
    end
  end

end