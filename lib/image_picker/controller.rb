module Controller
  def open_picker
    @field = params[:field]
    @images = paginate_images
    render :layout => "default"
  end

  def pick
    @field = params[:field]
    render :update do |page|
      page.call "parent.ImagePicker.pick", @field, @image.id, @image.image.url(:thumb)
    end
  end
end