class Api::V1::StudentsController < Api::V1::BaseController
  include Rails::Pagination

  before_action :ensure_and_set_current_user
  before_action :find_student, only: [:show, :update, :destroy]

  def index
    students = StudentQuery.new(policy_scope(Student))
                           .relation
                           .search_by_params(search_permit_params)

    paginate_items = paginate students, per_page: params[:per_page]
    render json: paginate_items, each_serializer: Api::V1::StudentSerializer
  end

  def show
    render json: @student, serializer: Api::V1::StudentSerializer
  end

  def create
    student = Student.new(permitted_attributes(Student))
    authorize student
    if student.save
      render json: {
        status: "success",
        message: "student created successfully",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::StudentSerializer.new(student)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while creating student",
        errors: student.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    authorize @student
    if @student.update(permitted_attributes(Student))
      render json: {
        status: 'success',
        message: 'student updated successfully',
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::StudentSerializer.new(@student)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while updating student",
        errors: @student.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @student
    if @student.destroy
      render json: {
        status: "success",
        message: "Successfully delete student",
        data: ActiveModelSerializers::Adapter::Json.new(Api::V1::StudentSerializer.new(@student)).as_json
      }, status: :ok
    else
      render json: {
        status: "error",
        message: "An error occurred while deleting",
        errors: @student.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def find_student
    @student = authorize policy_scope(Student).find(params[:id]), :show?
  end

  def search_permit_params
    params.permit(:location_id,
                  :q,
                  :from,
                  :to,
                  :filter_range_date,
                  :sort)
  end
end
