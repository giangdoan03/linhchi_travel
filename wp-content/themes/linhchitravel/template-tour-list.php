<?php
/*
Template Name: Tour List by URL
*/

get_header(); ?>
<div class="breadcrumb-bg">
    <nav aria-label="breadcrumb">
        <div class="container">
            <ol class="breadcrumb py-2">
                <?php if (function_exists('get_breadcrumb')) { get_breadcrumb(); } ?>
            </ol>
        </div>
    </nav>
</div>
<div class="container mt-5">
    <?php
    global $wp;
    $current_slug = $wp->request;

    if (strpos($current_slug, 'tour-trong-nuoc') !== false) {
        $type_tour = 'trong_nuoc';
        $page_title = 'Tour Trong Nước';
        $taxonomy_name = 'national_region';
    } elseif (strpos($current_slug, 'tour-nuoc-ngoai') !== false) {
        $type_tour = 'nuoc_ngoai';
        $page_title = 'Tour Nước Ngoài';
        $taxonomy_name = 'tour_area';
    } else {
        echo '<h1 class="text-center">Loại tour không hợp lệ</h1>';
        get_footer();
        exit;
    }
    ?>

    <h1 class="text-center"><?php echo $page_title; ?></h1>

    <div class="row mt-4">
        <!-- Sidebar với bộ lọc -->
        <div class="col-md-3">
            <div class="card p-3 mb-4">
                <h5 class="mb-3">Bộ lọc</h5>

                <!-- Bộ lọc Taxonomy -->
                <h6><?php echo $taxonomy_name === 'tour_area' ? 'Khu vực tour' : 'Vùng miền'; ?></h6>
                <?php
                $terms = get_terms($taxonomy_name);
                if (!empty($terms) && !is_wp_error($terms)) :
                    foreach ($terms as $term) : ?>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="taxonomy_filter[]" value="<?php echo esc_attr($term->slug); ?>" id="<?php echo esc_attr($term->slug); ?>">
                            <label class="form-check-label" for="<?php echo esc_attr($term->slug); ?>">
                                <?php echo esc_html($term->name); ?>
                            </label>
                        </div>
                    <?php endforeach;
                endif;
                ?>

                <!-- Bộ lọc Giá (Thanh trượt) -->
                <h6 class="mt-4">Giá (triệu VNĐ)</h6>
                <input type="range" class="form-range" min="1" max="500" step="1" id="price-range" value="250">
                <p>Giá từ: <span id="price-range-label">250</span> triệu</p>

                <button id="apply-filters" class="btn btn-primary mt-3">Áp dụng bộ lọc</button>
            </div>
        </div>

        <!-- Danh sách tour -->
        <div class="col-md-9">
            <div class="row" id="tour-list">
                <?php
                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                $args = [
                    'post_type' => 'tour',
                    'posts_per_page' => 6,
                    'paged' => $paged,
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
                        <div class="col-md-6 mb-4">
                            <div class="card h-100">
                                <?php if (has_post_thumbnail()) : ?>
                                    <img src="<?php the_post_thumbnail_url('medium'); ?>" class="card-img-top" alt="<?php the_title(); ?>">
                                <?php else : ?>
                                    <img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">
                                <?php endif; ?>

                                <div class="card-body">
                                    <h5 class="card-title"><?php the_title(); ?></h5>
                                    <?php
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
                wp_reset_postdata();
                ?>
            </div>

            <!-- Pagination -->
            <div class="pagination mt-4">
                <?php
                $pagination_links = paginate_links([
                    'total' => $query->max_num_pages,
                    'current' => $paged,
                    'type' => 'array',
                    'prev_text' => '&laquo;',
                    'next_text' => '&raquo;',
                ]);

                if ($pagination_links) : ?>
                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center">
                            <?php foreach ($pagination_links as $link) : ?>
                                <li class="page-item<?php echo strpos($link, 'current') !== false ? ' active' : ''; ?>">
                                    <?php echo str_replace('page-numbers', 'page-link', $link); ?>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </nav>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Cập nhật nhãn giá khi thay đổi thanh trượt
        const priceRange = document.getElementById('price-range');
        const priceLabel = document.getElementById('price-range-label');
        priceRange.addEventListener('input', function() {
            priceLabel.textContent = priceRange.value;
        });

        // Xử lý khi nhấn nút "Áp dụng bộ lọc"
        document.getElementById('apply-filters').addEventListener('click', function() {
            // Lấy giá trị của các checkbox đã chọn và khoảng giá
            const selectedTerms = Array.from(document.querySelectorAll('input[name="taxonomy_filter[]"]:checked')).map(cb => cb.value);
            const selectedPrice = priceRange.value;

            // Gửi yêu cầu AJAX đến endpoint tùy chỉnh trong WordPress
            fetch('<?php echo admin_url('admin-ajax.php'); ?>', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: new URLSearchParams({
                    action: 'filter_tours',
                    type_tour: '<?php echo $type_tour; ?>', // Giá trị type_tour (trong_nuoc hoặc nuoc_ngoai)
                    taxonomy_terms: JSON.stringify(selectedTerms),
                    max_price: selectedPrice,
                }),
            })
                .then(response => response.json())
                .then(data => {
                    const tourList = document.getElementById('tour-list');
                    tourList.innerHTML = ''; // Xóa nội dung cũ

                    if (data.tours && data.tours.length) {
                        data.tours.forEach(tour => {
                            const tourItem = `
                            <div class="col-md-6 mb-4">
                                <div class="card h-100">
                                    <img src="${tour.thumbnail}" class="card-img-top" alt="${tour.title}">
                                    <div class="card-body">
                                        <h5 class="card-title">${tour.title}</h5>
                                        <p class="text-danger"><strong>Giá từ: ${tour.price}</strong></p>
                                        <p><strong>Khởi hành:</strong> ${tour.departure}</p>
                                        <p><strong>Thời gian:</strong> ${tour.duration}</p>
                                        <p><strong>Xuất phát:</strong> ${tour.starting_point}</p>
                                        <p><strong>Phương tiện:</strong> ${tour.transport}</p>
                                        <a href="${tour.link}" class="btn btn-outline-info mt-3">Chi tiết Tour</a>
                                    </div>
                                </div>
                            </div>`;
                            tourList.insertAdjacentHTML('beforeend', tourItem);
                        });
                    } else {
                        tourList.innerHTML = '<p class="text-center">Không tìm thấy tour nào phù hợp.</p>';
                    }
                })
                .catch(error => console.error('Error fetching tours:', error));
        });
    });
</script>

