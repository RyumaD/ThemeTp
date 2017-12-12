<?php 
/*
    Le fichier de template de mes categories 
*/
get_header();
?> 
    <h1 class="cath1"> <?php single_cat_title(); ?> </h1>
<div class="flex">

    <?php 
        $i = 0;
        if( have_posts() ){
            while( have_posts() && $i<3){
                ?>
                <div class="content-post"> 
                    <?php
                    the_post();
                    $thumb = get_the_post_thumbnail( null, "full" );
                    ?>
                    <?= $thumb ?>
                    <? 
                    the_title("<h2 class='cath2'>", "</h2>");

                    get_template_part("template-parts/article");

                    the_content("<p>","</p>");
                    $i++;
                    ?> 
                </div>
            <?php
            }
        } 
        ?>
</div>
<?php 
get_footer();