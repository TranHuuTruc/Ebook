
<div class="container-fluid p-3">
	<div class="row">
		<div class=" col-md-3">
			<h3><i class="fa-solid fa-book-bookmark"></i>EBOOKS</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
		<div class="col-md-3">
			<a href="Login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i>  Login</a> <a href="Register.jsp"
				class="btn btn-primary text-white"><i class="fa-solid fa-user-plus"></i>  Register</a>
		</div>
	</div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="all_RecentB.jsp"><i class="fa-solid fa-book-open-reader"></i> Recent Book</a></li>
			
			<li class="nav-item"><a class="nav-link" href="all_NewBook.jsp"><i class="fa-solid fa-book-open-reader"></i>  New Book</a></li>
			<li class="nav-item"><a class="nav-link" href="all_OldBo.jsp"><i class="fa-solid fa-book"></i>  Old Book</a></li>
			
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<button class="btn btn-light my-2 " type="submit"><i class="fas fa-cog">  Setting</i> 
			</button>
						<button class="btn btn-light my-2 ml-1 " type="submit">
				<i class="fas fa-regular fa-address-book"> Contact Us</i>
			</button>
		</form>
	</div>

</nav>
