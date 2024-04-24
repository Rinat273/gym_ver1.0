class Api::V1::WorkoutsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @workouts = Workout.all
    # проверка на вывод всех тренировок @workouts
    if @workouts
      # при true вывод json и статуса
      render json: @workouts, status: 200
    else
      # иначе вывод сообщения и статуса
      render json: "Workouts Not Found", status: 404
    end
  end

  def show
    # поиск и присвоение переменной
    @workout = Workout.find(params[:id])
    # проверка на вывод данной тренировки
    if @workout
      # при true вывод json и статуса
      render json: @workout, status: 200
    else
      # иначе вывод сообщения и статуса
      render json: "Workout Not Found", status: 404
    end
  end

  def create
    # создание новой тренировки и присвоение переменной
    @workout = Workout.new(workout_params)
    # проверка на сохранение тренировки
    if @workout.save
      # при true вывод json и статуса
      render json: @workout, status: 201
    else
      # иначе вывод сообщения и статуса
      render json: "Workout Not Found", status: 400
    end
  end

  def destroy
    # поиск и присвоение переменной
    @workout = Workout.find(params[:id])
    # проверка на удаление 
    if @workout
      # если находится тренировка - она удаляется
      @workout.destroy
      # вывод сообщения и статуса
      render json: "Workout deleted", status: 204
    end
  end

  private
  def workout_params
    params.require(:workout).permit(:train_id, :exercise_id)
  end

end