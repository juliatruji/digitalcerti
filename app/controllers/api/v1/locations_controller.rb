class Api::V1::LocationsController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_location, only: [:show, :update, :destroy]

  def index
    locations = LocationQuery.new(policy_scope(Location))
                      .relation
                      .search_by_params(search_permit_params)

    paginate_items = paginate locations, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::LocationSerializer
  end

  def show
    render json: @location, serializer: Api::V1::LocationSerializer
  end

  def create
    location = Location.new(permitted_attributes(Location))
    authorize location
    if location.save
      geolocation = Geolocation.find_by(permitted_attributes(Geolocation))

      if geolocation
        location.update(geolocation: geolocation)
      else
        geolocation = Geolocation.create(permitted_attributes(Geolocation))
        location.update(geolocation: geolocation)
      end
      render json: {
        status: "success",
        message: "location created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::LocationSerializer.new(location)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating Location",
        errors: location.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @location
    if @location.update(permitted_attributes(Location))
      if @location.geolocation
        @location.geolocation.update(permitted_attributes(Geolocation))
      else
        geolocation = Geolocation.create(permitted_attributes(Geolocation))
        @location.update(geolocation: geolocation)
      end
      render json: {
        status: 'success',
        message: 'location updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::LocationSerializer.new(@location)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating location",
        errors: @location.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @location
    if @location.destroy
      render json: {
        status: "success",
        message: "Successfully delete location",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::LocationSerializer.new(@location)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @location.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_location
    @location = authorize policy_scope(Location).find(params[:id]), :show?
  end

  def search_permit_params
    params.permit(:client_id,
                  :q,
                  :geolocation_id,
                  :from,
                  :to,
                  :filter_range_date,
                  :country_id,
                  :sort)
  end
end
