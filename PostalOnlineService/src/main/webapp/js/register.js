$(function(){
	
	$("#register").validate({
		rules : {
			email : {
				required : true
			},
			fname : {
				required : true	
			},
			mname : {
				required : true	
			},
			lname : {
				required : true	
			},
			password : {
				required : true
			}
		},
		messages : {
			email : {
				required : "cannot be empty"
			},
			fname : {
				required : "firstname cannot be empty"
			},
			mname : {
				required : "middlename cannot be empty"
			},
			lname : {
				required : "lasstname cannot be empty"
			},
			password : {
				required : "cannot be empty"
			}
		}
	});
 });
