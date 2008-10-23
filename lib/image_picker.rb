module ImagePicker
  def image_picker(options={})
    controller = options.delete(:controller)
    field = options.delete(:field)
    
    html = stylesheet_link_tag "modalbox"
    html += javascript_include_tag :defaults, "image_picker", "modalbox"
    html += link_to_function image_tag("no_image.jpg", :id => field), "ImagePicker.open_picker({field:'#{field}', controller:'#{controller}'})"
    html += hidden_field_tag "#{field}_id"
  end
end

ActionView::Base.send :include, ImagePicker