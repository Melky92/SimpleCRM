class ApplicationController < ActionController::Base
  TOKEN = "secret"
  before_action :authenticate
  private
  def authenticate
    if request.format == "json" then
        authenticate_or_request_with_http_token do |token, options|
        # Compare the tokens in a time-constant manner, to mitigate
        # timing attacks.
        ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
        end
    end
  end
end
