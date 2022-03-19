<!doctype html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Patient Appointment form</title>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
	<style>
		h3{
			text-align: center;
			color: black;

		}
		body{
			background-image:url(bookappointment.jpg) ;
		}
	</style>
</head>
  <body>
  
     <%
	if (session.getAttribute("email") == null) {
		response.sendRedirect("plogin");
	}
	%>
              
          
  
		   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Your Dr. Just A Click Away!!</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="/appointmentpage">Home</a>
                </li>
                
              </ul>
            </div>
          </div>
        </nav>
		<div class="container">
			<h3 style="font-family: serif;font-size: 50px;">Appointment  form</h3>
			<br>
			<form action="/appointmentform" method="post">
			<div class="form-row">
				<div class="col-5">
					<div class="form-group">
						<label for="fname"><h5>First Name</h5></label>
						<input type="text"
                         class="form-control" 
                         name="fname"
                         id="fname"
                         required="required">
					</div>
				
				</div>
				
				<div class="col-5">
					<div class="form-group">
						<label for="lname"><h5>Last Name</h5></label>
						<input type="text"
                         class="form-control"
                         name="lname"
                         id="lname"
                         required="required">
					</div>
				
				</div>
			</div>
			<div class="form-row">
				<div class="col-5">
					<div class="form-group">
						<label for="pincode"><h5>Pincode</h5></label>
						<input type="number"
                         class="form-control" 
                         name="pincode"
                         id="pincode"
                         required="required">
					</div>
					
					
				
				</div>
				<div class="col-5">
					<label><h5>Gender</h5></label><br>
					<div class="form-check-inline">
						<label class="form-check-label">
						<input type="radio" 
                        class="form-check-input" 
                        value="Male"
                        name="gender"
                        required="required">Male
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label">
						<input type="radio" 
                        class="form-check-input" 
                        value="Female"
                        name="gender"
                        required="required">Female
						</label>
					</div>
				</div>
			
			</div>
			<div class="form-row">
				<div class="col-md-5">
					<div class="form-group">
						<label for="email"><h5>E-mail</h5></label>
						<input type="email"
                         class="form-control" 
                         id="email" 
                         name="email"
                         pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" 
                         required="required">
					</div>
				
				</div>
				
				
			</div>
			<div class="form-row">
				<div class="col-5">
					<div class="form-group">
						<label for="dept"><h5>Specilization</h5></label>
						<select class="form-control" id="dept" name="specialization">
							<option default="choose">Choose</option>
							<option>General Physician</option>
							<option>General Surgeon</option>
							<option>Cardiologist</option>
							<option>Neurologist</option>
							<option>Dentist</option>
							<option>Dermatologists</option>
							<option>Gynecologist</option>
							<option>ENT Specialist</option>
							<option>Psychiatrists</option>
						</select>
					</div>
				
				</div>
				
			
			<div class="col-5">
					<div class="form-group">
						<label for="dept"><h5>Date and Time of appointment</h5></label>
						<input id="datepicker" name="timeanddate" type="datetime-local" class="form-control" required="required"/>
						
					</div>
				
				</div>
				</div>
			<div class="form-row">
		
				<div class="col-md-1">
					<button type="submit" class="btn btn-success" style="margin-left: 430px;margin-top: 50px;">Submit</button>
				</div>
			</div>
			</form>
		</div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>