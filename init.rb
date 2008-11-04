require 'image_picker/asset_copier'

if RAILS_ENV == "development"
  ImagePicker::AssetCopier.copy "image_picker"
else
  ImagePicker::AssetCopier.warn "image_picker"
end