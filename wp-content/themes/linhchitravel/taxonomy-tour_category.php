<?php get_header(); ?>

<div class="breadcrumb-bg">
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

<div class="container mt-3">
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
                                    <p class="card-text"><?php the_excerpt(); ?></p>
                                    <a href="<?php the_permalink(); ?>" class="btn btn-outline-primary">Chi tiết Tour</a>
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
