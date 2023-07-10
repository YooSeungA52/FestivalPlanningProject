<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<th>주소</th>
					<th>장소 구분</th>
					<th>지원 기간</th>
					<th>지원 분야</th>
				</tr>
					<c:forEach var="list" items="${staffApplyList}">
					<c:if test="${sessionScope.loginId == list.id}">
					<tr>
						<td scope="row">${list.festivalName}</td>
						<td>${list.addressEvent}</td>
						<td><%-- ${list.place} --%>
							<c:forEach var="Code" items="${commonCodeList}">
							<c:set var="place" value="${list.place}" />
							<c:if test="${place == Code.codeType}">
			        			${Code.codeName}
			    			</c:if>
						</c:forEach>
						</td>
						<td>${list.supportPeriodStart} ~ ${list.supportPeriodEnd}</td>
						<td>${list.codeName}</td>
					</tr>
					</c:if>
					</c:forEach> 

			</tbody>
		</table>
	</div>



</body>
</html>