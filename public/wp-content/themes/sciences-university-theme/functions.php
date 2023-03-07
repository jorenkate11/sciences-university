<?php

function university_files(){
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('mdi-icons', '//fonts.googleapis.com/css2?family=Material+Icons');
    wp_enqueue_style('meie-script', '//fonts.googleapis.com/css2?family=Lora&family=Meie+Script&display=swap');
    wp_enqueue_style('lobster-script', '//fonts.googleapis.com/css2?family=Lobster&display=swap');
    wp_enqueue_style('nunito-script', '//fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap');
    wp_enqueue_style('dosis-script', '//fonts.googleapis.com/css2?family=Dosis:wght@300&display=swap');
    wp_enqueue_style('our-main-styles-vendor', get_theme_file_uri('/build/index.css'));
    wp_enqueue_style('our-main-styles', get_theme_file_uri('/build/style-index.css'));
    wp_enqueue_style('sweet-alert-css', get_theme_file_uri('/sweetalert/sweetalert.min.css'));
    wp_enqueue_style('icon-font-awesome', '//cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css', NULL, '1.0', true);
    wp_enqueue_style('icons-themify-font', '//cdn.jsdelivr.net/npm/@icon/themify-icons@1.0.1-alpha.3/themify-icons.min.css', NULL, '1.0', true);
    wp_enqueue_style('toast-r', get_theme_file_uri('/toastr/toastr.min.css'));

    wp_enqueue_script('sweet-alert-jquery', 'https://code.jquery.com/jquery-3.6.3.min.js', NULL, '1.0', true);
    wp_enqueue_script('sweet-alert-js', get_theme_file_uri('/sweetalert/sweetalert.min.js'), array('jquery'), '1.0', true);
    wp_enqueue_script('toast-r-js', get_theme_file_uri('/toastr/toastr.min.js', array('jquery'), '1.0', true));
    wp_enqueue_script('main-university-js', get_theme_file_uri('/build/index.js'), array('jquery'), '1.0', true);
    wp_enqueue_script('main-fjs', get_theme_file_uri('/js/function.js'), array('jquery'), '1.0', true);

    wp_localize_script('main-university-js', 'universityData', 
    array(
        'root_url' => get_site_url(),
        'nonce' => wp_create_nonce('wp_rest')
    ));
}

add_action('wp_enqueue_scripts', 'university_files');

function university_features() {
    add_theme_support('title-tag');
}

add_action('after_setup_theme', 'university_features');

function relative_date($time) {
    $time    = strtotime($time);
    $today   = strtotime(date('M j, Y'));
    $hrs     = date("h:i A", $time);
    $reldays = ($time - $today)/86400;

    if ($reldays >= 0 && $reldays < 1) {
        return 'Today, '.$hrs;
    } else if ($reldays >= 1 && $reldays < 2) {
        return 'Tomorrow, '.$hrs;
    } else if ($reldays >= -1 && $reldays < 0) {
        return 'Yesterday, '.$hrs;
    }
        
    if (abs($reldays) < 7) {
        if ($reldays > 0) {
            $reldays = floor($reldays);
            return 'In ' . $reldays . ' day' . ($reldays != 1 ? 's' : '');
        } else {
            $reldays = abs(floor($reldays));
            return $reldays . ' day' . ($reldays != 1 ? 's' : '') . ' ago';
        }
    }
        
    if (abs($reldays) < 182) {
        return date('l, j F',$time ? $time : time());
    } else {
        return date('l, j F, Y',$time ? $time : time());
    }
}

add_action( 'wp_ajax_nopriv_delete_catch', 'delete_catch');
add_action( 'wp_ajax_delete_catch', 'delete_catch');
function delete_catch() {
    /* 
        * Extract the data in from this code "$_POST"
        * Ajax or Javascript sends you this data from the form in an array
    */ 
    
    wp_delete_post($_POST['post_id']);
    
    // Return data to Javascript
    if($delete){
        // Return data to Javascript
        echo json_encode([
            'code'     => 200,
            'status'    => true,
            'data'      => $_POST['post_id'], 
            'msg'      => 'Post deleted successfully.',
    ]);
    }else{
        // Return data to Javascript
        echo json_encode([
            'code'     => 200,
            'status'    => true,
            'data'      => $_POST['post_id'], 
            'msg'      => 'Failed to delete.',
        ]);
    }
}

add_action( 'wp_ajax_nopriv_addpost_catch', 'addpost_catch');
add_action( 'wp_ajax_addpost_catch', 'addpost_catch');
function addpost_catch() {

    // $post_title = $_POST['post_title'];
    // $post_description = $_POST['post_description'];

    $new_post = array(
     'post_title' => $_POST['post_title'],
     'post_content' => $_POST['post_description'],
     'post_type' => 'post',
     'post_status' => 'publish',
    );

    //Update the post
    if($_POST['post_id']){
        $new_post['ID'] = $_POST['post_id'];
        wp_update_post( $new_post );
        $post_id = $_POST['post_id'];
    }
    else{
        $post_id = wp_insert_post( $new_post );
    }

    if( $post_id) {
        //upload image/galleries
        $post_img_id = upload_files_and_save($post_id, '');

        if($post_img_id){
             update_field('featured_image', $post_img_id, $post_id);
        }
       
        update_field('featured_post', $_POST['featured_post'], $post_id);
    }

        // Return data to Javascript
    echo json_encode([
        'code'     => 200,
        'status'    => ($post_id) ? true : false,
        'data'      => [], 
        'msg'      => ($post_id) ? 'Post saved successfully': 'A problem has occured, Please try Again',
    ]);
}

// Upload Files
function upload_files_and_save($post_id, $attach_id) {
    if ( ! function_exists( 'wp_handle_upload' ) ) {
        require_once( ABSPATH . 'wp-admin/includes/file.php' );
    }
    // for multiple file upload.
    $upload_overrides = array( 'test_form' => false );
    $files = $_FILES['post_image'];
    if($_FILES['post_image']['name']){
        if ( $files['name'] ) {
            $file = array(
                'name'         => $files['name'],
                'type'         => $files['type'],
                'tmp_name'     => $files['tmp_name'],
                'error'        => $files['error'],
                'size'         => $files['size']
            );
    
            $movefile = wp_handle_upload( $file, $upload_overrides );

            if ( $movefile && !isset($movefile['error']) ) {
                $wp_upload_dir = wp_upload_dir();
                $attachment = array(
                    'guid'              => $wp_upload_dir['url'] . '/' . basename($movefile['file']),
                    'post_mime_type' => $movefile['type'],
                    'post_title'      => preg_replace( '/\.[^.]+$/','', basename($movefile['file'])),
                    'post_content'      => '',
                    'post_status'      => 'inherit'
                );
                $attach_id = wp_insert_attachment($attachment, $movefile['file']);
                if($attach_id){
                    set_post_thumbnail( $post_id, $attach_id );
                }else{
                    set_post_thumbnail( $post_id, $post_img_id );
                }
            }
        }
    }
    return $attach_id;
}

add_action( 'wp_ajax_nopriv_setfeatured_catch', 'setfeatured_catch');
add_action( 'wp_ajax_setfeatured_catch', 'setfeatured_catch');
function setfeatured_catch() {

    update_field('featured_post', $_POST['featured'], $_POST['post_id']);
    
    // Return data to Javascript
        // Return data to Javascript
        echo json_encode([
            'code'     => 200,
            'status'    => true,
            'data'      =>[],
            // 'data'      => $_POST['post_id'], 
            'msg'      => 'Post changed successfully.',
    ]);
}

add_action ( 'wp_ajax_nopriv_fetchpost_catch', 'fetchpost_catch' );
add_action( 'wp_ajax_fetchpost_catch', 'fetchpost_catch');
function fetchpost_catch() {

    $args = array(
        'post_type'  => array('post'),
        'p'         =>$_POST['post_id'],
    );

    $query = new WP_Query( $args );
    $post = $query->posts[0];

    // Return data to Javascript
    echo json_encode([
        'code'     => 200,
        'status'    => true,
        'data'      => array(
            'post_id'          =>$post->ID,
            'post_title'       =>$post->post_title,
            'post_description' =>$post->post_content,
            'featured_post'     =>(get_field('featured_post', $post->ID == 'Yes') ? 'Yes' : 'No'),
            'featured_image'  =>(get_field('featured_image', $post->ID)) ? get_field('featured_image', $post->ID) : get_theme_file_uri('/images/pic-upload.png'),
        ), 
        'msg' => 'Post fetched successfully',
    ]);
}

//utskushi-gallery

add_action( 'wp_ajax_nopriv_insert_artpost', 'insert_artpost');
add_action( 'wp_ajax_insert_artpost', 'insert_artpost');
function insert_artpost() {

    // $post_title = $_POST['post_title'];
    // $post_description = $_POST['post_description'];

    $new_post = array(
     'post_title' => $_POST['title_painting'],
     'post_content' => $_POST['post_description'],
     'post_type' => 'utskushi-gallery',
     'post_status' => 'publish',
     'meta_input' => array (
        'artist_name' => $_POST['artist_name'],
        'date_created' => $_POST['date_created'],
        'medium' => $_POST ['art_materials'],
        'art_location' => $_POST ['art_location'],
        'price' => $_POST ['art_price'],
        'dimension' => $_POST ['art_dimension'],
     ),
    );

    //Update the post
    if($_POST['post_id']){
        $new_post['ID'] = $_POST['post_id'];
        wp_update_post( $new_post );
        $post_id = $_POST['post_id'];
    }
    else{
        $post_id = wp_insert_post( $new_post );
    }

    if( $post_id) {
        //upload image/galleries
        $post_img_id = upload_files_and_save($post_id, '');

        if($post_img_id){
             update_field('featured_image', $post_img_id, $post_id);
        }
       
        // update_field('featured_post', $_POST['featured_post'], $post_id);
    }

        // Return data to Javascript
    echo json_encode([
        'code'     => 200,
        'status'    => ($post_id) ? true : false,
        'data'      => [], 
        'msg'      => ($post_id) ? 'Post saved successfully': 'A problem has occured, Please try Again',
    ]);
}

add_action ( 'wp_ajax_nopriv_view_artpost', 'view_artpost' );
add_action( 'wp_ajax_view_artpost', 'view_artpost');
function view_artpost() {

    $args = array(
        'post_type'  => array('utskushi-gallery'),
        'p'         =>$_POST['post_id'],
    );

    $query = new WP_Query( $args );
    $post = $query->posts[0];

    // Return data to Javascript
    echo json_encode([
        'code'     => 200,
        'status'    => true,
        'data'      => array(
            'post_id'          =>$post->ID,
            'title_painting'   =>$post->post_title,
            'post_description' =>$post->post_content,
            'featured_image'  =>(get_field('featured_image', $post->ID)) ? get_field('featured_image', $post->ID) : get_theme_file_uri('/images/pic-upload.png'),
            'artist_name'   =>(get_field('artist_name', $post->ID)),
            'date_created'  =>(get_field('date_created', $post->ID)),
            'medium'    =>(get_field('medium', $post->ID)),
            'art_location'  =>(get_field('art_location', $post->ID)),
            'price'         =>(get_field('price', $post->ID)),
            'dimension'     =>(get_field('dimension', $post->ID)),
        ), 
        'msg' => 'Post fetched successfully',
    ]);
}
