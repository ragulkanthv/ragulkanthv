<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Appointment Status</title>
    




<style>
@import url('https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@500&display=swap');

body {
    background: #EEEEEE;
    font-family: 'Hind Siliguri', sans-serif
}

.card {
    width: 300px;
    border: none;
    border-radius: 15px
}

.adiv {
    background: #0063FF;
    border-radius: 15px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
    font-size: 12px;
    height: 46px
}

img {
    margin-right: 10px;
    width: 35px;
    height: 35px;
    cursor: pointer
}

.fas {
    cursor: pointer
}

.fa-chevron-left {
    color: #fff
}

h6 {
    font-size: 12px;
    font-weight: bold
}

small {
    font-size: 10px;
    color: #898989
}

.form-control {
    border: none;
    background: #F6F7FB;
    font-size: 12px
}

.form-control:focus {
    box-shadow: none;
    background: #F6F7FB
}

.form-control::placeholder {
    font-size: 12px;
    color: #B8B9BD
}

.btn-primary {
    background: #0063FF;
    padding: 4px 0 7px;
    border: none
}

.btn-primary:focus {
    box-shadow: none
}

.btn-primary span {
    font-size: 12px;
    color: #A6DCFF
}

p.mt-3 {
    font-size: 11px;
    color: #B8B9BD;
    cursor: pointer
}
</style>

</head>
<body>

<div class="container-fluid">
<div class="header">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Feedback !</a>
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

</div>


<div class="container d-flex justify-content-center">
    <div class="card mt-5 pb-5">
    
    <form action="/submitfeedback">
        <div class="d-flex flex-row justify-content-between p-3 adiv text-white"> <i class="fas fa-chevron-left"></i> <span class="pb-3">feedback</span> <i class="fas fa-times"></i> </div>
        <div class="mt-2 p-4 text-center">
            <h6 class="mb-0">Your feedback help us to improve.</h6> <small class="px-3">Please let us know about your chat experience.</small>
            <div class="d-flex flex-row justify-content-center mt-2"> <img src="https://img.icons8.com/emoji/48/000000/angry-face-emoji--v2.png" /> <img src="https://img.icons8.com/fluent/48/000000/sad.png" /> <img src="https://img.icons8.com/color/48/000000/happy.png" /> <img src="https://img.icons8.com/emoji/48/000000/smiling-face.png" /> <img src="https://img.icons8.com/color/48/000000/lol.png" /> </div>
            <div class="form-group mt-4"> <textarea class="form-control" rows="4"
            name="feedback"
             placeholder="Message"></textarea> </div>
            <div class="mt-2">
             <input type="submit" class="btn btn-primary btn-block" 
             
             value="Submit feedback">
              </div>
            <p class="mt-3">Continue without sending feedback</p>
        </div>
        </form>
    </div>
</div>

</div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>