<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Appointment Status</title>
    <style>
        body{
            background-color: rgb(210, 248, 255);
            color: rgb(12, 7, 7);
        }
        table{
            background-color: rgb(255, 239, 236);
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
                <a class="navbar-brand" href="#">Appointment status</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                    <li class="nav-item active">
                      <a class="nav-link" href="appointmentpage">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="feedback">Feedback <span class="sr-only">(current)</span></a>
                      </li>
                  </ul>
                  
                </div>
              </nav>
        </div>

        <div class="content">
            <div class="row">
 
                <div class="col-12 Maincontent">

                    <div class="row">
                        <div class= "col-0 side-bar">

                        </div>
                    <div class="col-12 heading">
                     
                    <table class= "table table-lg table-active table-primary table-striped">
                        <thead>
                          <tr>
                            <th scope="col">Appointment Id</th>
                            
                            <th scope="col">Doctor First Name</th>
                            <th scope="col">Doctor Last Name</th>
                              
                            <th scope="col">Slot</th>
                            <th scope="col">Date</th>  
                            
                            <th scope="col">Delete</th>
                                 </tr>
                            
                          </thead>
                       
                          <c:forEach var="doctor" items="${list}">   
    
       <tbody>
       <tr>
   <td>${doctor.id}</td> 
 <td>${doctor.fname}</td>  
   <td>${doctor.lname}</td>  
    <td>${doctor.time}</td> 
   <td>${doctor.date}</td>  
    
   <td><a href="deleteapp/${doctor.id}">Delete</a></td> 
 </tr> 
</tbody> 
   

   </c:forEach>  

                      </table>
                      
                </div>

              </div>
            </div>

        </div>

        
            
       

    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>