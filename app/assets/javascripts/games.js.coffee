# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

registerBuzz = (player) ->
  unless $(".player.active").length
    $("#buzzer-sound")[0].play()
    $("#player-#{player},#score-player-#{player}").addClass "active"

cancelBuzz = ->
  $(".player,#award-points .score").removeClass "active"

$ ->
  $(document).keypress (event) ->
    switch event.which
      when 49 then registerBuzz 1
      when 50 then registerBuzz 2
      when 51 then registerBuzz 3
      when 32 then cancelBuzz()
