class ViolationsController < ApplicationController
  def show
    @violations = Violation.all
  end
end
