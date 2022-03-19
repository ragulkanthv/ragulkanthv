<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>View doctor</title>
<style>
.logout {
	margin-left: 1100px;
}

.input-group {
	margin-top: 20px;
}

.right-bar
{
 margin-top: 10px;
}
</style>

</head>
<body>

	<%
	if (session.getAttribute("email") == null) {
		response.sendRedirect("plogin");
	}
	%>


	<div class="container-fluid">
		<div class="header">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<a class="navbar-brand" href="#">Doctor Details</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="appointmentpage">Home
								<span class="sr-only">(current)</span>
						</a></li>


					</ul>

				</div>
			</nav>
		</div>

        
		<div class="content">
		  <h5>${message} </h5>
			<div class="row">

				<div class="col-12 Maincontent">

					<div class="row">
						<div class=col-0 side-bar></div>
						<div class="col-12 heading">

                           <div class="row">
                        <div class=col-4 left-bar>

                        </div>
                    <div class="col-5 heading">
                        
                        

                    </div>
                   
                    <div class="col-3 right-bar">

                        
                        <form action="searchdetails" >
                       <input type="text" placeholder="Pincode." name="search">
                       <button type="submit">Search</button>
                       </form>

                        
                    </div>
                </div><br>


              



							<table class="table table-sm table-active table-striped table-dark">
								<thead>
									<tr>
										<th scope="col">ID</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
										<th scope="col">Gender</th>
										<th scope="col">Contact</th>
										<th scope="col">Experience</th>
										<th scope="col">City</th>
										<th scope="col">State</th>
										<th scope="col">Pincode</th>
										<th scope="col" name=slot>Slot</th>
										<th scope="col" name=date>Date</th>
										<th scope="col">Get Appointment</th>

									</tr>


									<c:forEach items="${list}" var="doctor">
									
										<tr>
											<td>${doctor.id}</td>
											<td>${doctor.fname}</td>
											<td>${doctor.lname}</td>
											<td>${doctor.email}</td>
											<td>${doctor.gender}</td>
											<td>${doctor.contact}</td>
											<td>${doctor.experience}</td>
											<td>${doctor.city}</td>
											<td>${doctor.state}</td>
											<td>${doctor.zipcode}</td>
											
											<form action="/bookappointment/${doctor.id }">
											<td><select id="slot" name="slot" required="required">
											<option value="slot1">choose slot</option>
													<option value="9:00 AM - 11:00 Am">9:00 AM - 11:00 Am</option>
													<option value="12:00 PM-1:00 PM">12:00 PM-1:00 PM</option>
													<option value="2:00 PM-4:00 PM">2:00 PM-4:00 PM</option>
													<option value="4:00 PM-6:00 PM">4:00 PM-6:00 PM</option>
											</select></td>
											<td><input type="date" name="date" required="required"></td>
											<td>
											
											
            <button class="btn btn-info">Get Appointment"</button><br><br>
            
            </form>
            </td>

										</tr>
										
									</c:forEach>
									
									
							</table>



						</div>

					</div>
				</div>

			</div>





		</div>

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
</body>
</html>