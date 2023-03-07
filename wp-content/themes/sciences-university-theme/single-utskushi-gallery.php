<?php 
    get_header();

        while(have_posts()) {
        the_post(); 
        
            $post_id = get_the_ID(); 
            $featured_img_value = get_field('featured_image', $post_id);
            $artist_name_value = get_field('artist_name', $post_id);
            $dated_created_value = get_field('date_created', $post_id);
            $medium_value = get_field('medium', $post_id);
            $art_location_value = get_field('art_location', $post_id);
            $art_price = get_field('price', $post_id);
            $art_dimension = get_field('dimension', $post_id);

?>
  <div class="page-banner-gallery-list"></div>

  <div class="page-banner-gallery">
      <div class="page-banner__topbg-image" style="background-image: url(<?=$featured_img_value ? $featured_img_value : get_theme_file_uri('/images/library-hero.jpg')?>)"></div>
      <div class="page-image">
         <img src="<?=$featured_img_value ? $featured_img_value : get_theme_file_uri('/images/library-hero.jpg')?>" alt="Image description">
      </div>
  </div>

        <div class="page-description">
            <div class="page-content-style">
                 <h1 class="page-title-style"><?=$post->post_title?></h1>
                <div class="two-column-paragraph">
                    <p>
                        <strong class="important">Artist Name:</strong> <?=$artist_name_value?> </br> 
                        <strong class="important">Date Created: </strong><?= $dated_created_value?></br>
                        <strong class="important">Medium: </strong><?=$medium_value?> </br>
                        <strong class="important">Origin: </strong><?= $art_location_value?></br>
                    </p>  
                    <p>
                        <strong class="important">Price:</strong> $ <?=$art_price?> </br> 
                        <strong class="important">Dimension: </strong><?=$art_dimension?></br>
                    </p>
                </div>
               

                   <p><strong class="important">Description: </strong><?php the_content(); ?> </p></br>
                  
                <p style="float: right; font-size: 14px">Date Posted: <?php the_date('F j, Y g:i A'); ?> </p>            
            </div>
             <!-- <pre><?php print_r($post)?></pre> -->
        </div>
      

         <?php
    // How to get the value of the custom fields in a loop posts
            $args = array(
                'post_type'      => array('utskushi-gallery'),
                'post_status'    => 'publish',
                'posts_per_page' => -1, // -1 is unlimited display, adding positive numbers will limit the display
                'orderby'        => 'date',
                'sort_order'     => 'ASC',
            );
            $query = new WP_Query( $args );
            $posts = $query->posts;
        ?>

    <?php }
?>

<?php  get_footer();?>