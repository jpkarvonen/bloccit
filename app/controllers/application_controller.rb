class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #sometimes would get 'ActionController::InvalidAuthenticityToken (ActionController::InvalidAuthenticityToken)' so i added this line to circumvent the issues. worked on this with my mentor and we couldn't
  #determine why this was happening so i ended up doing this
  skip_before_action :verify_authenticity_token
end
