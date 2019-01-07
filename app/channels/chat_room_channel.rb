class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
     stream_from "chat_room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    chat_message = Message.create!(content: data['message'],user_id: current_user.id)
    ActionCable.server.broadcast 'chat_room_channel', { message: chat_message.content, id:chat_message.id }
  end
end
