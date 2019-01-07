$(function(){
  $("form").on('submit',function(e){
      e.preventDefault();
      var formData = new FormData(this);
      App.chat_room.speak(formData);
      formData = "";
      $("form")[0].reset();
      $('input').removeAttr('data-disable-with');
  })
})
