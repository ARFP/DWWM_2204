<!-- partie centrale du thème (partie dynamique) --> 
<!-- index.php = interface par défaut du thème -->
<main>

    <?php
    if (have_posts()) :    
        while (have_posts()) : the_post(); 

    ?>            
        <article>                
            <header>                
                <h1>
                    <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                </h1>                    
                <aside>                        
                    <span><?php the_date(); ?></span>                        
                    <span><?php the_author(); ?> </span>                    
                </aside>                
            </header>                
            <section>                
                <?php the_content(); ?>                
            </section>            
            <footer>                
                <span><?php the_category(); ?></span>                
                <span><?php the_tags(); ?></span>            
            </footer>            
        </article>        
    <?php    
        endwhile;
    endif;
    ?>

</main>
