class ApplicationController < ActionController::Base
	protect_from_forgery

private
  def current_user
  	#exemple de cette contraction a || =b => a = a || b
  	@current_user ||= User.find(session[params[:id]]) if session[params[:id]]
  end 
  helper_method :current_user	
end
