<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div ng-controller="restclient">
			<h1>{{msg}}</h1>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
