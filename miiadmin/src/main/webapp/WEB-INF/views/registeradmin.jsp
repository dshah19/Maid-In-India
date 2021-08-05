<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/forms/validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:45 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">
		<!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->
		<%@include file="sidebar.jsp"%>
		<div class="main-panel">
			<%@include file="header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-10" style="margin-left: 8%">
							<div class="card">
								<form:form id="RegisterValidation" method="post" 
								modelAttribute="register" enctype="multipart/form-data">
									<div class="card-header card-header-icon"
										data-background-color="rose">
										<i class="material-icons">person</i>
									</div>
									<div class="card-content">
										<h4 class="card-title">
										<c:choose>
												<c:when test="${edit}">
													Update Form
												</c:when>
												<c:otherwise>
													Registration Form
												</c:otherwise>	
										</c:choose>		
										</h4>

										<div class="fileinput fileinput-new text-center"
											data-provides="fileinput"
											style="margin-top: 10px; margin-left: 25px">
											<div class="fileinput-new thumbnail img-circle">
											<c:choose>
												<c:when test="${edit}">
													<img
													src="/miiadmin/resources/images/profilePicture/${register.profilePicture}"
													class="picture-src" id="wizardPicturePreview" title="" />
													</div>
											<div
												class="fileinput-preview fileinput-exists thumbnail img-circle"
												style=""></div>
											<div>
												<span class="btn btn-round btn-rose btn-file"> <span
													class="fileinput-new">Add Photo</span> <span
													class="fileinput-exists">Change</span> <form:input
														type="hidden" path="" />
														<input type="file"
													name="profileImage" id="profileImage" path="profileImage"
													/></span> <br> <a href="#pablo"
													class="btn btn-danger btn-round fileinput-exists"
													data-dismiss="fileinput"><i class="fa fa-times"></i>
													Remove</a>
											</div>
												</c:when>
												<c:otherwise>
													 <img src="/miiadmin/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png"
													class="picture-src" id="wizardPicturePreview" title="" /> 
													</div>
											<div
												class="fileinput-preview fileinput-exists thumbnail img-circle"
												style=""></div>
											<div>
												<span class="btn btn-round btn-rose btn-file"> <span
													class="fileinput-new">Add Photo</span> <span
													class="fileinput-exists">Change</span> <form:input
														type="hidden" path="" />
														<input type="file"
													name="profileImage" id="profileImage" path="profileImage"
													required="true"/></span> <br> <a href="#pablo"
													class="btn btn-danger btn-round fileinput-exists"
													data-dismiss="fileinput"><i class="fa fa-times"></i>
													Remove</a>
											</div>
												</c:otherwise>	
										</c:choose>		
											
										</div>
										 <form:input type="hidden" path="adminId" id="adminId"/>
										 <form:input type="hidden" path="password" id="password"/>
										 <form:input type="hidden" path="profilePicture" id="profilePicture"/>
										 <form:input type="hidden" path="idProof" id="idProof"/>
										<div class="form-group">
											<div class="col-lg-9 col-md-9 col-sm-3"
												style="margin-left: 20%; margin-top: -18%">
												<label class="control-label"> Name <small>*</small>
												</label>
												<form:input id="uname" class="form-control" name="name" path="name"
													type="text" required="true" aria-required="true" />
												<span class="material-input" id="errName" style="color:red;"></span>
											</div>
										</div>
										<br>
										<br>
										<div class="form-group"><br>
											<div class="col-lg-9 col-md-9 col-sm-3"
												style="margin-left: 20%; margin-top: -18%">
												<label class="control-label"> Address <small>*</small>
												</label>
												<form:input id="address" class="form-control" name="address1"
													path="address1" type="text" required="true"
													aria-required="true" />
												<br>
												<form:input id="address" class="form-control" name="address2"
													path="address2" type="text" required="true"
													aria-required="true" />
												<span class="material-input" id="errAddress" style="color:red;"></span>
											</div>
										</div>

										<div class="form-group">

											<div class="col-lg-3 col-md-3 col-sm-3"
												style="margin-left: 35%; margin-top: -3%">

												<form:select class="selectpicker" path="cityId"
													data-style="btn btn-primary btn-round" required="true"
													title="City" data-size="7" tabindex="-98"
													style="background-color:#ec407a">
													<c:forEach items="${cities}" var="c">
                         								  <form:option value="${c.cityId}">${c.name}</form:option>  
                       								</c:forEach>
												</form:select>
											</div>
											<span class="material-input"></span>
										</div>

										<div class="col-lg-1 col-md-1 col-sm-1"
											style="margin-top: -5%; margin-left: 68%"></div>
										<div class="col-lg-3 col-md-3 col-sm-3"
											style="margin-top: -5%; margin-left: 68%">
											<form:select class="selectpicker" path="areaId" id="areasByCity"
													data-style="btn btn-primary btn-round" required="true"
													title="Area" data-size="7" tabindex="-98"
													style="background-color:#ec407a">
													<c:forEach items="${areas}" var="a">
                         								  <form:option value="${a.areaId}">${a.name}</form:option>  
                       								</c:forEach>
												</form:select>
											<!-- <div class="form-group">
												<label class="control-label"> Pincode <small>*</small>
												</label> <input class="form-control" name="pincode" type="text"
													required="true" aria-required="true" /> <span
													class="material-input"></span>
											</div> -->
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1"
											style="margin-top: -7%; margin-left: 7%"></div>
										<div class="col-lg-3 col-md-3 col-sm-3"
											style="margin-top: -7%; margin-left: 7%">
											<div class="form-group">
												<label class="control-label"> Phone No <small>*</small>
												</label>
												<c:choose>
												<c:when test="${edit}">
													<form:input id="mno" class="form-control" name="phoneNo"
													path="phoneNo" type="text" required="true"
													aria-required="true"/>
												</c:when>
												<c:otherwise>
													<form:input id="mobno" class="form-control" name="phoneNo"
													path="phoneNo" type="text" required="true"
													aria-required="true"/>
												</c:otherwise>	
										</c:choose>	
												<span class="material-input" id="errNo" style="color:red;"></span>
											</div>
										</div>

										<div class="form-group label-floating is-empty"></div>
										<div class="form-group">
										<br>
											<div class="col-lg-5 col-md-5 col-sm-3"
												style="margin-left: 7%">
												<label class="control-label"> Email Address <small>*</small>
												</label>		
											<c:choose>
												<c:when test="${edit}">
													<form:input class="form-control" name="email" path="emailId"
													type="email" required="true" aria-required="true" readonly="true" />
												</c:when>
												<c:otherwise>
													<form:input class="form-control" id="eid" name="email" path="emailId"
													type="email" required="true" aria-required="true" />
												</c:otherwise>	
										</c:choose>
												<span class="material-input" id="errEmail" style="color:red;"></span>
											</div>
										</div>
										<br>
										<br>
										<%--  <div class="form-group label-floating is-empty">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:50%; margin-top:-60px">
                            <label class="control-label">
                                Password
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="password" path="password" id="registerPassword" type="password" required="true" aria-required="true"/>
                        <span class="material-input"></span></div></div>
						<br><br>
                        <div class="form-group label-floating is-empty">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:-15px; margin-top:-60px">
                            <label class="control-label">
                                Confirm Password
                                <small>*</small>
                            </label>
                            <input class="form-control" name="confirm_password" id="registerPasswordConfirmation" type="password" required="true" equalto="#registerPassword" aria-required="true"/>
                        <span class="material-input"></span></div></div>
                        <br><br>
                        
                         --%>
                       				  <c:choose>
												<c:when test="${edit}">
													<div class="form-group label-floating is-empty"
													style="margin-top: -50px; margin-left: 52%">
													<img
													src="/miiadmin/resources/images/profilePicture/${register.idProof}"
													class="picture-src" id="wizardPicturePreview" title="" style="height:0px; width:0px"/>
														 <!-- <label class="control-label"> ID Proof <small>*</small> -->
														</label>
														 <span class=""
														style="margin-top: 30px; margin-left: 0%; height:0px; width:0px; color:white"> <span
														class="fileinput-new">Choose File</span>
												
												 		<input type="file"
														name="idProofImage" id="idProofImage" path="idProofImage" aria-invalid="false"
														class="valid" style="height:0px;width:0px"/>
													<div class="ripple-container"></div></span>
													</div>
												</c:when>
												<c:otherwise>
													<div class="form-group label-floating is-empty"
													style="margin-top: -50px; margin-left: 52%">
														<label class="control-label"> ID Proof <small>*</small>
														</label>
														 <span class="btn btn-round btn-rose btn-file"
														style="margin-top: 30px; margin-left: 0%"> <span
														class="fileinput-new">Choose File</span>
												
												 		<input type="file"
														name="idProofImage" id="idProofImage" path="idProofImage" aria-invalid="false" required="true"
														class="valid" />
													<div class="ripple-container"></div></span>
													</div>
												</c:otherwise>	
										</c:choose>		
										
										<div class="col-md-6"
											style="margin-left: 48%; margin-top: -27%"></div>

										<div class="form-footer text-right">
											<div class="checkbox pull-left">
												<label> <input type="checkbox" onClick='checkButton()'
													name="optionsCheckboxes" required="true"
													aria-required="true" checked="checked"></span> I agree to
													the <a href="#something">terms and conditions</a>.
												</label>
												<span class="material-input" id="errorMsg" style="color:red;"></span>
											</div>
											<%-- <%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;"> --%>
                                
                                <%-- <%= request.getParameter("errorMsg") %></div>
                                <%} %> --%>
											<button type="reset" class="btn btn-rose btn-fill">Reset</button>
											<c:choose>
												<c:when test="${edit}">
													<input type="submit" class="btn btn-rose btn-fill"
														value="Update" formaction="/miiadmin/admin/updateAdmin"/>
												</c:when>
												<c:otherwise>
													<input type="submit" class="btn btn-rose btn-fill"
														value="Register" formaction="/miiadmin/admin/addAdmin" />
												</c:otherwise>
											</c:choose>

										</div>
									</div>
								</form:form>
							</div>
						</div>
						<%@include file="footer.jsp"%>
					</div>
				</div>
</body>
<!--   Core JS Files   -->
<%@include file="corejsfiles.jsp"%>
 <script type="text/javascript">
        $().ready(function(){
        	document.getElementById("mobno").defaultValue = "";
        });
    </script>
<script type="text/javascript">
function checkButton()
{
	var x = document.getElementById("myCheck").checked;
	if(x==false)
		$("#errorMsg").text("Please agree our terms & conditions!!");
	else
		$("#errorMsg").text("");
}

$("#uname").blur(function() 
		{
			var name = $("#uname").val();
			var pattern=/^[A-Za-z .]{3,50}$/;
			if(name == "")
			{
				$("#errName").text("Please enter your name!!");
				document.getElementById("uname").focus();
			}
			else if(!(pattern.test(name)))
			{
				$("#errName").text("Only capital and small letters are allowed!!");
				document.getElementById("uname").focus();
				$("#uname").text("");
			}
			else
				$("#errName").text("");
		});
		
		$("#address").blur(function() 
				{
					var address = $("#address").val();
					if(address == "")
					{
						$("#errAddress").text("Please enter your address!!");
						document.getElementById("address").focus();
					}
					else
						$("#errAddress").text("");
		});
		
		$("#mobno").blur(function() 
				{
					var no = $("#mobno").val();
					var pattern=/^[0-9]{10}$/;
					if(no == "")
					{
						$("#errNo").text("Please enter your contact number!!");
						document.getElementById("mobno").focus();
					}
					else if(!(pattern.test(no)))
					{
						$("#errNo").text("Only numbers are allowed and size must be 10!!");
						document.getElementById("mobno").focus();
						$("#mobno").text("");
					}
					else
						$("#errNo").text("");
				});
		$("#mno").blur(function() 
				{
					var no = $("#mno").val();
					var pattern=/^[0-9]{10}$/;
					if(no == "")
					{
						$("#errNo").text("Please enter your contact number!!");
						document.getElementById("mno").focus();
					}
					else if(!(pattern.test(no)))
					{
						$("#errNo").text("Only numbers are allowed and size must be 10!!");
						document.getElementById("mno").focus();
						$("#mno").text("");
					}
					else
						$("#errNo").text("");
				});
</script>
<script type="text/javascript">
  	$("#eid").blur(function() {
  		var emailId = $("#eid").val();
  		if(emailId == "")
  		{
  			$("#errEmail").text("Please enter Email Id!!");
  			document.getElementById("eid").focus();
  		}
  		else if(emailId != "")
  		{
  			$.ajax({
  	  	        type: 'GET',
  	  	        url: "/miiadmin/admin/checkEmailId/" + emailId,
  	  	        success: function(data){
  	  	        	//alert(data);
  	  	            if(data=="true")
  	  	            {
  	  	            	$("#eid").val("");
  	  	            	document.getElementById("eid").focus();
  	  	            	$("#errEmail").text("Email Id already exists.");    		
  	  	            }
  	  	            else
  	  	          	{
  	  	            	$("#errEmail").text("");
  	  	            }
  	  	            	
  	  	        },
  	  	        error:function(){
  	  	            alert("error");
  	  	        }
  	  	    });
  		}
	});
 
  	$("#cityId").change(function() {
  		var cityId = $(this).val();
  		//alert("stateid : "+stateId);
  	    $.ajax({
  	        type: 'GET',
  	        url: "/miiadmin/area/getAreas/" + cityId,
  	        success: function(data){
  	        //	 $("#citiesByState").html(data).selectpicker('refresh');
  	        	 var slctSubcat=$('#areasByCity'), option="";
  	          	slctSubcat.empty();
  	          //$('.selectpicker').selectpicker('refresh'); 
  	          
  	          	
  	          //$('#citiesByState').em
  	         
  	             for(var i=0; i<data.length; i++){
  	            	// alert("hi");		
  	             	//alert(data[i].name);
  	                option = option + "<option value='"+data[i].areaId+"'>"+data[i].name+"</option>";	            }
  	          	slctSubcat.append(option); 
  	          $('#areasByCity').selectpicker('refresh');
  	          	//alert(data.length);
  	        },
  	        error:function(){
  	            alert("error");
  	        }
  	    });
	});
  
  </script> 
  
</html>
