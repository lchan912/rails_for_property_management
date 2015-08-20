class PropertiesController < ApplicationController

  def create
    property = current_user.properties.new(property_params)
    if property.save
      redirect_to user_property_path(id: property.id)
    else
      render 'user/show'
    end
  end

  def show
    @property = Property.find(params[:id])
    p @property
  end

  private
  def property_params
    params.require(:property).permit(:street, :suite, :city, :zip)
  end

end
