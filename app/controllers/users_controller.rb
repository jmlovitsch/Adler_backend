class UsersController < ApplicationController
  before_action :set_user, only: [:records, :show, :update, :destroy, :medical_group, :update]
  skip_before_action :authorized, only: [:records, :show, :index, :create, :patients]
  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
        render json: @user
    end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def records
    @records = Admission.select { |admission| admission.patient_id === @user.id }
    render json: {records: @records}
  end


  def medical_group
    if @user.valid?
        @employees = User.select { |user| user.medical_group == @user.medical_group}
        render json: @employees
    else
        render json: { error: 'failed to fetch employees' }, status: :not_acceptable
    end
  end


  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    render json: {message: "User Successfuly Deleted"}, status: :accepted
  end

  def patients
    patients = User.select { |user| user.patient == true}
    render json: patients
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :patient, :password, :first_name, :last_name, :street_address, :street_address_2, :city, :state, :zip, :health_insurance_provider, :health_insurance_policy_number, :health_insurance_id, :billing_address, :billing_address_2, :billing_city, :billing_state, :billing_zip, :home_phone, :cell_phone, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_phone, :employee_id, :authorization, :email)
    end
end
