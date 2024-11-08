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
    <div class="container text-center text-md-start">
        <div class="row">
            <!-- Cột 1: Tour trong nước -->
            <div class="col-md-2 col-lg-2 col-xl-2 mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Tour trong nước</h5>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Hà Nội</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Sapa</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Đà Nẵng</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Phú Quốc</a></p>
            </div>

            <!-- Cột 2: Tour nước ngoài -->
            <div class="col-md-2 col-lg-2 col-xl-2 mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Tour nước ngoài</h5>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Hàn Quốc</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Thái Lan</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Nhật Bản</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Du lịch Dubai</a></p>
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
                    <a href="https://www.facebook.com/" target="_blank" class="text-white me-4"><i class="fab fa-facebook-f"></i></a>
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
        ?>
        <!-- Hàng cuối cùng: Logo công ty và thông tin liên hệ -->
        <div class="row mt-4">
            <div class="row">
                <!-- Cột 1: Thông tin công ty -->
                <div class="col-md-4">
                    <h5 class="text-uppercase font-weight-bold text-warning">Công ty TNHH DV Du Lịch</h5>
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
                        echo '<a href="mailto:' . esc_attr($company_email) . '" class="text-warning">' . esc_html($company_email) . '</a>';
                        ?>
                    </p>
                    <p>
                        <i class="fas fa-globe"></i>
                        Website:
                        <?php
                        $company_website = 'toptentravel.com.vn';
                        echo '<a href="http://' . esc_attr($company_website) . '" class="text-warning" target="_blank">' . esc_html($company_website) . '</a>';
                        ?>
                    </p>
                </div>

                <!-- Cột 2: Thông tin giấy phép kinh doanh -->
                <div class="col-md-5">
                    <h5 class="text-uppercase font-weight-bold text-warning">Thông tin pháp lý</h5>
                    <p>Giấy phép kinh doanh Lữ Hành Quốc Tế 79-361/2014/TCDL - GPLHQT</p>
                    <p>Số ĐKKD 0311400064 do Sở KHĐT Tp. HCM cấp ngày 08/12/2011</p>
                </div>

                <!-- Cột 3: Logo công ty -->
                <div class="col-md-3 text-center">
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

</body>
</html>
