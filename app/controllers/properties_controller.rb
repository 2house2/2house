class PropertiesController < ApplicationController
  before_action :authenticate_user!

  def create
    @property = current_user.properties.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def search
    @properties = Property.all
  end

  private

  def property_params
    params.require(:property).permit(:title, :location, :available_from, :available_until, :max_guests)
  end
end
