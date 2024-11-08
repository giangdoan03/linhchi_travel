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
        const tourLinks = document.querySelectorAll('#primary-menu a[href*="tour-trong-nuoc"], #primary-menu a[href*="tour-nuoc-ngoai"]');
        const tourListContainer = document.createElement('div');
        tourListContainer.classList.add('tour-list-container');
        document.body.appendChild(tourListContainer);

        // Gọi hàm fetchTours khi hover vào các link tour
        tourLinks.forEach(link => {
            link.addEventListener('mouseenter', () => fetchTours(link));
        });

        // Hàm fetchTours để lấy và hiển thị danh sách các tour
        function fetchTours(link) {
            const isInternational = link.getAttribute('href').includes('tour-nuoc-ngoai');
            const typeTour = isInternational ? 'nuoc_ngoai' : 'trong_nuoc';
            const taxonomyType = isInternational ? 'area' : 'region'; // Sử dụng `area` cho tour nước ngoài, `region` cho tour trong nước

            fetch(`/linhchi_travel/wp-json/custom/v1/tours?type_tour=${typeTour}`)
                .then(response => response.json())
                .then(data => {
                    console.log("Dữ liệu API:", data); // Log dữ liệu API để kiểm tra
                    tourListContainer.innerHTML = ''; // Xóa nội dung cũ của container
                    const groupedTours = groupToursByCustomField(data, taxonomyType);
                    console.log("Dữ liệu đã nhóm:", groupedTours); // Kiểm tra dữ liệu đã nhóm

                    // Hiển thị các nhóm tour dựa trên `taxonomyType`
                    Object.entries(groupedTours).forEach(([customFieldValue, tours]) => {
                        const customFieldHeader = createCustomFieldHeader(customFieldValue, taxonomyType);
                        tourListContainer.appendChild(customFieldHeader);

                        tours.forEach(tour => {
                            const tourDiv = document.createElement('div');
                            tourDiv.innerHTML = `<a href="${tour.link}">${tour.title}</a>`;
                            tourListContainer.appendChild(tourDiv);
                        });
                    });

                    // Thêm liên kết "Xem tất cả"
                    const viewAllLink = document.createElement('div');
                    viewAllLink.innerHTML = `<a href="/linhchi_travel/danh-sach-tour/?type_tour=${typeTour}" class="view-all-tours">Xem tất cả ${isInternational ? 'tour nước ngoài' : 'tour trong nước'}</a>`;
                    tourListContainer.appendChild(viewAllLink);

                    positionTourListContainer(link, tourListContainer);
                    tourListContainer.style.display = 'block'; // Đảm bảo hiển thị container
                    console.log("Nội dung tourListContainer:", tourListContainer.innerHTML); // Log nội dung container
                })
                .catch(error => console.error('Error fetching tours:', error));
        }

        // Hàm nhóm các tour theo giá trị trường tùy chỉnh (area hoặc region)
        function groupToursByCustomField(tours, customFieldType) {
            const grouped = {};

            tours.forEach(tour => {
                console.log("Tour:", tour); // Kiểm tra từng tour
                const customFieldValues = tour[customFieldType] || []; // Lấy giá trị dựa trên `area` hoặc `region`
                console.log("customFieldValues for", customFieldType, ":", customFieldValues); // Log giá trị custom field

                // Nếu customFieldValues không phải là mảng, hãy chuyển nó thành mảng để dễ dàng xử lý
                const valuesArray = Array.isArray(customFieldValues) ? customFieldValues : [customFieldValues];

                valuesArray.forEach(value => {
                    if (!grouped[value]) grouped[value] = [];
                    grouped[value].push(tour);
                });
            });

            console.log("Grouped Tours:", grouped); // Log dữ liệu đã nhóm
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

        // Tạo phần header cho từng nhóm và thêm liên kết động
        function createCustomFieldHeader(customFieldValue, customFieldType) {
            const customFieldHeader = document.createElement('h4');
            const headerLink = document.createElement('a');

            // Chuyển customFieldValue thành slug
            const customFieldSlug = toSlug(customFieldValue);

            // Xác định tham số URL dựa trên customFieldType
            let urlParam;
            if (customFieldType === 'area') {
                urlParam = 'tour_area';
            } else if (customFieldType === 'region') {
                urlParam = 'national_region';
            } else {
                urlParam = customFieldType; // Giữ nguyên nếu không phải là 'area' hoặc 'region'
            }

            // Thiết lập URL động cho liên kết với tham số URL phù hợp
            headerLink.href = `/linhchi_travel/danh-sach-tour/?${urlParam}=${encodeURIComponent(customFieldSlug)}`;
            headerLink.textContent = customFieldValue;
            headerLink.style.textDecoration = 'none';
            headerLink.style.color = 'inherit';

            customFieldHeader.appendChild(headerLink);
            return customFieldHeader;
        }


        // Định vị container hiển thị dưới liên kết được hover
        function positionTourListContainer(link, container) {
            const rect = link.getBoundingClientRect();
            container.style.position = 'absolute';
            container.style.left = `${rect.left}px`;
            container.style.top = `${rect.bottom + window.scrollY}px`;
        }

        // Ẩn danh sách tour khi di chuột ra ngoài container
        tourListContainer.addEventListener('mouseleave', () => {
            tourListContainer.style.display = 'none';
        });

        // Ẩn danh sách tour khi click ra ngoài container
        document.addEventListener('click', (e) => {
            if (!tourListContainer.contains(e.target) && !Array.from(tourLinks).some(link => link.contains(e.target))) {
                tourListContainer.style.display = 'none';
            }
        });
    });

</script>

</body>
</html>
