<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>
.deleteU{
  text-decoration: none;
  border: 2px solid white;
  color: white;
  background-color: black;
  padding: 4px 10px;
  cursor: pointer;
}
.deleteU:hover{
  opacity: 0.85;
}
</style>
  
<div>

<div>
	<h3><b>회원 관리</b></h3>
</div>
<br />

<c:if test="${not empty msg}">
  <div class="alert alert-success">${msg}</div>
</c:if>
<c:if test="${not empty errorMsg}">
  <div class="alert alert-danger">${errorMsg}</div>
</c:if>

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
	    	<td>${u.userId}</td>
	    	<td>${u.phoneNo}</td>
	    	<td>${u.joinDate}</td>
	    	<td>${u.email}</td>
	    	<td>${u.gender}</td>
	    	<td>${u.birth}</td>
	    	<td>${u.nickname}</td>
	    	<td>
		    	<c:choose>
					<c:when test="${u.userId eq 'admin' }">
						삭제불가
					</c:when>
					<c:otherwise>
					  <form action="${pageContext.request.contextPath}/admin/user/adminUserDelete.do"
					        method="post"
					        style="display:inline;"
					        onsubmit="return confirm('정말 삭제하시겠습니까?');">
						<sec:csrfInput/>
					    <input type="hidden" name="userId" value="${u.userId}">
					    <button type="submit" class="deleteU">삭제</button>
					  </form>
					</c:otherwise>
		    	</c:choose>
    		</td>
   		</tr>
   	</c:forEach>
  </tbody>
</table>

</div>