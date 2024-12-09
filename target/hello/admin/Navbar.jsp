
<div class="container-fluid p-3">
	<div class="row">
		<div class=" col-md-3">
			<h3>
				<i class="fa-solid fa-book-bookmark"></i>EBOOKS
			</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>



		<div class="col-md-3">
			<c:if test="${not empty userobj }">
				<a href="../Login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user"></i>${userobj.name }</a>
				<a data-toggle="modal" data-target="#exampleModalCenter"
					class="btn btn-primary text-white"><i
					class="fas fa-sign-in-alt"></i> Log Out</a>
			</c:if>

		</div>

	</div>
</div>
<!-- lgout madel -->
<div class="modal fade" id="exampleModalCenter" aria-hidden="true"
	role="dialog" aria-labelledby="exampleModalCenterTiltle" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title fs-5" id="exampleModalToggleLabel">logout widow
					</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
			</div>
			<div class="modal-body">
				<div class="text-center">
					<h4>Do you want logout</h4>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="../logout" type="button" class="btn btn-primary text-white">Logout
					</a>

				</div>
			</div>
			
		</div>
	</div>
</div>


<!-- end logout madel -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="Home.jsp">Home
					<span class="sr-only">(current)</span> <span class="sr-only">(curent)</span>

			</a></li>


		</ul>
		<form class="form-inline my-2 my-lg-0">
			<button class="btn btn-light my-2 " type="submit">
				<i class="fas fa-cog"> Setting</i>
			</button>
			<button class="btn btn-light my-2 ml-1 " type="submit">
				<i class="fas fa-regular fa-address-book"> Contact Us</i>
			</button>
		</form>
	</div>

</nav>
