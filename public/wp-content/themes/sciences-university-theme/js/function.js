function editPost(id){
  //  alert("Hello (edit)");

    $('#post_loader').removeClass('d-none');
    $('#featured-image-view').addClass('d-none');
    $('#post-form-wrapper').addClass('d-none');

    $('#modal_title_id').html('<i class="fa fa-pencil"></i> Edit Info');
    $("#submit-button").html('<i class="fa fa-check"></i> Update');

    openModal('createpostModal');
   
      $.ajax({
          type: "POST",
          url: $("#ajaxUrl").val(), 
          data: {
            post_id: id,
            action: 'fetchpost_catch',
          },
          success: (resp) => {
            var res = JSON.parse(resp.slice(0, -1)); // We need this code to remoge the number 1 on the return
              if (res.status == true) {
                console.log(res.data)

                $('#post_id').val(res.data.post_id);
                $('#post_title').val(res.data.post_title);
                $('#post_description').val(res.data.post_description);
                $('#featured_post').val(res.data.featured_post);
                $('#featured-image-view').css('background-image', `url(${res.data.featured_image})`)

                $('#post_loader').addClass('d-none');
                $('#featured-image-view').removeClass('d-none');
                $('#post-form-wrapper').removeClass('d-none');
              } else {
                // Error message
                toastr.error('We found out that you have an issue with your system');
              }
            },
            error: (e) => {
              toastr.error('We found out that you have an issue with your system');
            }
        });
}
    
function deletePost(id, ptitle){
    swal(
      {
        title: `Do you want to delete ${ptitle}?`,
        text: "Please note, you will not be able to recover this. Continue?",
        type: "warning",
        showCancelButton: true,
        showLoaderOnConfirm: true,
        confirmButtonText: "Yes, delete it!",
        closeOnConfirm: false,
        confirmButtonColor: "#e11641",
      },
      () => {
        $.ajax({
          type: "POST",
          url: $("#ajaxUrl").val(), // Target the function name to the WordPress. Ex: "get_create_posts_form_example"
          // data: $('#post-form').serialize(),
          // data: {
          //     post_title: $('#post_title').val(),
          //     post_description: $('#post_description').val(),
          // },
          data: {
            post_id: id,
            action: 'delete_catch',
          },
          success: (resp) => {
            var res = JSON.parse(resp.slice(0, -1)); // We need this code to remoge the number 1 on the return
            if (res.status == true) {
              // Success Message
              swal("Delete", `Sucessfully deleted ${ptitle}`, "success");
              $('#post_item_'+id).remove();
            } else {
              // Error message
             swal("Error", `Sorry, you are unable to delete ${ptitle}`, "error");
            }
          },
          error: (e) => {
            swal("Error", `Sorry, you are unable to delete ${ptitle}`, "error");
          },
        });
      }
    );
}

function addPost(e){
  if($('#post_title').val() && $('#post_description').val() ){
    $(e).html('<i class="fa fa-spin fa-sharp fa-spinner"></i> Posting...');
    $(e).attr('disabled', 'disabled');
    var formData = new FormData(document.getElementById('form-post'));
    $.ajax({
        type: "POST",
        url: $("#ajaxUrl").val(), // Target the function name to the WordPress. Ex: "get_create_posts_form_example"
        // data: $('#post-form').serialize(),
        // data: {
        //     post_title: $('#post_title').val(),
        //     post_description: $('#post_description').val(),
        // },
        // data: {
        //   post_id: id,
        //   post_title: $('#post_title').val(),
        //   post_description: $('#post_description').val(),
        //   action: 'addpost_catch',
        // },

        data: formData,
        contentType: false,
        processData: false,
        success: (response) => {
          var res = JSON.parse(response.slice(0, -1));
          if (res.status == true) {
            // Success Message
            swal(
              {
                title: "New Post is Added",
                text: res.msg,
                type: "success",
              },
              () => {
                window.location.href = "/blog-list";
              }
            );
          } else {
            // Error message
            swal("Oops!", `Sorry, you are unable to create a post`, "error");
          }
        },
        error: (e) => {
          swal("Oops!", `Sorry, you are unable to create a post`, "error");
        },
      });
  }
  else {
    swal("Oops!", 'Please complete the information to continue...', "error");
  }
      
    }

function setFeatured_post(id, feature, e) {
      $.ajax({
        type: "POST",
        url: $("#ajaxUrl").val(), // Target the function name to the WordPress. Ex: "get_create_posts_form_example"
        // data: $('#post-form').serialize(),
        // data: {
        //     post_title: $('#post_title').val(),
        //     post_description: $('#post_description').val(),
        // },
        data: {
          post_id: id,
          feature: ((feature == 'is-featured-post') ? 'No' : 'Yes'),
          action: "setfeatured_catch",
        },
        success: (resp) => {
          var res = JSON.parse(resp.slice(0, -1)); // We need this code to remoge the number 1 on the return
          if (res.status == true) {
            // Success Message
            if(feature=='is-featured-post') {
                toastr.success("Removed as featured!"); //success
                $(e).removeClass('is-featured-post');
                $(e).attr('onclick', `setFeatured_post(${id}, '', this)`);
            }
            else { //Set to Featured
                toastr.success('Post set as featured.');
                $(e).addClass('is-featured-post');
                $(e).attr('onclick', `setFeatured_post(${id}, 'is-featured-post', this)`);
            }
          } 
          else{
                // Error message
                toastr.error('We found out that you have an issue with your system');
            }
      }
    });
    }

//------------------------MODAL----------------------
function insertPostModal(){
  //Open Modal
  $('#post_loader').addClass('d-none');
  $('#featured-image-view').removeClass('d-none');
  $('#post-form-wrapper').removeClass('d-none');
  openModal('createpostModal');

  //Edit Modal
  $('#modal_title_id').html('<i class="fa fa-plus"></i> Add new painting to your gallery ');
  $('#submit-button').html('<i class="fa fa-check"></i> Submit');

  //Reset Form Modal
  $('#post_id').val(0);
  $('#form-post')[0].reset();
  $("#featured-image-view").attr(
    "style",
    "background-image: url(http://sciences-university.local/wp-content/themes/sciences-university-theme/images/pic-upload.png)"
  );
}

var close; //closing modal by windows.onclick

function openModal(modalID){
     var modal = document.getElementById(modalID);
     modal.style.display = "block";
     close = modal;
}
function closeModal(){
     close.style.display = "none";
}

window.onclick = function(event) {
  if(event.target == close){
     close.style.display = "none";
  }
}

// utskushi-gallery

function editArtpost(id) {
  //  alert("Hello (edit)");

  $("#post_loader").removeClass("d-none");
  $("#featured-image-view").addClass("d-none");
  $("#post-form-wrapper").addClass("d-none");

  $("#modal_title_id").html('<i class="fa fa-pencil"></i> Edit Info');
  $("#submit-button").html('<i class="fa fa-check"></i> Update');

  openModal("createpostModal");

  $.ajax({
    type: "POST",
    url: $("#ajaxUrl").val(),
    data: {
      post_id: id,
      action: "view_artpost",
    },
    success: (resp) => {
      var res = JSON.parse(resp.slice(0, -1)); // We need this code to remoge the number 1 on the return
      if (res.status == true) {
        console.log(res.data);

        $("#post_id").val(res.data.post_id);
        $("#title_painting").val(res.data.title_painting);
        $("#post_description").val(res.data.post_description);
        $("#featured-image-view").css(
          "background-image",
          `url(${res.data.featured_image})`
        );
        $("#artist_name").val(res.data.artist_name);
        $("#date_created").val(res.data.date_created);
        $("#art_materials").val(res.data.medium);
        $("#art_location").val(res.data.art_location);
        $("#art_price").val(res.data.price);
        $("#art_dimension").val(res.data.dimension);

        $("#post_loader").addClass("d-none");
        $("#featured-image-view").removeClass("d-none");
        $("#post-form-wrapper").removeClass("d-none");
      } else {
        // Error message
        toastr.error("We found out that you have an issue with your system");
      }
    },
    error: (e) => {
      toastr.error("We found out that you have an issue with your system");
    },
  });
}

function addArtPost(e) {
  if (
    $("#title_painting").val() &&
    $("#post_description").val() &&
    $("#artist_name").val() &&
    $("#date_created").val() &&
    $("#art_materials").val() &&
    $("#art_location").val() &&
    $("#art_price").val() &&
    $("#art_dimension").val()
  ) {
    $(e).html('<i class="fa fa-spin fa-sharp fa-spinner"></i> Posting...');
    $(e).attr("disabled", "disabled");
    var formData = new FormData(document.getElementById("form-post"));
    $.ajax({
      type: "POST",
      url: $("#ajaxUrl").val(), // Target the function name to the WordPress. Ex: "get_create_posts_form_example"
      // data: $('#post-form').serialize(),
      // data: {
      //     post_title: $('#post_title').val(),
      //     post_description: $('#post_description').val(),
      // },
      // data: {
      //   post_id: id,
      //   post_title: $('#post_title').val(),
      //   post_description: $('#post_description').val(),
      //   action: 'addpost_catch',
      // },

      data: formData,
      contentType: false,
      processData: false,
      success: (response) => {
        var res = JSON.parse(response.slice(0, -1));
        if (res.status == true) {
          // Success Message
          swal(
            {
              title: "Success",
              text: res.msg,
              type: "success",
            },
            () => {
              window.location.href = "/galleries";
            }
          );
        } else {
          // Error message
          swal("Oops!", `Sorry, you are unable to create a post`, "error");
        }
      },
      error: (e) => {
        swal("Oops!", `Sorry, you are unable to create a post`, "error");
      },
    });
  } else {
    swal("Oops!", "Please complete the information to continue...", "error");
  }
}
    


