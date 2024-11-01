<?php
/*
 * Template Name: Custom Home Page
 */
get_header(); // Gọi header
?>

<div class="homepage-content"> <!-- Thêm khoảng cách phía trên và dưới -->
    <div class="slider_banner_home">
        <?php
            echo do_shortcode('[swiper_slider]');
        ?>
        <?php echo do_shortcode('[ajax_tour_search_form]'); ?>
    </div>
    <div class="title-block title_why_choose">
        <h2>TẠI SAO NÊN CHỌN DỊCH VỤ TẠI LINH CHI TRAVEL ?</h2>
        <div class="bg-bottom-title"></div>
    </div>
    <div class="intro_block space_block">
        <div class="item">
            <div class="avt bg-1">
                <img src="<?php echo get_template_directory_uri(); ?>/images/ic-like-2.png" alt="Giá tour cạnh tranh">
            </div>
            <div class="desc">
                <p>Giá tour cạnh tranh</p>
            </div>
        </div>
        <div class="item">
            <div class="avt bg-2">
                <img src="<?php echo get_template_directory_uri(); ?>/images/ic-laptop.png" alt="Đặt tour nhanh chóng &amp; dễ dàng">
            </div>
            <div class="desc">
                <p>Đặt tour nhanh chóng &amp; dễ dàng</p>
            </div>
        </div>
        <div class="item">
            <div class="avt bg-3">
                <img src="<?php echo get_template_directory_uri(); ?>/images/ic-chatluong.png" alt="Chất lượng dịch vụ tốt">
            </div>
            <div class="desc">
                <p>Chất lượng dịch vụ tốt</p>
            </div>
        </div>
    </div>

    <div class="tour_hot_block list_tour_slide space_block">
        <div class="container">
            <!-- Phần bài viết mới nhất -->
            <section class="latest-posts">
                <h2 class="text-center title-block">
                    <?php
                    // Lấy thông tin của custom field từ options page
                    $field = get_field_object('tour_hot_title', 'option');

                    if ($field) {
                        // Hiển thị nhãn và giá trị trong cùng một thẻ <h2>
                        echo  esc_html($field['label']) . ' ' . esc_html($field['value']);
                    } else {
                        echo 'Không có trường nào được tìm thấy.';
                    }
                    ?>
                </h2> <!-- Căn giữa tiêu đề và thêm khoảng cách -->
                <div class="bg-bottom-title"></div>
                <div class="row">
                    <?php
                    echo do_shortcode('[tour_posts_swiper]');
                    ?>
                    <div class="btn_read_more text-center mt-3">
                        <button type="button" class="btn btn-outline-primary">Xem thêm Tour</button>
                    </div>
                </div>
            </section>
        </div>
    </div>

    <div class="tour_trong_nuoc list_tour_slide space_block">
        <div class="container">
            <div class="title-block">
                <h2>Tour trong nước</h2>
                <div class="bg-bottom-title"></div>
            </div>
            <div class="row">
                <?php
                    echo do_shortcode('[tour_slider_trong_nuoc]');
                ?>
            </div>
            <div class="btn_read_more text-center mt-3">
                <button type="button" class="btn btn-outline-primary">Xem thêm Tour</button>
            </div>
        </div>
    </div>

    <div class="tour_nuoc_ngoai list_tour_slide space_block">
        <div class="container">
            <div class="title-block">
                <h2>Tour nước ngoài</h2>
                <div class="bg-bottom-title"></div>
            </div>
            <div class="row">
                <?php
                echo do_shortcode('[tour_slider_nuoc_ngoai]');
                ?>
            </div>
            <div class="btn_read_more text-center mt-3">
                <button type="button" class="btn btn-outline-primary">Xem thêm Tour</button>
            </div>
        </div>
    </div>

    <div class="dich_vu_visa list_tour_slide space_block">
        <div class="container">
            <div class="title-block">
                <h2>Dịch vụ visa</h2>
                <div class="bg-bottom-title"></div>
            </div>
            <div class="row">
                <?php
                echo do_shortcode('[visa_service_custom_layout]');
                ?>
            </div>
        </div>
    </div>

    <div class="cam_nhan_khac_hang space_block">
        <div class="container">
            <div class="title-block">
                <h2>Cảm nhận khách hàng</h2>
                <div class="bg-bottom-title"></div>
            </div>
            <div class="row">
                <?php
                echo do_shortcode('[testimonial_slider]');
                ?>
            </div
        </div>
    </div>
</div>

<?php
get_footer(); // Gọi footer
?>
