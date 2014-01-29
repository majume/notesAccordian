# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

 #$(document).ready ->
 $(document).on "page:change", ->
  #Hide form
  $("#divEntry").hide();

  $("#new_user").on("ajax:beforeSend", (e, data, status, xhr) ->
    alert 'this is before the send'
   ).on("ajax:success", (e, data, status, xhr) ->
    #$("#new_user").append status
    alert 'after success'
    $("#divEntry").hide();
   ).bind "ajax:error", (e, xhr, status, error) ->
    $("#new_user").append "<p>ERROR</p>"
    alert 'this was a failure'
  
  #$("#new_user").on("ajax:success", (e, data, status, xhr) ->
    ##$("#new_user").append status
    #$("#divEntry").hide();
   #).bind "ajax:error", (e, xhr, status, error) ->
    #$("#new_user").append "<p>ERROR</p>"
    #alert 'this was a failure'
  
  
  $('#bnew').click ->
   $('#divEntry').show();


  #$('#a_new').click ->
    #$('#divContainer1').show();
