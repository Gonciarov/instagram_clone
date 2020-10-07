document.addEventListener("turbolinks:load", function() {
  
$(function(){
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
