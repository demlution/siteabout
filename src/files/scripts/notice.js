$(function(){
  $(".notice-title").click(function(){
  	alert("e")
    $(".notice-content").hide();
    $(this).parent(".item").find(".notice-content").toggle(300);
  })
})