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
            <?php
            if (have_posts()) :
                while (have_posts()) : the_post();
                    ?>
                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="card-title"><?php the_title(); ?></h3>
                        </div>

                        <?php if (has_post_thumbnail()) : ?>
                            <img src="<?php the_post_thumbnail_url('large'); ?>" class="card-img-top" alt="<?php the_title(); ?>">
                        <?php else : ?>
                            <img src="https://placehold.co/800x400/png" class="card-img-top" alt="No image available">
                        <?php endif; ?>

                        <div class="card-body">
                            <p class="card-text"><?php the_content(); ?></p>
                        </div>

                        <!-- Display custom fields if any -->
                        <div class="card-footer">
                            <?php if (get_field('custom_field_name')) : ?>
                                <p><strong>Custom Field:</strong> <?php the_field('custom_field_name'); ?></p>
                            <?php endif; ?>
                        </div>
                    </div>

                <?php
                endwhile;
            else :
                echo '<p>No details found for this visa service.</p>';
            endif;
            ?>
        </div>

        <!-- Sidebar Area -->
        <div class="col-md-4">
            <?php get_template_part('sidebar', 'visa'); ?>
        </div>
    </div>
</div>

<?php get_footer(); ?>
