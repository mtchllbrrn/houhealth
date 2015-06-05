class Restaurant < ActiveRecord::Base
  has_many :violations, dependent: :destroy
end
