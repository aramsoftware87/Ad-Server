# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :authorize, :except => [:ad, :click, :next_placement, :about, :contact, :services, :sendemail]
  helper :all # include all helpers, all the time
  
  protect_from_forgery
  filter_parameter_logging :password
 
 protected 
   def authorize
     @current_user = User.find_by_id(session[:user_id]) 
     if @current_user
       return
     else
       session[:original_uri] = request.request_uri
       flash[:notice] = "Please log in"
       redirect_to :controller => 'admin', :action => 'login'
     end
   end
   
   def ensure_admin
     unless @current_user.utype == "Admin"
       flash[:notice] = "You don't have permission to access that page"
       redirect_to "/"
     end
   end
   
end
