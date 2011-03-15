$(document).ready(function() {
	$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
	$(document).pngFix( );
    desappearNotice();
    selectUsers();
});

function desappearNotice() {
  setTimeout("$('#message-green').fadeOut(5000);", 2000);
}

function selectUsers(){
  $(".selectbox-wrapper2 li").click(function(){
    $("#new_message").append("<input id='message_user_id_"+$(this).attr('rel')+"' name='message[user_ids][]' type='hidden' value="+$(this).attr('rel')+">");
    $("#user_list").append("<li>"+$(this).text()+"</li>");
    /*var user_ids = []
    if ($("#message_user_ids").val()) { user_ids.push($("#message_user_ids").val()); }
    user_ids.push($(this).attr("rel"));
    $("#message_user_ids").val(user_ids);*/
  });
}
