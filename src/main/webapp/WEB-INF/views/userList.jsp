<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div ng-controller="userListCtrl">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ลำดับ</th>
						<th>ชื่อ</th>
						<th>อีเมลล์</th>
						<th>แก้ไข</th>
						<th>ลบ</th>
					</tr>					
				</thead>
				<tbody>
					<tr ng-repeat="(index,user) in users">
						<td>{{$index + 1}}</td>
						<td>{{user.name}}</td>
						<td>{{user.email}}</td>						
						<td>
							<a href="${pageContext.request.contextPath}/userForm#?id={{user.id}}" class="btn btn-primary">แก้ไข</a>
						</td>
						<td>
							<a href="" class="btn btn-danger" ng-confirm-click="ยืนยันการลบข้อมูล" ng-click="btnDelete(user.id)">ลบ</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
