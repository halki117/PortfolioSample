// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(function(){
  
  var $switchMain = $('.imgbox_main');
  var $switchSub = $('.img');

  $switchSub.on('click', function(){
    
    $switchMain.attr('src', $(this).attr('src'));
  });
})

