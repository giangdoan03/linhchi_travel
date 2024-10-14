jQuery(document).ready(function($) {
    new Swiper('.slider1', {
        loop: true,
        nextButton: '.swiper-button-prev-1',
        prevButton: '.swiper-button-next-1',
        slidesPerView: 1,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        spaceBetween: 20,
        breakpoints: {
            1920: {
                slidesPerView: 1,
                spaceBetween: 30
            }
        }
    });
});
