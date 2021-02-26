class VitalsController < ApplicationController
  before_action :set_vital, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /vitals
  # GET /vitals.json
  def index
    @vitals = Vital.all
    render json: @vitals
  end

  # GET /vitals/1
  # GET /vitals/1.json
  def show
    render json: @vital
  end

  # POST /vitals
  # POST /vitals.json
  def create
    @vital = Vital.new(vital_params)

    if @vital.save
      render json: @vital, status: :created, location: @vital
    else
      render json: @vital.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vitals/1
  # PATCH/PUT /vitals/1.json
  def update
    if @vital.update(vital_params)
      render :show, status: :ok, location: @vital
    else
      render json: @vital.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vitals/1
  # DELETE /vitals/1.json
  def destroy
    @vital.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vital
      @vital = Vital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vital_params
      params.require(:vital).permit(:bp_systolic, :bp_diastolic, :bp_site, :bp_position, :bp_type, :hr_type, :hr_bpm, :hr_quality, :temp_site, :temp_degree, :rr_hr, :rr_rrmin, :rr_quality, :o2_saturation, :o2_source, :o2_site, :admission_id, :author)
    end

end
