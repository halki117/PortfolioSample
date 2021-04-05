// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(function(){
  
  var $switchMain = $('.imgbox_main');
  var $switchSub = $('.img');

  $switchSub.on('click', function(){
    
    $switchMain.attr('src', $(this).attr('src'));
  });
})



// .col-7.main_img
//  = image_tag "https://picsum.photos/600/450", class: "imgbox_main img-fluid"
// .col-4.sub_imgs
//   .sub_img1
//     = image_tag "https://picsum.photos/250/150", class: "img"
//   .sub_img2
//     = image_tag "https://picsum.photos/250/151", class: "img" 
//   .sub_img3 
//     = image_tag "https://picsum.photos/250/152", class: "img"  