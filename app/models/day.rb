class Day < ActiveRecord::Base
  belongs_to :user

  def meditation_result
    if meditation_actual.blank? || meditation_actual == 0
      " No actuals yet"
    else
      result = (meditation - meditation_actual)
      status = "Competed"
      extra = (meditation_actual - meditation)

      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra!"
      end
    end
  end

  def push_up_result
    if actual_push_ups.blank? || actual_push_ups == 0
      " No actuals yet"
    else
      result = (push_up - actual_push_ups)
      status = "Competed"
      extra = ( actual_push_ups - push_up )

      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra! Champ!!"
      end
    end
  end

  def abcrunch_result
    if abcrunch_actual.blank? || abcrunch_actual == 0
      " No actuals yet"
    else
      result = (abdominal_crunch - abcrunch_actual)
      status = "Competed"
      extra = (abcrunch_actual - abdominal_crunch)

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
    if leg_scissors_actual.blank? || leg_scissors_actual == 0
      " No actuals yet"
    else
      result = (leg_Scissors - leg_scissors_actual)
      status = "Competed"
      extra = (leg_scissors_actual - leg_Scissors)

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
    if walk_run_actual.blank? || walk_run_actual == 0
      " No actuals yet"
    else
      result = (walk_run - walk_run_actual)
      status = "Competed"
      extra = (walk_run_actual - walk_run)

      if result > 0
        result.to_s + " Left"
      elsif result == 0
        status
      else
        extra.to_s + " Extra!"
      end
    end
  end

end
