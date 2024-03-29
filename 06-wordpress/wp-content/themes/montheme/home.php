<?php 
get_header();
?>

<div id="crm-home">
    <main>

    <?php 

    if(have_posts()) : // si il y a des posts à afficher
        while(have_posts()) : // tant qu'il y a des psots à afficher
            the_post(); // chargement du post actuel
    ?>

    <article>
        <h1>
            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
        </h1>
        <div>
            <?php the_excerpt(); ?>
        </div>
        <footer>
            <?php the_date(); ?>
            <?php the_category(); ?>
        </footer>
    </article>

    <?php
        endwhile;
    endif;

    ?>

    </main>

    <aside class="crm-sidebar">
        <?php dynamic_sidebar('main-sidebar'); ?>
    </aside>

</div>

<?php 
get_footer();
