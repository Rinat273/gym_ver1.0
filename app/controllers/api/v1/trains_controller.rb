class Api::V1::TrainsController < ApplicationController
  skip_before_action :verify_authenticity_token

def index
    @trains = Train.all
    # проверка на вывод всех @trains
      if @trains
        # при true вывод json и статуса
        render json: @trains, status: 200
      else
        # иначе вывод сообщения и статуса
        render json: "Trains Not Found", status: 404
      end
  end

  def show
      # поиск и присвоение переменной
      @train = Train.find(params[:id])
    # проверка на вывод
      if @train
        # при true вывод json и статуса
        render json: @train, status: 200
      else
        # иначе вывод сообщения и статуса
        render json: "Train Not Found", status: 404
      end
  end

  def create
    # создание нового Train и присвоение переменной
    @train = Train.new(train_params)
    # проверка на сохранение тренировки
    if @train.save
      # при true вывод json и статуса
      render json: @train, status: 201
    else
      # иначе вывод сообщения и статуса
      render json: 
      { :errors => @train.errors.as_json }, status: 400
    end
  end


  def destroy
    # поиск и присвоение переменной
    @train = Train.find(params[:id])
    # проверка на удаление 
    if @train
      # если находится тренировка - она удаляется
      @train.destroy
      # вывод сообщения и статуса
      render json: "Train deleted"
    end
  end

  private
    def train_params
      params.require(:train).permit(:train_plan_id)
    end
end