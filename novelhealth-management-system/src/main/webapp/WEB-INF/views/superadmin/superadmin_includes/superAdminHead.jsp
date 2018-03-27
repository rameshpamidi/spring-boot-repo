
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<title>SuperAdmin Dashboard - Novel Hospital Management System</title>

<!-- meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Ekattor School Manager Pro - Creativeitem" />
<meta name="author" content="Creativeitem" />

<!-- css -->
<link rel="stylesheet" href='<spring:url value="/resources/images/favicon.png"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/custom.min.css" />'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/entypo.css"/>'>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
<link rel="stylesheet" href='<spring:url value="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/neon-core.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/neon-core.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/neon-forms.css"/>'>
<link rel="stylesheet" href='<spring:url value="resources/css/common/custom.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/daterangepicker-bs3.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/jquery.selectBoxIt.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/datatables.responsive.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/select2-bootstrap.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/dropzone.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/font-awesome.min.css"/>'>
<link rel="stylesheet" href='<spring:url value="/resources/css/common/component.css"/>'>
<style>
.tile-stats .icon {
	bottom: 30px;
}
</style>
<!-- scripts -->
<script src='<spring:url value="/webjars/jquery/1.11.1/jquery.min.js"/>'></script>
<script>
	function checkDelete() {
		var chk = confirm("Are You Sure To Delete This !");
		if (chk) {
			return true;
		} else {
			return false;
		}
	}
</script>