class CarePlansController < ApplicationController
  before_action :set_care_plan, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /care_plans
  # GET /care_plans.json
  def index
    @care_plans = CarePlan.all
    render json: @care_plans
  end

  # GET /care_plans/1
  # GET /care_plans/1.json
  def show
    render json: @care_plan
  end

  # POST /care_plans
  # POST /care_plans.json
  def create
    @care_plan = CarePlan.new(care_plan_params)

    if @care_plan.save
        render json: @care_plan, status: :created, location: @care_plan
    else
      render json: @care_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /care_plans/1
  # PATCH/PUT /care_plans/1.json
  def update
    if @care_plan.update(care_plan_params)
        render json: @care_plan, status: :ok, location: @care_plan
    else
      render json: @care_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /care_plans/1
  # DELETE /care_plans/1.json
  def destroy
    @care_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_plan
      @care_plan = CarePlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def care_plan_params
      params.require(:care_plan).permit(:diagnosis_category, :admission_id, :author, :ocs, :acs, :nursing_diagnosis)
    end
end
