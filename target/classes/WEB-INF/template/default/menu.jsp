<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

	<ul class="nav nav-sidebar">
		<li><spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<a href="${homeUrl}">Home</a></li>
		<li><spring:url value="/about" var="aboutUrl" htmlEscape="true" />
			<a href="${aboutUrl}">About</a></li>
		<li><a href="#">Export</a></li>
	</ul>
	<ul class="nav nav-sidebar">
		<li><a href="">Nav item</a></li>
		<li><a href="">Nav item again</a></li>
		<li><a href="">One more nav</a></li>
		<li><a href="">Another nav item</a></li>
		<li><a href="">More navigation</a></li>
	</ul>
	<ul class="nav nav-sidebar">
		<li><a href="">Nav item again</a></li>
		<li><a href="">One more nav</a></li>
		<li><a href="">Another nav item</a></li>
	</ul>