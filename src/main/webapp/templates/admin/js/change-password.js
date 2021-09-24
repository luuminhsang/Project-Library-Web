$(document).ready(function() {
	$('#oldPassword').on('mouseleave focusout', function() {
		$.ajax({url : '/validate-password', 
			data : {
				password : $('#oldPassword').val()
			},
			success : function(data) {
				if ($('#oldPassword').val() != '' && data == false) {
					$("#oldPassword").css("border","1px solid red");
					$('#error_oldPassword').html('Old password is invalid!');
					$("#btnSubmit").attr("disabled", true);
				} else {
					$("#oldPassword").css("border", "1px solid green");
					$('#error_oldPassword').html('');
					$("#btnSubmit").attr("disabled", false);
				}},
				error : function(err) {
					console.log(err);
					}});
	});
		$('#newPassword').on('mouseleave focusout', function() {
		$.ajax({url : '/validate-new-password', 
			data : {
				newPassword : $('#newPassword').val(),
				},
				success : function(data) {
					if ($('#newPassword').val() != '' && data == false) {
						$("#newPassword").css("border","1px solid red");
						$('#error_new_password').html('Password must be 6 character');
						$("#btnSubmit").attr("disabled", true);
					} else {
						$("#newPassword").css("border", "1px solid green");
						$('#error_new_password').html('');
						$("#btnSubmit").attr("disabled", false);
					}},
		});
	});
	$('#confirmPassword').on('mouseleave focusout', function() {
		$.ajax({url : '/validate-confirm-password', 
			data : {
				newPassword : $('#newPassword').val(),
				confirmPassword: $('#confirmPassword').val()
					},
					success : function(data) {
						if ($('#newPassword').val() != '' && $('#confirmPassword').val() != '' && data == false) {
							$("#confirmPassword").css("border","1px solid red");
							$('#error_confirm_password').html('Confirm password are not match!');
							$("#btnSubmit").attr("disabled", true);
						} else {
							$("#confirmPassword").css("border", "1px solid green");
							$('#error_confirm_password').html('');
							$("#btnSubmit").attr("disabled", false);
						}},
			});
	});
})