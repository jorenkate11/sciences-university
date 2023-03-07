<?php
/* 
    Template Name: My blog post
*/
  get_header();
    while(have_posts()) {
        the_post();?>

    <div class="page-banner" >
        <div class="page-banner__bg-image" style="background-image: url(<?=get_theme_file_uri('/images/Great-hall.jpg');?>)"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title-center"><?php the_title(); ?></h1>
            <p class="page-banner_tagline">"Educating all students to achieve today and tomorrow in a global community and economy."</p>
            <div class="page-banner__intro"></div>
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
          <?php  }
          ?>

            <?php
                $args = array(
                    'post_type'      => array('post'),
                    'post_status'    => 'publish',
                    'posts_per_page' => -1,
                    'orderby'        => 'date',
                    'sort_order'     => 'ASC',
                );
                $query = new WP_Query( $args );
                $posts = $query->posts;
                ?>

        <?php if ( $query->have_posts() ) : ?>
            <div class="blog-wrapper" style="background-image: url(<?=get_theme_file_uri('/images/background-imagfe.jpg');?>)">
                <div class="button-style">
                    <button onclick="insertPostModal()" class="create-button"><i class="fa fa-plus" aria-hidden="true"></i> Create New Post</button>
                </div>
                    <ul>
                    <?php foreach ( $posts as $post ) { ?>
                        <?php 
                            $featured_img_value = get_field('featured_image', $post->ID);
                            $is_featured = (get_field('featured_post', $post->ID) == 'Yes') ? 'is-featured-post' : '';
                        ?>
                        <li id="post_item_<?=$post->ID?>" >
                            <span class="featured-post <?= $is_featured;?>" onclick="setFeatured_post('<?=$post->ID?>','<?=$is_featured;?>', this)"><i class="fa fa-heart"></i></span>
                            <a href="<?php echo get_permalink(); ?>"><div class="blog-image-style" style="background-image: url(<?=$featured_img_value ? $featured_img_value : get_theme_file_uri('/images/pic-upload.png');?>)"></div></a>
                            <div class="blog-content">
                                    <a href="<?php echo get_permalink();?>"><h3 class="blog-title"><?=$post->post_title;?></h3></a>
                                    <p class="blog-date"><?=get_the_author_meta( 'display_name', $post->post_author); ?> | <?=relative_date($post->post_date); ?></p>
                                <div class="blog-descript"><?=($post->post_content) ? ((strlen($post->post_content) <= 150) ? $post->post_content : substr(strip_tags($post->post_content), 0, 150).'...') : 'No Content'; ?></div>
                                        
                                    <div class="blog-button">
                                        <a href="javascript:;" class="blog-btn" onclick="editPost(<?=$post->ID?>)"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</a> 
                                        <a href="javascript:;" class="blog-btnred" onclick="deletePost('<?=$post->ID?>','<?=$post->post_title?>')"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</a>
                                    </div>
                            </div>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        <?php wp_reset_postdata(); ?>
                <!-- The Modal -->
                <div id="createpostModal" class="modal">
                    <!-- Modal content -->
                    <div class="modal-content">
                        <div class="modal-header-style"> 
                            <h6 class="modal-header-title" id="modal_title_id">Create New Post</h6>
                            <span class="close" onclick="closeModal('createpostModal')">&times;</span>
                        </div>
                        <!-- Loader -->
                        <div class="waiting-loader d-none" id="post_loader"><i class="fa fa-spin fa-spinner"></i><span>Loading post. Please wait...</span></div>
                        <!-- Feature Image -->
                        <div class="main-image-post" id="featured-image-view" style="background-image: url(<?php echo get_theme_file_uri('/images/pic-upload.png')?>)"></div>
                        <!-- Post-Form-Content -->
                            <div class="modal-form" id="post-form-wrapper">
                                <form action="" method="post" class="form-container" id="form-post">
                                        <div>
                                            <label for="post_title" class="form-label">Post Title</label>
                                            <div class="form-group">
                                                <input type="text" class="form-input" id="post_title" name="post_title" placeholder="Write your post title.." required>
                                            </div>
                                        </div>
                                        <div class="form-wrapper">
                                            <label for="subject">Post Description</label>
                                            <div class="form-group">
                                                <textarea class="form-input" id="post_description" name="post_description" placeholder="Write something.." style="height:200px" required></textarea>
                                            </div>
                                        </div>
                                        <div form-wrapper>
                                            <label for="subject">Make it Featured?</label>
                                            <div class="form-group">
                                                <select name="featured_post" id="featured_post" class="form-input">
                                                    <option value="No">No</option>
                                                    <option value="Yes">Yes</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-wrapper">
                                            <div>
                                                <label for="subject">Post Image</label>
                                            </div>
                                                <input type="file" class="form-input" id="image" name="post_image" accept=".png, .jpg" >
                                                <input type="hidden" name="action" value="addpost_catch" >
                                                <input type="hidden" name="post_id" id="post_id" value="0">
                                            
                                        </div>
                                        <!-- FORM BUTTON -->
                                        <div class="form-button">
                                                <button type="button" class="submit-button" onclick="addPost(this)" id="submit-button"> <i class="fa fa-check"> </i> Submit</button>
                                        </div>
                                </form> 
                            </div>
                        </div>
                    </div>
                    <!-- <pre><?php print_r($post)?></pre> -->
                </div>
          
        <?php endif; 
        }
    get_footer();
?>
 <script src="/js/function.js"></script>
