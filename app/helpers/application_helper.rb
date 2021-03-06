module ApplicationHelper

  def bootstrap_class_for flash_type
    case flash_type
      when 'success'
        "alert-success"
      when 'error'
        "alert-error"
      when 'alert'
        "alert-block"
      when 'notice'
        "alert-info"
      else
        flash_type.to_s
    end
  end

  def days_to_launch
    if @episode
      @episode.start_date.mjd - DateTime.now.mjd
    else
     '//'
    end
  end

end
