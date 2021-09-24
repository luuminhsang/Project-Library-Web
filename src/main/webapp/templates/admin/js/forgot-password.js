$(document).ready(function() {
	$('#email').on('mouseleave focusout', function() {
		$.ajax({
			url : '/validate-email',
			data : {
				email : $('#email').val()
			},
			success : function(data) {
				if ($('#email').val() != '' && data == false) {
					$("#email").css("border",
							"1px solid red");
					$('#error_exist_email').html(
							'Email is not exist!');
					$("#btnSubmit").attr("disabled", true);
				} else {
					$("#email").css("border",
							"1px solid green");
					$('#error_exist_email').html('');
					$("#btnSubmit").attr("disabled", false);
				}
			},
		});
	});
})
