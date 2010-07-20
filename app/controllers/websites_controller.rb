class WebsitesController < ApplicationController
  def ad
    @wp = Website.find_by_id(params[:id]).next_placement
    render :layout => false
  end
     
  # GET /websites
  # GET /websites.xml
  def index
    @websites = @current_user.websites.find(:all, :conditions => { :archive => false})
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @websites }
    end
  end
  
  def archive
     @websites = @current_user.websites.find(:all, :conditions => { :archive => true})
     respond_to do |format|
       format.html # index.html.erb
       format.xml  { render :xml => @websites }
     end
   end
   
  # GET /websites/1
  # GET /websites/1.xml
  def show
    @website = Website.find(params[:webid])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @website }
    end
  end

  # GET /websites/new
  # GET /websites/new.xml
  def new
    @website = Website.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @website }
    end
  end

  # GET /websites/1/edit
  def edit
    @website = Website.find(params[:webid])
  end

  # POST /websites
  # POST /websites.xml
  def create
    @website = Website.new(params[:website])

    respond_to do |format|
      if @website.save
        flash[:notice] = 'Website was successfully created.'
        format.html { redirect_to(:controller => 'websites',:action => "index", :id => @website.user_id, :webid => @website.id) }
        format.xml  { render :xml => @website, :status => :created, :location => @website }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /websites/1
  # PUT /websites/1.xml
  def update
    @website = Website.find(params[:id])

    respond_to do |format|
      if @website.update_attributes(params[:website])
        flash[:notice] = 'Website was successfully updated.'
        format.html { redirect_to(:controller => 'websites',:action => "index", :id => @website.user_id, :webid => @website.id) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /websites/1
  # DELETE /websites/1.xml
  def destroy
    @website = Website.find(params[:id])
    idd = @website.user_id
    @website.destroy

    respond_to do |format|
      format.html { redirect_to(:controller => 'websites',:action => "index", :id => idd) }
      format.xml  { head :ok }
    end
  end
end
