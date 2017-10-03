$(function(){
    $('.smooth-scroll').click(function(ev){
        ev.preventDefault();
        $('html, body').animate({
            scrollTop: $( "#"+$(this).data('anchor') ).offset().top - 50
        }, 500);
        return false;
    });
});