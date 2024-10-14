
<?php get_header(); ?>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h1><?php the_title(); ?></h1>
            <?php if (has_post_thumbnail()) : ?>
                <img src="<?php the_post_thumbnail_url('large'); ?>" class="img-fluid" alt="<?php the_title(); ?>">
            <?php endif; ?>
            <div class="content">
                <?php the_content(); ?>
            </div>

            <!-- Hiển thị Tour Categories -->
            <div class="tour-categories">
                <strong>Categories:</strong>
                <?php the_terms(get_the_ID(), 'tour_category', '', ', '); ?>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>
