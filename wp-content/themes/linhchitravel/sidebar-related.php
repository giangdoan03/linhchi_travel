<div class="related-posts-sidebar">
    <h3>Tour hot</h3>
    <ul class="list-group">
        <?php
        $related_args = array(
            'posts_per_page' => 5, // Limit to 5 posts
            'post_type' => 'tour', // Adjust the post type if needed
            'post__not_in' => array(get_the_ID()), // Exclude the current post
            'orderby' => 'rand', // Random order
            'tax_query' => array(
                array(
                    'taxonomy' => 'tour_category', // Use the taxonomy relevant to your post type
                    'field' => 'id',
                    'terms' => wp_get_post_terms(get_the_ID(), 'tour_category', array('fields' => 'ids')),
                ),
            ),
        );

        $related_posts = new WP_Query($related_args);

        if ($related_posts->have_posts()) :
            while ($related_posts->have_posts()) : $related_posts->the_post(); ?>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <a href="<?php the_permalink(); ?>">
                        <?php the_title(); ?>
                    </a>
                    <div class="thumbnail-wrapper" style="width: 80px; height: 80px; overflow: hidden;">
                        <?php
                        if (has_post_thumbnail()) {
                            echo '<img src="' . get_the_post_thumbnail_url(get_the_ID(), 'thumbnail') . '" class="img-thumbnail" alt="' . get_the_title() . '" style="width: 80px; height: 80px; object-fit: cover;">';
                        } else {
                            echo '<img src="https://placehold.co/80x80/png" class="img-thumbnail" alt="No image available" style="width: 80px; height: 80px; object-fit: cover;">';
                        }
                        ?>
                    </div>
                </li>
            <?php endwhile;
            wp_reset_postdata();
        else : ?>
            <li class="list-group-item"><?php _e('No related posts found.'); ?></li>
        <?php endif; ?>
    </ul>
</div>
