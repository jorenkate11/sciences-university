<?php get_header();

    while(have_posts()) {
        the_post(); 
        
            $post_id = get_the_ID(); 
            $featured_img_value = get_field('featured_image', $post_id);
?>
        <div class="page-banner">
            <div class="page-banner__bg-image" style="background-image: url(<?=$featured_img_value ? $featured_img_value : get_theme_file_uri('/images/library-hero.jpg')?>)"></div>
                <div class="page-banner__content container container--narrow">
                        <h1 class="page-banner__title"><?php the_title(); ?></h1>
                    <div class="page-banner__intro">
                        <p>Author: <?php the_author(); ?></p>
                        <p>Date Posted: <?php the_date('F j, Y g:i A'); ?> </p>
                        
                </div>
            </div>
        </div>

        <div class="container container--narrow page-section">

        <?php the_content(); ?>

      <?php
    // How to get the value of the custom fields in a loop posts
    $args = array(
        'post_type'      => array('post'),
        'post_status'    => 'publish',
        'posts_per_page' => -1, // -1 is unlimited display, adding positive numbers will limit the display
        'orderby'        => 'date',
        'sort_order'     => 'ASC',
    );
    $query = new WP_Query( $args );
    $posts = $query->posts;
    ?>

    <?php }

    
    get_footer();

?> 