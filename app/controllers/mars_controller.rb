class MarsController < ApplicationController
  before_action :set_mar, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /mars
  # GET /mars.json
  def index
    @mars = Mar.all
    render json: @mars
  end

  # GET /mars/1
  # GET /mars/1.json
  def show
    render json: @mars
  end

  # POST /mars
  # POST /mars.json
  def create
    @mar = Mar.new(mar_params)

    if @mar.save
        render json: @mar, status: :created, location: @mar
    else
      render json: @mar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mars/1
  # PATCH/PUT /mars/1.json
  def update
    if @mar.update(mar_params)
      render :show, status: :ok, location: @mar
    else
      render json: @mar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mars/1
  # DELETE /mars/1.json
  def destroy
    @mar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mar
      @mar = Mar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mar_params
      params.require(:mar).permit(:text)
    end
end
