<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Js Plugins -->
<script src="<c:url value='/templates/web/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/templates/web/js/bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/templates/web/js/jquery.nice-select.min.js'/>"></script>
<script src="<c:url value='/templates/web/js/jquery-ui.min.js'/>"></script>
<script src="<c:url value='/templates/web/js/jquery.slicknav.js'/>"></script>
<script src="<c:url value='/templates/web/js/mixitup.min.js'/>"></script>
<script src="<c:url value='/templates/web/js/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/templates/web/js/main.js'/>"></script>
<script type="text/javascript">
	document.getElementById('upgradePoster').onclick = function(e) {
		if (e.target == document.getElementById('ugradeSubmit')) {
			$('#upgradeReturn').val(function() {
				var url = "${baseURL}/upgradePoster?accountNumber=";
				var x = document.getElementById('accountNumber').value;
				return url + x;
			});
		}
	};

	document.getElementById('moreViews').onclick = function(e) {
		if (e.target == document.getElementById('moreViewsSubmit')) {
			$('#moreViewsReturn').val(function() {
				var url = "${baseURL}/moreViews?views=20";
				return url;
			});
		}
	};
</script>
<script type="text/javascript">
	document.getElementById('renewPoster').onclick = function(e) {
		if (e.target == document.getElementById('renewSubmit')) {
			$('#renewReturn').val(function() {
				var url = "${baseURL}/upgradePoster";
				return url;
			});
		}
	};
</script>