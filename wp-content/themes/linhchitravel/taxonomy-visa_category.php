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
    <div class="row">
        <!-- Main Content Area -->
        <div class="col-md-8">
            <?php if (have_posts()) : ?>
                <div class="row">
                    <?php while (have_posts()) : the_post(); ?>
                        <div class="col-md-6 mb-4">
                            <div class="card h-100">
                                <?php if (has_post_thumbnail()) : ?>
                                    <img src="<?php the_post_thumbnail_url('medium'); ?>" class="card-img-top" alt="<?php the_title(); ?>">
                                <?php else : ?>
                                    <img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">
                                <?php endif; ?>
                                <div class="card-body">
                                    <h2 class="card-title">
                                        <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                                    </h2>
                                    <p class="card-text"><?php the_excerpt(); ?></p>
                                    <a href="<?php the_permalink(); ?>" class="btn btn-outline-primary">Xem chi tiết</a>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>

                <!-- Pagination -->
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <?php
                        $pagination_links = paginate_links(array(
                            'prev_text' => 'Previous',
                            'next_text' => 'Next',
                            'type' => 'array'
                        ));

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
                <p><?php _e('No visa services found.'); ?></p>
            <?php endif; ?>
        </div>

        <!-- Sidebar Area for Related Posts -->
        <div class="col-md-4">
            <?php get_template_part('sidebar', 'visa'); ?>
        </div>
    </div>
</div>

<?php get_footer(); ?>
