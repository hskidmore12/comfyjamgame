var text_length = string_length(texts[text_index]);
var animating = current_text_progress < text_length;

if(animating){
	current_text_progress++;
}


if(keyboard_check_pressed(vk_space)){
	if(animating){
		current_text_progress = text_length;
	}
	
	else{
		if(text_index++ < (array_length(texts) - 1)){
			current_text_progress = 0;
		}
		else{
			instance_destroy();
		}
	}

}