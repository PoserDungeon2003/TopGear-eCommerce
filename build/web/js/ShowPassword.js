/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
  $('.details-control').on('click', function(e) {
    var $cell = $(this).toggleClass('details-open details-closed');
    $cell.find('.content').toggleClass('d-none');
  });
});
