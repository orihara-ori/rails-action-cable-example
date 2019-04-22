class RoomChannel < ApplicationCable::Channel
  def subscribed
    Rails.logger.info("--------subscribed!!!!!!!!!!!!!")
    # ここで clientのjsに返信を送るようになる
    #stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'room_channel', message: data['message']
  end
end
