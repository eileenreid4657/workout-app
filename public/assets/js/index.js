$(document).ready(function() {
    $('#profile').hide()
    console.log("yoo")
    $('#profilebutton').on("click", function() {
        console.log("hi")
        $('#normal').hide();
        $('#profile').show();
        $('#dashboardbutton').removeClass("is-active");
        $('#profilebutton').addClass("is-active");
    });
    $('#dashboardbutton').on("click", function() {
        console.log("hi")
        $('#profile').hide();
        $('#normal').show();
        $('#profilebutton').removeClass("is-active");
        $('#dashboardbutton').addClass("is-active");
    });
  
});



