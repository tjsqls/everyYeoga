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
        url : "${pageContext.request.contextPath}/enguser/check.do?inputId="+inputed,
        success : function(data) {
            if(inputed=="" && data=='0') {
                $("#idaa").css("background-color", "#FFCECE");
                $(".using").prop("disabled", false);
                $(".notUsing").prop("disabled", true);
                $(".uuu").text('please input ID');
                $("#label").css("color", "red");
                idCheck = 0;
            } else if (data == '0') {
                $("#idaa").css("background-color", "#B0F6AC");
                idCheck = 1;
                if(idCheck==1) {
                    $(".using").prop("disabled", false);
                    $(".notUsing").prop("disabled", true);
                    $(".uuu").text('It is usable.');
                    $("#label").css("color", "green");
					idCheck==1;
                } 
            } else if (data == '1') {
                $("#idaa").css("background-color", "#FFCECE");
                $(".using").prop("disabled", false);
                $(".notUsing").prop("disabled", true);
                $(".uuu").text('It is already in use.');
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
            $(".qqq").text('password checked.');
            $("#label2").css("color", "green");
            signupCheck();
        }
    } else if (inputed != reinputed) {
        pwCheck = 0;
        $("#pw2").css("background-color", "#FFCECE");
        $(".qqq").text('please check your password.');
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

<%@ include file="/views/layout/header_Eng.jsp" %>
	<form action="${pageContext.request.contextPath}/enguser/regist.do" method="post" id="f" name="f">

		<fieldset style="width: 50%; margin-left: 400px; margin-top: 50px;" >
		<legend style="font-weight: bold"> Register <span style="color: red; font-weight: bold; font-size: 11px;">* All the blanks must be filled.</span></legend>
		<br/>
		<table>
		<tr><th>ID</th><td> <input required class="id" oninput="checkId()" style="width: 300px; height: 40px;" id="idaa"  name="id"  type="text" value="" placeholder="please input ID" size="10"></td> 
		<td><p class="uuu" id="label" style="font-size: 10px; font-weight: bold;"></p></td></tr>	
		
		<tr><th>Password</th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw"  name="pw" required class="pass" oninput="checkPw()" type="password" value="" placeholder="please input pW"> </td>  </tr>
		<tr><th>Confirm password</th><td><input style="margin-top:20px; width: 300px; height: 40px;" id="pw2"  name="pw2"  required class="pass" oninput="checkPw()" type="password" value="" placeholder="please confirm pw"> </td>  
		<td><p class="qqq" id="label2" style="font-size: 10px; font-weight: bold;"></p></td></tr>
		<tr><th>Name</th><td><input required class="id" oninput="signupCheck()"  style="margin-top:20px; width: 300px; height: 40px;" id="name"  name="name"  type="text" value="" placeholder="please input name">  </td>  </tr>
		<tr><th>Date of Birth</th><td><input oninput="signupCheck()" style="margin-top:20px; width: 300px; height: 40px;" id="birthDate"  name="birthDate"  type="text" value="" placeholder="yyyy/mm/dd (include '/')" maxlength="10">  </td> </tr>
		<tr><th>Phone Number</th><td><input oninput="signupCheck()" style="margin-top:20px; width: 300px; height: 40px;" id="phoneNumber"  name="phoneNumber" type="text" value="" placeholder="please input phone Number. (except '-')"></td> </tr>
		<tr><th>Email</th><td><input oninput="signupCheck()" style="margin-top:20px; width: 300px; height: 40px;" id="email" name="email" type="text" value=""></td><td>@</td><td><select name="selectMail" style="width: 100px;">
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.net">hanmail.net</option> </select></td>
				<td><button type="button" onclick="" style="font-size: 12px; background-color: teal;">validate</button></td></tr>
				</table>
				<br/>
				<table>
				<tr><td><input style="margin-left: 200px; background-color: gray;" type="reset" value="cancel" onclick="history.back();">&nbsp; &nbsp; <input type="submit" class="signUpBtn" value="Register" disabled="disabled"></td></tr>		
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
	<%@ include file="/views/layout/footer_Eng.jsp" %>
</body>


</html>
