<!DOCTYPE html>
<html>
    <head>
        <?php wp_head(); ?>
        <input type="hidden" id="ajaxUrl" value="<?=admin_url('admin-ajax.php');?>">
    </head>
    <body>
       <header class="site-header">
      <div class="container">
        <h1 class="school-logo-text float-left school-logo-text-1">
          <a href="<?php echo site_url() ?>"><strong>SCIENCES</strong> University</a>
        </h1>
        <span class="js-search-trigger site-header__search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
        <i class="site-header__menu-trigger fa fa-bars" aria-hidden="true"></i>
        <div class="site-header__menu group">
          <nav class="main-navigation">
            <ul>
              <li><a href="<?php echo site_url('/about-us') ?>">About Us</a></li>
              <li><a href="<?php echo site_url('/blog-list')?>">Blog</a></li>
              <li><a href="<?php echo site_url('/galleries')?>">Art Gallery</a></li>
            </ul>
          </nav>
          <div class="site-header__util">
            <a href="#" class="btn btn--small btn--orange float-left push-right"> <i class="fa fa-user" aria-hidden="true"></i>  Login</a>
            <a href="#" class="btn btn--small btn--dark-orange float-left"><i class="fa fa-user-plus" aria-hidden="true"></i> Sign Up</a>
            <!-- <span class="search-trigger js-search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span> -->
          </div>
        </div>
      </div>
    </header>
   
