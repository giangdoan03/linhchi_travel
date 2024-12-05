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
    <div class="banner_sale space_block">
        <div class="container">
            <?php
            // Lấy giá trị từ ACF field group
            $title_sale = get_field('title_sale', 'option'); // Lấy tiêu đề
            $banner_sale_images = get_field('banner_sale_image', 'option'); // Lấy repeater
            ?>
            <div class="title-block title_why_choose">
                <h2><?php echo esc_html($title_sale); // Hiển thị tiêu đề ?></h2>
                <div class="bg-bottom-title"></div>
            </div>

            <div class="list_sale_banner swiper">
                <div class="swiper-wrapper">
                    <?php if (!empty($banner_sale_images)) : // Kiểm tra nếu có dữ liệu ?>
                        <?php foreach ($banner_sale_images as $banner) : // Lặp qua từng item ?>
                            <?php
                            $banner_item = $banner['banner_item']; // Lấy ảnh
                            $link_uu_dai = $banner['link_uu_dai']; // Lấy link ưu đãi
                            ?>
                            <div class="swiper-slide item">
                                <div class="box_img">
                                    <a href="<?php echo esc_url($link_uu_dai); ?>" target="_blank" rel="noopener">
                                        <img src="<?php echo esc_url($banner_item['url']); ?>" alt="<?php echo esc_attr($banner_item['alt']); ?>">
                                    </a>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <!-- Add Navigation -->
                <div class="swiper-button-next swiper-button-next-6"></div>
                <div class="swiper-button-prev swiper-button-prev-6"></div>
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
                <?php
                $category_url = home_url('/tour-trong-nuoc/');
                echo '<a href="' . esc_url($category_url) . '" class="btn btn-outline-primary" role="button">Xem thêm Tour</a>';
                ?>
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
                <?php
                $category_url = home_url('/tour-nuoc-ngoai/');
                echo '<a href="' . esc_url($category_url) . '" class="btn btn-outline-primary" role="button">Xem thêm Tour</a>';
                ?>
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
