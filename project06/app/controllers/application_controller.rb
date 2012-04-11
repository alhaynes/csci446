class ApplicationController < ActionController::Base
  layout :layout
  helper :all
  protect_from_forgery
 filter_resource_access
  
  helper_method :current_user
  private
  def current_user_session
	return @current_user_session if defined?(@current_user_session)
	@current_user_session = UserSession.find
  end
  
  def current_user
	return @current_user if defined?(@current_user)
	@current_user = current_user_session && current_user_session.record
  end
  
  def layout
	if @current_user
		if permitted_to? :manage, :games
			'admin'
		else 
			'members'
		end
	else 
		'public'
	end
  end
end
