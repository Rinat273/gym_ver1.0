require 'rails_helper'
require 'pry'

# Тесты на проверку Workouts
RSpec.describe "Workouts" do
  # проверка запроса GET / index
  describe "GET /index" do
    # создаем объекты workout
    describe "Creation" do
      let!(:workout) { create(:workout) }
      # проверка на вывод статуса 200, если происходит вывод workouts
      it "status http 200" do
        # создаем train для вставки id в путь ссылки
        train = create(:train)
        get "/api/v1/trains/#{train.id}/workouts"
        expect(response.status).to eq(200)
      end
    end
  end

  # проверка запроса POST / create
  describe "POST /create" do
    # проверка на вывод статуса 201, если происходит сохранение
    it "status http 201" do
      # создаем и присваиваем переменные exercise и train
      exercise = create(:exercise)
      train = create(:train)
      # прописываем путь и отправляем параметры params на создание workout
      post "/api/v1/trains/#{train.id}/workouts",
      params: { workout: { train_id: train.id, exercise_id: exercise.id } }
      expect(response.status).to eq(201)
    end
    # проверка на вывод статуса 400, если не происходит сохранение
    it "status http 400" do
      train = create(:train)
      post "/api/v1/trains/#{train.id}/workouts",
      # отправляем пустые параметры
      params: { }
      expect(response.status).to eq(400)
    end
  end

end