module ImagePicker
  def image_picker(controller)
    html = stylesheet_link_tag "image_picker", "modalbox"
    html += javascript_include_tag :defaults, "image_picker", "modalbox"
    html += link_to_function "Pick image", "ImagePicker.open_picker({field:this.id, controller:'#{controller}'})", :id => "pick_image"
  end
end

ActionView::Base.send :include, ImagePicker