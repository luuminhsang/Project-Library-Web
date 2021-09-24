$(document).ready(function() {
	$('#description').on('mouseleave focusout', function() {
		if ($('#description').val() != '' && $('#description').val().length < 20) {
			$("#description").css("border","1px solid red");
			$("#error_description").html('Description must be 20 character');
			$("#btnSubmit").attr("disabled", true);
		}else{
			$("#description").css("border", "1px solid #D8D8D8");
			$('#error_description').html('');
			$("#btnSubmit").attr("disabled", false);
			}
		});
});