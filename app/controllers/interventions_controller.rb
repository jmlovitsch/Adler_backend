class InterventionsController < ApplicationController
  before_action :set_intervention, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /interventions
  # GET /interventions.json
  def index
    @interventions = Intervention.all
    render json: @interventions
  end

  # GET /interventions/1
  # GET /interventions/1.json
  def show
    render json: @intervention
  end

  # POST /interventions
  # POST /interventions.json
  def create
    @intervention = Intervention.new(intervention_params)

    if @intervention.save
        render json: @intervention, status: :created, location: @intervention
    else
      render json: @intervention.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interventions/1
  # PATCH/PUT /interventions/1.json
  def update
    if @intervention.update(intervention_params)
      render :show, status: :ok, location: @intervention
    else
      render json: @intervention.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interventions/1
  # DELETE /interventions/1.json
  def destroy
    @intervention.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervention
      @intervention = Intervention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intervention_params
      params.fetch(:intervention, {})
    end
end
