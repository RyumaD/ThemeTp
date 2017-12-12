<?php 
/*
    Template Name: NoWidget template
*/

get_header();
?>

    <div id="nowidget-page">

            <?php

                while(have_posts()){

                    the_post();

                    $title = get_the_title();
                    $content = get_the_content();

                    $article_posts = new WP_Query(array(
                        "cat" => get_option("nowidget_category"),
                        "order" => "ASC",
                        "orderby" => "date"
                    ));

                    ?>
                    
                    <h1 class="nowidget-title"> <?= $title ?> </h1>

                    <div class="nowidget-content">
                        <?= apply_filters("the_content", $content) ?>

                    </div>   
                    <?php
                }
            ?>
    </div>


<?php
get_footer();