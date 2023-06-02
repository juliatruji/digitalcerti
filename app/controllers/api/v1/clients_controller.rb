class Api::V1::ClientsController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_client, only: [:show, :update]

  def index
    clients = ClientQuery.new(policy_scope(Client))
                      .relation
                      .search_by_params(search_permit_params)

    paginate_items = paginate clients, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::ClientSerializer
  end

  def show
    render json: @client, serializer: Api::V1::ClientSerializer
  end

  def create
    byebug

    client = Client.new(permitted_attributes(Client))
    authorize client
    if client.save
      geolocation = Geolocation.find_by(permitted_geolocation_attributes)

      if geolocation
        client.update(geolocation: geolocation)
      else
        geolocation = Geolocation.create(permitted_geolocation_attributes)
        client.update(geolocation: geolocation)
      end
      render json: {
        status: "success",
        message: "Delivery created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::ClientSerializer.new(client)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating Delivery",
        errors: client.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @client
    if @client.update(permitted_attributes(Client))
      if @client.geolocation
        @client.geolocation.update(permitted_geolocation_attributes)
      else
        geolocation = Geolocation.create(permitted_geolocation_attributes)
        @client.update(geolocation: geolocation)
      end
      render json: {
        status: 'success',
        message: 'Client updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::ClientSerializer.new(@client)).as_json,
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating Client",
        errors: @client.errors.full_messages,
      }, status: :unprocessable_entity
    end
  end

  private

  def find_client
    @client = authorize policy_scope(Client).find(params[:id]), :show?
  end

  def permitted_geolocation_attributes
    params.require(:client).require(:geolocation).permit(
      :country_id,
      :department_id,
      :province_id,
      :district_id
    )
  end

  def search_permit_params
    params.permit(:client_id,
                  :q,
                  :province_id,
                  :department_id,
                  :district_id,
                  :active,
                  :from,
                  :to,
                  :filter_range_date,
                  :country_id,
                  :sort)
  end
end
