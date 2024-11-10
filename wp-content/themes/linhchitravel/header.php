<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
    <a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e('Skip to content', 'linhchitravel'); ?></a>

    <!-- Sử dụng Bootstrap container cho header -->
    <header id="masthead" class="site-header">
        <div class="top_bar">
            <div class="container">
                <div class="top_bar_content">
                    <div class="top_bar_left">
                        <span><i class="fas fa-envelope"></i>info@linhchitravel.vn</span>
                        <span><i class="fas fa-clock"></i>08:00 - 17:00</span>
                        <span><i class="fas fa-phone"></i>0932119480</span>
                    </div>
                    <div class="top_bar_right">
                        <span>Giới thiệu</span>
                        <span>Lịch khởi hành</span>
                        <span>Đăng ký Tour</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container menu_top_bar">
            <div class="pt-3 pb-3 w-100 menu_top_bar_w">
                <div class="row">
                    <div class="col-2 site-branding">
                        <?php
                        the_custom_logo();
                        ?>
                        <button class="toggle-btn" id="menu-btn"><span class="toggle-icon"></span></button>
                    </div><!-- .site-branding -->

                    <div class="col-10 col-md-10">
                        <!-- Bootstrap Navbar -->
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <div class="container-fluid">
                                <!-- Menu WordPress tích hợp với Bootstrap -->
                                <div class="menu-box" id="menu">
                                    <nav class="menu-box-nav">
                                        <?php
                                        wp_nav_menu(array(
                                            'theme_location' => 'menu-1',
                                            'menu_id'        => 'primary-menu',
                                            'menu_class'     => 'navbar-nav me-auto mb-2 mb-lg-0', // Thêm class Bootstrap
                                            'container'      => false, // Không bọc menu trong container
                                            'items_wrap'     => '<ul id="%1$s" class="%2$s">%3$s</ul>', // Đảm bảo items_wrap được định nghĩa
                                            'walker'         => new WP_Bootstrap_Navwalker(), // Sử dụng Navwalker để hoạt động với Bootstrap
                                        ));
                                        ?>
                                    </nav>
                                </div>
                                <div class="collapse navbar-collapse" id="primary-menu">
                                    <?php
                                    wp_nav_menu(array(
                                        'theme_location' => 'menu-1',
                                        'menu_id'        => 'primary-menu',
                                        'menu_class'     => 'navbar-nav me-auto mb-2 mb-lg-0', // Thêm class Bootstrap
                                        'container'      => false, // Không bọc menu trong container
                                        'items_wrap'     => '<ul id="%1$s" class="%2$s">%3$s</ul>', // Đảm bảo items_wrap được định nghĩa
                                        'walker'         => new WP_Bootstrap_Navwalker(), // Sử dụng Navwalker để hoạt động với Bootstrap
                                    ));
                                    ?>
                                </div>
                            </div>
                        </nav><!-- #site-navigation -->
                    </div>
                </div>
            </div>
        </div>
    </header><!-- #masthead -->
    <!-- Container to display tour names -->
    <div id="tour-list-container"></div>
</div><!-- #page -->
<?php wp_footer(); ?>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const tourListContainer = document.getElementById('tour-list-container');

        // Gọi API khi trang được tải và lấy dữ liệu sẵn cho các menu
        const domesticToursPromise = fetchTours('trong_nuoc', 'region'); // Tour trong nước, nhóm theo `region`
        const internationalToursPromise = fetchTours('nuoc_ngoai', 'area'); // Tour nước ngoài, nhóm theo `area`

        Promise.all([domesticToursPromise, internationalToursPromise])
            .then(([domesticTours, internationalTours]) => {
                console.log("Dữ liệu đã tải:", { domesticTours, internationalTours });

                // Thiết lập sự kiện hover để hiển thị menu khi di chuột
                // Thiết lập sự kiện click để hiển thị menu khi nhấn vào các liên kết
                const menuLinks = document.querySelectorAll('#primary-menu a[href="#tour-trong-nuoc"], #primary-menu a[href="#tour-nuoc-ngoai"]');
                menuLinks.forEach(link => {
                    link.addEventListener('click', (event) => {
                        event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
                        const isDomestic = link.getAttribute('href') === '#tour-trong-nuoc';

                        // Kiểm tra nếu tourListContainer đang mở và hiển thị đúng loại tour, nếu có thì đóng lại
                        const isMenuOpen = tourListContainer.style.display === 'block';
                        if (isMenuOpen && tourListContainer.getAttribute('data-open-type') === (isDomestic ? 'domestic' : 'international')) {
                            tourListContainer.style.display = 'none';
                            tourListContainer.removeAttribute('data-open-type'); // Xóa thuộc tính đánh dấu loại menu đang mở
                        } else {
                            // Đóng menu nếu đang mở khác loại
                            tourListContainer.style.display = 'none';

                            // Hiển thị lại với nội dung tương ứng
                            displayMegaMenu(isDomestic ? domesticTours : internationalTours, isDomestic ? 'region' : 'area');
                            positionMenu(link, tourListContainer);
                            tourListContainer.style.display = 'block';

                            // Đánh dấu loại menu đang mở bằng cách gán giá trị cho `data-open-type`
                            tourListContainer.setAttribute('data-open-type', isDomestic ? 'domestic' : 'international');
                        }
                    });
                });

            })
            .catch(error => console.error('Error fetching tour data:', error));

        // Hàm fetchTours để lấy dữ liệu và trả về Promise
        function fetchTours(typeTour, taxonomyType) {
            // Lấy URL gốc của trang (host)
            const baseUrl = window.location.hostname === 'localhost' ? '/linhchi_travel' : '';

            return fetch(`${baseUrl}/wp-json/custom/v1/tours?type_tour=${typeTour}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok ' + response.statusText);
                    }
                    return response.json();
                })
                .then(data => groupToursByField(data, taxonomyType));
        }


        // Hàm hiển thị menu mega với dữ liệu và loại taxonomy
        function displayMegaMenu(groupedTours, taxonomyType) {
            tourListContainer.innerHTML = ''; // Xóa nội dung cũ

            Object.entries(groupedTours).forEach(([groupName, tourList]) => {
                const groupHeader = document.createElement('h6');
                const headerLink = document.createElement('a');

                // Xác định tham số URL dựa trên taxonomyType
                const urlParam = taxonomyType === 'area' ? 'tour_area' : 'national_region';

                // Kiểm tra xem URL có chứa "localhost" không, nếu có thì thêm "/linhchi_travel", nếu không thì để trống
                const basePath = window.location.hostname === 'localhost' ? '/linhchi_travel' : '';

                // Gán đường dẫn động cho headerLink.href
                headerLink.href = `${basePath}/danh-sach-tour/?${urlParam}=${encodeURIComponent(toSlug(groupName))}`;

                headerLink.textContent = groupName;
                headerLink.style.textDecoration = 'none';
                headerLink.style.color = 'inherit';

                groupHeader.appendChild(headerLink);
                tourListContainer.appendChild(groupHeader);

                const tourItems = document.createElement('ul');
                tourItems.classList.add('list-unstyled');

                tourList.forEach(tour => {
                    const tourItem = document.createElement('li');
                    tourItem.innerHTML = `<a href="${tour.link}" title="${tour.title}">${tour.title}</a>`;
                    tourItems.appendChild(tourItem);
                });

                tourListContainer.appendChild(tourItems);
            });
        }

        // Hàm nhóm các tour theo field (area hoặc region)
        function groupToursByField(tours, field) {
            const grouped = {};

            tours.forEach(tour => {
                const fieldValue = tour[field] || 'Khác';
                if (!grouped[fieldValue]) grouped[fieldValue] = [];
                grouped[fieldValue].push(tour);
            });

            return grouped;
        }

        // Hàm chuyển đổi chuỗi thành slug
        function toSlug(text) {
            return text
                .toLowerCase()
                .normalize('NFD')
                .replace(/[\u0300-\u036f]/g, '')
                .replace(/[đĐ]/g, 'd')
                .replace(/[^a-z0-9\s-]/g, '')
                .trim()
                .replace(/\s+/g, '-')
                .replace(/-+/g, '-');
        }

        // Định vị menu dưới mục menu được hover
        function positionMenu(link, menu) {
            // Chỉ thực hiện định vị nếu màn hình có độ rộng từ 767px trở lên
            if (window.innerWidth >= 767) {
                const rect = link.getBoundingClientRect();
                menu.style.position = 'absolute';
                menu.style.left = `${rect.left}px`;
                menu.style.top = `${rect.bottom + window.scrollY}px`;
            } else {
                // Reset vị trí menu cho thiết bị di động, nếu cần
                menu.style.position = '';
                menu.style.left = '';
                menu.style.top = '';
            }
        }


        // Ẩn menu khi di chuột ra ngoài
        tourListContainer.addEventListener('mouseleave', () => {
            tourListContainer.style.display = 'none';
        });
    });


</script>

</body>
</html>
