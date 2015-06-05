class Restaurant < ActiveRecord::Base
  has_many :violations, dependent: :destroy

  def self.search(facility_name)
    if facility_name
      self.where("facility_name LIKE ?", "%#{facility_name.upcase}%")
    end
  end
end
