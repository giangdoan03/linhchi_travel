<?php
/**
 * The template for displaying all pages
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
            <!-- Main content area -->
            <main id="primary" class="site-main col-md-8">
                <?php
                while ( have_posts() ) :
                    the_post();
                    get_template_part( 'template-parts/content', 'page' );
                endwhile; // End of the loop.
                ?>
            </main><!-- #main -->

            <!-- Sidebar area -->
            <aside class="col-md-4">
                <?php get_template_part('sidebar', 'random'); ?>
            </aside>
        </div>
    </div>

<?php
get_footer();
