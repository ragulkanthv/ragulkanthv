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

    <title>View doctor</title>
    <style>

        .logout{
            margin-left: 1050px;
            margin-top: 15px;
        }

        .right-bar{
    margin-top: 20px;
   
}
       body{
       background-color: rgb(238, 238, 221);
       }
        
    </style>
    
  </head>
  <body>

    <%
	if (session.getAttribute("email") == null) {
		response.sendRedirect("adminlogin");
	}
	%>


    <div class="container-fluid">
        <div class="header">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">Doctor Details</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                   
                    
                    <li class="nav-item active">
                      <a class="nav-link" href="/adddoctor">Add Doctor<span class="sr-only">(current)</span></a>
                    </li>
                    
                    <li class="nav-item active">
                      <a class="nav-link" href="/viewfeedback">System Feedback <span class="sr-only">(current)</span></a>
                    </li>

                    <div class="logout">
                        <ul class="nav navbar-nav">
                            <li><button type="submit" 
                                class="btn navbar-btn btn-active"
                                 name="logout" id="logout"  
                                 value="Log Out"><a href="/logout">Log Out</a></button></li>
                        </ul>     
                </div>
                  </ul>
                  
                </div>
              </nav>
        </div>

        <div class="content">
            <div class="row">
 
                <div class="col-11 Maincontent">

                    <div class="row">
                        <div class=col-4 left-bar>

                        </div>
                    <div class="col-5 heading">
                        
                        

                    </div>
                   
                    <div class="col-3 right-bar">

                        
                        <form action="search">
                       <input type="text" placeholder="Doctor First Name.." name="search">
                       <button type="submit">Search</button>
                       </form>

                        
                    </div>
                </div><br>
                
                
                    <table border="3px" style="margin-left: 40px;" class="table table-sm table-dark">
                        <thead>
                          <tr>
                            <th scope="col">Id</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Contact</th>
                            <th scope="col">Experience</th>
                            <th scope="col">City</th>
                            <th scope="col">State</th>
                            <th scope="col">pincode</th>
                            <th scope="col">Update</th>
                            <th scope="col">Delete</th>
                          </tr>
                       
                          <c:forEach var="doctor" items="${list}">   
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
   <td><a href="updatedoctor/${doctor.id}">Update</a></td>  
   <td><a href="deletedoctor/${doctor.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  

                      </table>

                      
   </div>
                    
                </div>

            </div>

        </div>

        
            <div class="footer">
               
            </div>
       

    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>