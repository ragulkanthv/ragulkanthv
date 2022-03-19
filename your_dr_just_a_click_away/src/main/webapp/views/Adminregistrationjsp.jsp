<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

    <title>Admin registration</title>
  </head>
  <body>

    <div class="container-fluid">
      <div class="header" style="background-color: cornsilk;">
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Your Dr. Just A Click Away!!</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact us</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>


      </div>
      <div class="content" style="background-color: rgba(202, 238, 233, 0.904);">
        <div class="row">
          <div class="col-3 sidebar" style="height:600px">
          <img src="./admin.jpg" style="width:370px;height:670px;">
          </div>

          <div class="col-9 maincontent" style="height:700px">
            
            <form action="/adminregistration" method="post"  class="row g-3" >
              
              <h1 style="font-family: serif;">Admin Registration</h1>

               <h5 style="color:red;"> ${exist}</h5>
              <div class="row g-3" >
                <div class="col-5">
                  First Name:
                  <input type="text" 
                  class="form-control" 
                  placeholder="First name" 
                  aria-label="First name"
                  name=fname required="required">
                </div>
                <div class="col-5">
                  Last Name:
                  <input type="text" 
                  class="form-control" 
                  placeholder="Last name" 
                  aria-label="Last name"
                  name="lname" required="required">
                </div>
              </div>

              
              <div class="col-md-5">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email"
                 class="form-control" 
                 placeholder="xyz@gmail.com"
                 name="email" required="required">

              </div>
              <div class="col-md-5">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="password" 
                class="form-control" 
                name="password" required="required">

              </div>
              <div class="col-md-5">
                <label for="contact" class="form-label">ContactNumber</label>
                <input type="Contact" 
                class="form-control" 
                placeholder="123456789"
                name="contact" required="required">

              </div>
              <div class="col-8">
                <label for="inputAddress" class="form-label">Address</label>
                <input type="text" 
                class="form-control" 
                placeholder="1234 Main St"
                name="street" required="required">
              </div>
              <div class="col-8">
                <label for="inputAddress2" class="form-label">Address 2</label>
                <input type="text" 
                class="form-control" placeholder="Apartment, studio, or floor"
                name="apartment" required="required">
              </div>
              <div class="col-md-5">
                <label for="inputCity" class="form-label">City</label>
                <input type="text" 
                class="form-control" 
                name="city" required="required">
              </div>
              <div class="col-md-3">
                <label for="inputState" class="form-label">State</label>
                <select id="inputState" class="form-select">
                  <option selected>Choose...</option>
                  <option>Madhya Pradesh</option>
                  <option>Uttarpradesh</option>
                  <option>Mahrastra</option>
                  <option>Gujrat</option>
                </select>
              </div>
              <div class="col-md-2">
                <label for="inputZip" class="form-label">Zip</label>
                <input type="text" class="form-control" 
                name="zipCode" required="required">
              </div>
             
              <div class="col-12">
                <button type="submit" class="btn btn-dark">Register</button>
              </div>
            </form>


          </div>

        </div>

      </div>

      <div class="footer" style="">
        
      </div>


    </div>
    

  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

   
  </body>
</html>