class Api::V1::DistrictsController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_district, only: [:show, :update, :destroy]

  def index
    districts = DistrictQuery.new(policy_scope(District))
                      .relation
                      .search_by_params(search_permit_params)

    paginate_items = paginate districts, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::DistrictSerializer
  end

  def show
    render json: @district, serializer: Api::V1::DistrictSerializer
  end

  def create
    province = Province.find(params[:province_id])
    if province.nil?
      render json: {
        status: "error",
        message: "Province not found"
      }, status: :not_found
      return
    end
    district = province.districts.new(permitted_params)
    authorize district
    if district.save
      render json: {
        status: "success",
        message: "District created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::DistrictSerializer.new(district)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating district",
        errors: district.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @district
    if @district.update(permitted_params)
      render json: {
        status: 'success',
        message: 'district updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::DistrictSerializer.new(@district)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating district",
        errors: @district.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @district
    if @district.destroy
      render json: {
        status: "success",
        message: "Successfully delete district",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::DistrictSerializer.new(@district)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while district",
        errors: @district.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_district
    @district = authorize policy_scope(District).find(params[:id]), :show?
  end

  def permitted_params
    params.permit(
      :name,
      :var_name,
      :province_id
    )
  end
  def search_permit_params
    params.permit(:q,
                  :province_id,
                  :from,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
