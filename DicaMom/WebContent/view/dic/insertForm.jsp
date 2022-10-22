<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dic.MailCheck"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<%
	MailCheck mk = (MailCheck) request.getAttribute("mk");
%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/QnAlist/insert.css">

<title>신규 회원 등록</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>
.jh_huk {
	text-align: left;
	width: 580px;
}

.ac {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.abc{
	color: blue;
	border-color: white;
	background-color: white;
	border-radius: 0.75rem;
}
.abc:hover{
	background-color: black;
	color: white;
}

.input-form {
/* 	max-width: 680px; */
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>

<body class="ac">
	<main>
		<div class="h1Container">
			<h1 style="color: white;">회원가입</h1>
		</div>

		<form id="signForm" action="<%=request.getContextPath()%>/insert.do"
			method="post">
			<div class="input-form" style="font-family: sans-serif;">
				<div class="idContainer">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
						class="label" for="name">I D : </label> <input type="text"
						id="dicId" name="dicId" placeholder="아이디를 입력하세요" required>
					<input type="button" onclick="f_idCheck()" value="중복검사" class="abc">
				</div>

				<div class="inputContainer">
					<label for="name">PW : </label> <input type="text" id="dicPw"
						name="dicPw"
						placeholder="비밀번호는 8자 이상이어야 하며, 숫자/대문자/영문을  포함해야 합니다.." required>
				</div>
				<div class="inputContainer">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="name">PW
						확인 : </label> <input type="text" id="Pwchk" name="Pwchk"
						placeholder="비밀번호 확인을 위해  재입력하세요" required> <input
						type="button" onclick="f_pwCheck()" value=" 확인" class="abc">
				</div>

				<div class="inputContainer">
					<label for="name">이름 : </label> <input type="text" id="dicName"
						name="dicName" onkeyup="tapkey()" placeholder="이름을 입력하세요" required>
				</div>
				<div class="inputContainer">
					<label for="name">생년월일 : </label> <input type="text" id="dicBir"
						name="dicBir" class="datepicker" placeholder="클릭해주세요" required>
				</div>
				<div class="inputContainer">
					<label for="name">주소 : </label> <input type="text" id="dicAddr"
						name="dicAddr" placeholder="주소를 입력하세요" required>
				</div>
				<div class="inputContainer">
					<label for="name">상세주소 : </label> <input type="text" id="dicAddr2"
						name="dicAddr2" placeholder="상세 주소를 입력하세요" required>
				</div>
				<div class="inputContainer">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="name">전화번호 : </label> <input
						type="text" id="dicPh" name="dicPh" placeholder="핸드폰 번호를 입력하세요"
						required> <input type="button" onclick="f_phCheck()"
						value="확인"class="abc">

				</div>
				<div class="inputContainer">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="name">이메일 : </label> <input type="text" id="dicMail"
						name="dicMail" placeholder="이메일을 입력하세요" required> <input
						type="button" onclick="f_codeSend()" value="이메일인증보내기" class="abc">
				</div>
				<div class="inputContainer">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="name">인증 확인 : </label> <input type="text" id="ckmail"
						name="ckmail" placeholder="이메일 인증번호를 입력하세요" required> <input
						type="button" onclick="f_codeCk()" value="이메일인증 " class="abc">
				</div>
				<div class="inputContainer">
					<label for="name">닉네임 : </label> <input type="text" id="dicNic"
						name="dicNic" placeholder="닉네임을  입력하세요" required>
				</div>

				<!-- 약관동의 -->
				<div class="agreeContainer" style="text-align: center">
					<label class="jh_huk" for="agree_all">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="checkbox" name="agree_all" id="agree_all"> <span><strong>모두
								동의합니다</strong></span><br>
					</label> <label class="jh_huk" for="agree">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="checkbox" name="agree" value="1" required> <span>이용약관
							동의<strong>(필수)</strong>
					</span><br>
					</label> <label class="jh_huk" for="agree">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="checkbox" name="agree" value="2" required> <span>개인정보
							수집, 이용 동의<strong>(필수)</strong>
					</span>
					</label> <label class="jh_huk" for="agree">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="agree" value="3" required><span>
							개인정보 이용 동의<strong>(필수)</strong>
					</span><br>
					</label>

				</div>


				<div class="submitContainer">
					<input input id="check" type="submit" value="회원정보등록"
						onclick="f_check()" class="abc">
				</div>

			</div>
		</form>



		<script>
			//아이디 유호성 
			function f_idCheck(){ 
				var idv = document.querySelector("input[name=dicId]");
				var id = idv.value;
				console.log(id);
				if(id.length < 4 || id.length > 12){
					alert("아이디는 4~12자 이내로 입력해주세요");
				}else{
					window.open("${contextPath}/DicaMom/idCheck.do?dicId="+id,"","width=500,height=300");
				};
			}
			
			
			
			//비밀번호 일치 확인 
			function f_pwCheck() {
		        let id = $("#dicId").val();
		        console.log(id);
		        let pw = $("#dicPw").val();
		        let pwchk = $("#Pwchk").val();
		        console.log(pw);
		        let number = pw.search(/[0-9]/g);
		        let english = pw.search(/[a-z]/ig);
		        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

		        if (pw.length < 8 || pw.length > 20) {
		            alert("8자리 ~ 20자리 이내로 입력해주세요.");
		            return false;

		        } else if (pw.search(/\s/) != -1) {
		            alert("비밀번호는 공백 없이 입력해주세요.");
		            return false;

		        } else if (number < 0 || english < 0 || spece < 0) {
		            alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
		            return false;

		        } else if ((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
		            alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
		            return false;

		        } else if (/(\w)\1\1\1/.test(pw)) {
		            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
		            return false;

		        } else if (pw.search(id) > -1) {
		            alert("비밀번호에 아이디가 포함되었습니다.");
		            return false;
		        }else if(pw != pwchk){
		        	alert("비밀번호 불일치");
		        	return false;
		        }else if(pw == pwchk) {
		            alert("비밀번호가 정상적으로 입력되었습니다.");
		            return true;
		        }

		        if (false === reg.test(pw)) {
		            alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/영문을  포함해야 합니다.');
		            return false;
		        } else {
		            alert("비밀번호가 정상적으로 입력되었습니다.");
		            return true;
		        }

		    }
			
			
			//입력 시 하이픈 자동 삽입 정규식.
			$(document).on("keyup", "#dicPh", function() { 
			$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
			});
			
			//전화번호 유효성 체크
			function f_phCheck(){
			var pwv = document.querySelector("input[name=dicPh]");
			var phoneNum = pwv.value;
  			var patternPhone = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
			if(!patternPhone.test(phoneNum))    {        
			alert('핸드폰 번호를 확인 해주세요');        
			return;    
			}else{
				alert('확인완료!');   
			} 
			}
			
	
			
				
			function f_check() {
				var firstpw = document.querySelector("input[name=dicPw]");
				var secondpw = document.querySelector("input[name=Pwchk]");
				var dicId = document.querySelector("input[name=dicId]");
				var dicName = document.querySelector("input[name=dicName]");
				var dicBir = document.querySelector("input[name=dicBir]");
				var dicAddr = document.querySelector("input[name=dicAddr]");
				var dicAddr2 = document.querySelector("input[name=dicAddr2]");
				var dicPh = document.querySelector("input[name=dicPh]");
				
				event.preventDefault(); // 폼 전송 막기
				let dataM = $("#signForm").serialize(); // dicName=?&dicPh=?	
				$.ajax({
					method:"get",
					url:"<%=request.getContextPath()%>/insert.do",
					data:dataM,
					dataType:"text", // 주의 보내는 데이타 타입 아님, 받는 데이터타입
					success:function(result){
						console.log("넘어온 값:",result);
						if(result == "fail"){
							swal('실패', "해당하는 정보가 없습니다. 다시확인해주세요.", 'warning');
							$("#LgdicId")[0].focus();
							return;  // 종료 빼먹으면 안되용
						}
						
						alert("회원가입이 성공하였습니다");
						location.href="<%=request.getContextPath()%>";
						
					},  
					error: function (request, status, error) {
			                 console.log("code: " + request.status)
			                 console.log("message: " + request.responseText)
			                 console.log("error: " + error);
				   }			
				})	
			}

			
		
		</script>
	</main>
</body>
<!--생년월일 선택을 위한 스크립트 -->
<script type="text/javascript">   
	 $(document).ready(function() {         
		$(".datepicker").datepicker({                     
		changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.              
		changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.              
		minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.              
		nextText: '다음 달', // next 아이콘의 툴팁.              
		prevText: '이전 달', // prev 아이콘의 툴팁.              
		numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.             
		stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가.               
		yearRange: 'c-100:c+10', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.            
		showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다. ( ...으로 표시되는부분이다.)              
		currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널              
		closeText: '닫기',  // 닫기 버튼 패널              
		dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.              
		showAnim: "slide", //애니메이션을 적용한다.                
		showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다.              
		 dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.              
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.          
		});     });
		</script>

<!-- daum 주소 api사용 -->
<script>
	window.onload = function(){
    document.getElementById("dicAddr").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("dicAddr").value = data.address; // 주소 넣기
                document.querySelector("input[name=dicAddr2]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
<script>
//동의 모두선택 / 해제
const agreeChkAll = document.querySelector('input[name=agree_all]');
    agreeChkAll.addEventListener('change', (e) => {
    let agreeChk = document.querySelectorAll('input[name=agree]');
    for(let i = 0; i < agreeChk.length; i++){
      agreeChk[i].checked = e.target.checked;
    }
});

</script>
<script>
// 인증번호 메일 발송
var Mcode;

function f_codeSend(){
   
   var userMail = dicMail.value;
   console.log("qqq",userMail);

   $.ajax({
      type:"get",
      url:"<%=request.getContextPath()%>/MailCheck",
      data:"dicMail=" + userMail,
      dataType:"text",
      success:function(rslt){
         console.log("확인: ", rslt);
         Mcode = rslt;
		 alert("인증메일이 발송되었습니다!!");
      }
   })
}

// 메일 인증번호 일치 여부
var verifyM = false;

function f_codeCk(){
   
   if(Mcode == $('#ckmail').val()){
      verifyM=true;
     alert("인증 되었습니다 :)");
   } else {
      alert("인증에 실패하였습니다.");

   }
}
</script>



</html>