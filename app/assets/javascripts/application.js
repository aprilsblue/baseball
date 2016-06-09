// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var check_ajax_call = function(check_num) { 
  $.ajax({
    method: "POST",
    url: "/baseball/check",
    data: {test: check_num},
    dataType: "json",
    success: function(data) {
      alert(data.result);
      $("#note").append("<p>" + data.result + "</p>");
    },
    error: function() {
      alert("Failed");
    }
  });
}