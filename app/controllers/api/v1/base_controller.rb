class Api::V1::BaseController < ActionController::Base
  include Pundit
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from Pundit::NotAuthorizedError, with: :not_found
  protect_from_forgery with: :null_session
  before_action :set_cors_headers
  skip_before_action :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
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

  def set_cors_headers
    response.set_header('Access-Control-Allow-Origin', origin)
    response.set_header('Referrer-Policy', 'strict-origin-when-cross-origin')
    response.set_header('X-Content-Type-Options', 'nosniff')
    response.set_header('X-Frame-Options', 'SAMEORIGIN')
    response.set_header('X-XSS-Protection', '1; mode=block')
    # response.set_header('Content-Security-Policy', "default-src 'self' https:; " \
    #     "img-src 'self' https:" \
    #     "media-src 'none'; " \
    #     "object-src 'none'; " \
    #     "script-src 'self'; " \
    #     "style-src 'self' ")
  end

  def origin
    request.headers["Origin"] || "*"
  end
end
