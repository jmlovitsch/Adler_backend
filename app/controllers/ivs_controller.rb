class IvsController < ApplicationController
  before_action :set_iv, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /ivs
  # GET /ivs.json
  def index
    @ivs = Iv.all
    render json: @ivs
  end

  # GET /ivs/1
  # GET /ivs/1.json
  def show
    render json: @iv
  end

  # POST /ivs
  # POST /ivs.json
  def create
    @iv = Iv.new(iv_params)

    if @iv.save
        render json: @iv, status: :created, location: @iv
    else
      render json: @iv.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ivs/1
  # PATCH/PUT /ivs/1.json
  def update
    if @iv.update(iv_params)
      render :show, status: :ok, location: @iv
    else
      render json: @iv.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ivs/1
  # DELETE /ivs/1.json
  def destroy
    @iv.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iv
      @iv = Iv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def iv_params
      params.require(:iv).permit(:admission_id, :author, :iv_type, :dresssing_status, :site_status, :line_status, :dressing_change_due, :cap)
    end
end
