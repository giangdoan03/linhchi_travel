<?php
/*
Template Name: Tour List by URL
*/

get_header(); ?>

<div class="container mt-5">
    <?php
    // Xác định loại tour dựa vào slug của trang
    global $wp;
    $current_slug = $wp->request;

    // Đặt tiêu đề và xác định giá trị custom field dựa vào slug
    if (strpos($current_slug, 'tour-trong-nuoc') !== false) {
        $type_tour = 'trong_nuoc';
        $page_title = 'Tour Trong Nước';
    } elseif (strpos($current_slug, 'tour-nuoc-ngoai') !== false) {
        $type_tour = 'nuoc_ngoai';
        $page_title = 'Tour Nước Ngoài';
    } else {
        // Nếu slug không khớp, hiển thị lỗi
        echo '<h1 class="text-center">Loại tour không hợp lệ</h1>';
        get_footer();
        exit;
    }
    ?>

    <h1 class="text-center"><?php echo $page_title; ?></h1>

    <div class="row mt-4">
        <?php
        // Thiết lập các tham số cho WP_Query để lấy bài viết theo custom field `type_tour`
        $args = [
            'post_type' => 'tour',
            'posts_per_page' => -1,
            'meta_query' => [
                [
                    'key' => 'type_tour',
                    'value' => $type_tour,
                    'compare' => '='
                ]
            ]
        ];

        $query = new WP_Query($args);

        if ($query->have_posts()) :
            while ($query->have_posts()) : $query->the_post(); ?>
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <?php if (has_post_thumbnail()) : ?>
                            <img src="<?php the_post_thumbnail_url('medium'); ?>" class="card-img-top" alt="<?php the_title(); ?>">
                        <?php else : ?>
                            <img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">
                        <?php endif; ?>

                        <div class="card-body">
                            <h5 class="card-title"><?php the_title(); ?></h5>

                            <?php
                            // Lấy các custom field bổ sung
                            $gia_raw = get_field('gia');
                            $gia_formatted = $gia_raw ? number_format(preg_replace('/\D/', '', $gia_raw), 0, '.', '.') . '₫' : 'Liên hệ';
                            $khoi_hanh = get_field('khoi_hanh') ?: 'N/A';
                            $thoi_gian = get_field('thoi_gian') ?: 'N/A';
                            $xuat_phat = get_field('xuat_phat') ?: 'N/A';
                            $phuong_tien = get_field('phuong_tien') ?: 'N/A';
                            ?>

                            <p class="text-danger"><strong>Giá từ: <?php echo esc_html($gia_formatted); ?></strong></p>
                            <p><strong>Khởi hành:</strong> <?php echo esc_html($khoi_hanh); ?></p>
                            <p><strong>Thời gian:</strong> <?php echo esc_html($thoi_gian); ?></p>
                            <p><strong>Xuất phát:</strong> <?php echo esc_html($xuat_phat); ?></p>
                            <p><strong>Phương tiện:</strong> <?php echo esc_html($phuong_tien); ?></p>

                            <a href="<?php the_permalink(); ?>" class="btn btn-outline-info mt-3">Chi tiết Tour</a>
                        </div>
                    </div>
                </div>
            <?php endwhile;
        else : ?>
            <p class="text-center"><?php _e('Không tìm thấy tour nào phù hợp.', 'linhchitravel'); ?></p>
        <?php endif;

        // Reset dữ liệu sau query
        wp_reset_postdata();
        ?>
    </div>
</div>

<?php get_footer(); ?>
