class Api::V1::UsersController < Api::V1::BaseController
  include Rails::Pagination
  # before_action :authenticate_user!
  before_action :ensure_and_set_current_user
  before_action :find_user, only: [:show, :update]

  def index
    users = policy_scope(User)
    paginate_items = paginate users, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::UserSerializer
  end

  def show
    render json: @user, serializer: Api::V1::UserSerializer
  end

  def create
    user = User.new(permitted_attributes(User))
    authorize user
    if user.save
      render json: {
        status: "success",
        message: "User created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::UserSerializer.new(user)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating User",
        errors: user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @user
    if @user.update(permitted_attributes(User))
      render json: {
        status: 'success',
        message: 'User updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::UserSerializer.new(@user)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating User",
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_user
    @user = authorize policy_scope(User).find(params[:id]), :show?
  end

  def search_permit_params
    params.permit(:client_id,
                  :q,
                  :from,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
