<?php
/* 
    Template Name: Utskushi gallery post
*/
 get_header();?>
    <!-- Search code -->
    <?php
        $paged                   = 1;
        $paginate_url            = explode("/", $_SERVER['REQUEST_URI']);
        $keyword = isset($_GET['search']) ? $_GET['search'] : '';
       
        if(count($paginate_url) == 5){
            if($paginate_url[2] == 'page'){
                $paged = $paginate_url[3];
            }
        }
        function pagination( $paged = '', $max_page = '' )
        {
            if( !$paged )
                $paged = get_query_var('paged');
            if( !$max_page )
                $max_page = $wp_query->max_num_pages;
            return paginate_links( array(
                'current'    => max(1, $paged),
                'total'      => $max_page,
                'format' => '?paged=%#%',
                'mid_size'   => 1,
                'prev_text'  => __('<i class="fa fa-solid fa-chevron-left"></i>'),
                'next_text'  => __('<i class="fa fa-solid fa-chevron-right"></i>'),
                'type'       => 'block'
            ) );
        }

         $args = array(
        'post_type'      => array('code'),
        'post_status'    => 'publish',
        'posts_per_page' => 50, // default 50
        'paged'          => $paged,
        'orderby'        => 'date',
        'sort_order'     => 'ASC',
        's'              => $keyword
    );
    $query = new WP_Query( $args );
    $posts = $query->posts;
    ?>
    
    <div class="page-banner-headline" >
        <div class="page-banner__header-background-image" style="background-image: url(<?=get_theme_file_uri('/images/narrow-road-surrounded-by-green-trees-windsor-england.jpg');?>)"></div>
        <div class="page-banner__content container container--narrow--gallery">
            <p><?php the_title(); ?></p>
            <h1 class="headline headline--gallery">Welcome!</h1>
            <h3 class="headline headline--gallery-small">"Explore the world of art and purchase your favorite painting"</h3>
          </div>
    </div> 

    <!-- Search Field -->
    <div class="custom-search-wrapper">
        <form action="/galleries/" method="get">
            <div class="search-input">
                <input type="search" name="search" id="search-input" class="input-search" value="<?=$keyword;?>" placeholder=" Search here...">
                <button type="submit" class="search-button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
            </div>
        </form>
    </div>
    
   
    <div class="gallery-header">
        <div class="button-style">
            <button onclick="insertPostModal()" class="create-button"><i class="fa fa-plus" aria-hidden="true"></i> Add Painting</button>
        </div>
        <p class="featured-header">EXHIBITIONS</p>
        <p class="featured-description">Discover artist from all over the world gather in one page.</p>
    </div>
    
    <!-- image slides -->
    <div class="hero-slider">
      <div data-glide-el="track" class="glide__track">
        <div class="glide__slides">
          <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('images/Fernando-Amorsolo.PNG')?>)">
            <div class="hero-slider__interior container">
                <div class="hero-slider__overlay">
                    <h2 class="headline headline--medium t-center">Fernando Amorsolo</h2>
                    <p class="t-center">Filipino Artist</p>
              </div>
            </div>
          </div>
          <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('images/van-gogh.jpg')?>)">
            <div class="hero-slider__interior container">
                 <div class="hero-slider__overlay">
                    <h2 class="headline headline--medium t-center">Vincent Van Gogh</h2>
                    <p class="t-center">French Artist</p>
              </div>
            </div>
          </div>
          <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('images/leonardo-da-vinci.jpg')?>)">
            <div class="hero-slider__interior container">
                <div class="hero-slider__overlay">
                    <h2 class="headline headline--medium t-center">Leonardo Da Vinci</h2>
                    <p class="t-center">Italian Artist and Inventor</p>
              </div>
            </div>
          </div>
          <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('images/picasso.jpeg')?>)">
            <div class="hero-slider__interior container">
                 <div class="hero-slider__overlay">
                    <h2 class="headline headline--medium t-center">Pablo Picasso</h2>
                    <p class="t-center">Spanish Artist</p>
              </div>
            </div>
          </div>
        </div>
        <div class="slider__bullets glide__bullets" data-glide-el="controls[nav]"></div>
      </div>
    </div>

     <?php 
              $theParent = wp_get_post_parent_id(get_the_ID());
            if ($theParent) { ?>
                <div class="metabox metabox--position-up metabox--with-home-link">
                  <p>
                  <a class="metabox__blog-home-link" href="<?php echo get_permalink($theParent); ?>"><i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($theParent); ?></a>
                  <span class="metabox__main"><?php the_title(); ?></span>
                  </p>
                </div>  
          <?php  } ?>

        <?php
            $args = array(
                'post_type'      => array('utskushi-gallery'),
                'post_status'    => 'publish',
                'posts_per_page' => 3,
                'orderby'        => 'date',
                'sort_order'     => 'ASC',
                'paged'          => $paged,
                's'              => $keyword,
            );
            $query = new WP_Query( $args );
            $posts = $query->posts;
        ?>
   
        <?php if ($posts) { ?>
            <div class="gallery-wrapper">
                <ul>
                    <?php foreach ( $posts as $post ) { ?>
                    <?php 
                        $featured_img_value = get_field('featured_image', $post->ID);
                        $is_featured = (get_field('featured_post', $post->ID) == 'Yes') ? 'is-featured-post' : '';
                        $date_created_value = get_field('date_created', $post->ID);
                        $artist_name_value = get_field('artist_name', $post->ID);
                        $art_dimension = get_field('dimension', $post->ID);
                        $medium_value = get_field('medium', $post->ID);
                    ?>
                    <li id="post_item_<?=$post->ID?>" >
                        <span class="featured-post <?= $is_featured;?>" onclick="setFeatured_post('<?=$post->ID?>','<?=$is_featured;?>', this)"><i class="fa fa-heart"></i></span>
                        <a href="<?php echo get_permalink(); ?>"><div class="blog-image-style" style="background-image: url(<?=$featured_img_value ? $featured_img_value : get_theme_file_uri('/images/pic-upload.png');?>)"></div></a>
                        <div class="blog-content">
                                <a href="<?php echo get_permalink();?>"><h3 class="blog-title"><?=$post->post_title;?></h3></a>
                                <p><strong ><?=$artist_name_value;?> </strong></br>
                                <?=$art_dimension;?> <?=$medium_value?></p> 
                                <div class="blog-button">
                                    <a href="javascript:;" class="blog-btn" onclick="editArtpost(<?=$post->ID?>)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a> 
                                    <a href="javascript:;" class="blog-btnred" onclick="deletePost('<?=$post->ID?>','<?=$post->post_title?>')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                </div>
                        </div>
                    </li>
                    <?php } ?> 
                </ul> 

                 <!-- Pagination -->
                <?php if(pagination($paged, $query->max_num_pages)){ ?>
                        <div class="pagination-list">
                            <?=pagination($paged, $query->max_num_pages); ?>
                        </div>
                <?php } ?>
            </div> 

            <!-- MODAL -->
            <?php wp_reset_postdata(); ?>
            <!-- The Modal -->
            <div id="createpostModal" class="modal">
                <!-- Modal content -->
                <div class="modal-content" >
                    <div class="modal-header-style"> 
                        <h6 class="modal-header-title" id="modal_title_id">Add Painting</h6>
                        <span class="close" onclick="closeModal('createpostModal')">&times;</span>
                    </div>
                    <!-- Loader -->
                    <div class="waiting-loader d-none" id="post_loader"><i class="fa fa-spin fa-spinner"></i><span>Loading post. Please wait...</span></div>
                    <!-- Feature Image -->
                    <div class="main-image-post" id="featured-image-view" style="background-image: url(<?php echo get_theme_file_uri('/images/pic-upload.png')?>)"></div>
                    <!-- Post-Form-Content -->
                        <div class="modal-form" id="post-form-wrapper">
                            <form action="" method="post" class="form-container" id="form-post">
                                    <div class="form-wrapper">
                                        <label for="post_title">Painting Title</label>
                                        <div class="form-group">
                                            <input type="text" class="form-input" id="title_painting" name="title_painting" placeholder="Enter title of the painting here..." required>
                                        </div>
                                    </div>
                                    <div class="form-wrapper">
                                        <label for="post_title">Artist Name</label>
                                        <div class="form-group">
                                            <input type="text" class="form-input" id="artist_name" name="artist_name" placeholder="Enter artist name here..." required>
                                        </div>
                                    </div>

                                        <div class="form-wrapper">
                                        <label for="subject">Date Created</label>
                                        <div class="form-group">
                                            <input type="text" class="form-input" id="date_created" name="date_created" placeholder="Enter date created here..." required></input>
                                        </div>
                                    </div>

                                    <div class="form-wrapper">
                                        <label for="subject">Medium</label>
                                        <div class="form-group">
                                            <input type="text" class="form-input" id="art_materials" name="art_materials" placeholder="Enter medium or art materials used (ex. oil paint on canvas)" required></input>
                                        </div>
                                    </div>

                                    <div class="form-wrapper">
                                        <label for="subject">Origin</label>
                                        <div class="form-group">
                                            <input type="text" class="form-input" id="art_location" name="art_location" placeholder="Enter origin here..." required></input>
                                        </div>
                                    </div>

                                    <div class="form-wrapper">
                                        <label for="subject">Price</label>
                                        <div class="form-group">
                                            <input type="text" class="form-input" id="art_price" name="art_price" placeholder="Enter amount here..." required></input>
                                        </div>
                                    </div>

                                    <div class="form-wrapper">
                                        <label for="subject">Dimension</label>
                                        <div class="form-group">
                                            <input type="text" class="form-input" id="art_dimension" name="art_dimension" placeholder="Enter dimension here..." required></input>
                                        </div>
                                    </div>

                                    <div class="form-wrapper">
                                        <label for="subject">Post Description</label>
                                        <div class="form-group">
                                            <textarea class="form-input" id="post_description" name="post_description" placeholder="Write something.." style="height:200px" required></textarea>
                                        </div>
                                    </div>
                                    <!-- <div class="form-wrapper">
                                        <label for="subject">Make it Featured?</label>
                                        <div class="form-group">
                                            <select name="featured_post" id="featured_post" class="form-input">
                                                <option value="No">No</option>
                                                <option value="Yes">Yes</option>
                                            </select>
                                        </div>
                                    </div> -->
                                    <div class="form-wrapper">
                                        <div>
                                            <label for="subject">Post Image</label>
                                        </div>
                                            <input type="file" class="form-input" id="image" name="post_image" accept=".png, .jpg" >
                                            <input type="hidden" name="action" value="insert_artpost" >
                                            <input type="hidden" name="post_id" id="post_id" value="0">
                                        
                                    </div>
                                    <!-- FORM BUTTON -->
                                    <div class="form-button">
                                            <button type="button" class="submit-button" onclick="addArtPost(this)" id="submit-button"> <i class="fa fa-check"> </i> Submit</button>
                                    </div>
                            </form> 
                        </div>
                    </div>    
                </div>
            </div>

        <?php } else{ ?>
            <div class="custom-alert-warning">
                <p> <i class="fa fa-frown-o" aria-hidden="true"></i> </br> Sorry, we don't have any available posts for now.</p>
            </div>
        <?php } ?>
    

<?php get_footer();?> 