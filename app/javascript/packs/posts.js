document.addEventListener("turbolinks:load", function() {
  
$(function(){
    $("#post-comment").on("click", function(){
        $("#comment_comment").focus();
    });
    $(".post-like").on("click", function(){
        var post_id = $(this).data("id");
        var url = "/post/like/"+post_id
        $.ajax({
            
            url: url,
            method: "GET"}).done(function(response){
                console.log(response);
            })

            
        })
    })
});
