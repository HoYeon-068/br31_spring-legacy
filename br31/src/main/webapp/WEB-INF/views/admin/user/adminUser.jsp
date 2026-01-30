<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<style>
.deleteU{
	text-decoration: none;
	border : 2px solid white;
	color: white;
	background-color: black;
	
}
</style>
  
<div>

<div>
	<h3><b>회원 관리</b></h3>
</div>
<br />

<table class="table table-striped">
  <thead class="table-dark">
    <tr>
    	<th>이름</th>
    	<th>ID</th>
    	<th>휴대폰번호</th>
    	<th>가입일</th>
    	<th>이메일</th>
    	<th>성별</th>
    	<th>생년월일</th>
    	<th>닉네임</th>
    	<th>상태</th>
    </tr>
  </thead>
  <tbody>
   	<c:forEach var="u" items="${userList}">
	    <tr>
	    	<td>${u.name}</td>
	    	<td>${u.user_id}</td>
	    	<td>${u.phone_no}</td>
	    	<td>${u.join_date}</td>
	    	<td>${u.email}</td>
	    	<td>${u.gender}</td>
	    	<td>${u.birth}</td>
	    	<td>${u.nickname}</td>
	    	<td>
		    	<c:choose>
					<c:when test="${u.user_id eq 'admin_master' }">
						삭제불가
					</c:when>
					<c:otherwise>
			    		<a href="${pageContext.request.contextPath}/admin/main.do?view=adminUser&action=delete&userId=${u.user_id}" onclick="return confirm('정말 삭제하시겠습니까?');" class="deleteU">삭제</a>  	
					</c:otherwise>
		    	</c:choose>
    		</td>
   		</tr>
   	</c:forEach>
  </tbody>
</table>

</div>