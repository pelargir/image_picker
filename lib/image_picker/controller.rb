module ImagePicker
  module Controller
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def image_picker
        define_method "open_picker" do
          @field = params[:field]
          @images = Image.paginate(:order => "created_at DESC", :page => params[:page], :per_page => 6)
          render :file => "#{RAILS_ROOT}/vendor/plugins/image_picker/templates/open_picker.html.haml"
        end

        define_method "pick" do
          @field = params[:field]
          render :update do |page|
            page.call "parent.ImagePicker.pick", @field, @image.id, @image.image.url(:thumb)
          end
        end
      end
    end
  end
end

ActionController::Base.send :include, ImagePicker::Controller