$(document).ready ->
  id = $('.message__wrapper').data('room_id');
App.chat_room = App.cable.subscriptions.create { channel: "ChatRoomChannel", room_id: id},
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    buildHtml(data)
    # Called when there's incoming data on the websocket for this channel

  speak:(message) ->
    @perform 'speak', message:message

