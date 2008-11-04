require 'asset_copier'

if RAILS_ENV == "development"
  AssetCopier.copy "image_picker"
else
  AssetCopier.warn "image_picker"
end