<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%-- 로그인 아이디 : ${sessionScope.SessionUserID } --%>

<c:set var="s_userid" value="${sessionScope.SessionUserID }"/>

<script>
	function fn_logout() {
		
		$.ajax({
			type : "POST",
			data : "",
			url  : "/logout.do",
			
			datatype : "text",
			success  : function(data){
	            if(data == "1" ) {
	               alert("로그아웃되었습니다.");
	               location="/";
	            } else {
	            	alert("로그아웃 실패.");
	            } 
	         },
	         error : function(){
	            alert("전송실패");
	         }			
		});
	}
</script>

<ul class="header_right">
  <li class="header_item">
    <a class="header_link" href="#">공지사항</a>
  </li>
  
  <c:if test="${s_userid == null }">  
  <li class="header_item">
    <a class="header_link" href="../mbrConditions.do">회원가입</a>
  </li>
  <li class="header_item">
    <a class="header_link" href="/loginWrite.do">로그인</a>
  </li> 
  </c:if> 
  
  <c:if test="${s_userid != null }">
   <li class="header_item">
    <a class="header_link" href="../mbrModify.do">정보수정</a>
  </li>
  <li class="header_item">
    <a class="header_link" href="javascript:fn_logout()">로그아웃</a>
  </li>  
  </c:if>
</ul>