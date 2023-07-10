<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
<link rel="stylesheet" href="${path}/css/fastivalList.css" />


<div style="display: flex; flex-wrap: wrap; position: relative; justify-content: center;">

	<c:forEach var="item" items="${festivalList}">
		<div
			style="border: 3px solid #B1C7FF; background-color: #F3F6FF; margin: 15px; width: 350px; border-radius: 10%; overflow: hidden;">

			<a href="/festivalView?ftCode=${item.ftCode}">
				<img alt="" src="${item.imgHref}" width="100%" height="160px">
			</a>
			<div class="">
				<div style="height: 100%">
					<div style="padding: 5px 10px;">
						<a style="text-decoration: none; color: black"
							href="/festivalView?ftCode=${item.ftCode}">제목 :
							${item.fstvlNm}</a><br>
					</div>
					<div style="padding: 5px 10px;">
						<a style="text-decoration: none; color: black;"
							href="/festivalView?ftCode=${item.ftCode}">내용 :
							${item.fstvlCo}</a><br>
					</div>
				<div style="padding: 5px 10px;"><!-- style="height: 50px; display: flex; justify-content: center; align-items: center;" -->
					<a style="text-decoration: none; color: black"
							href="/festivalView?ftCode=${item.ftCode}">개최기간 : ${item.fstvlStartDate} ~ ${item.fstvlEndDate}</a>
					</div>
				</div>
			</div>


		</div>
	</c:forEach>
</div>


</body>
<%@ include file="footer.jsp"%>
</html>