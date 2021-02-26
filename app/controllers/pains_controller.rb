class PainsController < ApplicationController
  before_action :set_pain, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /pains
  # GET /pains.json
  def index
    @pains = Pain.all
    render json: @pains
  end

  # GET /pains/1
  # GET /pains/1.json
  def show
    render json: @pain
  end

  # POST /pains
  # POST /pains.json
  def create
    @pain = Pain.new(pain_params)

    if @pain.save
      render json: @pain, status: :created, location: @pain
    else
      render json: @pain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pains/1
  # PATCH/PUT /pains/1.json
  def update
    if @pain.update(pain_params)
      render :show, status: :ok, location: @pain
    else
      render json: @pain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pains/1
  # DELETE /pains/1.json
  def destroy
    @pain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pain
      @pain = Pain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pain_params
      params.require(:pain).permit(:assume_pain, :asleep, :scale_type, :scale_value, :orientation, :location, :treatment, :pasero_sedation, :admission_id, :author)
    end
end
