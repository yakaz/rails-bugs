class HostClassesController < ApplicationController
  # GET /host_classes
  # GET /host_classes.json
  def index
    @host_classes = HostClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @host_classes }
    end
  end

  # GET /host_classes/1
  # GET /host_classes/1.json
  def show
    @host_class = HostClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @host_class }
    end
  end

  # GET /host_classes/new
  # GET /host_classes/new.json
  def new
    @host_class = HostClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @host_class }
    end
  end

  # GET /host_classes/1/edit
  def edit
    @host_class = HostClass.find(params[:id])
  end

  # POST /host_classes
  # POST /host_classes.json
  def create
    @host_class = HostClass.new(params[:host_class])

    respond_to do |format|
      if @host_class.save
        format.html { redirect_to @host_class, :notice => 'Host class was successfully created.' }
        format.json { render :json => @host_class, :status => :created, :location => @host_class }
      else
        format.html { render :action => "new" }
        format.json { render :json => @host_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /host_classes/1
  # PUT /host_classes/1.json
  def update
    @host_class = HostClass.find(params[:id])

    respond_to do |format|
      if @host_class.update_attributes(params[:host_class])
        format.html { redirect_to @host_class, :notice => 'Host class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @host_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /host_classes/1
  # DELETE /host_classes/1.json
  def destroy
    @host_class = HostClass.find(params[:id])
    @host_class.destroy

    respond_to do |format|
      format.html { redirect_to host_classes_url }
      format.json { head :no_content }
    end
  end
end
