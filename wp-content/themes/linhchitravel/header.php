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
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-2 site-branding">
                    <?php
                    the_custom_logo();
                    $linhchitravel_description = get_bloginfo('description', 'display');
                    if ($linhchitravel_description || is_customize_preview()) :
                        ?>
                        <p class="site-description"><?php echo $linhchitravel_description; ?></p>
                    <?php endif; ?>
                </div><!-- .site-branding -->

                <div class="col-12 col-md-10">
                    <!-- Bootstrap Navbar -->
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="container-fluid">
                            <!-- Nút Hamburger (Mobile Menu) -->
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#primary-menu" aria-controls="primary-menu" aria-expanded="false" aria-label="<?php esc_attr_e('Toggle navigation', 'linhchitravel'); ?>">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <!-- Menu WordPress tích hợp với Bootstrap -->
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
    </header><!-- #masthead -->
</div><!-- #page -->
<?php wp_footer(); ?>
</body>
</html>
