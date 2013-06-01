class GetoffInfosController < ApplicationController
  # GET /getoff_infos
  # GET /getoff_infos.json
  def index
    @getoff_infos = GetoffInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @getoff_infos }
    end
  end

  # GET /getoff_infos/1
  # GET /getoff_infos/1.json
  def show
    @getoff_infos = GetoffInfo.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @getoff_info }
    end
 
 end

  # GET /getoff_infos/new
  # GET /getoff_infos/new.json
  def new
    @getoff_info = GetoffInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @getoff_info }
    end
  end

  # GET /getoff_infos/1/edit
  def edit
    @getoff_info = GetoffInfo.find(params[:id])
  end

  # POST /getoff_infos
  # POST /getoff_infos.json
  def create
    @getoff_info = GetoffInfo.new(params[:getoff_info])

    respond_to do |format|
      if @getoff_info.save
        format.html { redirect_to @getoff_info, :notice => 'Getoff info was successfully created.' }
        format.json { render :json => @getoff_info, :status => :created, :location => @getoff_info }
      else
        format.html { render :action => "new" }
        format.json { render :json => @getoff_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /getoff_infos/1
  # PUT /getoff_infos/1.json
  def update
    @getoff_info = GetoffInfo.find(params[:id])

    respond_to do |format|
      if @getoff_info.update_attributes(params[:getoff_info])
        format.html { redirect_to @getoff_info, :notice => 'Getoff info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @getoff_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /getoff_infos/1
  # DELETE /getoff_infos/1.json
  def destroy
    @getoff_info = GetoffInfo.find(params[:id])
    @getoff_info.destroy

    respond_to do |format|
      format.html { redirect_to getoff_infos_url }
      format.json { head :no_content }
    end
  end

  def search
    station_name = params[:station_name]
    if station_name != nil
      @seats = GetoffInfo.find_all_by_station_name(station_name, :order => "time")
    else
      @seats = nil 
    end
  end

  def index
  end 

end
