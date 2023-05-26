class Api::V1::BaseController < ActionController::Base
  include Pundit
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from Pundit::NotAuthorizedError, with: :not_found
  protect_from_forgery with: :null_session
  layout false

  def pundit_user
    @current_user
  end

  protected

  def ensure_and_set_current_user
    authenticate = AuthenticationService::GetUser.new(request.headers['Authorization']).call
    if authenticate.success?
      @current_user = authenticate.result
    elsif current_user
      @current_user = current_user
    else
     render_not_found
    end
  end

  private

  def not_found
    render_not_found
  end

  def render_not_found
    render json: { status: "error", message: "Resource not found" }, status: :not_found
  end
end
