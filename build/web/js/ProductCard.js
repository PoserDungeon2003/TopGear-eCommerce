/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


vw = $(window).outerWidth();

$('#cart').click(flip);

if (vw > 768) {
 $('.card').hover(
function() {
  $('.description').toggleClass('show');
  $('.image-wrapper').toggleClass('shrink');
}
) 
}

function flip() {
  $('#cart').addClass('flipped');
  $('#cart').addClass('added');
  $('.backside').addClass('show');
  $('.front').addClass('hide');
}

