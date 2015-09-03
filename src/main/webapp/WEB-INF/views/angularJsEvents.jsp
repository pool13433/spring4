<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div>
			<pre ng-controller="angualrJsEventsCtrl">
				<input name="firstname" type="text" ng-model="firstName" required>
				<input name="lastname" type="text" ng-model="lastName" required>
				<input name="email" type="email" ng-model="email" required>
				<input name="number" type="number" ng-model="number" required>
				<label>{{result}}</label>
				<button ng-click="reset()">Reset</button>
				<button ng-click="math()">Click</button>
			</pre>
			<pre ng-controller="angualrJsValidateCtrl">
				<form name="studentForm" novalidate>
<table border="0">
<tr>
							<td>Enter first name:</td>
							<td><input name="firstname" type="text" ng-model="firstName"
								required>
   <span style="color: red"
								ng-show="studentForm.firstname.$dirty && studentForm.firstname.$invalid">
      <span ng-show="studentForm.firstname.$error.required">First Name is required.</span>
   </span>
</td>
						</tr>
<tr>
							<td>Enter last name: </td>
							<td><input name="lastname" type="text" ng-model="lastName"
								required>
   <span style="color: red"
								ng-show="studentForm.lastname.$dirty && studentForm.lastname.$invalid">
      <span ng-show="studentForm.lastname.$error.required">Last Name is required.</span>
   </span>
</td>
						</tr>
<tr>
							<td>Email: </td>
							<td><input name="email" type="email" ng-model="email"
								length="100" required>
<span style="color: red"
								ng-show="studentForm.email.$dirty && studentForm.email.$invalid">
      <span ng-show="studentForm.email.$error.required">Email is required.</span>
	  <span ng-show="studentForm.email.$error.email">Invalid email address.</span>
   </span>
</td>
						</tr>
<tr>
							<td><button ng-click="reset()">Reset</button></td>
							<td><button
									ng-disabled="studentForm.firstname.$dirty && studentForm.firstname.$invalid ||
			  studentForm.lastname.$dirty && studentForm.lastname.$invalid ||
			  studentForm.email.$dirty && studentForm.email.$invalid"
									ng-click="submit()">Submit</button></td>
						</tr>
</table>
</form>
			</pre>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
