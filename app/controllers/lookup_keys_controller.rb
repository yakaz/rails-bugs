class LookupKeysController < ApplicationController
  # GET /lookup_keys
  # GET /lookup_keys.json
  def index
    @lookup_keys = LookupKey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lookup_keys }
    end
  end

  # GET /lookup_keys/1
  # GET /lookup_keys/1.json
  def show
    @lookup_key = LookupKey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lookup_key }
    end
  end

  # GET /lookup_keys/new
  # GET /lookup_keys/new.json
  def new
    @lookup_key = LookupKey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lookup_key }
    end
  end

  # GET /lookup_keys/1/edit
  def edit
    @lookup_key = LookupKey.find(params[:id])
  end

  # POST /lookup_keys
  # POST /lookup_keys.json
  def create
    @lookup_key = LookupKey.new(params[:lookup_key])

    respond_to do |format|
      if @lookup_key.save
        format.html { redirect_to @lookup_key, :notice => 'Lookup key was successfully created.' }
        format.json { render :json => @lookup_key, :status => :created, :location => @lookup_key }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lookup_key.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lookup_keys/1
  # PUT /lookup_keys/1.json
  def update
    @lookup_key = LookupKey.find(params[:id])

    respond_to do |format|
      if @lookup_key.update_attributes(params[:lookup_key])
        format.html { redirect_to @lookup_key, :notice => 'Lookup key was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lookup_key.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lookup_keys/1
  # DELETE /lookup_keys/1.json
  def destroy
    @lookup_key = LookupKey.find(params[:id])
    @lookup_key.destroy

    respond_to do |format|
      format.html { redirect_to lookup_keys_url }
      format.json { head :no_content }
    end
  end
end
