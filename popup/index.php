<?php
/*
    Plugin Name: Plugin PopUp
    Description: Un plugin de popup rien de difficile a comprendre
    Version: 0.0.1
    Author: Moi
    License: free
*/

//Add script
add_action("wp_enqueue_scripts", "custom_popup_scripts");
function custom_popup_scripts(){
    wp_enqueue_script("popup_script", plugin_dir_url("./")."/popup/popscript.js", array( "jquery" ));
}

//Actions hooks
add_action( "init", "create_popup_post_type");
function create_popup_post_type(){

    register_post_type( "popup", [

        "labels" => [
            "name" => "popup",
            "singular_name" => "popup",
            "all_items " => "Tous les popup",
            "add_new " => "Ajouter un popup"
        ],
        "description" => "Un popup",
        "show_in_menu" => true,
        "public" => true,
        "menu_icon" => "dashicons-star-half",
        "menu_position" => 2,
        "supports" => [
            "title",
            "editor",
            "revisions",
            "thumbnail"
        ]

    ] );

}

//Ajoute un shortcode
add_shortcode( "popup", "display_shortcode" );
function display_shortcode( $atts ){

    $popup = new WP_Query( [
        "post_type" => "popup"
    ] );

    $popup_html = "<div id='popup'>";

    if( $popup->have_posts() ){

        while( $popup->have_posts() ){

            $popup->the_post();

            $title = get_the_title();
            $content = get_the_content();
            $thumbnail_url = get_the_post_thumbnail_url( null, "thumbnail" );

            if( get_post_meta( $popup->post->ID, "pop" ) )
                $pop = get_post_meta( $popup->post->ID, "pop" )[0];
            else 
                $pop = false;

            $popup_html .= "<div class='simple-popup'>";
                $popup_html .= "<img src='".$thumbnail_url."' />";
                $popup_html .= "<div class='right-content'>";
                    $popup_html .= "<h3>".$title."</h3>";
                    $popup_html .= "<p>".$content."</p>";
                $popup_html .= "<button id='buy' class='butt'>Buy</button></div>";
            $popup_html .= "</div>";
        }

    }

    $popup_html .= "</div>";

    return $popup_html;

}

//Saving post 
add_action("save_post", "update_pop_value");

//Ici on va créer ou mettre à jour une valeur customisé (n'existe pas par default)
function update_pop_value(){

    global $post; //Récupère le post actuel

    if( get_post_meta( $post->ID, "pop") ) {
        update_post_meta( $post->ID, "pop", $_POST["pop"] );
    }
    else {
        add_post_meta( $post->ID, "pop",$_POST["pop"] );
    }

}