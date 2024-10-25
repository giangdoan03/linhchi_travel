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
<footer class="bg-dark text-white pt-5 pb-4">
    <div class="container text-center text-md-start">
        <!-- Phần khối newsletter -->
        <div class="row mt-4">
            <div class="col-md-6 mx-auto">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning text-center">Đăng ký nhận tin</h5>
                <form class="input-group">
                    <input type="email" class="form-control" placeholder="Nhập email của bạn" aria-label="Nhập email của bạn" aria-describedby="subscribe-button" required>
                    <button class="btn btn-warning" type="submit" id="subscribe-button">Đăng ký</button>
                </form>
            </div>
        </div>
        <div class="row text-center text-md-start">
            <!-- Cột 1: Logo và thông tin liên hệ -->
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Logo</h5>
                <p>
                    Công ty TNHH XYZ<br>
                    123 Đường ABC, Quận 1, TP.HCM<br>
                    Điện thoại: +84 123 456 789<br>
                    Email: info@xyz.com
                </p>
            </div>

            <!-- Cột 2: Các liên kết nhanh -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Liên kết nhanh</h5>
                <p><a href="#" class="text-white" style="text-decoration: none;">Trang chủ</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Giới thiệu</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Dịch vụ</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Liên hệ</a></p>
            </div>

            <!-- Cột 3: Chính sách và điều khoản -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Chính sách</h5>
                <p><a href="#" class="text-white" style="text-decoration: none;">Chính sách bảo mật</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Điều khoản dịch vụ</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Chính sách đổi trả</a></p>
            </div>

            <!-- Cột 4: Mạng xã hội -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Theo dõi chúng tôi</h5>
                <p>
                    <a href="#" class="text-white me-4"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="text-white me-4"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-white me-4"><i class="fab fa-google"></i></a>
                    <a href="#" class="text-white me-4"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="text-white me-4"><i class="fab fa-linkedin"></i></a>
                </p>
            </div>
        </div>

        <!-- Phần bản quyền -->
        <div class="row d-flex justify-content-center mt-4">
            <div class="col-md-7 col-lg-8">
                <p class="text-center text-md-start">
                    © 2024 Bản quyền thuộc về:
                    <a href="#" class="text-warning" style="text-decoration: none;">
                        Công ty TNHH XYZ
                    </a>
                </p>
            </div>
        </div>
    </div>
    <button id="back-to-top" title="Lên đầu trang">↑</button>

</footer>

</div>

<?php wp_footer(); ?>

</body>
</html>
