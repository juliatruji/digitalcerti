class Api::V1::CertificateCategoriesController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_certificate_category, only: [:show, :update, :destroy]

  def index
    certificate_categories = CertificateCategoryQuery.new(policy_scope(CertificateCategory))
                                                     .relation
                                                     .search_by_params(search_permit_params)

    paginate_items = paginate certificate_categories, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::CertificateCategorySerializer
  end

  def show
    render json: @certificate_category, serializer: Api::V1::CertificateCategorySerializer
  end

  def create
    certificate_category = CertificateCategory.new(permitted_attributes(CertificateCategory))
    authorize certificate_category
    if certificate_category.save
      render json: {
        status: "success",
        message: "certificate_category created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CertificateCategorySerializer.new(certificate_category)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating certificate_category",
        errors: certificate_category.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @certificate_category
    if @certificate_category.update(permitted_attributes(CertificateCategory))
      render json: {
        status: 'success',
        message: 'certificate_category updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CertificateCategorySerializer.new(@certificate_category)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating certificate_category",
        errors: @certificate_category.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @certificate_category
    if @certificate_category.destroy
      render json: {
        status: "success",
        message: "Successfully delete certificate_category",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CertificateCategorySerializer.new(@certificate_category)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @certificate_category.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_certificate_category
    @certificate_category = authorize policy_scope(CertificateCategory).find(params[:id]), :show?
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
