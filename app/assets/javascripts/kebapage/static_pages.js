// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.wysihtml5').each(function(i, elem) {
  $(elem).wysihtml5();
});

$(document).on('page:load', function(){
  window['rangy'].initialized = false;
});