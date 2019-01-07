$(function(){
  $("form").on('submit',function(e){
      e.preventDefault();
      var content = $('[name=content]').val()
      App.chat_room.speak(content);
      formData = "";
      $("form")[0].reset();
      $('input').removeAttr('data-disable-with');
  })
})
