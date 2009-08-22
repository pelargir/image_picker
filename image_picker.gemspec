Gem::Specification.new do |s|
  s.name     = "image_picker"
  s.version  = "0.5"
  s.date     = "2008-10-23"
  s.summary  = "A simple, customizable image browser."
  s.email    = "pelargir@gmail.com"
  s.homepage = "http://github.com/pelargir/image_picker"
  s.description = "A simple, customizable image browser."
  s.has_rdoc = true
  s.authors  = ["Matthew Bass"]
  s.files    = [
    "CHANGELOG",
    "deleted_files",
    "files/public/images/no_image.jpg",
    "files/public/images/spinner.gif",
    "files/public/javascripts/image_picker.js",
    "files/public/javascripts/modalbox.js",
    "files/public/stylesheets/modalbox.css",
    "image_picker.gemspec",
		"init.rb",
		"install.rb",
		"lib/image_picker.rb",
		"lib/image_picker/asset_copier.rb",
		"lib/image_picker/controller.rb",
		"lib/image_picker/link_renderer.rb",
    "MIT-LICENSE",
    "Rakefile",
		"README",
		"tasks/asset_copier.rake",
		"templates/open_picker.html.erb"
		]
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README"]
end