class RestaurantsController < ApplicationController
  def show
    @restaurant = params[:restaurant]
  end
end
