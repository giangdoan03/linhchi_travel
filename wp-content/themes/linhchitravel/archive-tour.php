<?php get_header(); ?>
<div class="breadcrumb-bg">
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
<div class="container">
    <h1 class="display-4 text-center">
        <?php post_type_archive_title(); ?>
    </h1>

    <?php if (have_posts()) : ?>
        <div class="row">
            <?php while (have_posts()) : the_post(); ?>
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <?php
                        if (has_post_thumbnail()) {
                            // Display the post's featured image if it exists
                            echo '<img src="' . get_the_post_thumbnail_url(get_the_ID(), 'medium') . '" class="card-img-top" alt="' . get_the_title() . '">';
                        } else {
                            // Display a placeholder image if no featured image is available
                            echo '<img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">';
                        }
                        ?>
                        <div class="card-body">
                            <h5 class="card-title"><?php the_title(); ?></h5>
                            <p class="card-text"><?php the_excerpt(); ?></p>
                            <a href="<?php the_permalink(); ?>" class="btn btn-primary">Read More</a>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">
                                Categories: <?php the_terms(get_the_ID(), 'tour_category', '', ', '); ?>
                            </small>
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
                        // Add active class for the current page
                        $active_class = strpos($link, 'current') !== false ? ' active' : '';
                        echo '<li class="page-item' . $active_class . '">' . str_replace('page-numbers', 'page-link', $link) . '</li>';
                    endforeach;
                endif;
                ?>
            </ul>
        </nav>

    <?php else : ?>
        <p><?php _e('No tours found.'); ?></p>
    <?php endif; ?>
</div>

<?php get_footer(); ?>
