class Api::V1::GeolocationsController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_geolocation, only: [:show, :update, :destroy]

  def index
    geolocations = GeolocationQuery.new(policy_scope(Geolocation))
                                .relation
                                .search_by_params(search_permit_params)

    paginate_items = paginate geolocations, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::GeolocationSerializer
  end

  def show
    render json: @geolocation, serializer: Api::V1::GeolocationSerializer
  end

  def create
    geolocation = Geolocation.new(permitted_attributes(Geolocation))
    authorize geolocation
    if geolocation.save
      render json: {
        status: "success",
        message: "geolocation created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::GeolocationSerializer.new(geolocation)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating geolocation",
        errors: geolocation.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @geolocation
    if @geolocation.update(permitted_attributes(Geolocation))
      render json: {
        status: 'success',
        message: 'geolocation updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::GeolocationSerializer.new(@geolocation)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating geolocation",
        errors: @geolocation.errors.full_messages,
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @geolocation
    if @geolocation.destroy
      render json: {
        status: "success",
        message: "Successfully delete geolocation",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::GeolocationSerializer.new(@geolocation)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @geolocation.errors.full_messages,
      }, status: :unprocessable_entity
    end
  end

  private

  def find_geolocation
    @geolocation = authorize policy_scope(Geolocation).find(params[:id]), :show?
  end

  def search_permit_params
    params.permit(:from,
                  :country_id,
                  :department_id,
                  :province_id,
                  :district_id,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
