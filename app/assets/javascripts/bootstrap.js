$(document).on('turbolinks:load', function(){

$(function(){
  $('#myCategory a').click(function (e) {
    e.preventDefault()
  $(this).tab('show')
  });
});

});
