module ApplicationHelper
  def nav_link(link_text, link_path, additional_class = nil)
    class_name = current_page?(link_path) ? 'current' : nil
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end  
end
