module ImagePicker
  def image_picker(field)
    url = url_for :action => "open_picker"
    html = stylesheet_link_tag "modalbox"
    html += javascript_include_tag :defaults, "image_picker", "modalbox"
    html += link_to_function image_tag("no_image.jpg", :id => field), "ImagePicker.open_picker({field:'#{field}', url:'#{url}'})"
    html += hidden_field_tag "#{field}_id"
  end
end

ActionView::Base.send :include, ImagePicker