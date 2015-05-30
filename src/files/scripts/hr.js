$(function(){
  $(".panel-heading").click(function(){
    $(".panel-collapse").hide(300);
    $(this).parent(".panel").find(".panel-collapse").toggle(300);
  })
})