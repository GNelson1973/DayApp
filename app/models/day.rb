class Day < ActiveRecord::Base
  belongs_to :user

  def push_up_result
    result = (push_up - actual_push_ups)
    status = "Competed"
    extra = ( actual_push_ups - push_up )

    if result > 0
      result.to_s + " todo"
    elsif result == 0
      status
    else
      extra.to_s + " extra! Champ!!"
    end
  end

end
