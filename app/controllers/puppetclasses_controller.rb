class PuppetclassesController < ApplicationController
  # GET /puppetclasses
  # GET /puppetclasses.json
  def index
    @puppetclasses = Puppetclass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @puppetclasses }
    end
  end

  # GET /puppetclasses/1
  # GET /puppetclasses/1.json
  def show
    @puppetclass = Puppetclass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @puppetclass }
    end
  end

  # GET /puppetclasses/new
  # GET /puppetclasses/new.json
  def new
    @puppetclass = Puppetclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @puppetclass }
    end
  end

  # GET /puppetclasses/1/edit
  def edit
    @puppetclass = Puppetclass.find(params[:id])
  end

  # POST /puppetclasses
  # POST /puppetclasses.json
  def create
    @puppetclass = Puppetclass.new(params[:puppetclass])

    respond_to do |format|
      if @puppetclass.save
        format.html { redirect_to @puppetclass, :notice => 'Puppetclass was successfully created.' }
        format.json { render :json => @puppetclass, :status => :created, :location => @puppetclass }
      else
        format.html { render :action => "new" }
        format.json { render :json => @puppetclass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /puppetclasses/1
  # PUT /puppetclasses/1.json
  def update
    @puppetclass = Puppetclass.find(params[:id])

    respond_to do |format|
      if @puppetclass.update_attributes(params[:puppetclass])
        format.html { redirect_to @puppetclass, :notice => 'Puppetclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @puppetclass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /puppetclasses/1
  # DELETE /puppetclasses/1.json
  def destroy
    @puppetclass = Puppetclass.find(params[:id])
    @puppetclass.destroy

    respond_to do |format|
      format.html { redirect_to puppetclasses_url }
      format.json { head :no_content }
    end
  end
end
