class IntakeoutputsController < ApplicationController
  before_action :set_intakeoutput, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /intakeoutputs
  # GET /intakeoutputs.json
  def index
    @intakeoutputs = Intakeoutput.all
    render json: @intakeoutputs
  end

  # GET /intakeoutputs/1
  # GET /intakeoutputs/1.json
  def show
    render json: @intakeoutput
  end

  # POST /intakeoutputs
  # POST /intakeoutputs.json
  def create
    @intakeoutput = Intakeoutput.new(intakeoutput_params)

    if @intakeoutput.save
        render json: @intakeoutput, status: :created, location: @intakeoutput
    else
      render json: @intakeoutput.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /intakeoutputs/1
  # PATCH/PUT /intakeoutputs/1.json
  def update
    if @intakeoutput.update(intakeoutput_params)
      render :show, status: :ok, location: @intakeoutput
    else
      render json: @intakeoutput.errors, status: :unprocessable_entity
    end
  end

  # DELETE /intakeoutputs/1
  # DELETE /intakeoutputs/1.json
  def destroy
    @intakeoutput.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intakeoutput
      @intakeoutput = Intakeoutput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intakeoutput_params
      params.require(:intakeoutput).permit(:admission_id, :author, :po, :percent_meal, :iv, :urine, :urine_occurance, :urine_color, :uring_appearance, :urine_odor, :stool_occurance, :stool_incontinence, :stool_color, :stool_amount, :stool_appearance, :drainage_method, :internal, :external, :urine_catheter, :male_genetalia, :female_genetalia)
    end
end
