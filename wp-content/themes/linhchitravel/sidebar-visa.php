<div class="related-posts-sidebar">
    <h3>Visa Services</h3>
    <ul class="list-group">
        <?php
        $terms = wp_get_post_terms(get_the_ID(), 'visa_category', array('fields' => 'ids'));
        $visa_related_args = array(
            'posts_per_page' => 5,
            'post_type' => 'visa_service',
            'post__not_in' => array(get_the_ID()),
            'orderby' => 'rand',
        );

        if (!empty($terms)) {
            $visa_related_args['tax_query'] = array(
                array(
                    'taxonomy' => 'visa_category',
                    'field' => 'id',
                    'terms' => $terms,
                ),
            );
        }

        $visa_related_posts = new WP_Query($visa_related_args);

        if ($visa_related_posts->have_posts()) :
            while ($visa_related_posts->have_posts()) : $visa_related_posts->the_post(); ?>
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
