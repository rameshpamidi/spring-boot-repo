<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="superadmin_includes/superAdminHead.jsp"%>
</head>
<body class="page-body">
	<div class="page-container">
		<div class="sidebar-menu">

			<!-- superadmin side menu header -->
			<%@include file="superadmin_includes/sideMenuHeader.jsp"%>

			<!-- superadmin side menu content -->
			<%@include file="superadmin_includes/superAdminSideMenu.jsp"%>
		</div>
		<div class="main-content">

			<!-- body header -->
			<%@include file="superadmin_includes/superAdminBodyHeader.jsp"%>

			<h3 style="margin: 20px 0px; color: #818da1; font-weight: 200;">
				<i class="entypo-right-circled"></i> Admins
			</h3>

			<!-- <button onclick="showAjaxModal('http://localhost:8080/novelheathcare/addhospitalpage');" class="btn btn-primary pull-right">
				<i class="fa fa-plus"></i>&nbsp;Add Hospital
			</button> -->
			<a href="./addAdminPage"><button class="btn btn-primary pull-right">
					<i class="fa fa-plus"></i>&nbsp;Add Admin
				</button> </a>
			<div style="clear: both;"></div>
			<br>
			<table class="table table-bordered table-striped datatable" id="admins-table">
				<thead>
					<tr>
						<th>Image</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email Id</th>
						<th>Phone</th>
						<th>Status</th>
						<th>options</th>
					</tr>
				</thead>

				<tbody>
					<c:choose>
						<c:when test="${admins.size()>=1}">
							<c:forEach items="${admins}" var="admin">
								<tr>
									<td><img src="http://creativeitem.com/demo/bayanno/uploads/doctor_image/1.jpg" class="img-circle" width="40px" height="40px"></td>
									<td>${admin.firstName}</td>
									<td>${admin.lastName}</td>
									<td>${admin.email}</td>
									<td>${admin.phoneNo}</td>
									<c:choose>
										<c:when test="${admin.status==true}">
											<td>Active</td>
										</c:when>
										<c:when test="${admin.status==false}">
											<td>InActive</td>
										</c:when>
									</c:choose>
									<td colspan="3">
										<!-- <a onclick="showAjaxModal('http://localhost:8080/novelheathcare//addhospitalpage');" class="btn btn-info btn-sm"> <i
											class="fa fa-pencil"></i>&nbsp;Edit</a> --> <a href="./updateAdminPage?adminId=${admin.adminId}" class="btn btn-info btn-sm"> <i
											class="fa fa-pencil"></i>&nbsp;Edit
									</a> <a onclick="confirm_modal('http://localhost:8080/novelheathcare/deleteadmin?adminId=${admin.adminId}')"
										class="btn btn-danger btn-sm"> <i class="fa fa-trash-o"></i>&nbsp;Delete
									</a> 
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<td colspan="7" align="center">No Records</td>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<!-- super admin footer -->
			<%@include file="superadmin_includes/superAdminFooter.jsp"%>
		</div>
	</div>

	<!-- (Ajax Modal)-->
	<div class="modal fade" id="modal_ajax">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Novel Hospital Management System</h4>
				</div>

				<div class="modal-body" style="height: 500px; overflow: auto;"></div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<!-- (Normal Modal)-->
	<div class="modal fade" id="modal-4">
		<div class="modal-dialog">
			<div class="modal-content" style="margin-top: 100px;">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" style="text-align: center;">Are you sure to delete this information ?</h4>
				</div>


				<div class="modal-footer" style="margin: 0px; border-top: 0px; text-align: center;">
					<a href="#" class="btn btn-danger" id="delete_link">Delete</a>
					<button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade custom-width" id="modal-2">
		<div class="modal-dialog" style="width: 75%;">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Novel Hospital Management System</h4>
				</div>

				<div class="modal-body"></div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Bottom Scripts -->
	<%@include file="superadmin_includes/superAdminScripts.jsp"%>

</body>
</html>
