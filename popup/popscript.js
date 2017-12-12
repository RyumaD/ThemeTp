const $ = jQuery;

$(document).ready(function(){
    setTimeout(() => {
    var $pop = $(".simple-popup");
      $pop.fadeIn(1000);  
    }, 2000);
    
});

$(document).click(function() {
    var $pop = $(".simple-popup");
    $pop.fadeOut(1000);
});