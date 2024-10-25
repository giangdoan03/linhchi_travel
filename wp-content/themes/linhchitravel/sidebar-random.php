<div class="related-posts-sidebar">
    <h3>Tour nổi bật</h3>
    <ul class="list-group">
        <?php
        $random_args = array(
            'posts_per_page' => 5, // Limit to 5 posts
            'post_type' => 'tour', // Adjust the post type if needed (use 'post' for standard posts)
            'orderby' => 'rand', // Order by random
            'post_status' => 'publish' // Ensure only published posts are displayed
        );

        $random_posts = new WP_Query($random_args);

        if ($random_posts->have_posts()) :
            while ($random_posts->have_posts()) : $random_posts->the_post(); ?>
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
            <li class="list-group-item"><?php _e('No posts found.'); ?></li>
        <?php endif; ?>
    </ul>
</div>
