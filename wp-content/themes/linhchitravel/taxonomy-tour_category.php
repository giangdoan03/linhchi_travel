<?php get_header(); ?>

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
            <?php if (have_posts()) : ?>
                <div class="row">
                    <?php while (have_posts()) : the_post(); ?>
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
                                    // Thêm thông tin tour
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
                    <?php endwhile; ?>
                </div>

                <!-- Pagination -->
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <?php
                        $args = array(
                            'prev_text' => 'Previous',
                            'next_text' => 'Next',
                            'type' => 'array'
                        );
                        $pagination_links = paginate_links($args);

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
                <p><?php _e('No tours found in this category.'); ?></p>
            <?php endif; ?>
        </div>

        <!-- Sidebar -->
        <div class="col-md-4">
            <?php get_template_part('sidebar-related'); ?>
        </div>
    </div>
</div>

<?php get_footer(); ?>
