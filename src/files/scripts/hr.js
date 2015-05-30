$(function(){
  $(".panel-heading").click(function(){
    $(".panel-collapse").hide();
    $(this).parent(".panel").find(".panel-collapse").toggle(300);
  })
})