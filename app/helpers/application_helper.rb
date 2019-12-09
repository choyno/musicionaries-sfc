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
end
