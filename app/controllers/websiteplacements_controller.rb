class WebsiteplacementsController < ApplicationController
  # GET /websiteplacements
  # GET /websiteplacements.xml
  def index
    @websiteplacements = Website.find_by_id(params[:webid]).websiteplacements.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @websiteplacements }
    end
  end
  
  def click
    Websiteplacement.find_by_id(params[:id]).ad_click
    render :text => ""
  end
  
  def webplacements
    @websiteplacements = Website.find_by_id(params[:webid]).websiteplacements.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @websiteplacements }
    end
  
  end
  
  def placewebsites
    @websiteplacements = Placement.find_by_id(params[:webid]).websiteplacements.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @websiteplacements }
    end
  
  end
  def webplacementshide
    @websiteplacements = Website.find_by_id(params[:webid]).websiteplacements.find(:all, :conditions => { :status => "Accept"})

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @websiteplacements }
    end
  
  end
  # GET /websiteplacements/1
  # GET /websiteplacements/1.xml
  def show
    @websiteplacement = Websiteplacement.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @websiteplacement }
    end
  end

  # GET /websiteplacements/new
  # GET /websiteplacements/new.xml
  def new
    @websiteplacement = Websiteplacement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @websiteplacement }
    end
  end

  # GET /websiteplacements/1/edit
  def edit
    @websiteplacement = Websiteplacement.find(params[:id])
  end

  # POST /websiteplacements
  # POST /websiteplacements.xml
  def create
    @websiteplacement = Websiteplacement.new(params[:websiteplacement])

    respond_to do |format|
      if @websiteplacement.save
        flash[:notice] = 'Websiteplacement was successfully created.'
        format.html { redirect_to(:controller => 'websiteplacements',:action => "placewebsites", :webid => params[:webid], :uid => params[:uid]) }
        format.xml  { render :xml => @websiteplacement, :status => :created, :location => @websiteplacement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @websiteplacement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /websiteplacements/1
  # PUT /websiteplacements/1.xml
  def update
    @websiteplacement = Websiteplacement.find(params[:id])
    
    respond_to do |format|
      if @websiteplacement.update_attributes(params[:websiteplacement]) && Websiteplacement.sum(:rotation, :conditions => ['website_id = ? AND status = ?', params[:webid], "Accept" ]) < 101
        flash[:notice] = 'Websiteplacement was successfully updated. ' 
        format.html { redirect_to(:controller => 'websiteplacements',:action => "webplacements", :webid => @websiteplacement.website_id, :uid => params[:uid] ) }
        format.xml  { head :ok }
      else
        flash[:notice] = 'Please make the rotation between 1 and 100. '
        format.html { render :action => "edit" }
        format.xml  { render :xml => @websiteplacement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /websiteplacements/1
  # DELETE /websiteplacements/1.xml
  def destroy
    @websiteplacement = Websiteplacement.find(params[:id])
    @websiteplacement.destroy
    
    respond_to do |format|
    if @current_user.utype == "Publisher"
      flash[:notice] = 'Websiteplacement was successfully deleted.'
      format.html { redirect_to(:controller => 'websiteplacements',:action => "webplacements", :webid => @websiteplacement.website_id, :uid => params[:uid]) }
      format.xml  { head :ok }
    else
      flash[:notice] = 'Websiteplacement was successfully deleted.'
      format.html { redirect_to(:controller => 'websiteplacements',:action => "placewebsites", :webid => params[:webid], :uid => params[:uid]) }
      format.xml  { render :xml => @websiteplacement, :status => :created, :location => @websiteplacement }
    end
    end
  end
end
