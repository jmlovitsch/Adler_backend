class AdmittingsController < ApplicationController
  before_action :set_admitting, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /admittings
  # GET /admittings.json
  def index
    @admittings = Admitting.all
    render json: @admittings
  end

  # GET /admittings/1
  # GET /admittings/1.json
  def show
    render json: @admitting
  end

  # POST /admittings
  # POST /admittings.json
  def create
    @admitting = Admitting.new(admitting_params)

    if @admitting.save
        render json: @admitting, status: :created, location: @admitting
    else
      render json: @admitting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admittings/1
  # PATCH/PUT /admittings/1.json
  def update
    if @admitting.update(admitting_params)
      render :show, status: :ok, location: @admitting
    else
      render json: @admitting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admittings/1
  # DELETE /admittings/1.json
  def destroy
    @admitting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admitting
      @admitting = Admitting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admitting_params
      params.require(:admitting).permit(:patient, :content)
    end
end
