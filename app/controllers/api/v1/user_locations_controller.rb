class Api::V1::UserLocationsController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_user_location, only: [:show, :update, :destroy]

  def index
    user_locations = policy_scope(UserLocation)

    paginate_items = paginate user_locations, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::UserLocationSerializer
  end

  def show
    render json: @user_location, serializer: Api::V1::UserLocationSerializer
  end

  def create
    user_location = UserLocation.new(permitted_attributes(UserLocation))
    authorize user_location
    if user_location.save
      render json: {
        status: "success",
        message: "user_location created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::UserLocationSerializer.new(user_location)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating user_location",
        errors: user_location.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @user_location
    if @user_location.update(permitted_attributes(UserLocation))
      render json: {
        status: 'success',
        message: 'user_location updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::UserLocationSerializer.new(@user_location)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating user_location",
        errors: @user_location.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @user_location
    if @user_location.destroy
      render json: {
        status: "success",
        message: "Successfully delete user_location",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::UserLocationSerializer.new(@user_location)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @user_location.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_user_location
    @user_location = authorize policy_scope(UserLocation).find(params[:id]), :show?
  end

  def search_permit_params
    params.permit(:user_id,
                  :location_id,
                  :from,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
