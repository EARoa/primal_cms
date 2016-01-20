//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  $('.jsmodal').on('hidden.bs.modal', function () {
    var $this = $(this).find('video'),
      tempSrc = $this.attr('src');
      $this.attr('src', "");
      $this.attr('src', tempSrc);
      console.log('Modal hidden, muahaha!');
    });
});
