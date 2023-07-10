<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스탭 신청 내역</title>
<link href="${path}/css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<h3>스탭 신청 내역</h3>
		
		<table class="table">
			<tbody class="table-group-divider">
				<tr>
					<th scope="row">축제 이름</th>
					<th>지원자</th>
					<th>지원 기간</th>
					<th>지원 분야</th>
					<th>나이</th>
					<th>연락처</th>
					<th>메일</th>
				</tr>
				<c:forEach var="list" items="${staffApplyList}">
					<tr>
						<td scope="row">${list.festivalName}</td>
						<td>${list.name}</td>
						<td>${list.supportPeriodStart} ~ ${list.supportPeriodEnd}</td>
						<td>${list.codeName}</td>
						<td>
							<fmt:parseDate value="${list.birth}" pattern="yyyy-MM-dd" var="parsedDate" />
							<fmt:formatDate value="${parsedDate}" pattern="yyyy" var="year" />
							<c:set var="currentYear" value="<%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %>" />
							<c:set var="age" value="${currentYear - year}" />
							<p>${age}</p>
						</td>
						<td>${list.telNumber}</td>
						<td>${list.email}</td>
					</tr>
				</c:forEach> 
			</tbody>
		</table>
	</div>



</body>
</html>