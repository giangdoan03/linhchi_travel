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


    var swiper6 = new Swiper('.list_sale_banner', {
        loop: true,
        nextButton: '.swiper-button-prev-6',
        prevButton: '.swiper-button-next-6',
        slidesPerView: 3,
        pagination: {
            el: '.list_sale_banner .swiper-pagination',
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
        // Kiểm tra nếu tour-list-container đang hiển thị
        if ($('#tour-list-container').css('display') === 'block') {
            // Ẩn tour-list-container trước khi tiếp tục
            $('#tour-list-container').hide();
        }

        // Xử lý mở/đóng menu
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

    // Smooth scroll for links and toggle active class
    const links = document.querySelectorAll(".scroll-link");

    links.forEach(link => {
        link.addEventListener("click", function(event) {
            event.preventDefault();

            // Remove active class from all links
            links.forEach(link => link.classList.remove("active"));

            // Add active class to the clicked link
            this.classList.add("active");

            // Smooth scroll to target section
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

jQuery(document).ready(function ($) {
    // Hiển thị kết quả khi nhấn phím cách hoặc Enter
    $('#tour-search-input').on('keyup', function (e) {
        var searchQuery = $(this).val();

        if (e.key === ' ' || e.key === 'Enter') {
            if (searchQuery.trim().length > 0) {
                $.ajax({
                    url: tourSearch.ajax_url,
                    type: 'POST',
                    data: {
                        action: 'tour_search',
                        query: searchQuery.trim()
                    },
                    success: function (response) {
                        $('#tour-search-results').html(response).show();
                    }
                });
            }
        }
    });

    // Ẩn kết quả khi nhấp ra ngoài form
    $(document).on('click', function (e) {
        if (!$(e.target).closest('#tour-search-form').length) {
            $('#tour-search-results').hide();
        }
    });

    // Giữ lại nút tìm kiếm để điều hướng sang trang kết quả đầy đủ
    $('#tour-search-button').on('click', function () {
        var searchQuery = $('#tour-search-input').val();
        var searchUrl = "<?php echo home_url('/'); ?>?s=" + encodeURIComponent(searchQuery) + "&post_type=tour";
        window.location.href = searchUrl;
    });
});

jQuery(document).ready(function ($) {
    var $menuTopBar = $('.menu_top_bar');
    var menuTopBarOffset = $menuTopBar.offset().top;

    $(window).on('scroll', function () {
        // Chỉ áp dụng khi màn hình nhỏ hơn 768px (kích thước phổ biến của thiết bị di động)
        if ($(window).width() < 768) {
            // Kiểm tra nếu đã cuộn xuống vượt quá vị trí ban đầu của thanh menu
            if ($(window).scrollTop() > menuTopBarOffset) {
                $menuTopBar.css('position', 'fixed');
                $menuTopBar.css('top', '0'); // Đảm bảo menu luôn ở vị trí top khi cố định
            } else {
                // Khi cuộn đến vị trí ban đầu, bỏ `position: fixed`
                $menuTopBar.css('position', 'static');
            }
        } else {
            // Đặt lại `position: static` khi ở chế độ desktop
            $menuTopBar.css('position', 'static');
        }
    });

    // Lắng nghe thay đổi kích thước cửa sổ để áp dụng lại logic
    $(window).on('resize', function () {
        if ($(window).width() >= 768) {
            $menuTopBar.css('position', 'static');
        }
    });
});

document.addEventListener('DOMContentLoaded', function () {
    const dropdownMenus = document.querySelectorAll('.menu li ul');

    dropdownMenus.forEach(menu => {
        const parent = menu.parentNode;
        parent.addEventListener('mouseenter', () => {
            menu.style.display = 'block';
            menu.style.opacity = '0';
            setTimeout(() => {
                menu.style.opacity = '1';
                menu.style.transition = 'opacity 0.3s';
            }, 0);
        });
        parent.addEventListener('mouseleave', () => {
            menu.style.opacity = '0';
            menu.style.transition = 'opacity 0.3s';
            setTimeout(() => {
                menu.style.display = 'none';
            }, 300);
        });
    });
});


document.addEventListener('DOMContentLoaded', function () {
    const navbarToggler = document.querySelector('.navbar-toggler');
    const primaryMenu = document.getElementById('primary-menu');

    // Mở/đóng menu chính
    navbarToggler.addEventListener('click', function () {
        primaryMenu.classList.toggle('show');
    });

    // Menu đa cấp
    const menuItems = document.querySelectorAll('.menu li');
    menuItems.forEach(item => {
        const submenu = item.querySelector('ul');
        if (submenu) {
            item.addEventListener('click', function (e) {
                // Chặn sự kiện click gây trùng lặp
                e.stopPropagation();

                // Đóng tất cả submenu khác
                menuItems.forEach(el => {
                    if (el !== item) el.classList.remove('show');
                });

                // Mở/đóng submenu hiện tại
                item.classList.toggle('show');
            });
        }
    });
});
document.querySelector('.navbar-toggler').addEventListener('click', function () {
    const menuIcon = document.getElementById('menu-icon');
    menuIcon.classList.toggle('bi-list'); // Gạch ngang
    menuIcon.classList.toggle('bi-x'); // Dấu x
});


document.addEventListener('DOMContentLoaded', function() {
    // Kiểm tra giá trị trong localStorage sau khi DOM đã tải xong
    applyEffect();

    // Lắng nghe sự kiện cuộn trang để cập nhật hiệu ứng
    window.addEventListener('scroll', function() {
        // Tuyết và hoa sẽ tiếp tục rơi bất kể cuộn trang
    });
});

// Hàm áp dụng hiệu ứng tuyết hoặc hoa đào
function applyEffect() {
    const effect = localStorage.getItem('effect'); // Lấy giá trị 'effect' từ localStorage

    if (effect === 'snow') {
        createSnowflakes();  // Tạo hiệu ứng tuyết
    } else if (effect === 'petals') {
        createPetals();  // Tạo hiệu ứng hoa đào
    }
}

// Tạo hiệu ứng tuyết
function createSnowflakes() {
    const snowflakeCount = 50; // Tăng số lượng tuyết rơi
    const snowflakeCharacters = ["❅", "❄", "❆"]; // Mảng các ký tự tuyết

    for (let i = 0; i < snowflakeCount; i++) {
        let snowflake = document.createElement('div');
        snowflake.classList.add('snowflake');

        // Chọn ngẫu nhiên ký tự từ mảng
        const randomSnowflake = snowflakeCharacters[Math.floor(Math.random() * snowflakeCharacters.length)];
        snowflake.textContent = randomSnowflake;  // Gán ký tự cho bông tuyết

        // Kích thước ngẫu nhiên từ 10px đến 30px
        const size = Math.random() * 20 + 10; // Random size between 10px and 30px
        snowflake.style.width = `${size}px`;
        snowflake.style.height = `${size}px`;

        snowflake.style.left = `${Math.random() * 100}%`; // Tuyết xuất hiện ngẫu nhiên ở vị trí ngang
        snowflake.style.animationDuration = `${Math.random() * 10 + 5}s`; // Tốc độ rơi ngẫu nhiên
        snowflake.style.animationDelay = `${Math.random() * 5}s`; // Trễ bắt đầu ngẫu nhiên
        document.body.appendChild(snowflake);
    }
}

// Tạo hiệu ứng hoa đào hoặc hoa mai
function createPetals() {
    const petalCount = 50; // Số lượng hoa
    const flowerCharacters = ["🌸"]; // Mảng chứa ký tự hoa đào và hoa mai

    for (let i = 0; i < petalCount; i++) {
        let petal = document.createElement('div');
        petal.classList.add('petal');

        // Chọn ngẫu nhiên ký tự từ mảng hoa
        const randomFlower = flowerCharacters[Math.floor(Math.random() * flowerCharacters.length)];
        petal.textContent = randomFlower;  // Gán ký tự hoa đào hoặc hoa mai

        // Kích thước ngẫu nhiên từ 10px đến 30px
        const size = Math.random() * 20 + 10; // Random size between 10px and 30px
        petal.style.fontSize = `${size}px`; // Đặt font-size thay vì width và height

        petal.style.left = `${Math.random() * 100}%`; // Hoa xuất hiện ngẫu nhiên trên màn hình
        petal.style.animationDuration = `${Math.random() * 10 + 5}s`; // Tốc độ rơi ngẫu nhiên
        petal.style.animationDelay = `${Math.random() * 5}s`; // Trễ bắt đầu ngẫu nhiên
        document.body.appendChild(petal);
    }
}


document.addEventListener("DOMContentLoaded", function () {

});












