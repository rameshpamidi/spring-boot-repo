<%-- <script src='<spring:url value="/resources/js/jquery/jquery.min.js"/>'></script> --%>
<script src='<spring:url value="/webjars/jquery/1.11.1/jquery.min.js"/>'></script>
<script src='<spring:url value="/resources/js/common/iziToast.min.js"/>'></script>

<script>
	function demo_login(id) {
		var username = id;
		var password = '12345';
		$('#username').val(username);
		$('#password').val(password);
	}
</script>
