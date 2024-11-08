<?php
/*
Template Name: Search Tour
*/

get_header(); ?>

<div class="breadcrumb-bg">
    <nav aria-label="breadcrumb">
        <div class="container">
            <ol class="breadcrumb py-2">
                <?php
                if (function_exists('get_breadcrumb')) {
                    get_breadcrumb();
                }
                ?>
            </ol>
        </div>
    </nav>
</div>

<div class="container mt-3 ">
    <div class="row">
        <div class="col-md-8">
            <?php
            // Lấy giá trị của các tham số từ URL
            $type_tour = isset($_GET['type_tour']) ? $_GET['type_tour'] : '';
            $tour_area = isset($_GET['tour_area']) ? $_GET['tour_area'] : '';
            $national_region = isset($_GET['national_region']) ? $_GET['national_region'] : '';

            // Thiết lập các tham số cơ bản cho WP_Query
            $args = [
                'post_type' => 'tour',
                'posts_per_page' => 6, // Số lượng bài viết mỗi trang
                'paged' => get_query_var('paged') ? get_query_var('paged') : 1,
            ];

            // Thêm điều kiện lọc theo type_tour nếu tham số này có trong URL
            if (!empty($type_tour)) {
                $args['meta_query'][] = [
                    'key' => 'type_tour',
                    'value' => $type_tour,
                    'compare' => '='
                ];
            }

            // Thêm điều kiện lọc theo tour_area nếu tham số này có trong URL
            if (!empty($tour_area)) {
                $args['tax_query'][] = [
                    [
                        'taxonomy' => 'tour_area',
                        'field' => 'slug',
                        'terms' => $tour_area,
                    ]
                ];
            }

            // Thêm điều kiện lọc theo national_region nếu tham số này có trong URL
            if (!empty($national_region)) {
                $args['tax_query'][] = [
                    [
                        'taxonomy' => 'national_region',
                        'field' => 'slug',
                        'terms' => $national_region,
                    ]
                ];
            }

            // Thực hiện truy vấn WP_Query với các điều kiện đã xác định
            $query = new WP_Query($args);

            if ($query->have_posts()) :
                echo '<div class="row">';
                while ($query->have_posts()) : $query->the_post(); ?>
                    <div class="col-md-6 mb-4">
                        <div class="card h-100">
                            <?php
                            if (has_post_thumbnail()) {
                                echo '<img src="' . get_the_post_thumbnail_url(get_the_ID(), 'medium') . '" class="card-img-top" alt="' . get_the_title() . '">';
                            } else {
                                echo '<img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">';
                            }
                            ?>
                            <div class="card-body">
                                <h5 class="card-title"><?php the_title(); ?></h5>

                                <?php
                                // Thông tin chi tiết của tour
                                $gia_raw = get_field('gia');
                                $gia_clean = preg_replace('/\D/', '', $gia_raw); // Loại bỏ các ký tự không phải số
                                $gia_formatted = $gia_clean ? number_format($gia_clean, 0, '.', '.') . '₫' : 'Liên hệ';

                                $khoi_hanh = get_field('khoi_hanh') ?: 'N/A';
                                $thoi_gian = get_field('thoi_gian') ?: 'N/A';
                                $xuat_phat = get_field('xuat_phat') ?: 'N/A';
                                $phuong_tien = get_field('phuong_tien') ?: 'N/A';

                                echo '<p class="text-danger"><strong>Giá từ: ' . esc_html($gia_formatted) . '</strong></p>';
                                echo '<p><strong>Khởi hành:</strong> ' . esc_html($khoi_hanh) . '</p>';
                                echo '<p><strong>Thời gian:</strong> ' . esc_html($thoi_gian) . '</p>';
                                echo '<p><strong>Xuất phát:</strong> ' . esc_html($xuat_phat) . '</p>';
                                echo '<p><strong>Phương tiện:</strong> ' . esc_html($phuong_tien) . '</p>';
                                ?>

                                <p class="card-text"><?php the_excerpt(); ?></p>
                                <a href="<?php the_permalink(); ?>" class="btn btn-outline-info">Chi tiết Tour</a>
                            </div>
                        </div>
                    </div>
                <?php endwhile;
                echo '</div>';

                // Pagination
                ?>
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <?php
                        $pagination_links = paginate_links([
                            'total' => $query->max_num_pages,
                            'prev_text' => 'Previous',
                            'next_text' => 'Next',
                            'type' => 'array'
                        ]);

                        if ($pagination_links) :
                            foreach ($pagination_links as $link) :
                                $active_class = strpos($link, 'current') !== false ? ' active' : '';
                                echo '<li class="page-item' . $active_class . '">' . str_replace('page-numbers', 'page-link', $link) . '</li>';
                            endforeach;
                        endif;
                        ?>
                    </ul>
                </nav>
            <?php else : ?>
                <p><?php _e('No tours found for the selected criteria.'); ?></p>
            <?php endif;
            wp_reset_postdata();
            ?>
        </div>

        <!-- Sidebar -->
        <div class="col-md-4">
            <?php get_template_part('sidebar-related'); ?>
        </div>
    </div>
</div>

<?php get_footer(); ?>
