class TrainTypesController < ApplicationController
  before_action :set_train_type, only: %i[ show edit update destroy ]

  # GET /train_types or /train_types.json
  def index
    @train_types = TrainType.all
  end

  # GET /train_types/1 or /train_types/1.json
  def show
  end

  # GET /train_types/new
  def new
    @train_type = TrainType.new
  end

  # GET /train_types/1/edit
  def edit
  end

  # POST /train_types or /train_types.json
  def create
    @train_type = TrainType.new(train_type_params)

    respond_to do |format|
      if @train_type.save
        format.html { redirect_to train_type_url(@train_type), notice: "Train type was successfully created." }
        format.json { render :show, status: :created, location: @train_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @train_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_types/1 or /train_types/1.json
  def update
    respond_to do |format|
      if @train_type.update(train_type_params)
        format.html { redirect_to train_type_url(@train_type), notice: "Train type was successfully updated." }
        format.json { render :show, status: :ok, location: @train_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @train_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_types/1 or /train_types/1.json
  def destroy
    @train_type.destroy!

    respond_to do |format|
      format.html { redirect_to train_types_url, notice: "Train type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_type
      @train_type = TrainType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def train_type_params
      params.require(:train_type).permit(:title)
    end
end
