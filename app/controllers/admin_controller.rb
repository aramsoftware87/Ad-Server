class AdminController < ApplicationController
  skip_before_filter :authorize, :only => [:login]
  before_filter :ensure_admin, :except => [:login, :logout]
  
  def login
    session[:user_id] = nil
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if (params[:name] == "" || params[:password] == nil)
        flash[:notice] = ' please fill all the fields'
      end
      if user
        nan = user.name
        typ = user.utype
        pass = user.password
        session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_uri] = nil
        if uri
          flash[:notice] = 'Welcome ' + user.name
          redirect_to uri
        elsif (typ == 'Publisher' && pass == params[:password])
          flash[:notice] = 'Welcome ' + user.name
          redirect_to(:controller => 'websites', :action => "index", :id => user.id)
        elsif (typ == 'Advertiser' && pass == params[:password])
          flash[:notice] = 'Welcome ' + nan
          redirect_to(:controller => 'placements',:action => "index", :id => user.id)
        elsif (typ == 'Admin' && pass == params[:password])
          flash[:notice] = 'Welcome ' + nan
          redirect_to(:controller => 'users')
        end
      else
        flash[:notice] = 'invalid username/password'
      end
    end
  end
  
  def edit
    respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @current_user }
    end
  end
  
  def sendemail
    if request.post?
      user = User.sendmepass(params[:email])
      if user
        mail = user.email
        pass = user.password
        nam = user.name
        Confirmation.deliver_thanks(mail, pass, nam)
        flash[:notice] = 'The remindation email sent, Please check your email box'
      else
        flash.now[:notice] = "invalid email address"
      end
    end
  end  

  def logout
    session[:user_id] = nil 
    flash[:notice] = 'Logged out' 
    redirect_to(:action => "login")
  end

  def index
    redirect_to :action => "login"
  end
  
end
