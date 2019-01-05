$(function(){
  $("form").on('submit',function(e){
    e.preventDefault();
      var element = $('[name=content]').val();
      App.chat_room.speak(element);
      element = "";
      $("form")[0].reset();
      $('input').removeAttr('data-disable-with');
  })
})
