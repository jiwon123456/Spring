/**
 * 
 */

$(function() {
	$("#saveBtn").click(function() {
		if ($("#id").val().length < 1) {
			alert("아이디를 입력하셔야 다음진행이 가능합니다.");
			$("#id").focus();
			return false;
		}

		loginFrm.submit();

	});//saveBtn
});;//jquery