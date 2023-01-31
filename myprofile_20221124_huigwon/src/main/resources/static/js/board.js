/**
 * 
 */
 
function boardcheck() {
	if(document.board_form.qcontent.value.length == 0) {
	alert("질문을 작성 해주세요.");
	return;
	}
	
	document.board_form.submit();
}