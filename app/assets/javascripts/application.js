// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs

//= require konami.js
//= require teamRexEasterEgg.js
scrollToLastComment = (urlPath) => {
  $(".comments_" + urlPath).show()
$('html, body').animate({
  scrollTop: $(".comments_" + urlPath).offset().top
});
}

setListeners = (urlPath) =>{$('#comment_toggle_off_' + urlPath).hide();
setTimeout(function(){$('#post_flash_' + urlPath).fadeOut();}, 3000);
$('#comment_toggle_' + urlPath).click(function() {
$('#comment_toggle_off_' + urlPath).show()

$('#comment_toggle_' + urlPath).hide()

$('.comments_' + urlPath).show('swing')});

$('#comment_toggle_off_'  + urlPath).click(function() { 
$('.comments_' + urlPath).hide('swing')
$('#comment_toggle_off_' + urlPath).hide() 
$('#comment_toggle_' + urlPath).show()
});
}

setStartingCommentState = (postId) => {
  $('.comments_' + postId).hide();
  $('#comment_toggle_' + postId).click(function() {$('.comments_' + postId).show('swing')})
}