<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Patient book Appointment</title>

    <style>
      .button {
        padding: 15px 25px;
        font-size: 24px;
        text-align: center;
        cursor: pointer;
        outline: none;
        color: #fff;
        background-color: #04AA6D;
        border: none;
        border-radius: 15px;
        box-shadow: 0 9px #999;
      }
      
      .button:hover {background-color: #3e8e41}
      
      .button:active {
        background-color: #3e8e41;
        box-shadow: 0 5px #666;
        transform: translateY(4px);
      }
      </style>
  </head>
  <body>
  

  
    <div class="container-fluid">
      
      <div class="header">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Your Dr. Just A Click Away!!</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Help desk</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Contact us</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>

      <div class="content" style="background-color:rgba(212, 236, 202, 0.815);height:650px;">

        
        <div class="row">
         
          <div class="col-5 sidebar">
            
            <img src="./patient.jpg" style="width:100%;height:650px;" >

          </div>

          <div class="col-7 maincontent" style="margin-top: 100px;">

            <form action="/doctordetails">
            <button class="button">See doctor details</button><br><br>
            </form>
            <form action="/appointmentstatus">
            <button class="button">Appointment Status</button><br><br>
            </form>
            <form action="/patientlogout">
            <button class="button">Log OUT</button>
            </form>
          </div>
        </div>

        

      </div>
      <div class="header">
        
      </div>


    </div>

 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

   
  </body>
</html>