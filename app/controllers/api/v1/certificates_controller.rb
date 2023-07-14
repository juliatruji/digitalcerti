class Api::V1::CertificatesController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_certificate, only: [:show, :update, :destroy]

  def index
    certificates = CertificateQuery.new(policy_scope(Certificate))
                                    .relation
                                    .search_by_params(search_permit_params)

    paginate_items = paginate certificates, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::CertificateSerializer
  end

  def show
    render json: @certificate, serializer: Api::V1::CertificateSerializer
  end

  def create
    certificate = Certificate.new(permitted_attributes(Certificate))
    authorize certificate
    if certificate.save
      render json: {
        status: "success",
        message: "certificate created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CertificateSerializer.new(certificate)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating certificate",
        errors: certificate.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @certificate
    if @certificate.update(permitted_attributes(Certificate))
      render json: {
        status: 'success',
        message: 'certificate updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CertificateSerializer.new(@certificate)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating certificate",
        errors: @certificate.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @certificate
    if @certificate.destroy
      render json: {
        status: "success",
        message: "Successfully delete certificate",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::CertificateSerializer.new(@certificate)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @certificate.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_certificate
    @certificate = authorize policy_scope(Certificate).find(params[:id]), :show?
  end

  def search_permit_params
    params.permit(:location_id,
                  :q,
                  :certificate_category_id,
                  :from,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
