module ApplicationHelper

  # Gets restaurant path by name. Useful for the front page, where
  # we hard code links to Cook's top 10 restaurants.
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
  
  # Returns full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "HouHealth"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

end
