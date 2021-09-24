$(document).ready(function() {
	$('#fullName').on('mouseleave focusout', function() {
		if ($('#fullName').val() == '') {
			$("#fullName").css("border", "1px solid red");
			$("#btnSubmit").attr("disabled", true);
		}else{
			$("#fullName").css("border", "1px solid green");
			$("#btnSubmit").attr("disabled", false);
		}
	});
	$('#email').on('mouseleave focusout', function() {
		$.ajax({
			url : '/validate-email',
			data : {
				email: $('#email').val()
			},
			success : function(data) {
				if ($('#email').val() != '' && data == true) {
					$("#email").css("border", "1px solid red");
					$('#error_exist_email').html('Email has already exist!');
					$("#btnSubmit").attr("disabled", true);
				}else{
					$("#email").css("border", "1px solid green");
					$('#error_exist_email').html('');
					$("#btnSubmit").attr("disabled", false);
				}
			},
		});
	});
	$('#userName').on('mouseleave focusout', function() {
		$.ajax({url : '/validate-username',
			data : {
				userName : $('#userName').val(),
			},
			success : function(data) {
				if ($('#userName').val() != '' && data == true) {
					$("#userName").css("border", "1px solid red");
					$('#error_exist_userName').html('User name has already exist!');
					$('#error_security').html('');
					$("#btnSubmit").attr("disabled", true);
				}else{
					$("#userName").css("border", "1px solid green");
					$('#error_exist_userName').html('');
					$("#btnSubmit").attr("disabled", false);
				}
			},
		});
	});
	$('#password').on('mouseleave focusout', function() {
		if ($('#password').val() != '' && $('#password').val().length < 6) {
			$("#password").css("border", "1px solid red");
			$('#error_password').html('Password must be 6 character');
			$('#error_security').html('');
			$("#btnSubmit").attr("disabled", true);
		}else{
			$("#password").css("border", "1px solid green");
			$('#error_password').html('');
			$("#btnSubmit").attr("disabled", false);
		}
	});
	$('#confirmPassword').on('mouseleave focusout', function() {
		$.ajax({url : '/validate-confirm-password',
			data : {
				newPassword : $('#password').val(),
				confirmPassword: $('#confirmPassword').val()
			},
			success : function(data) {
				if ($('#password').val() != '' && $('#confirmPassword').val() != '' && data == false) {
					$("#confirmPassword").css("border", "1px solid red");
					$('#error_confirm_password').html('Confirm password are not match!');
					$('#error_security').html('');
					$("#btnSubmit").attr("disabled", true);
				}else{
					$("#confirmPassword").css("border", "1px solid green");
					$('#error_confirm_password').html('');
					$("#btnSubmit").attr("disabled", false);
				}
			},
		});
	});
});