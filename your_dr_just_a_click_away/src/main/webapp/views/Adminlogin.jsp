<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<title>Admin registration</title>
<style type="text/css">
.main {
	color: white;
	border-radius: 20px;
	opacity: 90%;
}

body {
	background-color: #30415b;
}
</style>
</head>
<body>

	<div class="container-fluid">
		<div class="header" style="text-align: center;">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Your Dr. Just A Click Away!!</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="/">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Features</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Contact
									us</a></li>
						</ul>
					</div>
				</div>
			</nav>


		</div>
		<div class="container">
			<div class="content">
				<div class="row">
					<div class="col-2 sidebar"></div>

					<div class="col-8 maincontent" style="height: 600px;">

						<div class="main"
							style="background-color: #000000; width: 40%; height: 70%; margin-left: 200px; margin-top: 100px;">
							<h3
								style="font-family: 'Times New Roman', Times, serif; text-align: center;">Admin
								Login</h3>
							<form action="/login" method="post">
								<h5 style="color: red;">${valid}</h5>
								<div class="col-11" style="margin-top: 10px; margin-left: 10px;">
									<label for="Input">Email address</label> <input type="email"
										class="form-control" name="email"
										placeholder="name@example.com" required="required">

								</div>
								<div class="col-11" style="margin-top: 5px; margin-left: 10px;">
									<label for="floatingPassword">Password</label> <input
										type="password" class="form-control" name="password"
										placeholder="Password" required="required">
								</div>

								<div class="col-12"
									style="margin-left: 150px; margin-top: 20px;">
									<button class="btn btn-secondary" type="submit">Login</button>
								</div>


							</form>

						</div>

					</div>

				</div>

			</div>
		</div>



	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>


</body>
</html>