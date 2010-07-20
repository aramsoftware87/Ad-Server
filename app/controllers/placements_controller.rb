class PlacementsController < ApplicationController
  # GET /placements
  # GET /placements.xml
  def index
    @placements = @current_user.placements.find(:all, :conditions => { :archive => false})
    respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @placements }
    end
  end

  def archive
    @placements = @current_user.placements.find(:all, :conditions => { :archive => true})
    respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @websites }
    end
  end
   
  # GET /placements/1
  # GET /placements/1.xml
  def show
    @placement = Placement.find(params[:plaid])
    respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @placement }
    end
  end

  # GET /placements/new
  # GET /placements/new.xml
  def new
    @placement = Placement.new
    respond_to do |format|
    format.html # new.html.erb
    format.xml  { render :xml => @placement }
    end
  end

  # GET /placements/1/edit
  def edit
    @placement = Placement.find(params[:plaid])
  end

  # POST /placements
  # POST /placements.xml
  def create
    @placement = Placement.new(params[:placement])
    respond_to do |format|
      if @placement.save
        flash[:notice] = 'Placement was successfully created.'
        format.html { redirect_to(:controller => 'placements',:action => "index", :id => @placement.user_id, :plaid => @placement.id) }
        format.xml  { render :xml => @placement, :status => :created, :location => @placement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @placement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /placements/1
  # PUT /placements/1.xml
  def update
    @placement = Placement.find(params[:id])
    respond_to do |format|
      if @placement.update_attributes(params[:placement])
        flash[:notice] = 'Placement was successfully updated.'
        format.html { redirect_to(:controller => 'placements',:action => "index", :id => @placement.user_id, :plaid => @placement.id) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @placement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /placements/1
  # DELETE /placements/1.xml
  def destroy
    @placement = Placement.find(params[:id])
    idd = @placement.user_id
    @placement.destroy
    respond_to do |format|
      format.html { redirect_to(:controller => 'placements',:action => "index", :id => idd) }
      format.xml  { head :ok }
    end
  end
end
