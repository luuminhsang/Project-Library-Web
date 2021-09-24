$(document).ready(function() {
	$('#password').on('mouseleave focusout', function() {
		$.ajax({url : '/validate-login', 
			data : {
				userName: $('#userName').val(),
				password: $('#password').val()
			},
			success : function(data) {
				if ($('#userName').val() != '' && $('#password').val() != '' && data == false) {
					$("#userName").css("border","1px solid red");
					$("#password").css("border","1px solid red");
					$('#error_login').html('User name or password are incorrect!');
					$('#error_security').html('');
					$("#btnSubmit").attr("disabled", true);
				}else{
					$("#userName").css("border", "1px solid green");
					$("#password").css("border","1px solid green");
					$('#error_login').html('');
					$("#password").html('');
					$("#error_security").html('');
					$("#message").html('');
					$("#btnSubmit").attr("disabled", false);
					}
				},
			});
		});
	
});
