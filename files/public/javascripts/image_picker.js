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
	
	search:function() {
		ImagePicker.open_picker({field:$('target_field').value, terms:$('terms').value});
	},
	
	open_picker:function(params) {
		controller = $H(params).unset('controller');
		Modalbox.show('/' + controller + '/open_picker?' + $H(params).toQueryString(),
			{title: 'Select an image...', width: 520, afterLoad: ImagePicker.setup});
	},
	
	setup:function() {
		Event.addBehavior({
			'#terms:keyup' : function(e) {
				if (e.keyCode == 13) ImagePicker.search();
			},
			'#search:click' : function() {
				ImagePicker.search();
			},
			'#cancel:click' : function() {
				ImagePicker.open_picker({field:$('target_field').value});
			},
			'#clear:click' : function() {
				ImagePicker.clear($('target_field').value, $('default_image').value);
			}
		});
	}
};
