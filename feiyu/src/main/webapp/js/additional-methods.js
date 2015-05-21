jQuery.validator.addMethod("stringCheck", function(value, element){
	return this.optional(element) ||/^[a-zA-Z0-9_]+$/.test(value);
}, "只能包括英文字母、数字和下划线");



