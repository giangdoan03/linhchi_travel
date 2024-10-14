<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package linhchitravel
 */

get_header();
?>

	<div id="primary" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

			the_post_navigation(
				array(
					'prev_text' => '<span class="nav-subtitle">' . esc_html__( 'Previous:', 'linhchitravel' ) . '</span> <span class="nav-title">%title</span>',
					'next_text' => '<span class="nav-subtitle">' . esc_html__( 'Next:', 'linhchitravel' ) . '</span> <span class="nav-title">%title</span>',
				)
			);

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

	</div><!-- #main -->

    <style>
        /* General table styling */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        /* Header styling */
        table th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        /* Alternate row color */
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Hover effect for rows */
        table tr:hover {
            background-color: #ddd;
        }

        /* Column-specific styles */
        table td:first-child {
            background-color: #e0f7fa;
            font-weight: bold;
        }

        table td:nth-child(2) {
            background-color: #ffecb3;
        }

        table td:nth-child(3), table td:nth-child(4), table td:nth-child(5) {
            background-color: #fff8e1;
        }

        /* Responsive table */
        @media screen and (max-width: 600px) {
            table {
                width: 100%;
                font-size: 12px;
            }
            table th, table td {
                padding: 4px;
            }
        }

    </style>

<?php
get_sidebar();
get_footer();
