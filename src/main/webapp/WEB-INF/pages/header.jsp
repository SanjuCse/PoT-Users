<header
	class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
	<a href="/"
		class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
		<svg class="bi me-2" width="40" height="32" role="img"
			aria-label="Bootstrap">
				<use xlink:href="#bootstrap"></use></svg>
	</a>

	<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
		<form method="post" action="/home">
			<li><input type="submit" class="nav-link px-2 link-secondary"
				value="Home"></li>
			<!-- <a href="/home" class="nav-link px-2 link-secondary">Home</a> -->
		</form>
		<li><a href="/users" class="nav-link px-2 link-dark">Users</a></li>
		<li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
		<li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
		<li><a href="#" class="nav-link px-2 link-dark">About</a></li>
	</ul>

	<div class="col-md-3 text-end">
		<a href="/logout"
			class="btn btn-outline-primary me-2 text-decoration-none">Logout</a>
	</div>
</header>