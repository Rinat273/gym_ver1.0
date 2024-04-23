class ExerciseTypesController < ApplicationController
  before_action :set_exercise_type, only: %i[ show edit update destroy ]

  # GET /exercise_types or /exercise_types.json
  def index
    @exercise_types = ExerciseType.all
  end

  # GET /exercise_types/1 or /exercise_types/1.json
  def show
  end

  # GET /exercise_types/new
  def new
    @exercise_type = ExerciseType.new
  end

  # GET /exercise_types/1/edit
  def edit
  end

  # POST /exercise_types or /exercise_types.json
  def create
    @exercise_type = ExerciseType.new(exercise_type_params)

    respond_to do |format|
      if @exercise_type.save
        format.html { redirect_to exercise_type_url(@exercise_type), notice: "Exercise type was successfully created." }
        format.json { render :show, status: :created, location: @exercise_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_types/1 or /exercise_types/1.json
  def update
    respond_to do |format|
      if @exercise_type.update(exercise_type_params)
        format.html { redirect_to exercise_type_url(@exercise_type), notice: "Exercise type was successfully updated." }
        format.json { render :show, status: :ok, location: @exercise_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_types/1 or /exercise_types/1.json
  def destroy
    @exercise_type.destroy!

    respond_to do |format|
      format.html { redirect_to exercise_types_url, notice: "Exercise type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_type
      @exercise_type = ExerciseType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercise_type_params
      params.require(:exercise_type).permit(:title)
    end
end
