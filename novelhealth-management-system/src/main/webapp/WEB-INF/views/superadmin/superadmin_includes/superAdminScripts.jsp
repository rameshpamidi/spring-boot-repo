<script src='<spring:url value="/resources/js/common/main-gsap.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery-ui-1.10.3.minimal.min.js"/>'></script>

<%-- <script src='<spring:url value="/resources/js/bootstrap/bootstrap.js"/>'></script> --%>

<script src='<spring:url value="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/joinable.js"/>'></script>

<script src='<spring:url value="/resources/js/common/resizeable.js"/>'></script>

<script src='<spring:url value="/resources/js/common/neon-api.js"/>'></script>

<script src='<spring:url value="/resources/js/bootstrap/bootstrap-switch.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/toastr.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.validate.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/fullcalendar.min.js"/>'></script>

<script src='<spring:url value="/resources/js/bootstrap/bootstrap-datepicker.js"/>'></script>

<script src='<spring:url value="/resources/js/bootstrap/bootstrap-timepicker.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/fileinput.js"/>'></script>

<script src='<spring:url value="/resources/js/common/wysihtml5-0.4.0pre.min.js"/>'></script>

<script src='<spring:url value="/resources/js/bootstrap/bootstrap-wysihtml5.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.multi-select.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.knob.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.selectBoxIt.min.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.inputmask.bundle.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/moment.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/daterangepicker.js"/>'></script>

<script src='<spring:url value="/resources/js/common/dropzone.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.dataTables.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/TableTools.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/dataTables.bootstrap.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.dataTables.columnFilter.js"/>'></script>

<script src='<spring:url value="/resources/js/common/lodash.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/datatables.responsive.js"/>'></script>

<script src='<spring:url value="/resources/js/common/select2.min.js"/>'></script>

<script src='<spring:url value="/resources/js/common/neon-calendar.js"/>'></script>

<script src='<spring:url value="/resources/js/common/neon-chat.js"/>'></script>

<script src='<spring:url value="/resources/js/common/neon-custom.js"/>'></script>

<script src='<spring:url value="/resources/js/common/neon-demo.js"/>'></script>

<script src='<spring:url value="/resources/js/common/neon-notes.js"/>'></script>

<script src='<spring:url value="/resources/js/jquery/jquery.form.js"/>'></script>

<script src='<spring:url value="/resources/js/common/ajax-form-submission.js"/>'></script>

<script>
	$(".html5editor").wysihtml5();
</script>


<script type="text/javascript">
	$(document).ready(function(event) {
		event.preventDefault(); 
		$("#hospitals-table").DataTable({
			"iDisplayLength" : 5,
			"aLengthMenu" : [ [ 5, 10, 25, 50, -1 ], [ 5, 10, 25, 50, "All" ] ]
		});
		 
	});
</script>

<script type="text/javascript">
	$(document).ready(function(event) {
		event.preventDefault(); 
		$("#branches-table").DataTable({
			"iDisplayLength" : 5,
			"aLengthMenu" : [ [ 5, 10, 25, 50, -1 ], [ 5, 10, 25, 50, "All" ] ]
		});
		 
	});
</script>
<script type="text/javascript">
	$(document).ready(function(event) {
		event.preventDefault(); 
		$("#admins-table").DataTable({
			"iDisplayLength" : 5,
			"aLengthMenu" : [ [ 5, 10, 25, 50, -1 ], [ 5, 10, 25, 50, "All" ] ]
		});
		 
	});
</script>

<script type="text/javascript">
	function showAjaxModal(url) {
		// SHOWING AJAX PRELOADER IMAGE
		jQuery('#modal_ajax .modal-body')
				.html(
						'<div style="text-align:center;margin-top:200px;"><img src="resources/images/preloader.gif" style="height:25px;" /></div>');

		// LOADING THE AJAX MODAL
		jQuery('#modal_ajax').modal('show', {
			backdrop : 'true'
		});
		// SHOW AJAX RESPONSE ON REQUEST SUCCESS

		$.ajax({
			type : 'GET',
			url : url,
			dataType : 'html'
		}).done(function(data) {
			$('#modal_ajax .modal-body').html(data);
		});

	}
</script>
<script type="text/javascript">
	function confirm_modal(delete_url) {
		jQuery('#modal-4').modal('show', {
			backdrop : 'static'
		});
		document.getElementById('delete_link').setAttribute('href', delete_url);
	}
</script>

<!--    custom width modal -->

<script type="text/javascript">
	function showCustomWidthModal(url) {
		// SHOWING AJAX PRELOADER IMAGE
		jQuery('#modal-2 .modal-body')
				.html(
						'<div style="text-align:center;margin-top:200px;"><img src="/resources/images/preloader.gif" style="height:25px;" /></div>');

		// LOADING THE AJAX MODAL
		jQuery('#modal-2').modal('show', {
			backdrop : 'true'
		});

		// SHOW AJAX RESPONSE ON REQUEST SUCCESS
		$.ajax({
			url : url,
			success : function(response) {
				jQuery('#modal-2 .modal-body').html(response);
			}
		});
	}
</script>