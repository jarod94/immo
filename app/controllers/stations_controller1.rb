class StationsController < ApplicationController

  before_action :set_station, only: [:show, :edit, :update, :destroy]

  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end


  def create
  @station = Station.new(station_params)
  if params[:back]
    render :new
  else
  if @station.save
    redirect_to stations_path, notice: "I have created a station!"
  else
    render :new
  end
  end

  def show

  end

  def edit

  end



  def update
  @station = Station.find(params[:id])   # Overlap!
  if @station.update(station_params)
    redirect_to stations_path, notice: "I edited the station!"
  else
    render :edit
  end
  end

  def destroy
    @station = Station.find(params[:id])
    if @station.delete
      flash[:notice] = 'station deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this station!'
      render :destroy
    end

    def set_post
          @station = Station.find(params[:id])
    end

    def destroy
      @station.destroy
      redirect_to stations_path, notice:"I deleted the property!"
    end

    private
    def station_params
      params.require(:station).permit(:stationName, :timeWalk, :railName, :railName)
    end


end
