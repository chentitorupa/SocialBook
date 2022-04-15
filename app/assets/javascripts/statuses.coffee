# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# TODO: Declaración para indicar a jquery que se ejecute inmediatamente
# Cuando en status se ejecute una acción de hover, ejecuta el evento para modificar
# la clase, toggleClass() agrega y quita la clase
$ ->
    $('.status').hover (event) ->
        $(this).toggleClass("hover")