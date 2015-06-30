class Violation < ActiveRecord::Base
  belongs_to :restaurant
  default_scope { order('date DESC') }
end
