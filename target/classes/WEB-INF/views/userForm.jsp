<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div ng-controller="userFormCtrl">
			<form class="form-horizontal" ng-submit="processForm()" name="user" id="user">								
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">ชื่อ</label>
					<div class="col-sm-10">
						<input type="hidden" name="id" ng-model="formData.id"/>
						<input type="text" name="name" class="form-control col-md-6" ng-model="formData.name" placeholder="name"/>
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">อีเมลล์</label>
					<div class="col-sm-10">
						<input type="text" name="email" class="form-control col-md-6" ng-model="formData.email" placeholder="Email"/>						
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Sign in</button>
					</div>
				</div>
			</form>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
