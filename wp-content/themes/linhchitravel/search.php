<?php
/**
 * The template for displaying search results pages
 *
 * @package linhchitravel
 */

get_header();
?>
    <div class="breadcrumb-bg py-2">
        <nav aria-label="breadcrumb">
            <div class="container">
                <ol class="breadcrumb">
                    <?php
                    // Breadcrumb logic
                    if (function_exists('get_breadcrumb')) {
                        get_breadcrumb();
                    }
                    ?>
                </ol>
            </div>
        </nav>
    </div>
    <div id="page-search-tour" class="page-search-tour container mt-4">
        <?php if ( have_posts() ) : ?>
            <header class="page-header mb-4">
                <h1 class="page-title">
                    <?php
                    /* translators: %s: search query. */
                    printf( esc_html__( 'Kết quả tìm kiếm cho: %s', 'linhchitravel' ), '<span>' . get_search_query() . '</span>' );
                    ?>
                </h1>
            </header>

            <div class="row">
                <?php
                /* Start the Loop */
                while ( have_posts() ) : the_post();
                    if ( 'tour' === get_post_type() ) : // Hiển thị chỉ bài viết loại "tour"
                        ?>
                        <div class="col-md-4 mb-4">
                            <div class="card h-100">
                                <?php if ( has_post_thumbnail() ) : ?>
                                    <a href="<?php the_permalink(); ?>">
                                        <?php the_post_thumbnail('medium', array('class' => 'card-img-top')); ?>
                                    </a>
                                <?php endif; ?>
                                <div class="card-body">
                                    <h5 class="card-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
                                    <p class="card-text"><?php echo wp_trim_words( get_the_excerpt(), 20, '...' ); ?></p>
                                </div>
                                <div class="card-footer">
                                    <a href="<?php the_permalink(); ?>" class="btn btn-outline-info">Xem chi tiết</a>
                                </div>
                            </div>
                        </div>
                    <?php
                    endif;
                endwhile;
                ?>
            </div>

            <!-- Bootstrap Pagination -->
            <nav class="pagination">
                <?php
                the_posts_pagination(array(
                    'mid_size' => 2,
                    'prev_text' => __('&laquo; Trước', 'linhchitravel'),
                    'next_text' => __('Tiếp &raquo;', 'linhchitravel'),
                    'screen_reader_text' => __(' '),
                    'class' => 'pagination justify-content-center'
                ));
                ?>
            </nav>

        <?php else : ?>

            <div class="alert alert-warning" role="alert">
                <?php esc_html_e( 'Không tìm thấy kết quả nào.', 'linhchitravel' ); ?>
            </div>

        <?php endif; ?>

    </div>

<?php
get_footer();
