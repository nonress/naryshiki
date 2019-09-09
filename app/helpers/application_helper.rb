module ApplicationHelper

  def full_title
    if base_title = ('')
      full_title
    else
      "#{base_title} | #{full_title}"
    end
  end
end
