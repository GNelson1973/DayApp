module DaysHelper

  def image_for_index(day)
    if day.image_name.blank?
      image_tag("default.png", class: "image_tag_listing")
    else
      image_tag(day.image_name, class: "image_tag_listing")
    end
  end

  def current_day?
    @day = Day.where(user_id: current_user)
    @day.last[:date] == Date.today
  end

end
