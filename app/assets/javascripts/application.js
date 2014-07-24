// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require countdown
//= require cycle
//= require skrollr.min

$(document).ready(function() {
  startDate = $('#startDate').html();
  nowDate = $('#nowDate').html();
  grind = new Date(startDate);

  if((new Date(startDate).getTime() > new Date(nowDate).getTime())){
    $('#clock').countdown(grind, function(event) {
    var $this = $(this).html(event.strftime(''
      + '<span>%w</span> weeks '
      + '<span>%d</span> days '
      + '<span>%H</span> hr '
      + '<span>%M</span> min '
      + '<span>%S</span> sec'));
    });
  } else {
    $('#clock').html('LIVE NOW')
  }

  $('.notice').delay(2000).slideUp(400);

  $('#user_profiles').cycle({ 
    fx: 'fade', 
    timeout:  6000 
  });

  $('#host_comp').cycle({ 
    fx: 'fade', 
    timeout:  6000 
  });

  $('#guest_comp').cycle({ 
    fx: 'fade', 
    timeout:  6000 
  });

  $('#text').addClass('bounceInDown animated');

  var s = skrollr.init();

});