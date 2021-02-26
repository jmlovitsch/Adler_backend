class LabsController < ApplicationController
  before_action :set_lab, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /labs
  def index
    @labs = Lab.all

    render json: @labs
  end

  # GET /labs/1
  def show
    render json: @lab
  end

  # POST /labs
  def create
    @lab = Lab.new(lab_params)
    puts @lab
    if @lab.save
      render json: @lab, status: :created, location: @lab
    else
      render json: @lab.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /labs/1
  def update
    if @lab.update(lab_params)
      render json: @lab
    else
      render json: @lab.errors, status: :unprocessable_entity
    end
  end

  # DELETE /labs/1
  def destroy
    @lab.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab
      @lab = Lab.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lab_params
      params.require(:lab).permit(:issued_how, :source, :time_due, :frequency, :provider, :acknowledged_by, :admission_id, :written_requested_by, :author)
    end
end
