class RxesController < ApplicationController
  before_action :set_rx, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /rxes
  def index
    @rxes = Rx.all

    render json: @rxes
  end

  # GET /rxes/1
  def show
    render json: @rx
  end

  # POST /rxes
  def create
    @rx = Rx.new(rx_params)

    if @rx.save
      render json: @rx, status: :created, location: @rx
    else
      render json: @rx.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rxes/1
  def update
    if @rx.update(rx_params)
      render json: @rx
    else
      render json: @rx.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rxes/1
  def destroy
    @rx.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rx
      @rx = Rx.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rx_params
      params.require(:rx).permit(:route, :iv_rate, :source_location, :dose, :time_due, :duration, :frequency, :if_prn_reason, :duration, :provider, :acknowledged_by, :admission_id, :written_requested_by )
    end
end
