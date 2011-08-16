ZeroClipboard.setMoviePath("/js/ZeroClipboard10.swf");

//function $(id) {
//	return document.getElementById(id);
//}

function toClipboard(copy_id, input_id, msg) {
	var clip = new ZeroClipboard.Client();
	clip.setHandCursor(true);
	clip.setText($(input_id).value);
	clip.addEventListener('complete', function(client) {
				alert(msg);
			});
	clip.glue(copy_id);
}