##
# Application Controller for eloader-pkg-admin app
##
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= begin
      AuthorizedUser.find_by(sunet_id: sunet_id)
    end
  end
  helper_method :current_user

  def sunet_id
    request.env['REMOTE_USER'] || ENV['REMOTE_USER']
  end
  helper_method :sunet_id

  def page_title
    'E-Loader Package Admin'
  end
end
