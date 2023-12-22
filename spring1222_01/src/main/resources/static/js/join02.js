/**
 * 
 */

$(function() {
	$("#addressBtn").click(function() {
		new daum.Postcode({
        oncomplete: function(data) {
            $("#l_postal").val(data.zonecode);
            $("#address1").val(data.address);
        }
    }).open();
	});//addressBtn
});//jquery
