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



});


