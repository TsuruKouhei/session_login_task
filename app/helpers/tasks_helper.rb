module TasksHelper

  def greeting_based_on_time
    current_hour = Time.now.hour
    
    if current_hour < 12
      "おはよう！！"
    elsif current_hour < 18
      "こんにちは！！"
    else
      "こんばんは！"
    end
  end

end
