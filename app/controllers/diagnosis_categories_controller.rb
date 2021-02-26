class DiagnosisCategoriesController < ApplicationController
  before_action :set_diagnosis_category, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /diagnosis_categories
  # GET /diagnosis_categories.json
  def index
    @diagnosis_categories = DiagnosisCategory.all
    render json: @diagnosis_categories
  end

  # GET /diagnosis_categories/1
  # GET /diagnosis_categories/1.json
  def show
    render json: @diagnosis_category
  end

  # POST /diagnosis_categories
  # POST /diagnosis_categories.json
  def create
    @diagnosis_category = DiagnosisCategory.new(diagnosis_category_params)

    if @diagnosis_category.save
        render json: @diagnosis_category, status: :created, location: @diagnosis_category
    else
      render json: @diagnosis_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diagnosis_categories/1
  # PATCH/PUT /diagnosis_categories/1.json
  def update
    if @diagnosis_category.update(diagnosis_category_params)
      render :show, status: :ok, location: @diagnosis_category
    else
      render json: @diagnosis_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /diagnosis_categories/1
  # DELETE /diagnosis_categories/1.json
  def destroy
    @diagnosis_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis_category
      @diagnosis_category = DiagnosisCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diagnosis_category_params
      params.fetch(:diagnosis_category, {})
    end
end
