jQuery(document).ready(function ($) {
    // Thêm ảnh mới
    $('#swiper_add_image').click(function (e) {
        e.preventDefault();

        var frame = wp.media({
            title: 'Select Image',
            button: {
                text: 'Add Image'
            },
            multiple: false // Cho phép chọn nhiều ảnh nếu cần
        });

        frame.on('select', function () {
            var attachment = frame.state().get('selection').first().toJSON();
            $('#swiper_slider_images_wrapper').append(
                '<div class="swiper-slider-image-item">' +
                '<img src="' + attachment.url + '" style="max-width: 150px;" />' +
                '<input type="hidden" name="swiper_slider_images[]" value="' + attachment.url + '">' +
                '<button type="button" class="button swiper-remove-image">Remove</button>' +
                '</div>'
            );
        });

        frame.open();
    });

    // Xóa ảnh
    $(document).on('click', '.swiper-remove-image', function () {
        $(this).closest('.swiper-slider-image-item').remove();
    });

    // Chọn tất cả các slider
    var sliders = document.querySelectorAll('.swiper-container');

    sliders.forEach(function(slider) {
        var nextButton = slider.querySelector('.swiper-button-next');
        var prevButton = slider.querySelector('.swiper-button-prev');

        // Khi rê chuột vào slider, hiển thị nút
        slider.addEventListener('mouseenter', function() {
            nextButton.style.opacity = '1';
            prevButton.style.opacity = '1';
            nextButton.style.pointerEvents = 'all';
            prevButton.style.pointerEvents = 'all';
        });

        // Khi chuột rời slider, ẩn nút
        slider.addEventListener('mouseleave', function() {
            nextButton.style.opacity = '0';
            prevButton.style.opacity = '0';
            nextButton.style.pointerEvents = 'none';
            prevButton.style.pointerEvents = 'none';
        });
    });

    var swiper = new Swiper(".slider2", {
        loop: true,
        nextButton: '.swiper-button-prev-2',
        prevButton: '.swiper-button-next-2',
        slidesPerView: 3,
        pagination: {
            el: '.slider2 .swiper-pagination',
            clickable: true,
        },
        spaceBetween: 20,
        breakpoints: {
            1920: {
                slidesPerView: 3,
                spaceBetween: 20
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            600: {
                slidesPerView: 1,
                spaceBetween: 20
            }
        }
    });

    var swiper3 = new Swiper('.slider3', {
        loop: true,
        nextButton: '.swiper-button-prev-3',
        prevButton: '.swiper-button-next-3',
        slidesPerView: 3,
        pagination: {
            el: '.slider3 .swiper-pagination',
            clickable: true,
        },
        spaceBetween: 20,
        breakpoints: {
            1920: {
                slidesPerView: 3,
                spaceBetween: 20
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            600: {
                slidesPerView: 1,
                spaceBetween: 20
            }
        }
    });

    var swiper4 = new Swiper('.slider4', {
        loop: true,
        nextButton: '.swiper-button-prev-4',
        prevButton: '.swiper-button-next-4',
        slidesPerView: 3,
        pagination: {
            el: '.slider4 .swiper-pagination',
            clickable: true,
        },
        spaceBetween: 20,
        breakpoints: {
            1920: {
                slidesPerView: 3,
                spaceBetween: 20
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            600: {
                slidesPerView: 1,
                spaceBetween: 20
            }
        }
    });


    var swiper5 = new Swiper('.slider5', {
        loop: true,
        nextButton: '.swiper-button-prev-5',
        prevButton: '.swiper-button-next-5',
        slidesPerView: 3,
        pagination: {
            el: '.slider5 .swiper-pagination',
            clickable: true,
        },
        spaceBetween: 20,
        breakpoints: {
            1920: {
                slidesPerView: 3,
                spaceBetween: 20
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            600: {
                slidesPerView: 1,
                spaceBetween: 20
            }
        }
    });

    $('#menu-btn').on('click', function(){
        $(this).toggleClass('is-open');
        $('#menu').fadeToggle("fast");
    });

    // Đặt display: none cho .menu-box khi màn hình rộng hơn 768px
    $(window).on('resize', function() {
        if ($(window).width() > 768) {
            $('#menu').hide(); // Ẩn menu khi phóng to màn hình
            $('#menu-btn').removeClass('is-open'); // Xóa class 'is-open' khi trở lại kích thước lớn
        }
    });

});
window.onload = function() {
    const navbar = document.getElementById("navbar");

    // Kiểm tra nếu phần tử navbar tồn tại
    if (!navbar) {
        console.info("Navbar element not found!");
        return;
    }

    const navbarOffset = navbar.offsetTop;

    // Check scroll position and toggle fixed class
    function handleScroll() {
        if (window.scrollY >= navbarOffset) {
            navbar.classList.add("fixed");
        } else {
            navbar.classList.remove("fixed");
        }
    }

    // Scroll event listener
    window.addEventListener("scroll", handleScroll);

    // Smooth scroll for links
    const links = document.querySelectorAll(".scroll-link");
    links.forEach(link => {
        link.addEventListener("click", function(event) {
            event.preventDefault();
            const targetId = this.getAttribute("href").substring(1);
            const targetElement = document.getElementById(targetId);
            window.scrollTo({
                top: targetElement.offsetTop - navbar.offsetHeight,
                behavior: "smooth"
            });
        });
    });
};

jQuery(document).ready(function($) {
    // Hiển thị nút khi cuộn xuống 300px
    $(window).scroll(function() {
        if ($(this).scrollTop() > 300) {
            $('#back-to-top').fadeIn();
        } else {
            $('#back-to-top').fadeOut();
        }
    });

    // Sự kiện click để cuộn lên đầu trang
    $('#back-to-top').on('click', function() {
        $('html, body').animate({ scrollTop: 0 }, 'fast');
        return false;
    });
});






