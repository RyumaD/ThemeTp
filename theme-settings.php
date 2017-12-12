<?php

add_action("admin_enqueue_scripts", "load_js");
function load_js(){
    wp_enqueue_script( "colorjs", get_template_directory_uri()."/js/jscolor.min.js" );
}
add_action("admin_menu", "generate_theme_menu");
add_action("admin_init", "add_option_customs");

function add_option_customs(){

    add_option("custom_colors", []);
}
function generate_theme_menu(){
    add_menu_page(
        "tptheme",
        "tptheme",
        "administrator",
        "tp_theme_menu",
        "generate_theme_menu_page", 
        "dashicons-welcome-widgets-menus",
        60
    );
}

function generate_theme_menu_page(){

    if( isset( $_POST["color_h"] ) && $_POST["color_c"] && $_POST["color_b"] ){
        $colors = [
            "headers" => $_POST["color_h"],
            "content" => $_POST["color_c"],
            "background" => $_POST["color_b"],
        ];
        update_option( "custom_colors", $colors);
    }

    $colors_val = [
        "headers" => [],
        "content" => "",
        "background" => "",
    ];
    if(get_option("custom_colors")){
        $colors_val = get_option("custom_colors");
    }
    $categories = get_categories();

    ?> 

    <h1> Theme Settings </h1>

    <h2> Menu </h2> 
    <form method="post">

        <?php 
        for($i=0; $i<6;$i++){?>
            <br><label>Title h<?= $i+1 ?>: <input type="text" class="jscolor" value="<?= $colors_val["headers"][$i] ?>" name="color_h[]" ></label>
        <?php }?>
        <br><label>Content: <input type="text" class="jscolor" value="<?= $colors_val["content"] ?>" name="color_c"></label>
        <br><label>Background: <input type="text" class="jscolor" value="<?= $colors_val["background"] ?>" name="color_b"></label>
        <br><input type="submit" value="Valider">
    </form>
<?php 
}

add_action("wp_enqueue_scripts", "load_slider");
function load_slider(){
    wp_enqueue_script( "slider", get_template_directory_uri()."/js/slider.js" , array('jquery'));
}

add_shortcode( "slider", "shortcode" );
function shortcode( $atts ){
?>
    <div id='slider' id="slider">
    <?php
    $slider = new WP_Query( [
        "post_type" => "slider"
    ] );
    if( $slider->have_posts() ){
        while( $slider->have_posts() ){
            ?>
            <div class="simple-slider">
                <?php
                $slider->the_post();
                $thumbnail_url = get_the_post_thumbnail_url( null, "full" );
                ?>
                <img class="img" src="<?= $thumbnail_url ?>"/>
            </div>
        <?php } }?>
    </div>
<?php
}