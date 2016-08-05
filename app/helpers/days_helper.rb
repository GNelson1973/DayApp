module DaysHelper

  def image_for_index(day)
    if day.image_name.blank?
      image_tag("default.png", class: "image_tag_listing")
    else
      image_tag(day.image_name, class: "image_tag_listing")
    end
  end

end
