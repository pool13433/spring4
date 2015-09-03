<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<%@ page import="java.util.*"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Default tiles template</title>
<!-- ############## css ##############-->
<tilesx:useAttribute id="list" name="stylesheetsItems" />
<c:forEach var="item" items="${list}">
	<link href="<%= request.getContextPath()%>${item}" rel="stylesheet"
		type="text/css" />
</c:forEach>
<!-- ############## css ##############-->


</head>
<body ng-app="poolsawatApp">
	<tiles:insertAttribute name="header" />
	<div class="container" style="margin-top: 70px;">
		<div class="row">
			<div class="col-sm-12 col-xs-12 col-lg-12">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
	</div>
	<!-- ############## javascript ##############-->
	<tilesx:useAttribute id="list" name="javascriptsItems" />
	<c:forEach var="item" items="${list}">
		<script type="text/javascript"
			src="<%= request.getContextPath()%>${item}"></script>
	</c:forEach>
	<!-- ############## javascript ##############-->
</body>
</html>