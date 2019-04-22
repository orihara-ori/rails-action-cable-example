idempotent_fn = ->
  alert "start room coffee"
  return # return force to disable websocket

  App.room = App.cable.subscriptions.create "RoomChannel",
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

  #  received: (data) ->
      # Called when there's incoming data on the websocket for this channel
    received: (data) ->
       alert 'recv:' + data['message']

  #  speak: ->
    speak: (message) ->

      @perform 'speak', message: message
  #     alert "hoge"+message
  #    @perform 'speak'
  #    @perform 'speak', message: message

document.addEventListener "DOMContentLoaded", idempotent_fn, false
