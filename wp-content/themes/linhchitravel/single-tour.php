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
    <h5><?php the_title(); ?></h5>
    <div class="row">
        <!-- Left Section: Tour Content -->
        <div class="col-md-8">
            <!-- Tour Image -->
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://placehold.co/750x420/png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://placehold.co/750x420/png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://placehold.co/750x420/png" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Right Section: Booking Details -->
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-body">
                    <p><strong>9 ngày 8 đêm</strong></p>
                    <p><i class="bi bi-calendar-check"></i> Khởi hành từ Hồ Chí Minh</p>
                    <p><i class="bi bi-geo-alt"></i> Hồ Chí Minh - Đức - Hà Lan - Bỉ - Pháp - Thụy Sĩ - Ý</p>
                    <p class="text-danger"><strong>Giá từ: 51.490.000₫</strong></p>
                    <del class="text-muted">51.990.000₫</del>
                    <p><small>+ 514.900 điểm thưởng</small></p>

                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#bookingModal">
                        Gửi yêu cầu
                    </button>

                    <button class="btn btn-outline-secondary btn-block">Xem lịch khởi hành</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <!-- Menu Links -->
            <nav id="navbar">
                <div class="container">
                    <a href="#section1" class="scroll-link"><strong>Section 1</strong></a>
                    <a href="#section2" class="scroll-link"><strong>Section 2</strong></a>
                    <a href="#section3" class="scroll-link"><strong>Section 3</strong></a>
                </div>
            </nav>
            <!-- Content Sections -->
            <section id="section1">
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>

            </section>
            <section id="section2">
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
                <h2>Section 1</h2>
                <p>This is the content for section 1.</p>
            </section>
            <section id="section3">
                <h2>Section 3</h2>
                <p>This is the content for section 3.</p>
            </section>
        </div>
    </div>
</div>

<!-- Modal -->
<!-- Modal -->
<div class="modal fade" id="bookingModal" tabindex="-1" aria-labelledby="bookingModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="bookingModalLabel">
                    Du Lịch 6 nước Châu Âu: Đức - Hà Lan - Bỉ - Pháp - Thụy Sĩ - Ý
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="departureDate" class="form-label">Ngày khởi hành:</label>
                            <input type="date" class="form-control" id="departureDate">
                        </div>
                        <div class="col-md-6">
                            <label for="departureLocation" class="form-label">Điểm khởi hành:</label>
                            <input type="text" class="form-control" id="departureLocation" placeholder="Hồ Chí Minh">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="adults" class="form-label">Người lớn:</label>
                            <select class="form-select" id="adults">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="children" class="form-label">Trẻ em (2-12):</label>
                            <select class="form-select" id="children">
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="infants" class="form-label">Em bé (&lt;2):</label>
                            <select class="form-select" id="infants">
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="honorific" class="form-label">Quý danh:</label>
                            <select class="form-select" id="honorific">
                                <option value="Ông">Ông</option>
                                <option value="Bà">Bà</option>
                                <option value="Cô">Cô</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="fullName" class="form-label">Họ tên: <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="fullName" required>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="phone" class="form-label">Số điện thoại: <span class="text-danger">*</span></label>
                            <input type="tel" class="form-control" id="phone" required>
                        </div>
                        <div class="col-md-6">
                            <label for="email" class="form-label">Email:</label>
                            <input type="email" class="form-control" id="email">
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="specialRequest" class="form-label">Yêu cầu đặc biệt:</label>
                        <textarea class="form-control" id="specialRequest" rows="3"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Gửi yêu cầu</button>
            </div>
        </div>
    </div>
</div>
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
</script>

<?php get_footer(); ?>
