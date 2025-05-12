class PropertiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @properties = current_user.properties
  end

  def new
    @property = Property.new
  end

  def create
    @property = current_user.properties.build(property_params)
    if @property.save
      redirect_to properties_path, notice: 'Propiedad creada exitosamente.'
    else
      render :new
    end
  end

  private

  def property_params
    params.require(:property).permit(:title, :description, :price, :address)
  end
end
