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

</script>

<%@ include file="/views/layout/header.jsp" %>
	<form action="${pageContext.request.contextPath}/user/regist.do" method="post" id="f" name="f">

		<fieldset style="width: 50%; margin-left: 400px; margin-top: 50px;" >
		<legend style="font-weight: bold"> 회원가입  <span style="color: red; font-weight: bold; font-size: 11px;">* 모든 입력사항이 채워져야 가입이 진행됩니다.</span></legend>
		<br/>
		<table>
		<tr><th>ID</th><td> <input required class="id" oninput="checkId()" style="width: 300px; height: 40px;" id="idaa"  name="id"  type="text" value="" placeholder="ID를 입력해주세요." size="10"></td> 
		<td><p class="uuu" id="label" style="font-size: 10px; font-weight: bold;"></p></td></tr>	
		
		<tr><th>비밀번호 </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw" required class="pass" oninput="checkPw()" type="password" value="" placeholder="PW를 입력해주세요."> </td>  </tr>
		<tr><th>비밀번호 확인 </th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw2"  name="pw2"  required class="pass" oninput="checkPw()" type="password" value="" placeholder="PW를 입력해주세요."> </td>  
		<td><p class="qqq" id="label2" style="font-size: 10px; font-weight: bold;"></p></td></tr>
		<tr><th>이름 </th><td><input required class="id" oninput="signupCheck()"  style="margin-top:20px; width: 300px; height: 40px;" id="name"  name="name"  type="text" value="" placeholder="이름를 입력해주세요.">  </td>  </tr>
		<tr><th>생년월일 </th><td><input oninput="signupCheck()" style="margin-top:20px; width: 300px; height: 40px;" id="birthDate"  name="birthDate"  type="text" value="" placeholder="yyyy/mm/dd ('/' 포함)" maxlength="10">  </td> </tr>
		<tr><th>핸드폰번호</th><td><input oninput="signupCheck()" style="margin-top:20px; width: 300px; height: 40px;" id="phoneNumber"  name="phoneNumber" type="text" value="" placeholder="휴대폰 번호를 입력해주세요. ('-'제외)"></td> </tr>
		<tr><th>이메일 </th><td><input oninput="signupCheck()" style="margin-top:20px; width: 300px; height: 40px;" id="email" name="email" type="text" value=""></td><td>@</td><td><select name="selectMail" style="width: 100px;">
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.net">hanmail.net</option> </select></td>
				<td><button type="button" onclick="" style="font-size: 12px; background-color: teal;">인증하기</button></td></tr>
				</table>
				<br/>
				<table>
				<tr><td><input style="margin-left: 200px; background-color: gray;" type="reset" value="취소" onclick="history.back();">&nbsp; &nbsp; <input type="submit" class="signUpBtn" value="회원가입" disabled="disabled"></td></tr>		
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
	<%@ include file="/views/layout/footer.jsp" %>
</body>


</html>
