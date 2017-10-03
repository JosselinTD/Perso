$(function(){
    $(".filter").on("click", function(){
        var parent = $(this).closest(".filter-container"),
            newFilter = $(this).data("filter");
        if(!parent.hasClass(newFilter)){
            parent.removeClass();
            parent.addClass("container");
            parent.addClass("filter-container");
            parent.addClass(newFilter);
        } else {
            parent.removeClass(newFilter);
            parent.addClass("all");
        }
        
    });
});