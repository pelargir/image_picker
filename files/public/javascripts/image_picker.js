var ImagePicker = {
	pick:function(field, image_id, image_url) {
		$(field + '_id').value = image_id;
		$(field).src = image_url;
		Modalbox.hide();
	},
	
	clear:function(field, image_url) {
		$(field + '_id').value = '';
		$(field).src = image_url;
		$(field).alt = 'No_image';
		Modalbox.hide();
	},
	
	open_picker:function(params) {
		controller = $H(params).unset('controller');
		Modalbox.show('/' + controller + '/open_picker?' + $H(params).toQueryString(),
			{title: 'Select an image...', width: 520, afterLoad: ImagePicker.setup});
	}
};
