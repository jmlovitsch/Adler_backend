class DischargesController < ApplicationController
  before_action :set_discharge, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /discharges
  # GET /discharges.json
  def index
    @discharges = Discharge.all
    render json: @discharges
  end

  # GET /discharges/1
  # GET /discharges/1.json
  def show
    render json: @discharge
  end

  # POST /discharges
  # POST /discharges.json
  def create
    @discharge = Discharge.new(discharge_params)

    if @discharge.save
        render json: @discharge, status: :created, location: @discharge
    else
      render json: @discharge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /discharges/1
  # PATCH/PUT /discharges/1.json
  def update
    if @discharge.update(discharge_params)
      render :show, status: :ok, location: @discharge
    else
      render json: @discharge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /discharges/1
  # DELETE /discharges/1.json
  def destroy
    @discharge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discharge
      @discharge = Discharge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discharge_params
      params.require(:discharge).permit(:patient, :content)
    end
end
