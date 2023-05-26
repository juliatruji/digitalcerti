class AuthenticationService::GetUser

  prepend SimpleCommand
  def initialize(token = "")
    @token = token
  end

  def call
    if valid?
      jwt = Auth.decode(http_auth_header)
      if jwt.empty?
        errors.add(:token, "Invalid Token")
        return nil
      else
        user = User.find(jwt["sub"])
        return user
      end
    end
    nil
  end

  private

  def valid?
    flag = true
    if @token.blank?
      flag = false
      errors.add(:token, "Invalid token(Empty/Nil)")
    end
    flag
  end

  def http_auth_header
    @token.split(' ').last
  end
end
  