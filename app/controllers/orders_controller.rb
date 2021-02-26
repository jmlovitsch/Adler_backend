class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create]

  # GET /orders
  def index
    @orders = Order.all

    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    rx = Rx.create(rx_params)
    @order = Order.new(order_params)
    @order.orderable = rx

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:provider, :acknowledged_by, :written_requested_by, :admission_id)
    end
    #put :patient back in order_params
    def rx_params
        params.require(:order).permit(:route, :iv_rate, :source_location, :dose, :time_due, :frequency, :if_prn_reason, :duration)
    end

end
