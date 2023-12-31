<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/main.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<title>정보수정</title>
</head>

<style>
/* Custom CSS for the form */
#container {
  padding: 20px;
  max-width: 600px;
  margin: 0 auto;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f9f9f9;
}

#wrapper_title {
  font-size: 1.3em;
  font-weight: bold;
  margin-bottom: 20px;
  text-align: center;
}

.mbskin {
  margin-bottom: 30px;
}

.tbl_frm01 {
  margin-bottom: 30px;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th,
td {
  padding: 10px;
  border-bottom: 1px solid #ccc;
}

th {
  text-align: left;
  width: 25%;
}

input[type="text"],
input[type="password"],
input[type="date"]   {
  width: 95%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}
input[type="radio"],
input[type="checkbox"] {
	 padding: 10px;
}

.frm_info {
  color: #666;
}

#msg_userid,
#msg_mb_nick,
#msg_mb_birth {
  color: #e8180c;
}

.btn_confirm {
  text-align: center;
  margin-top: 20px;
}

.btn_submit {
  padding: 10px 20px;
  background-color: #333;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.btn_cancel {
  display: inline-block;
  padding: 10px 20px;
  color: #333;
  border: 1px solid #333;
  border-radius: 5px;
  text-decoration: none;
  margin-left: 10px;
}

.btn_cancel:hover {
  background-color: #333;
  color: #fff;
}

.btn_change_password {
  padding: 10px 20px;
  background-color: #333;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
.center-button {
    text-align: right;
    margin-top: 10px; /* Add some spacing from the buttons above */
}
.btn_withdraw {
    display: inline-block;
	padding: 10px 10px;
	color: #333;
	border: 1px solid #333;
	border-radius: 5px;
	text-decoration: none;
	margin-left: 10px;
}
.btn_withdraw:hover {
    background-color: #333;
  	color: #fff;
}
</style>

<script>

function fn_cancel(){
	let url = "/mbrCancel.do";
	window.open(url,"회원탈퇴팝업","width=400,height=300");
}

function fn_popup(){
	let url = "/passChange.do";
	window.open(url,"암호변경팝업","width=400,height=300");
}

$(function(){
   
   	$("#btn_submit").click(function(){
      
		let userpass = $.trim($("#userpass").val());
	    let usernickname = $.trim($("#usernickname").val());
	    let userphone = $.trim($("#userphone").val());
	    let useremail = $.trim($("#useremail").val());
	            
	    $("#userpass").val(userpass);
	    $("#usernickname").val(usernickname);
	    $("#userphone").val(userphone);
	    $("#useremail").val(useremail);
	      
        var nick1 = "${vo.usernickname}";		//	DB에 저장된 닉네임
        var nick2 = $("#usernickname").val();	//	사용자가 입력한 닉네임
        if( nick1 != nick2) {
    	    $("#nickname_change").val("Y");		//	값을 Y로 변경
        }
        if ( usernickname == "") {
            alert("닉네임을 입력해주세요.");
            $("#usernickname").focus();
          return false;
        }
        if ( useremail == "") {
            alert("이메일을 입력해주세요.");
            $("#useremail").focus();
	      return false;
	}
      
      var form = $("#frm").serialize();
      $.ajax({
         
         type : "POST",
         url  : "/mbrModifySave.do",
         data : form,

         datatype : "text",
         success  : function(data){
            if(data == "1") {
               alert("수정완료");
               location="/";
            } else if(data == "2") {
            	alert("비밀번호를 확인해주세요!");
            	$("#userpass").focus();
            } else if(data == "3") {
            	alert("이미 사용중인 닉네임 입니다.");
            	$("#usernickname").focus();
            } else if(data == "4") {
            	alert("다시 로그인 해주세요.");
            	location = "/loginWrite.do";
            } else {
               alert("비밀번호를 확인해주세요!");
            }
         },
         error : function(){
            alert("전송실패");
         }         
      });      
   });
});

</script>

<body>
    
<div class="wrap">


<!--header 시작-->
<header>
	<%@include file="../include/header.jsp" %>
</header>
<!--header 끝-->



<!--nav 시작-->
<nav>
	<%@include file="../include/nav.jsp" %>
</nav>
<!--nav 끝-->



<!--section 시작-->
<section>
    <div id="wrapper">
        
    <div id="container">
        <div id="wrapper_title">정보수정</div>

        <div class="mbskin">

    
            <form id="frm" name="frm"> 
            
            <!-- N이면 닉네임 변경x Y면 닉네임 변경o -->
            <input type="hidden" id="nickname_change" name="nickname_change" value="N">
            
            <div class="tbl_frm01 tbl_wrap">
                <table>
                <caption>사이트 이용정보 입력</caption>
                <tbody>
                <tr>
                    <th scope="row"><label for="userid">아이디<strong class="sound_only"></strong></label></th>
                    <td>
                        
                        <input type="text" name="userid" value="${vo.userid }" id="userid" required="" class="frm_input required " readonly="readonly">
                        <span id="msg_userid"></span>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="userpass">비밀번호<strong class="sound_only"></strong></label></th>
                    <td>
                    	<input type="hidden" name="userpass" id="userpass" value="${vo.userpass }" required="" class="frm_input required" readonly="readonly">
                    	<button type="button" class="btn_change_password" onclick="fn_popup()">암호변경</button>
                    </td>
                </tr>
                </tbody>
                </table>
            </div>

            <div class="tbl_frm01 tbl_wrap">
                <table>
                <caption>개인정보 입력</caption>
                <tbody>
                    <tr>
                        <th scope="row"><label for="username">이름<strong class="sound_only"></strong></label></th>
                        <td>
                            <input type="text" id="username" name="username" value="${vo.username }" required="" class="frm_input required " readonly="readonly">
                        </td>
                    </tr>
                    
                    <tr>
                        <th scope="row"><label for="usernickname">닉네임<strong class="sound_only"></strong></label></th>
                        <td>
                            <input type="text" name="usernickname" value="${vo.usernickname }" id="usernickname" required="" class="frm_input required nospace" maxlength="20">
                            <span id="msg_mb_nick"></span>
                        </td>
                    </tr>
                    
                    <tr>
                        <th scope="row"><label for="userphone">휴대폰번호<strong class="sound_only"></strong></label></th>
                        <td>
                            <input type="text" name="userphone" value="${vo.userphone }" id="userphone" required="" class="frm_input required" maxlength="11" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                        </td>
                    </tr>
                    
                    <tr>
                        <th scope="row"><label for="useremail">E-mail<strong class="sound_only"></strong></label></th>
                        <td>
                            <input type="text" name="useremail" value="${vo.useremail }" id="useremail" required="" class="frm_input email required" size="70" maxlength="100">
                        </td>
                    </tr>
                                        
                    <tr>
                        <th scope="row"><label for="userbirth">생년월일<strong class="sound_only"></strong></label></th>
                        <td>
                            <input type="date" name="userbirth" value="${vo.userbirth }" id="userbirth" required="" class="frm_input required nospace" size="10" maxlength="20">
                            <span id="msg_mb_birth"></span>
                        </td>
                    </tr>
                    
                    <tr>
                        <th scope="row"><label for="usergender">성별<strong class="sound_only"></strong></label></th>
                        <td>
                        	<c:if test="${vo.usergender=='Y' }">
                            <input type="radio" name="usergender" id="usergender" value="M"
                            checked>남자
                            </c:if>
                            <c:if test="${vo.usergender=='F' }">
							<input type="radio" name="usergender" id="usergender" value="F"
							checked>여자
							</c:if> 
                        </td>
                    </tr>
                    
                </tbody>
            </table>
        </div>

        <div class="tbl_frm01 tbl_wrap">
            <table>
            <caption>기타 개인설정</caption>
            <tbody>
            
            
            
            <tr>
                <th scope="row"><label for="useropeninfo">정보공개</label></th>
                <td>
                    <input type="checkbox" name="useropeninfo" value="Y" id="useropeninfo"
                    <c:if test="${vo.useropeninfo=='Y' }">checked</c:if> >
                    정보를 오픈하겠습니다.
                </td>
            </tr>
                    </tbody>
                    </table>
        </div>

        <div class="btn_confirm">
            <input type="submit" value="정보수정" id="btn_submit" onclick="return false;" class="btn_submit" accesskey="s">
            <button type="reset" class="btn_cancel">취소</button>
        </div>
        <div class="center-button">
        	<button type="button" class="btn_withdraw" onclick="fn_cancel()">회원탈퇴</button>
        </div>
        </form>

        </div>

    </div>
</div>
</section>
<!--section 끝-->



<!--footer 시작-->
<footer>
<div class="footer1">
	<%@include file="../include/footer.jsp" %>
</div>
</footer>
<!--footer 끝-->
</div>


  </body>
</html>