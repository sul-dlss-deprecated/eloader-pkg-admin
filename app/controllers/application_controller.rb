##
# Application Controller for eloader-pkg-admin app
##
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= begin
      AuthorizedUser.find_by(user_id: user_id)
    end
  end
  helper_method :current_user

  def user_id
    request.env['REMOTE_USER'] || ENV['REMOTE_USER']
  end
  helper_method :user_id

  def current_user_name
    current_user.user_name
  end
end
