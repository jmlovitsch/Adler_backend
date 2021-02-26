class DailycaresController < ApplicationController
  before_action :set_dailycare, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /dailyycares
  # GET /dailyycares.json
  def index
    @dailycares = Dailycare.all
    render json: @dailycares
  end

  # GET /dailyycares/1
  # GET /dailyycares/1.json
  def show
    render json: @dailycares
  end

  # POST /dailyycares
  # POST /dailyycares.json
  def create
    @dailycare = Dailycare.new(dailycare_params)
    print "Hello"
    if @dailycare.save
        render json: @dailycare, status: :created, location: @dailycare
    else
      render json: @dailycare.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dailyycares/1
  # PATCH/PUT /dailyycares/1.json
  def update
    if @dailycare.update(dailycare_params)
      render :show, status: :ok, location: @dailycare
    else
      render json: @dailycare.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dailyycares/1
  # DELETE /dailyycares/1.json
  def destroy
    @dailycare.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dailycare
      @dailycare = Dailycare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dailycare_params
      params.require(:dailycare).permit(:admission_id, :author, :date_initiated, :nursing_diagnosis, :goals_outcomes, :interventions, :evaluation)
    end
end
