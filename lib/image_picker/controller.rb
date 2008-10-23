module ImagePicker
  module Controller
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def image_picker(model, options={})
        define_method "open_picker" do
          @field = params[:field]
          @images = defined?(WillPaginate) ? model.paginate(options.merge(:page => params[:page])) : model.all(options)
          render :file => "#{RAILS_ROOT}/vendor/plugins/image_picker/templates/open_picker.html.erb"
        end

        define_method "pick" do
          image = Image.find(params[:id])
          field = params[:field]
          render :update do |page|
            page.call "parent.ImagePicker.pick", field, image.id, image.thumbnail
          end
        end
      end
    end
  end
end

ActionController::Base.send :include, ImagePicker::Controller