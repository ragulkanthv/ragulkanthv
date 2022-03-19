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
            margin-left: 1000px;
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
		response.sendRedirect("plogin");
	}
	%>


    <div class="container-fluid">
        <div class="header">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">System feedback !</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                   
                   <li class="nav-item active">
                      <a class="nav-link" href="/viewdoctor">Home<span class="sr-only">(current)</span></a>
                    </li>
                    
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

                        
                       

                        
                    </div>
                </div>
                
                
                    <table border="3px" style="margin-left: 40px;" class="table table-sm table-Secondary link">
                        <thead>
                          <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Feedback</th>
                            
                          </tr>
                       
                          <c:forEach var="f" items="${list}">   
   <tr>  
   <td>${f.id}</td>  
   <td>${f.feedback}</td>  
    
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