class NursingDiagnosesController < ApplicationController
  before_action :set_nursing_diagnosis, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /nursing_diagnoses
  # GET /nursing_diagnoses.json
  def index
    @nursing_diagnoses = NursingDiagnosis.all
    render json: @nursing_diagnoses
  end

  # GET /nursing_diagnoses/1
  # GET /nursing_diagnoses/1.json
  def show
    render json: @nursing_diagnosis
  end

  # POST /nursing_diagnoses
  # POST /nursing_diagnoses.json
  def create
    @nursing_diagnosis = NursingDiagnosis.new(nursing_diagnosis_params)

    if @nursing_diagnosis.save
        render json: @nursing_diagnosis, status: :created, location: @nursing_diagnosis
    else
      render json: @nursing_diagnosis.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nursing_diagnoses/1
  # PATCH/PUT /nursing_diagnoses/1.json
  def update
    if @nursing_diagnosis.update(nursing_diagnosis_params)
      render :show, status: :ok, location: @nursing_diagnosis
    else
      render json: @nursing_diagnosis.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nursing_diagnoses/1
  # DELETE /nursing_diagnoses/1.json
  def destroy
    @nursing_diagnosis.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nursing_diagnosis
      @nursing_diagnosis = NursingDiagnosis.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nursing_diagnosis_params
      params.fetch(:nursing_diagnosis, {})
    end
end
