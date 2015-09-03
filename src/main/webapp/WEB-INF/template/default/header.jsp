<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button aria-controls="navbar" aria-expanded="false"
				data-target="#navbar" data-toggle="collapse"
				class="navbar-toggle collapsed" type="button">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">Project name</a>
		</div>
		<div class="navbar-collapse collapse" id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<%= request.getContextPath()%>/">Home</a></li>
				<li class="dropdown"><a aria-expanded="false"
					aria-haspopup="true" role="button" data-toggle="dropdown"
					class="dropdown-toggle" href="#">User <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<%= request.getContextPath()%>/userList">UserList	</a></li>
						<li><a href="<%= request.getContextPath()%>/userForm">UserForm	</a></li>
					</ul></li>
				<li><a href="#contact">Contact</a></li>
				<li class="dropdown"><a aria-expanded="false"
					aria-haspopup="true" role="button" data-toggle="dropdown"
					class="dropdown-toggle" href="#">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider" role="separator"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="../navbar/">Default</a></li>
				<li><a href="../navbar-static-top/">Static top</a></li>
				<li class="active"><a href="./">Fixed top <span
						class="sr-only">(current)</span></a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>