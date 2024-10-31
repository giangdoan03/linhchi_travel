<?php get_header(); ?>

<div class="breadcrumb-bg py-2">
    <nav aria-label="breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
                <?php
                if (function_exists('get_breadcrumb')) {
                    get_breadcrumb();
                }
                ?>
            </ol>
        </div>
    </nav>
</div>

<div class="container mt-4">
    <h1 class="mb-4 title-single-tour"><?php the_title(); ?></h1>
    <div class="row mb-3">
        <!-- Left Section: Tour Content -->
        <div class="col-md-8">
            <!-- Tour Image Carousel -->
            <?php
            // Retrieve the images from the ACF gallery field
            $images = get_field('album_tour'); // Ensure 'album_tour' is set to return an array of images

            if ($images && !empty($images)): ?>
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <?php foreach ($images as $index => $image): ?>
                            <button type="button" data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide-to="<?php echo $index; ?>"
                                    class="<?php echo $index === 0 ? 'active' : ''; ?>"
                                    aria-label="Slide <?php echo $index + 1; ?>"></button>
                        <?php endforeach; ?>
                    </div>
                    <div class="carousel-inner">
                        <?php foreach ($images as $index => $image): ?>
                            <div class="carousel-item <?php echo $index === 0 ? 'active' : ''; ?>">
                                <img src="<?php echo esc_url($image['url']); ?>" class="d-block w-100"
                                     alt="<?php echo esc_attr($image['alt']); ?>">
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            <?php else: ?>
                <!-- Placeholder Image if no images are found -->
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://placehold.co/700x350/png" class="d-block w-100" alt="Placeholder Image">
                        </div>
                    </div>
                </div>
            <?php endif; ?>

        </div>
        <!-- Right Section: Booking Details -->
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-body">
                    <p><strong><?php the_title(); ?></strong></p>
                    <!-- Default to '9 ngày 8 đêm' if thoi_gian is empty -->

                    <p>Khởi hành:<?php $xuat_phat = get_field('khoi_hanh') ?: '';echo esc_html($xuat_phat); ?></p>
                    <p>Thời gian:<?php $phuong_tien = get_field('thoi_gian') ?: '';echo esc_html($phuong_tien);?></p>
                    <p>Xuất phát :<?php $phuong_tien = get_field('xuat_phat') ?: '';echo esc_html($phuong_tien); ?></p>
                    <p>Phương tiện :<?php $phuong_tien = get_field('phuong_tien') ?: '';echo esc_html($phuong_tien); ?></p>
                    <p class="text-danger"><strong>Giá từ: <?php echo get_field('gia') ? esc_html(number_format(get_field('gia'), 0, '.', '.')) . '₫' : '51.490.000₫'; ?></strong></p>
                    <p>Liên hệ tự vấn :<?php $phuong_tien = get_field('lien_he_tu_van') ?: '';echo esc_html($phuong_tien); ?></p>

                    <button type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#bookingModal">Gửi yêu cầu</button>

                    <button onclick="document.getElementById('section3').scrollIntoView({ behavior: 'smooth' });" class="btn btn-outline-warning btn-block">
                        Chi tiết lịch khởi hành
                    </button>
                </div>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <!-- Menu Links -->
            <nav id="navbar">
                <div class="container">
                    <a href="#section1" class="scroll-link active">Điểm nhấn hành trình</a>
                    <a href="#section2" class="scroll-link">Lịch trình chi tiết</a>
                    <a href="#section3" class="scroll-link">Ngày khởi hành</a>
                    <a href="#section4" class="scroll-link">Thông tin cần chú ý Tour</a>
                </div>
            </nav>
            <!-- Content Sections -->
            <section id="section1">
                <?php
                // Retrieve and display the WYSIWYG content
                $diem_nhan_tour = get_field('diem_nhan_tour'); // Replace 'diem_nhan_tour' with your field name
                if ($diem_nhan_tour) {
                    echo '<div class="tour-highlights">';
                    echo $diem_nhan_tour; // Outputs the WYSIWYG content with HTML formatting
                    echo '</div>';
                } else {
                    echo '<p>No highlights available for this tour.</p>'; // Optional fallback message
                }
                ?>
            </section>
            <button id="toggleAll" class="btn btn-outline-info">Hiển thị chi tiết lịch trình</button>
            <section id="section2">
                <div class="accordion" id="accordionPanelsStayOpenExample">
                    <?php
                    // Check if the repeater field has rows of data
                    if (have_rows('lich_trinh_tour')):
                        $index = 0; // Initialize index for unique ID generation

                        // Loop through the rows of data
                        while (have_rows('lich_trinh_tour')): the_row();
                            // Get the subfields 'tieu_de' and 'noi_dung'
                            $tieu_de = get_sub_field('tieu_de');
                            $noi_dung = get_sub_field('noi_dung');
                            $index++; // Increment index for each item
                            ?>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="heading-<?php echo $index; ?>">
                                    <button class="accordion-button <?php echo $index === 1 ? '' : 'collapsed'; ?>"
                                            type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapse-<?php echo $index; ?>"
                                            aria-expanded="<?php echo $index === 1 ? 'true' : 'false'; ?>"
                                            aria-controls="collapse-<?php echo $index; ?>">
                                        <?php echo esc_html($tieu_de); ?>
                                    </button>
                                </h2>
                                <div id="collapse-<?php echo $index; ?>"
                                     class="accordion-collapse collapse <?php echo $index === 1 ? 'show' : ''; ?>"
                                     aria-labelledby="heading-<?php echo $index; ?>"
                                     data-bs-parent="#accordionPanelsStayOpenExample">
                                    <div class="accordion-body">
                                        <?php echo wp_kses_post($noi_dung); ?>
                                    </div>
                                </div>
                            </div>

                        <?php endwhile;
                    else: ?>
                        <p>No itinerary available for this tour.</p> <!-- Fallback message -->
                    <?php endif; ?>
                </div>

            </section>
            <section id="section3">
                <?php
                // Retrieve and display the WYSIWYG content
                $diem_nhan_tour = get_field('lich_khoi_hanh'); // Replace 'diem_nhan_tour' with your field name
                if ($diem_nhan_tour) {
                    echo '<div class="tour-highlights">';
                    echo $diem_nhan_tour; // Outputs the WYSIWYG content with HTML formatting
                    echo '</div>';
                } else {
                    echo '<p>No highlights available for this tour.</p>'; // Optional fallback message
                }
                ?>
            </section>
            <section id="section4">
                <?php
                // Check if the flexible content or repeater field has rows of data
                if (have_rows('thong_tin_can_chu_y_tour')):
                    echo '<div class="tour-highlights">';

                    // Loop through the rows of data
                    while (have_rows('thong_tin_can_chu_y_tour')): the_row();
                        // Get the subfields 'tieu_de' and 'noi_dung'
                        $tieu_de = get_sub_field('tieu_de');
                        $noi_dung = get_sub_field('noi_dung');

                        // Display the title if it exists
                        if ($tieu_de) {
                            echo '<h3>' . esc_html($tieu_de) . '</h3>';
                        }

                        // Display the content if it exists
                        if ($noi_dung) {
                            echo '<p>' . $noi_dung . '</p>'; // Outputs the content with HTML formatting
                        }
                    endwhile;

                    echo '</div>';
                else:
                    echo '<p>No highlights available for this tour.</p>'; // Optional fallback message
                endif;
                ?>

            </section>
        </div>
    </div>
</div>

<!-- Modal -->
<!-- Modal -->
<?php echo do_shortcode('[tour_booking_form tour_id="' . get_the_ID() . '"]'); ?>
<!-- End Modal -->


<script>
    const carouselElement = document.querySelector('#carouselExampleIndicators');
    const carousel = new bootstrap.Carousel(carouselElement);

    let touchStartX = 0;
    let touchEndX = 0;
    let isDragging = false;
    let startX = 0;

    // For touch events (Mobile devices)
    carouselElement.addEventListener('touchstart', (event) => {
        touchStartX = event.changedTouches[0].screenX;
    });

    carouselElement.addEventListener('touchend', (event) => {
        touchEndX = event.changedTouches[0].screenX;
        handleGesture();
    });

    // For mouse events (Desktop)
    carouselElement.addEventListener('mousedown', (event) => {
        isDragging = true;
        startX = event.screenX;
    });

    carouselElement.addEventListener('mouseup', (event) => {
        if (isDragging) {
            isDragging = false;
            const endX = event.screenX;
            if (endX < startX) {
                carousel.next();
            } else if (endX > startX) {
                carousel.prev();
            }
        }
    });

    carouselElement.addEventListener('mouseleave', () => {
        isDragging = false; // Cancel drag if the mouse leaves the carousel
    });

    function handleGesture() {
        if (touchEndX < touchStartX) {
            carousel.next();
        } else if (touchEndX > touchStartX) {
            carousel.prev();
        }
    }

    document.getElementById("toggleAll").addEventListener("click", function () {
        const accordions = document.querySelectorAll(".accordion-collapse");
        const isAllShown = Array.from(accordions).every(accordion => accordion.classList.contains("show"));
        accordions.forEach((accordion) => {
            accordion.classList.toggle("show", !isAllShown);
        });
        this.textContent = isAllShown ? "Xem chi tiết lịch trình" : "Thu gọn";
    });
    document.addEventListener('DOMContentLoaded', function () {
        var carousel = new bootstrap.Carousel(document.getElementById('carouselExampleIndicators'), {
            keyboard: true
        });
    });

</script>

<?php get_footer(); ?>
