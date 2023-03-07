<!DOCTYPE html>
<html>
    <head>
        <?php wp_head(); ?>
    </head>
    <body class="page-bannerr" style="background-image: url(<?php echo get_theme_file_uri('images/404ErrorMessageStyle.png')?>)" >
        <div>
          <div class="page-banner__bg-color"></div>
          <div class="container t-center">
              <?php echo "<br>" ?>
              <a href="<?php echo site_url() ?>" class="btn btn--slarge btn--red">Back to Home Page</a>
          </div>
      </div>
    </body>
</html>
   
