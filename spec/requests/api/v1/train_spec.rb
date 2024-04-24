require 'rails_helper'
require 'pry'

# Тесты на проверку Trains
RSpec.describe "Trains", type: :request do
  # проверка запроса GET / index
  describe "GET /index" do
    # создаем объекты train
    describe 'Creation' do
      let!(:train) { create(:train) }
      # проверка на вывод статуса 200, если происходит вывод trains
      it "status http 200" do
        get "/api/v1/trains"
        expect(response.status).to eq(200)
      end
    end
  end

  # проверка запроса POST / create
  describe "POST /create" do
    # проверка на вывод статуса 201, если происходит сохранение
    it 'Creation' do
      # создаем и присваиваем переменную train_plan
      train_plan = create(:train_plan)
      # прописываем путь и отправляем параметры params на создание train
      post "/api/v1/trains", params: { train: {train_plan_id: train_plan.id } }
      expect(response.status).to eq(201)
    end
  end
end