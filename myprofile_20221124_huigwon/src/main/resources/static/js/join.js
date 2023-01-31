/**
 * 
 */
 
function joinCheck() {
	if(document.join_form.mid.value.length == 0) {
	alert("아이디는 필수 입력사항입니다.");
	return;
	}
	
	if(document.join_form.mid.value.length < 4) {
	alert("아이디가 너무 짧습니다. 4자 이상이여야 합니다.");
	return;
	}
	
	if(document.join_form.mpw.value.length == 0) {
	alert("비밀번호는 필수 입력사항입니다.");
	return;
	}
	
	if(document.join_form.mpw_check.value.length == 0) {
	alert("비밀번호 확인란은 필수 입력사항입니다.");
	return;
	}
	
	if(document.join_form.mpw.value!=document.join_form.mpw_check.value ) {
	alert("비밀번호가 일치하지 않습니다..");
	return;
	}
	
	if(document.join_form.mname.value.length == 0) {
	alert("이름은 필수 입력사항입니다.");
	return;
	}
	
	if(document.join_form.memail.value.length == 0) {
	alert("이메일은 필수 입력사항입니다.");
	return;
	}
	
	document.join_form.submit();
}