module ApplicationHelper
  def get_path(restaurant_name)
    r = Restaurant.search(restaurant_name).first
    if r
      restaurants_path(r)
    end
  end

  def get_violation_count(restaurant_name)
    if Restaurant.search(restaurant_name).exists?
      result = Restaurant.search(restaurant_name).first.violations.count
    else
      0
    end
  end

end
