class Api::V1::CountriesController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_country, only: [:show, :update, :destroy]

  def index
    countries = CountryQuery.new(policy_scope(Country))
                      .relation
                      .search_by_params(search_permit_params)

    paginate_items = paginate countries, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::CountrySerializer
  end

  def show
    render json: @country, serializer: Api::V1::CountrySerializer
  end

  def create
    country = Country.new(permitted_attributes(Country))
    authorize country
    if country.save
      render json: {
        status: "success",
        message: "Country created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CountrySerializer.new(country)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating country",
        errors: country.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @country
    if @country.update(permitted_attributes(Country))
      render json: {
        status: 'success',
        message: 'Country updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CountrySerializer.new(@country)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating Country",
        errors: @country.errors.full_messages,
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @country
    if @country.destroy
      render json: {
        status: "success",
        message: "Successfully delete Country",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CountrySerializer.new(@country)).as_json,
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @country.errors.full_messages,
      }, status: :unprocessable_entity
    end
  end

  private

  def find_country
    @country = authorize policy_scope(Country).find(params[:id]), :show?
  end

  def search_permit_params
    params.permit(:q,
                  :from,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
