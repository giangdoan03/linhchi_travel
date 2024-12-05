jQuery(document).ready(function($) {
    new Swiper('.slider1', {
        loop: true,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        speed: 15000, // Tốc độ chuyển slide (0.5 giây)
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
