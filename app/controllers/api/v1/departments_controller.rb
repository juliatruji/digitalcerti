class Api::V1::DepartmentsController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_department, only: [:show, :update, :destroy]

  def index
    departments = DepartmentQuery.new(policy_scope(Department))
                      .relation
                      .search_by_params(search_permit_params)

    paginate_items = paginate departments, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::DepartmentSerializer
  end

  def show
    render json: @department, serializer: Api::V1::DepartmentSerializer
  end

  def create
    country = Country.find(params[:country_id])
    if country.nil?
      render json: {
        status: "error",
        message: "Country not found"
      }, status: :not_found
      return
    end
    department = country.departments.new(permitted_params)
    authorize department
    if department.save
      render json: {
        status: "success",
        message: "Department created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::DepartmentSerializer.new(department)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating department",
        errors: department.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @department
    if @department.update(permitted_params)
      render json: {
        status: 'success',
        message: 'department updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::DepartmentSerializer.new(@department)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating department",
        errors: @department.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @department
    if @department.destroy
      render json: {
        status: "success",
        message: "Successfully delete Country",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::DepartmentSerializer.new(@department)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @department.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_department
    @department = authorize policy_scope(Department).find(params[:id]), :show?
  end

  def permitted_params
    params.permit(
      :name,
      :var_name,
      :country_id
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
