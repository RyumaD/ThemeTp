<?php
/*
    Template Name: Accueil
*/

get_header();
?>
<div class="flex">
    <div class="left-side">
        <div class="content">
            <?php 
            while( have_posts() ){ 
                the_post();
                the_title("<h1 class='cath1'>","</h1>");
                the_content("<p class='contenu>","<p>");
            }
            ?>
        </div>
    </div>
    <div class="right-side">
        <?php 
            dynamic_sidebar( "right_sidebar" ); 
        ?>
    </div>
</div>
    
<?php
get_footer();