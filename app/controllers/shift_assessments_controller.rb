class ShiftAssessmentsController < ApplicationController
  before_action :set_shift_assessment, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /shift_assessments
  # GET /shift_assessments.json
  def index
    @shift_assessments = ShiftAssessment.all
    render json: @shift_assessments
  end

  # GET /shift_assessments/1
  # GET /shift_assessments/1.json
  def show
    render json: @shift_assessment
  end

  # POST /shift_assessments
  # POST /shift_assessments.json
  def create
    @shift_assessment = ShiftAssessment.new(shift_assessment_params)

    if @shift_assessment.save
        render json: @shift_assessment, status: :created, location: @shift_assessment
    else
      render json: @shift_assessment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shift_assessments/1
  # PATCH/PUT /shift_assessments/1.json
  def update
    if @shift_assessment.update(shift_assessment_params)
      render :show, status: :ok, location: @shift_assessment
    else
      render json: @shift_assessment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shift_assessments/1
  # DELETE /shift_assessments/1.json
  def destroy
    @shift_assessment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_assessment
      @shift_assessment = ShiftAssessment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shift_assessment_params
      params.require(:shift_assessment).permit(:content, :admission_id, :author)
    end
end
