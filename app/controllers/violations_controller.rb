class ViolationsController < ApplicationController
  def index
  end

  def show
    if params[:search]
      @violations = Violation.search_restaurants(params[:search])
    else
      @violations = Violation.all
    end
  end
end
