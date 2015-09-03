<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div ng-controller="poolsawat">
			<h1>{{hello.tile}}</h1>
		</div>
		<p>Enter your Name: <input type="text" ng-model="name"></p>
   		<p>Hello <span ng-bind="name"></span>!</p>
	</tiles:putAttribute>
</tiles:insertDefinition>
