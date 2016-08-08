class Day < ActiveRecord::Base
  belongs_to :user

  def push_up_result
    result = (push_up - actual_push_ups)
    status = "Competed"
    extra = ( actual_push_ups - push_up )

    if actual_push_ups.blank? || actual_push_ups == 0
      " No actuals yet"
    else
      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra! Champ!!"
      end
    end
  end

  def meditation_result
    result = (meditation - meditation_actual)
    status = "Competed"
    extra = (meditation_actual - meditation)

    if meditation_actual.blank? || meditation_actual == 0
      " No actuals yet"
    else
      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra!"
      end
    end
  end

  def abcrunch_result
    result = (abdominal_crunch - abcrunch_actual)
    status = "Competed"
    extra = (abcrunch_actual - abdominal_crunch)

    if abcrunch_actual.blank? || abcrunch_actual == 0
      " No actuals yet"
    else
      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra!"
      end
    end
  end

  def scissors_result
    result = (leg_Scissors - leg_scissors_actual)
    status = "Competed"
    extra = (leg_scissors_actual - leg_Scissors)

    if leg_scissors_actual.blank? || leg_scissors_actual == 0
      " No actuals yet"
    else
      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra!"
      end
    end
  end

  def walk_run_result
    result = (walk_run - walk_run_actual)
    status = "Competed"
    extra = (walk_run_actual - walk_run)

    if walk_run_actual.blank? || walk_run_actual == 0
      " No actuals yet"
    else
      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra!"
      end
    end
  end

  def day_period
    # t = Time.now
    return Time.now
  #   if t.hour < 12
  #     "morning"
  #   elsif t.hour > 12
  #     "evening"
  #   else
  #     "afternoon"
  #   end
  end
end
