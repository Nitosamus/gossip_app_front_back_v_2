class CitiesController < ApplicationController

  def show
  	@city = City.find(params[:id])
  	@users = @city.users
  end
  def new
  	@city = City.new
  
  end
  def create
  	@city = City.create
  		redirect_to new_city_user_path(1)
  end
end
