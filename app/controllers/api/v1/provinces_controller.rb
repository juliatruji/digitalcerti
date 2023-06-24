class Api::V1::ProvincesController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_province, only: [:show, :update, :destroy]

  def index
    provinces = ProvinceQuery.new(policy_scope(Province))
                      .relation
                      .search_by_params(search_permit_params)

    paginate_items = paginate provinces, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::ProvinceSerializer
  end

  def show
    render json: @province, serializer: Api::V1::ProvinceSerializer
  end

  def create
    department = Department.find(params[:department_id])
    if department.nil?
      render json: {
        status: "error",
        message: "Department not found"
      }, status: :not_found
      return
    end
    province = department.provinces.new(permitted_params)
    authorize province
    if province.save
      render json: {
        status: "success",
        message: "Province created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::ProvinceSerializer.new(province)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating province",
        errors: province.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @province
    if @province.update(permitted_params)
      render json: {
        status: 'success',
        message: 'province updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::ProvinceSerializer.new(@province)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating province",
        errors: @province.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @province
    if @province.destroy
      render json: {
        status: "success",
        message: "Successfully delete province",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::ProvinceSerializer.new(@province)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while province",
        errors: @province.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_province
    @province = authorize policy_scope(Province).find(params[:id]), :show?
  end

  def permitted_params
    params.permit(
      :name,
      :var_name,
      :department_id
    )
  end
  def search_permit_params
    params.permit(:q,
                  :from,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
