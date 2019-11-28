<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--Import materialize.css-->
	<link rel="stylesheet" type="text/css" href="./css/materialize.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<style type="text/css">
		.cont_solicitudes {
			border-radius: 10px;
			margin-top: 2rem;
		}
		.div_evento {
			height: 10vh;
			border: 1px solid grey;
		}
		.selecionado {
			position: absolute;
			width: 94%;
			display: block;
			height: 70vh;
			margin: 2rem 0;
			background-color:white;
			border-radius: 10px;
		}
	</style>
</head>

<body>
	<nav class="nav-extended">
		<div class="nav-wrapper">
			<a href="#" class="brand-logo">Logo</a>
			<a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li><a href="sass.html">Sass</a></li>
				<li><a href="badges.html">Components</a></li>
				<li><a href="collapsible.html">JavaScript</a></li>
			</ul>
		</div>
		<div class="nav-content">
			<ul class="tabs tabs-transparent">
				<li class="tab"><a class="active" href="#test1">Peticiones</a></li>
				<li class="tab"><a href="#test2">Eventos</a></li>
				<li class="tab"><a href="#test3">Compradores</a></li>
				<li class="tab"><a href="#test4">Vendedores</a></li>
			</ul>
		</div>
	</nav>

	<ul class="sidenav" id="mobile-demo">
		<li><a href="sass.html">Sass</a></li>
		<li><a href="badges.html">Components</a></li>
		<li><a href="collapsible.html">JavaScript</a></li>
	</ul>
	<div class="row">
		<div id="test1" class="col s12">
			<div class="col s12">
				<div class="col s12 m10 offset-m1 l10 offset-l1 cont_solicitudes card-panel">
					<table class="highlight">
						<thead>
							<tr>
								<th>Nombre</th>
								<th>Estatus</th>
								<th>Tiempo en espera</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
							<tr>
								<td>Muebleria Roman</td>
								<td>Detenido</td>
								<td>12:45:00 horas</td>
							</tr>
						</tbody>
					</table>	
				</div>
			</div>
		</div>
		<div id="test2" class="col s12">
			<div class="col s12 m12 l12">
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
			</div>

		</div>
		<div id="test3" class="col s12">
			<div class="col s12 m12 l12">
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
			</div>
		</div>
		<div id="test4" class="col s12">
			<div class="col s12 m12 l12">
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
				<div class="col s12 m4 l4">
					<div class="col s10 offset-s1 div_evento">
						canaasdasd
					</div>
				</div>
			</div>
		</div>
	</div>
	

	<script src="./js/jquery-2.2.4.min.js"></script>
	<script src="./js/materialize.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('.sidenav').sidenav();
			$(".dropdown-trigger").dropdown();
			$('.tabs').tabs();
		});
		
		$(".div_evento").click( function () {
			
		});


		$("#usu").click(function () {
			$.ajax({
				type: "GET",
				url: "/Sistema_call_center/CUsuarios",
				dataType: "json",
				success: function (dataRes) {
					console.log(dataRes);
				}
			});
		});
	</script>
</body>

</html>