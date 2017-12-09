<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
		<%@ include file="/views/layout/common.jsp"%>

</head>
<style> 
    #hidden { 
        visibility: hidden; 
    } 
    

</style> 
	<%@ include file="/views/layout/header_Eng.jsp" %>
<body>
<script type="text/javascript">
//아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
var idCheck = 0;
var pwCheck = 0;
//아이디 체크하여 가입버튼 비활성화, 중복확인.
function checkId() {
    var inputed = $('.id').val();
    $.ajax({
        data : {
            id : inputed
        },
        url : "${pageContext.request.contextPath}/user/check.do?inputId="+inputed,
        success : function(data) {
            if(inputed=="" && data=='0') {
                $("#idaa").css("background-color", "#FFCECE");
                $(".using").prop("disabled", false);
                $(".notUsing").prop("disabled", true);
                $(".uuu").text('아이디를 입력해주세요.');
                $("#label").css("color", "red");
                idCheck = 0;
            } else if (data == '0') {
                $("#idaa").css("background-color", "#B0F6AC");
                idCheck = 1;
                if(idCheck==1) {
                    $(".using").prop("disabled", false);
                    $(".notUsing").prop("disabled", true);
                    $(".uuu").text('사용 가능한 아이디 입니다.');
                    $("#label").css("color", "green");
					idCheck==1;
                } 
            } else if (data == '1') {
                $("#idaa").css("background-color", "#FFCECE");
                $(".using").prop("disabled", false);
                $(".notUsing").prop("disabled", true);
                $(".uuu").text('사용 불가능한 아이디 입니다.');
                $("#label").css("color", "red");
                idCheck = 0;
            } 
        }
    });
}


function checkPw() {
    var inputed = $('.pass').val();
    var reinputed = $('#pw2').val();
    if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
        $("#pw2").css("background-color", "#FFCECE");
    }
    else if (inputed == reinputed) {
        $("#pw2").css("background-color", "#B0F6AC");
        pwCheck = 1;
        if(pwCheck == 1) {
            $(".qqq").text('비밀번호가 일치합니다');
            $("#label2").css("color", "green");
            signupCheck();
        }
    } else if (inputed != reinputed) {
        pwCheck = 0;
        $("#pw2").css("background-color", "#FFCECE");
        $(".qqq").text('비밀번호를 확인해 주세요.');
        $("#label2").css("color", "red");
        
    }
}

function signupCheck() {
    var name = $("#name").val();
    var email = $("#email").val();
    var phoneNumber = $("#phoneNumber").val();
    var birthDate = $("#birthDate").val();
    if(name!="" && email!="" && phoneNumber!="" && birthDate!="") {
        $(".signUpBtn").prop("disabled", false);
        $(".signUpBtn").css("background-color", "orange");
    } else {
    }  
}
		function emailConfirm(){
	var gsWin = window.open("${pageContext.request.contextPath}/views/user/beforeEmailConfirm.jsp",'payviewer','width=500,height=500');
		}
		</script>
	<form action="${pageContext.request.contextPath}/enguser/regist.do" method="post">

		<fieldset style="width: 50%; margin-left: 400px; margin-top: 50px;" >
		<legend style="font-weight: bold"> Register  <span style="color: red; font-weight: bold; font-size: 11px;">* All informations are required.</span></legend>
		<br/>
		<table>
		<tr><th>ID</th><td> <input style="width: 300px; height: 40px;" id="id"  name="id"  type="text" value="" placeholder="Please input ID." size="10"></td> </tr>
		<tr><th>Password </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw"  type="password" value="" placeholder="Please input password"> </td>  </tr>
		<tr><th>Confirm Password </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw"  type="password" value="" placeholder="Please confirm password"> </td>  </tr>
		<tr><th>Name </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="name"  name="name"  type="text" value="" placeholder="Please input name">  </td>  </tr>
		<tr><th>Date of Birth </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="birthDate"  name="birthDate"  type="text" value="" placeholder="yyyy/mm/dd">  </td> </tr>
		<tr><th>Phone Number</th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="phoneNumber"  name="phoneNumber" type="text" value="" placeholder="Please input phone number"></td> </tr>
		<tr><th>Email</th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="email" name="email" type="text" value=""></td><td>@</td><td><select id="selectMail" name="selectMail">
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.net">hanmail.net</option> </select></td>
				<td><button type="button" onclick="emailConfirm();" style="font-size: 12px; background-color: teal;">validate</button></td></tr>
				
				<tr><td><input id="confirm" type="text" style="font-size: 12px;" value=""/></td></tr>
				</table>
				<br/>
				<table>
				<tr><td><input style="margin-left: 200px; background-color: gray;" type="reset" value="cancel">&nbsp; &nbsp; <input type="submit" value="regist" style="background-color: pink;"></td></tr>
		</table>
<br/><br/>
		
		</fieldset>
	</form>
<hr>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
<%@ include file="/views/layout/footer_Eng.jsp" %>
</html>
