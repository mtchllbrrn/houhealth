class Violation < ActiveRecord::Base
  def self.search_restaurants(search_string)
    self.where("facility_name ILIKE ?", '%' << search_string << '%')
  end
end
