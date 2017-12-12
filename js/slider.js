(function($){
console.log("hello");
$(document).ready(function(){
  
    var $slider = $("#slider");
    if( $slider.length < 1 ){ return; }
    
    //slider d'slider 
    $all_slider = $(".simple-slider");
    $current_slider = $all_slider.first();

    $all_slider.hide();
    $current_slider.show();

    setInterval(function(){
        $current_slider.fadeOut(500, /* callback fin 500ms */function(){
            //prochain élément
            $current_slider = $current_slider.next();
            
            //vérifie que l'élément existe
            if( $current_slider.length < 1 ){
                $current_slider = $all_slider.first();
            }

            $current_slider.fadeIn(500);
        });
    }, 3000);

})
}(jQuery));