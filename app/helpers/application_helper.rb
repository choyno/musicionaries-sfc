module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Musicionaries - SFC"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  
  def current_url
    return request.path_info
  end

  def get_name_from_email(email)
    return email.split("@").first
  end

  def anchor_text(text)
    text = text.downcase
    if text.match(/\s/)
      return text.gsub!(/\ +/, '-')
    end

    return text
  end

  def escape_special_character(text)
    return text.gsub(/[^0-9A-Za-z]/, ' ')
  end

  def toastr_flash_class(type)
    case type
    when "alert"
      "toastr.error"
    when "notice"
      "toastr.success"
    else
      "toastr.info"
    end
  end
end
