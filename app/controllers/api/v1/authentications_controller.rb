class Api::V1::AuthenticationsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  def create
    authenticate = AuthenticationService::Authenticate.new(user_params[:email], user_params[:password]).call
    if authenticate.success?
      render(json: authenticate.result, status: :ok)
    else
      render(json: {
        status: 'error',
        errors: authenticate.errors,
        message: 'An error ocurred'
      }, status: :unauthorized)
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end