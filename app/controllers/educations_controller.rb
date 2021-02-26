class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /educations
  # GET /educations.json
  def index
    @educations = Education.all
    render json: @educations
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
    render json: @educations
  end

  # POST /educations
  # POST /educations.json
  def create
    @education = Education.new(education_params)

    if @education.save
        render json: @education, status: :created, location: @education
    else
      render json: @education.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /educations/1
  # PATCH/PUT /educations/1.json
  def update
    if @education.update(education_params)
      render :show, status: :ok, location: @education
    else
      render json: @education.errors, status: :unprocessable_entity
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    @education.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      @education = Education.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def education_params
      params.require(:education).permit(:content, :admission_id, :author)
    end
end
