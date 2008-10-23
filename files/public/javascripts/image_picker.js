var ImagePicker = {
	pick:function(field, image_id, image_title, image_url) {
		$(field + '_id').value = image_id;
		$(field).src = image_url;
		$(field).alt = image_title;
		Modalbox.hide();
	},
	
	clear:function(field, image_url) {
		$(field + '_id').value = '';
		$(field).src = image_url;
		$(field).alt = 'No_image';
		Modalbox.hide();
	},
	
	open_picker:function(params) {
		url = $H(params).unset('url');
		Modalbox.show(url + '?' + $H(params).toQueryString(),
			{title: 'Select an image...', width: 520, afterLoad: ImagePicker.setup});
	}
};
