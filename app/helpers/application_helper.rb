module ApplicationHelper

  def show_flash_message
    [:alert, :error, :notice, :success].collect do |key|
      content_tag(:div, flash[key], :class => "flash_message flash_#{key}") unless flash[key].blank?
    end.join
  end

  def logged_in?
    if session[:ifgroup_id]
      true
    else
      false
    end
  end
end
