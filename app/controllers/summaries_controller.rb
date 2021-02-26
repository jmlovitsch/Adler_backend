class SummariesController < ApplicationController
  before_action :set_summary, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /summaries
  # GET /summaries.json
  def index
    @summaries = Summary.all
    render json: @summaries
  end

  # GET /summaries/1
  # GET /summaries/1.json
  def show
    render json: @summary
  end

  # POST /summaries
  # POST /summaries.json
  def create
    @summary = Summary.new(summary_params)

    if @summary.save
        render json: @summary, status: :created, location: @summary
    else
      render json: @summary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /summaries/1
  # PATCH/PUT /summaries/1.json
  def update
    if @summary.update(summary_params)
      render :show, status: :ok, location: @summary
    else
      render json: @summary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /summaries/1
  # DELETE /summaries/1.json
  def destroy
    @summary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_summary
      @summary = Summary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def summary_params
      params.require(:summary).permit(:content)
    end
end
