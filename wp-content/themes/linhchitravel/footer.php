<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package linhchitravel
 */

?>
<footer class="bg-primary text-white pt-5 pb-4">
    <div class="container text-md-start">
        <div class="row">
            <!-- Cột 1: Tour trong nước -->
            <div class="col-md-3 col-lg-3 col-xl-3 mt-3" id="domestic-tours-footer">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Tour trong nước</h5>
            </div>

            <!-- Cột 2: Tour nước ngoài -->
            <div class="col-md-3 col-lg-3 col-xl-3 mt-3" id="international-tours-footer">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Tour nước ngoài</h5>
            </div>

            <!-- Cột 3: Hỗ trợ khách hàng -->
            <div class="col-md-3 col-lg-3 col-xl-3 mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Hỗ trợ khách hàng</h5>
                <ul class="list-unstyled">
                    <?php
                    // Kiểm tra nếu có các hàng trong repeater field 'list_sale'
                    if (have_rows('list_sale', 'option')) :
                        while (have_rows('list_sale', 'option')) : the_row();
                            $ho_ten = get_sub_field('ho_ten');
                            $so_dien_thoai = get_sub_field('so_dien_thoai');
                            ?>
                            <li>
                                <span class="text_label"><?php echo esc_html($ho_ten); ?>:</span>
                                <span class="text-warning">
                        <a href="tel:<?php echo esc_attr($so_dien_thoai); ?>" class="text-warning" style="text-decoration: none;">
                            <?php echo esc_html($so_dien_thoai); ?>
                        </a>
                    </span>
                            </li>
                        <?php
                        endwhile;
                    else :
                        echo '<li>Chưa có thông tin hỗ trợ khách hàng.</li>';
                    endif;
                    ?>
                </ul>
            </div>


            <!-- Cột 4: Đăng ký nhận tin và mạng xã hội -->
            <div class="col-md-3 col-lg-3 col-xl-3 mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Đăng ký nhận tin</h5>
                <form class="input-group mb-4">
                    <input type="email" class="form-control" placeholder="Email" aria-label="Email" required>
                    <button class="btn btn-success" type="submit">Đăng ký</button>
                </form>
                <h5 class="text-uppercase mb-2 font-weight-bold text-warning">Kết nối với chúng tôi</h5>
                <p>
                    <a href="https://www.facebook.com/profile.php?id=100064059523976" target="_blank" class="text-white me-4"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="text-white me-4"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-white me-4"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="text-white me-4"><i class="fab fa-youtube"></i></a>
                </p>
            </div>
        </div>
        <?php
        // Lấy thông tin công ty từ ACF
        $company_name = get_field('company_name', 'option');
        $company_address = get_field('dia_chi', 'option');
        $company_phone = get_field('so_dien_thoai', 'option');
        $company_email = get_field('email', 'option');
        $dkkd = get_field('giay_phep', 'option');
        $mst = get_field('ma_so_thue', 'option');
        ?>
        <!-- Hàng cuối cùng: Logo công ty và thông tin liên hệ -->
        <div class="row mt-4">
            <div class="row">
                <!-- Cột 1: Thông tin công ty -->
                <div class="col-md-4">
                    <h5 class="text-uppercase font-weight-bold text-warning">
                        <?php
                        // Lấy địa chỉ công ty từ ACF
                        $company_name = get_field('company_name', 'option');
                        echo esc_html($company_name ?: 'Địa chỉ công ty');
                        ?>
                    </h5>
                    <p>
                        <i class="fas fa-map-marker-alt"></i>
                        <?php
                        // Lấy địa chỉ công ty từ ACF
                        $company_address = get_field('dia_chi', 'option');
                        echo esc_html($company_address ?: 'Địa chỉ công ty');
                        ?>
                    </p>
                    <p>
                        <i class="fas fa-envelope"></i>
                        Email:
                        <?php
                        $company_email = get_field('email', 'option');
                        echo '<a href="mailto:' . esc_attr($company_email) . '" class="text-warning text_underline_none">' . esc_html($company_email) . '</a>';
                        ?>
                    </p>
                    <p>
                        <i class="fas fa-globe"></i>
                        Website:
                        <?php
                        $company_website = 'https://linhchitravel.vn/';
                        echo '<a href="http://' . esc_attr($company_website) . '" class="text-warning text_underline_none" target="_blank">' . esc_html($company_website) . '</a>';
                        ?>
                    </p>
                </div>

                <!-- Cột 2: Thông tin giấy phép kinh doanh -->
                <div class="col-md-5">
                    <h5 class="text-uppercase font-weight-bold text-warning">Thông tin pháp lý</h5>
                    <p><?php echo esc_html($dkkd); ?></p>
                    <p>Mã số thuế <?php echo esc_html($mst); ?></p>
                </div>

                <!-- Cột 3: Logo công ty -->
                <div class="col-md-3 text-center logo_company_ft">
                    <?php
                    // Lấy logo công ty từ ACF
                    $logo_company = get_field('logo_company', 'option');
                    if ($logo_company) {
                        echo '<img src="' . esc_url($logo_company['url']) . '" alt="' . esc_attr($logo_company['alt']) . '" class="img-fluid company-logo">';
                    }
                    ?>
                </div>
            </div>
        </div>

        <!-- Phần bản quyền -->
        <div class="row d-flex justify-content-center mt-4">
            <div class="col-md-7 col-lg-8">
                <p class="text-center">
                    © <?php echo date('Y'); ?> Bản quyền thuộc về
                    <a href="#" class="text-warning" style="text-decoration: none;">
                        <?php echo esc_html($company_name ?: 'Tên công ty'); ?>
                    </a>
                </p>
            </div>
        </div>
    </div>
</footer>

<button id="back-to-top" title="Lên đầu trang">↑</button>
<style>
    .bg-primary {
        background-color: #004e9a !important; /* Màu xanh lam */
    }
</style>

</div>

<?php wp_footer(); ?>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const domesticFooter = document.getElementById('domestic-tours-footer');
        const internationalFooter = document.getElementById('international-tours-footer');

        // Gọi API và xử lý dữ liệu
        Promise.all([fetchTours('trong_nuoc', 'region'), fetchTours('nuoc_ngoai', 'area')])
            .then(([domesticTours, internationalTours]) => {
                populateFooterLinks(domesticFooter, domesticTours, 'region');
                populateFooterLinks(internationalFooter, internationalTours, 'area');
            })
            .catch(error => console.error('Error fetching footer tours:', error));

        // Hàm fetchTours để lấy dữ liệu và trả về Promise
        function fetchTours(typeTour, taxonomyType) {
            const baseUrl = window.location.hostname === 'localhost' ? '/linhchi_travel' : '';
            return fetch(`${baseUrl}/wp-json/custom/v1/tours?type_tour=${typeTour}`)
                .then(response => response.json())
                .then(data => groupToursByField(data, taxonomyType));
        }

        // Hàm nhóm các tour theo trường tùy chỉnh
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

        // Hàm tạo liên kết cho footer
        function populateFooterLinks(container, groupedTours, taxonomyType) {
            Object.keys(groupedTours).slice(0, 5).forEach(groupName => {  // Hiển thị tối đa 4 mục
                const link = document.createElement('p');
                const anchor = document.createElement('a');

                // Xác định tham số URL dựa trên taxonomyType
                const urlParam = taxonomyType === 'area' ? 'tour_area' : 'national_region';

                // Kiểm tra xem URL có chứa "localhost" không, nếu có thì thêm "/linhchi_travel", nếu không thì để trống
                const basePath = window.location.hostname === 'localhost' ? '/linhchi_travel' : '';

                anchor.href = `${basePath}/danh-sach-tour/?${urlParam}=${encodeURIComponent(toSlug(groupName))}`;
                anchor.textContent = groupName;
                anchor.classList.add('text-white');
                anchor.style.textDecoration = 'none';

                link.appendChild(anchor);
                container.appendChild(link);
            });
        }
    });
</script>
</body>
</html>
