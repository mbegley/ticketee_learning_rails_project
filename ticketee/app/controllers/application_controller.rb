class ApplicationController < ActionController::Base
#  before_filter :mailer_set_url_options

  protect_from_forgery

#  def mailer_set_url_options
#    ActionMailer::Base.default_url_options[:host] = request.host_with_port
#  end

  private

  def authorize_admin!
    authenticate_user!
    unless current_user.admin?
      flash[:alert] = "You must be an admin to do that."
      redirect_to root_path
    end
  end
  
end
