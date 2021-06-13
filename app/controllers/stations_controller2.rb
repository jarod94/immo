class StationsController < ApplicationController

  class PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :edit, :update,:destroy ]
  def index
    @properties = Property.all
  end
  def new
    if params[:back]
      @property = Property.new(property_params)
    else
      @property = Property.new
      2.times { @property.stations.build }
    end
  end

    def create
      @property = Property.new(property_params)
        if @property.save
          redirect_to properties_path, notice: "property cre"

        else
          render :new
        end
    end



  def show
  end
  def edit
  end
  def destroy
    @property = Property.find(params[:id])
    if @property.delete
      flash[:notice] = 'station deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this property!'
      render :destroy
  end
end
  def update
    @property = Property.find(params[:id])   # Overlap!
    if @property.update(property_params)
      redirect_to properties_path, notice: "I edited the property!"
    else
      render :edit
    end
  end
  def destroy
    @property.destroy
    redirect_to properties_path, notice:"I deleted the property!"
  end
  private
  def property_params
    params.require(:property).permit(:propertyName, :rent, :railName, :buildAge, :address, :note, stations_attributes:{} )
  end
  def set_property
        @property = Property.find(params[:id])
  end
end
