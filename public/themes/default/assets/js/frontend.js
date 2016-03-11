 $(function() {
    if(window.isHomePage) {
        console.log("homepage without moving nav");
        /*
        var navbar = $('#navbar-main'),
            //distance = navbar.offset().top,
            distance = $(window).height() - $('nav').height(),
            $window = $(window);

        navbar.removeClass('navbar-fixed-top').addClass('absolute-bottom');

        $window.scroll(function() {
            if ($window.scrollTop() >= distance) {
                navbar.removeClass('absolute-bottom').addClass('navbar-fixed-top');
            } else {
                navbar.removeClass('navbar-fixed-top').addClass('absolute-bottom');
            }
        }); 
        */
    }

    $('a[href*="#"]:not([href="#"])').click(function() {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
        if (target.length) {
            $('html, body').animate({
                scrollTop: target.offset().top
            }, 1000);
            return false;
        }
    });


    $('section#photos > img').click(function(e) {
        $('#photo-overlay').html($(this).clone());
        $('#photo-overlay').fadeIn();
    });

    $('#photo-overlay').click(function() {
        $(this).fadeOut();
    });
});