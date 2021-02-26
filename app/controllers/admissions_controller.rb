class AdmissionsController < ApplicationController
  before_action :set_admission, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:show, :index, :create]

  # GET /admissions
  def index
    @admissions = Admission.all

    render json: @admissions
  end

  # GET /admissions/1
  def show
    render json: @admission
  end

  # POST /admissions
  def create
    @admission = Admission.new(admission_params)

    if @admission.save
      render json: @admission, status: :created, location: @admission
    else
      render json: @admission.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admissions/1
  def update
    if @admission.update(admission_params)
      render json: @admission
    else
      render json: @admission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admissions/1
  def destroy
    @admission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admission
      @admission = Admission.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admission_params
      params.require(:admission).permit(:patient_id, :admitting_diagnosis, :admission_date, :current_room, :expected_discharge, :code_status, :who_authorized_share, :religion_and_parish)
    end
end
