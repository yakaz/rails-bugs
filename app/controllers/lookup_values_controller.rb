class LookupValuesController < ApplicationController
  # GET /lookup_values
  # GET /lookup_values.json
  def index
    @lookup_values = LookupValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lookup_values }
    end
  end

  # GET /lookup_values/1
  # GET /lookup_values/1.json
  def show
    @lookup_value = LookupValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lookup_value }
    end
  end

  # GET /lookup_values/new
  # GET /lookup_values/new.json
  def new
    @lookup_value = LookupValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lookup_value }
    end
  end

  # GET /lookup_values/1/edit
  def edit
    @lookup_value = LookupValue.find(params[:id])
  end

  # POST /lookup_values
  # POST /lookup_values.json
  def create
    @lookup_value = LookupValue.new(params[:lookup_value])

    respond_to do |format|
      if @lookup_value.save
        format.html { redirect_to @lookup_value, :notice => 'Lookup value was successfully created.' }
        format.json { render :json => @lookup_value, :status => :created, :location => @lookup_value }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lookup_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lookup_values/1
  # PUT /lookup_values/1.json
  def update
    @lookup_value = LookupValue.find(params[:id])

    respond_to do |format|
      if @lookup_value.update_attributes(params[:lookup_value])
        format.html { redirect_to @lookup_value, :notice => 'Lookup value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lookup_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lookup_values/1
  # DELETE /lookup_values/1.json
  def destroy
    @lookup_value = LookupValue.find(params[:id])
    @lookup_value.destroy

    respond_to do |format|
      format.html { redirect_to lookup_values_url }
      format.json { head :no_content }
    end
  end
end
