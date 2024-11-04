<?php
/**
 * linhchitravel functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package linhchitravel
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function linhchitravel_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on linhchitravel, use a find and replace
		* to change 'linhchitravel' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'linhchitravel', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support( 'title-tag' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'menu-1' => esc_html__( 'Primary', 'linhchitravel' ),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'linhchitravel_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action( 'after_setup_theme', 'linhchitravel_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function linhchitravel_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'linhchitravel_content_width', 640 );
}
add_action( 'after_setup_theme', 'linhchitravel_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function linhchitravel_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'linhchitravel' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'linhchitravel' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'linhchitravel_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function linhchitravel_scripts() {
	wp_enqueue_style( 'linhchitravel-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'linhchitravel-style', 'rtl', 'replace' );

	wp_enqueue_script( 'linhchitravel-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}


}
add_action( 'wp_enqueue_scripts', 'linhchitravel_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}


// Tải jQuery, Bootstrap 5, Swiper Slider và các file CSS/JS tùy chỉnh
function mytheme_enqueue_assets() {
    // Đảm bảo jQuery được tải trước (WordPress đã tích hợp sẵn jQuery)
    wp_enqueue_script('jquery');

    // Tải Bootstrap CSS
    wp_enqueue_style('bootstrap-css', get_template_directory_uri() . '/css/bootstrap.min.css', array(), '5.3.0');

    // Tải Bootstrap JS với Popper.js (cần cho các thành phần JavaScript của Bootstrap)
    wp_enqueue_script('bootstrap-js', get_template_directory_uri() . '/js/bootstrap.bundle.min.js', array('jquery'), '5.3.0', true);

    // Tải Swiper Slider CSS
    wp_enqueue_style('swiper-css', get_template_directory_uri() . '/css/swiper.min.css', array(), '9.0.0');

    // Tải Swiper Slider JS
    wp_enqueue_script('swiper-js', get_template_directory_uri() . '/js/swiper.min.js', array('jquery'), '9.0.0', true);

    // Tải file CSS tùy chỉnh
    wp_enqueue_style('custom-css', get_template_directory_uri() . '/css/custom.css', array(), null);

    // Tải file JS tùy chỉnh
    wp_enqueue_script('custom-js', get_template_directory_uri() . '/js/custom.js', array('jquery'), null, true);

    // Tải Font Awesome
    wp_enqueue_style('font-awesome-free', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css', array(), '6.0.0');

    // Tải Bootstrap Icons
    wp_enqueue_style('bootstrap-icons', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css', array(), '1.8.1');

    // Truyền URL của admin-ajax.php vào JavaScript
    wp_localize_script('custom-js', 'tourSearch', array(
        'ajax_url' => admin_url('admin-ajax.php')
    ));
}


// Hook vào wp_enqueue_scripts để tải các file khi cần thiết
add_action('wp_enqueue_scripts', 'mytheme_enqueue_assets');

// Bao gồm tệp Navwalker để hỗ trợ menu Bootstrap
require_once get_template_directory() . '/wp-bootstrap-navwalker.php';

function linhchitravel_register_menus() {
    register_nav_menus(array(
        'menu-1' => esc_html__('Primary Menu', 'linhchitravel'),
    ));
}
add_action('init', 'linhchitravel_register_menus');

// Tạo Custom Post Type "Tour"
function create_tour_post_type() {
    $labels = array(
        'name'               => _x('Tours', 'Post Type General Name', 'text_domain'),
        'singular_name'      => _x('Tour', 'Post Type Singular Name', 'text_domain'),
        'menu_name'          => __('Tours', 'text_domain'),
        'name_admin_bar'     => __('Tour', 'text_domain'),
        'archives'           => __('Tour Archives', 'text_domain'),
        'attributes'         => __('Tour Attributes', 'text_domain'),
        'parent_item_colon'  => __('Parent Tour:', 'text_domain'),
        'all_items'          => __('All Tours', 'text_domain'),
        'add_new_item'       => __('Add New Tour', 'text_domain'),
        'add_new'            => __('Add New', 'text_domain'),
        'new_item'           => __('New Tour', 'text_domain'),
        'edit_item'          => __('Edit Tour', 'text_domain'),
        'update_item'        => __('Update Tour', 'text_domain'),
        'view_item'          => __('View Tour', 'text_domain'),
        'view_items'         => __('View Tours', 'text_domain'),
        'search_items'       => __('Search Tours', 'text_domain'),
        'not_found'          => __('No tours found', 'text_domain'),
        'not_found_in_trash' => __('No tours found in Trash', 'text_domain'),
        'featured_image'     => __('Featured Image', 'text_domain'),
        'set_featured_image' => __('Set featured image', 'text_domain'),
        'remove_featured_image' => __('Remove featured image', 'text_domain'),
        'use_featured_image' => __('Use as featured image', 'text_domain'),
        'insert_into_item'   => __('Insert into tour', 'text_domain'),
        'uploaded_to_this_item' => __('Uploaded to this tour', 'text_domain'),
        'items_list'         => __('Tours list', 'text_domain'),
        'items_list_navigation' => __('Tours list navigation', 'text_domain'),
        'filter_items_list'  => __('Filter tours list', 'text_domain'),
    );

    $args = array(
        'label'              => __('Tour', 'text_domain'),
        'description'        => __('Tour information and details', 'text_domain'),
        'labels'             => $labels,
        'supports'           => array('title', 'editor', 'thumbnail', 'excerpt', 'custom-fields'),
        'taxonomies'         => array('post_tag'),
        'hierarchical'       => false,
        'public'             => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'menu_position'      => 5,
        'menu_icon'          => 'dashicons-palmtree', // Icon cho post type (có thể thay đổi)
        'show_in_admin_bar'  => true,
        'show_in_nav_menus'  => true,
        'can_export'         => true,
        'has_archive'        => true,
        'exclude_from_search' => false,
        'publicly_queryable' => true,
        'capability_type'    => 'post',
        'rewrite'            => array('slug' => 'tours'), // Đường dẫn slug cho tour
    );

    register_post_type('tour', $args);
}
add_action('init', 'create_tour_post_type', 0);

// Tạo taxonomy mới cho CPT "Tour"
function create_tour_taxonomy() {
    $labels = array(
        'name'              => _x('Tour Categories', 'taxonomy general name', 'text_domain'),
        'singular_name'     => _x('Tour Category', 'taxonomy singular name', 'text_domain'),
        'search_items'      => __('Search Tour Categories', 'text_domain'),
        'all_items'         => __('All Tour Categories', 'text_domain'),
        'parent_item'       => __('Parent Tour Category', 'text_domain'),
        'parent_item_colon' => __('Parent Tour Category:', 'text_domain'),
        'edit_item'         => __('Edit Tour Category', 'text_domain'),
        'update_item'       => __('Update Tour Category', 'text_domain'),
        'add_new_item'      => __('Add New Tour Category', 'text_domain'),
        'new_item_name'     => __('New Tour Category Name', 'text_domain'),
        'menu_name'         => __('Tour Categories', 'text_domain'),
    );

    $args = array(
        'hierarchical'      => true, // Set thành true để hoạt động giống như category
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array('slug' => 'tour-category'), // Đường dẫn slug cho taxonomy
    );

    // Đăng ký taxonomy 'tour_category' cho Custom Post Type 'tour'
    register_taxonomy('tour_category', array('tour'), $args);
}
add_action('init', 'create_tour_taxonomy', 0);

function disable_content_editor_for_custom_post_types() {
    remove_post_type_support( 'tour', 'editor' ); // Thay 'custom_post_type' bằng tên post type tùy chỉnh của bạn
}
add_action( 'init', 'disable_content_editor_for_custom_post_types' );


// Tạo Custom Post Type 'visa_service'
function create_visa_service_cpt() {
    $labels = array(
        'name' => __('Visa Services', 'textdomain'),
        'singular_name' => __('Visa Service', 'textdomain'),
        'menu_name' => __('Visa Services', 'textdomain'),
        'name_admin_bar' => __('Visa Service', 'textdomain'),
        'add_new' => __('Add New', 'textdomain'),
        'add_new_item' => __('Add New Visa Service', 'textdomain'),
        'new_item' => __('New Visa Service', 'textdomain'),
        'edit_item' => __('Edit Visa Service', 'textdomain'),
        'view_item' => __('View Visa Service', 'textdomain'),
        'all_items' => __('All Visa Services', 'textdomain'),
        'search_items' => __('Search Visa Services', 'textdomain'),
        'parent_item_colon' => __('Parent Visa Services:', 'textdomain'),
        'not_found' => __('No visa services found.', 'textdomain'),
        'not_found_in_trash' => __('No visa services found in Trash.', 'textdomain')
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'rewrite' => array('slug' => 'visa-services'),
        'supports' => array('title', 'editor', 'thumbnail', 'excerpt', 'custom-fields'),
        'capability_type' => 'post',
        'show_in_rest' => true, // Kích hoạt Gutenberg editor
        'menu_icon' => 'dashicons-id-alt', // Icon trong menu admin
    );

    register_post_type('visa_service', $args);
}
add_action('init', 'create_visa_service_cpt');

// Tạo taxonomy 'visa_category' cho Custom Post Type 'visa_service'
function create_visa_category_taxonomy() {
    $labels = array(
        'name' => _x('Visa Categories', 'taxonomy general name', 'textdomain'),
        'singular_name' => _x('Visa Category', 'taxonomy singular name', 'textdomain'),
        'search_items' => __('Search Visa Categories', 'textdomain'),
        'all_items' => __('All Visa Categories', 'textdomain'),
        'parent_item' => __('Parent Visa Category', 'textdomain'),
        'parent_item_colon' => __('Parent Visa Category:', 'textdomain'),
        'edit_item' => __('Edit Visa Category', 'textdomain'),
        'update_item' => __('Update Visa Category', 'textdomain'),
        'add_new_item' => __('Add New Visa Category', 'textdomain'),
        'new_item_name' => __('New Visa Category Name', 'textdomain'),
        'menu_name' => __('Visa Categories', 'textdomain'),
    );

    $args = array(
        'labels' => $labels,
        'hierarchical' => true, // Là taxonomy dạng phân cấp giống categories (dùng true cho dạng phân cấp, false cho dạng thẻ tags)
        'show_in_rest' => true, // Hỗ trợ cho Gutenberg
        'rewrite' => array('slug' => 'visa-category'),
    );

    register_taxonomy('visa_category', array('visa_service'), $args);
}
add_action('init', 'create_visa_category_taxonomy');




// Tạo Custom Post Type 'testimonial'
function create_testimonial_cpt() {
    $labels = array(
        'name' => __('Testimonials', 'textdomain'),
        'singular_name' => __('Testimonial', 'textdomain'),
        'menu_name' => __('Testimonials', 'textdomain'),
        'name_admin_bar' => __('Testimonial', 'textdomain'),
        'add_new' => __('Add New', 'textdomain'),
        'add_new_item' => __('Add New Testimonial', 'textdomain'),
        'new_item' => __('New Testimonial', 'textdomain'),
        'edit_item' => __('Edit Testimonial', 'textdomain'),
        'view_item' => __('View Testimonial', 'textdomain'),
        'all_items' => __('All Testimonials', 'textdomain'),
        'search_items' => __('Search Testimonials', 'textdomain'),
        'parent_item_colon' => __('Parent Testimonial:', 'textdomain'),
        'not_found' => __('No testimonials found.', 'textdomain'),
        'not_found_in_trash' => __('No testimonials found in Trash.', 'textdomain')
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'rewrite' => array('slug' => 'testimonials'),
        'supports' => array('title', 'editor', 'thumbnail', 'excerpt', 'custom-fields'),
        'capability_type' => 'post',
        'show_in_rest' => true, // Hỗ trợ Gutenberg editor
        'menu_icon' => 'dashicons-format-quote', // Icon cho post type trong menu admin
    );

    register_post_type('testimonial', $args);
}
add_action('init', 'create_testimonial_cpt');


// Tạo taxonomy 'testimonial_category' cho Custom Post Type 'testimonial'
function create_testimonial_category_taxonomy() {
    $labels = array(
        'name' => _x('Testimonial Categories', 'taxonomy general name', 'textdomain'),
        'singular_name' => _x('Testimonial Category', 'taxonomy singular name', 'textdomain'),
        'search_items' => __('Search Testimonial Categories', 'textdomain'),
        'all_items' => __('All Testimonial Categories', 'textdomain'),
        'parent_item' => __('Parent Testimonial Category', 'textdomain'),
        'parent_item_colon' => __('Parent Testimonial Category:', 'textdomain'),
        'edit_item' => __('Edit Testimonial Category', 'textdomain'),
        'update_item' => __('Update Testimonial Category', 'textdomain'),
        'add_new_item' => __('Add New Testimonial Category', 'textdomain'),
        'new_item_name' => __('New Testimonial Category Name', 'textdomain'),
        'menu_name' => __('Testimonial Categories', 'textdomain'),
    );

    $args = array(
        'labels' => $labels,
        'hierarchical' => true, // Hierarchical giống như category
        'show_in_rest' => true, // Hỗ trợ REST API và Gutenberg Editor
        'rewrite' => array('slug' => 'testimonial-category'),
    );

    register_taxonomy('testimonial_category', array('testimonial'), $args);
}
add_action('init', 'create_testimonial_category_taxonomy');




function display_tour_posts_swiper_shortcode($atts) {
    // Phân tích thuộc tính truyền vào shortcode
    $atts = shortcode_atts(
        array(
            'category' => '', // Tham số tùy chọn để lọc theo danh mục
        ),
        $atts,
        'tour_posts'
    );

    // Tham số cho WP_Query
    $args = array(
        'post_type' => 'tour',
        'posts_per_page' => -1, // Adjust the number of posts
        'meta_query' => array(
            array(
                'key' => 'show_tour_hot', // Custom field name
                'value' => 'tour_hot',     // Check for the specific checkbox choice
                'compare' => 'LIKE',       // Use LIKE to match partial content in serialized data
            ),
        ),
    );

    // Lọc theo taxonomy nếu truyền category qua shortcode
    if (!empty($atts['category'])) {
        $args['tax_query'] = array(
            array(
                'taxonomy' => 'tour_category',
                'field'    => 'slug',
                'terms'    => $atts['category'],
            ),
        );
    }

    // WP_Query tùy chỉnh
    $query = new WP_Query($args);

    // Swiper container
    if ($query->have_posts()) {
        $output = '<div id="slider_tour_hot">'; // Đóng card
        $output .= '<div class="swiper-container slider2">';
        $output .= '<div class="swiper-wrapper">'; // Swiper wrapper

        while ($query->have_posts()) {
            $query->the_post();

            // Lấy ảnh đại diện của bài viết (thumbnail)
            if (has_post_thumbnail()) {
                $thumbnail = get_the_post_thumbnail(get_the_ID(), 'large', array('class' => 'card-img-top'));
            } else {
                // Hiển thị ảnh mặc định từ https://placehold.co nếu bài viết không có ảnh đại diện
                $thumbnail = '<img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">';
            }

            // Mỗi bài viết sẽ là một Swiper slide
            // Start Swiper slide
            $output .= '<div class="swiper-slide">';

            // Wrap the card in the anchor tag
            $output .= '<a href="' . get_permalink() . '" class="card h-100">';

            // Display the featured image
            $output .= $thumbnail;

            // Display title
            $output .= '<div class="card-body">';
            $output .= '<h5 class="card-title">' . get_the_title() . '</h5>';
            $output .= '</div>'; // Close card-body

            $output .= '</a>'; // Close anchor tag wrapping the card
            $output .= '</div>'; // Close swiper-slide

        }

        $output .= '</div>'; // Đóng swiper-wrapper

        // Thay đổi class điều hướng và phân trang
        $output .= '<div class="box_ac">'; // Custom pagination class
        $output .= '<div class="swiper-pagination"></div>'; // Custom pagination class
        $output .= '<div class="swiper-button-next swiper-button-next-2"></div>'; // Custom next button class
        $output .= '<div class="swiper-button-prev swiper-button-prev-2"></div>'; // Custom prev button class
        $output .= '</div>';
        $output .= '</div>'; // Đóng swiper container
        $output .= '</div>'; // Đóng swiper container
    } else {
        $output = '<p>Không có tour nào được tìm thấy.</p>';
    }

    // Khôi phục dữ liệu bài viết gốc
    wp_reset_postdata();

    return $output;
}
add_shortcode('tour_posts_swiper', 'display_tour_posts_swiper_shortcode');


if( function_exists('acf_add_options_page') ) {

    // Thêm trang tùy chọn chính
    acf_add_options_page(array(
        'page_title'    => 'Cài đặt chung',
        'menu_title'    => 'Cài đặt ACF',
        'menu_slug'     => 'acf-general-settings',
        'capability'    => 'edit_posts',
        'redirect'      => false
    ));

}


// Tạo shortcode hiển thị slider Swiper cho post type 'tour' và taxonomy 'tour_category' với tag_ID = 3
function tour_slider_shortcode($atts) {
    // Truy vấn các bài viết thuộc post type 'tour' và 'tour_category' với ID = 3
    $args = array(
        'post_type' => 'tour',
        'tax_query' => array(
            array(
                'taxonomy' => 'tour_category',
                'field' => 'term_id',
                'terms' => 3, // Lấy theo tag_ID = 3
            ),
        ),
        'posts_per_page' => -1, // Hiển thị tất cả bài viết hoặc số lượng bạn muốn
    );

    // WP_Query tùy chỉnh
    $query = new WP_Query($args);

    // Swiper container
    if ($query->have_posts()) {
        $output = '<div id="slider_tour_trong_nuoc">'; // Đóng card
        $output .= '<div class="swiper-container slider3">';
        $output .= '<div class="swiper-wrapper">'; // Swiper wrapper

        while ($query->have_posts()) {
            $query->the_post();

            // Lấy ảnh đại diện của bài viết (thumbnail)
            if (has_post_thumbnail()) {
                $thumbnail = get_the_post_thumbnail(get_the_ID(), 'large', array('class' => 'card-img-top'));
            } else {
                // Hiển thị ảnh mặc định từ https://placehold.co nếu bài viết không có ảnh đại diện
                $thumbnail = '<img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">';
            }

            // Start Swiper slide
            $output .= '<div class="swiper-slide">';

            // Wrap the entire card in an anchor tag
            $output .= '<a href="' . get_permalink() . '" class="text-decoration-none">'; // Add the link with a class to remove default styles if needed
            $output .= '<div class="card h-100">';

            // Display the featured image
            $output .= $thumbnail;

            // Display title
            $output .= '<div class="card-body">';
            $output .= '<h5 class="card-title">' . get_the_title() . '</h5>';
            $output .= '</div>'; // Close card-body

            $output .= '</div>'; // Close card
            $output .= '</a>'; // Close anchor tag wrapping the card
            $output .= '</div>'; // Close swiper-slide

        }

        $output .= '</div>'; // Đóng swiper-wrapper

        // Thay đổi class điều hướng và phân trang
        $output .= '<div class="box_ac">'; // Custom pagination class
        $output .= '<div class="swiper-pagination"></div>'; // Custom pagination class
        $output .= '<div class="swiper-button-next swiper-button-next-3"></div>'; // Custom next button class
        $output .= '<div class="swiper-button-prev swiper-button-prev-3"></div>'; // Custom prev button class
        $output .= '</div>';
        $output .= '</div>'; // Đóng swiper container
        $output .= '</div>'; // Đóng swiper container
    } else {
        $output = '<p>Không có tour nào được tìm thấy.</p>';
    }

    // Khôi phục dữ liệu bài viết gốc
    wp_reset_postdata();

    return $output;
}
add_shortcode('tour_slider_trong_nuoc', 'tour_slider_shortcode');

// Tour nước ngoài
function tour_slider_nuoc_ngoai_shortcode() {
    // Truy vấn các bài viết thuộc post type 'tour' và 'tour_category' với ID = 4
    $args = array(
        'post_type' => 'tour',
        'tax_query' => array(
            array(
                'taxonomy' => 'tour_category',
                'field' => 'term_id',
                'terms' => 4, // Lấy theo tag_ID = 4
            ),
        ),
        'posts_per_page' => -1, // Hiển thị tất cả bài viết hoặc số lượng bạn muốn
    );

    // WP_Query tùy chỉnh
    $query = new WP_Query($args);

    // Swiper container
    if ($query->have_posts()) {
        $output = '<div id="slider_tour_hot">'; // Đóng card
        $output .= '<div class="swiper-container slider4">';
        $output .= '<div class="swiper-wrapper">'; // Swiper wrapper

        while ($query->have_posts()) {
            $query->the_post();

            // Lấy ảnh đại diện của bài viết (thumbnail)
            if (has_post_thumbnail()) {
                $thumbnail = get_the_post_thumbnail(get_the_ID(), 'large', array('class' => 'card-img-top'));
            } else {
                // Hiển thị ảnh mặc định từ https://placehold.co nếu bài viết không có ảnh đại diện
                $thumbnail = '<img src="https://placehold.co/400x300/png" class="card-img-top" alt="No image available">';
            }

            // Start Swiper slide
            $output .= '<div class="swiper-slide">';

            // Wrap the entire card in an anchor tag
            $output .= '<a href="' . get_permalink() . '" class="card h-100 text-decoration-none">';

            // Display the featured image
            $output .= $thumbnail;

            // Display title
            $output .= '<div class="card-body">';
            $output .= '<h5 class="card-title">' . get_the_title() . '</h5>';
            $output .= '</div>'; // Close card-body

            $output .= '</a>'; // Close anchor tag wrapping the card
            $output .= '</div>'; // Close swiper-slide

        }

        $output .= '</div>'; // Đóng swiper-wrapper

        // Thay đổi class điều hướng và phân trang
        $output .= '<div class="box_ac">'; // Custom pagination class
        $output .= '<div class="swiper-pagination"></div>'; // Custom pagination class
        $output .= '<div class="swiper-button-next swiper-button-next-4"></div>'; // Custom next button class
        $output .= '<div class="swiper-button-prev swiper-button-prev-4"></div>'; // Custom prev button class
        $output .= '</div>';
        $output .= '</div>'; // Đóng swiper container
        $output .= '</div>'; // Đóng swiper container
    } else {
        $output = '<p>Không có tour nào được tìm thấy.</p>';
    }

    // Khôi phục dữ liệu bài viết gốc
    wp_reset_postdata();

    return $output;
}
add_shortcode('tour_slider_nuoc_ngoai', 'tour_slider_nuoc_ngoai_shortcode');


// Tạo shortcode hiển thị các bài viết từ post type 'visa_service' với layout 2 cột
function visa_service_custom_layout_shortcode($atts) {
    // Truy vấn các bài viết thuộc post type 'visa_service'
    $args = array(
        'post_type' => 'visa_service',
        'posts_per_page' => 9, // Lấy tổng cộng 9 bài viết để chia layout
    );

    $query = new WP_Query($args);

    // Bắt đầu buffer output
    ob_start();

    // Nếu có bài viết
    if ($query->have_posts()) :
        // Đếm số lượng bài viết để quản lý vị trí
        $post_count = 0;
        ?>
        <div class="visa-service-layout">
            <div class="row">
                <!-- Cột trái -->
                <div class="col-md-6 left-column">
                    <?php while ($query->have_posts() && $post_count < 1): $query->the_post(); $post_count++; ?>
                        <div class="left-top-item">
                            <div class="card">
                                <?php if (has_post_thumbnail()) : ?>
                                    <div class="card-img-top">
                                        <a href="<?php the_permalink(); ?>">
                                            <?php the_post_thumbnail('large', array('class' => 'img-fluid')); ?>
                                        </a>
                                    </div>
                                <?php endif; ?>
                                <div class="card-body">
                                    <h3 class="card-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <!-- Hiển thị ngày giờ cập nhật cuối cùng của bài viết -->
                                    <div class="post-updated-time">
                                        <small>Cập nhật lần cuối: <?php the_modified_time('d/m/Y H:i'); ?></small>
                                    </div>
                                    <div class="card-text"><?php the_excerpt(); ?></div>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>

                    <div class="left-bottom-items row">
                        <?php while ($query->have_posts() && $post_count < 4): $query->the_post(); $post_count++; ?>
                            <div class="col-md-4">
                                <div class="card">
                                    <?php if (has_post_thumbnail()) : ?>
                                        <div class="card-img-top">
                                            <a href="<?php the_permalink(); ?>">
                                                <?php the_post_thumbnail('large', array('class' => 'img-fluid')); ?>
                                            </a>
                                        </div>
                                    <?php endif; ?>
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                                                <div class="post-updated-time">
                                                    <small><?php the_modified_time('d/m/Y H:i'); ?></small>
                                                </div>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        <?php endwhile; ?>
                    </div>
                </div>

                <!-- Cột phải -->
                <div class="col-md-6 right-column">
                    <?php while ($query->have_posts() && $post_count < 9): $query->the_post(); $post_count++; ?>
                        <div class="right-item">
                            <div class="card">
                                <div class="row no-gutters align-items-center">
                                    <?php if (has_post_thumbnail()) : ?>
                                        <div class="col-4"> <!-- Chỉnh kích thước ảnh chiếm 4/12 cột -->
                                            <div class="card-img">
                                                <a href="<?php the_permalink(); ?>">
                                                    <?php the_post_thumbnail('large', array('class' => 'img-fluid')); ?>
                                                </a>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                    <div class="col-8"> <!-- Chỉnh tiêu đề bài viết chiếm 8/12 cột -->
                                        <div class="card-body">
                                            <h3 class="card-title mb-0">
                                                <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                                                <div class="post-updated-time">
                                                    <small><?php the_modified_time('d/m/Y H:i'); ?></small>
                                                </div>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>

            </div>
        </div>
    <?php
    else :
        echo '<p>No visa services found.</p>';
    endif;

    wp_reset_postdata();

    // Kết thúc buffer và trả về nội dung
    return ob_get_clean();
}
add_shortcode('visa_service_custom_layout', 'visa_service_custom_layout_shortcode');


// Tạo shortcode hiển thị các bài viết từ post type 'testimonial' với Swiper và Bootstrap 5
function testimonial_slider_shortcode($atts) {
    // Truy vấn các bài viết thuộc post type 'testimonial'
    $args = array(
        'post_type' => 'testimonial',
        'posts_per_page' => -1, // Hiển thị tất cả hoặc số lượng mong muốn
    );

    $query = new WP_Query($args);

    // Bắt đầu buffer output
    ob_start();

    // Kiểm tra xem có bài viết nào không
    if ($query->have_posts()) : ?>
        <div class="swiper-container testimonial-slider slider5">
            <div class="swiper-wrapper">
                <?php while ($query->have_posts()) : $query->the_post(); ?>
                    <div class="swiper-slide">
                        <div class="card h-100"> <!-- Sử dụng Bootstrap card -->
                            <?php if (has_post_thumbnail()) : ?>
                                <div class="card-img-top">
                                    <?php the_post_thumbnail('large', array('class' => 'img-fluid')); ?>
                                </div>
                            <?php endif; ?>
                            <div class="card-body">
                                <!-- Thêm 5 icon sao vàng bên trên tiêu đề -->
                                <div class="testimonial-stars text-center mb-2">
                                    <i class="fas fa-star" style="color: gold;"></i>
                                    <i class="fas fa-star" style="color: gold;"></i>
                                    <i class="fas fa-star" style="color: gold;"></i>
                                    <i class="fas fa-star" style="color: gold;"></i>
                                    <i class="fas fa-star" style="color: gold;"></i>
                                </div>
                                <h3 class="card-title"><?php the_title(); ?></h3>
                                <?php
                                // Hiển thị custom field ACF sau tiêu đề
                                $subtitle = get_field('testimonial');
                                if ($subtitle) : ?>
                                    <h4 class="testimonial-subtitle"><?php echo esc_html($subtitle); ?></h4>
                                <?php endif; ?>
                                <div class="card-text"><?php the_content(); ?></div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>

            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>

            <!-- Add Navigation -->
            <div class="swiper-button-next swiper-button-next-5"></div>
            <div class="swiper-button-prev swiper-button-prev-5"></div>
        </div>
    <?php else : ?>
        <p>No testimonials found.</p>
    <?php endif;

    wp_reset_postdata();

    // Kết thúc buffer và trả về nội dung
    return ob_get_clean();
}
add_shortcode('testimonial_slider', 'testimonial_slider_shortcode');

function get_breadcrumb() {
    // Start the breadcrumb with the home page link and icon
    $breadcrumb = '<a href="' . home_url() . '"><i class="bi bi-house"></i> Home</a>';

    // Add the separator icon
    $separator = ' <i class="bi bi-chevron-right"></i> ';

    // Check if we are not on the homepage
    if (!is_home()) {
        if (is_category() || is_single()) {
            // For categories and single posts
            $categories = get_the_category();
            if ($categories) {
                foreach ($categories as $category) {
                    $breadcrumb .= $separator . '<a href="' . get_category_link($category->term_id) . '">' . $category->name . '</a>';
                }
            }

            if (is_single()) {
                $breadcrumb .= $separator . get_the_title();
            }

        } elseif (is_page()) {
            // For regular WordPress pages
            global $post;
            if ($post->post_parent) {
                $parent = get_post($post->post_parent);
                $breadcrumb .= $separator . '<a href="' . get_permalink($parent->ID) . '">' . $parent->post_title . '</a>';
            }
            $breadcrumb .= $separator . get_the_title();

        } elseif (is_tag()) {
            // For tags
            $breadcrumb .= $separator . 'Tag: ' . single_tag_title('', false);

        } elseif (is_day()) {
            // For daily archives
            $breadcrumb .= $separator . get_the_time('F jS, Y');

        } elseif (is_month()) {
            // For monthly archives
            $breadcrumb .= $separator . get_the_time('F, Y');

        } elseif (is_year()) {
            // For yearly archives
            $breadcrumb .= $separator . get_the_time('Y');

        } elseif (is_author()) {
            // For author pages
            $breadcrumb .= $separator . 'Author: ' . get_the_author();

        } elseif (is_search()) {
            // For search results
            $breadcrumb .= $separator . 'Search Results for: ' . get_search_query();

        } elseif (is_404()) {
            // For 404 pages
            $breadcrumb .= $separator . 'Page Not Found';

        } elseif (is_tax()) {
            // For custom taxonomies
            $taxonomy = get_queried_object();
            if ($taxonomy && !is_wp_error($taxonomy)) {
                $breadcrumb .= $separator . $taxonomy->name;
            }
        }
    }

    // Output the breadcrumb
    echo '<nav class="breadcrumb">' . $breadcrumb . '</nav>';
}



// Custom rewrite rules for 'tour' post type and 'tour_category' taxonomy
function custom_rewrite_rules() {
    // Add rewrite rules for custom post type 'tour' and 'tour_category'
    add_rewrite_rule(
        '^tours/category/([^/]*)/?',
        'index.php?tour_category=$matches[1]&post_type=tour',
        'top'
    );
}
add_action('init', 'custom_rewrite_rules');

// Function to modify excerpt length
function custom_excerpt_length($length) {
    return 20; // Set your desired number of words
}
add_filter('excerpt_length', 'custom_excerpt_length');

// Function to modify excerpt "read more" text
function custom_excerpt_more($more) {
    return '...'; // Replace the default […] with ...
}
add_filter('excerpt_more', 'custom_excerpt_more');


// Register the shortcode
add_shortcode('tour_booking_form', 'tour_booking_form_shortcode');
function tour_booking_form_shortcode($atts) {
    $atts = shortcode_atts(['tour_id' => 0], $atts, 'tour_booking_form');
    // Lấy tiêu đề bài viết dựa trên tour_id
    $tour_title = get_the_title($atts['tour_id']);
    ob_start(); // Start output buffering
    ?>
    <div class="modal fade" id="bookingModal" tabindex="-1" aria-labelledby="bookingModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg popup_booking_content">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="bookingModalLabel">
                        <?php echo esc_html($tour_title); // Hiển thị tiêu đề bài viết ?>
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Thông báo lỗi -->
                    <div id="errorMessages" class="alert alert-danger" style="display: none;"></div>
                    <!-- Thông báo thành công -->
                    <div id="successMessage" class="alert alert-success" style="display: none;"></div>
                    <!-- Biểu tượng loading -->
                    <div id="loadingIcon" style="display: none; text-align: center; margin: 10px;">
                        <div class="spinner-border text-primary" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>
                    </div>
                    <form id="tourBookingForm">
                        <input type="hidden" id="tourId" name="tour_id" value="<?php echo esc_attr($atts['tour_id']); ?>">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="departureDate" class="form-label">Ngày khởi hành:</label>
                                <input type="date" class="form-control" id="departureDate" name="departureDate">
                            </div>
                            <div class="col-md-6">
                                <label for="departureLocation" class="form-label">Điểm khởi hành:</label>
                                <input type="text" class="form-control" id="departureLocation" name="departureLocation" placeholder="Hồ Chí Minh">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="adults" class="form-label">Người lớn:</label>
                                <select class="form-select" id="adults" name="adults">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="children" class="form-label">Trẻ em (2-12):</label>
                                <select class="form-select" id="children" name="children">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="infants" class="form-label">Em bé (&lt;2):</label>
                                <select class="form-select" id="infants" name="infants">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="honorific" class="form-label">Quý danh:</label>
                                <select class="form-select" id="honorific" name="honorific">
                                    <option value="Ông">Ông</option>
                                    <option value="Bà">Bà</option>
                                    <option value="Cô">Cô</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="fullName" class="form-label">Họ tên: <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="fullName" name="fullName" required>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Số điện thoại: <span class="text-danger">*</span></label>
                                <input type="tel" class="form-control" id="phone" name="phone" required>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email:</label>
                                <input type="email" class="form-control" id="email" name="email">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="specialRequest" class="form-label">Yêu cầu đặc biệt:</label>
                            <textarea class="form-control" id="specialRequest" name="specialRequest" rows="3"></textarea>
                        </div>
                        <button type="button" class="btn btn-primary" id="submitBooking">Gửi yêu cầu</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('submitBooking').addEventListener('click', function() {
            const form = document.getElementById('tourBookingForm');
            const formData = new FormData(form);
            const submitButton = document.getElementById('submitBooking'); // Nút gửi yêu cầu

            // Lấy các trường cần kiểm tra
            const departureDate = formData.get('departureDate');
            const departureLocation = formData.get('departureLocation');
            const fullName = formData.get('fullName');
            const phone = formData.get('phone');

            // Biến để lưu các thông báo lỗi
            let errorMessages = [];

            // Kiểm tra các trường
            if (!departureDate) errorMessages.push('Vui lòng chọn ngày khởi hành.');
            if (!departureLocation) errorMessages.push('Vui lòng nhập điểm khởi hành.');
            if (!fullName) errorMessages.push('Vui lòng nhập họ tên.');
            if (!phone) errorMessages.push('Vui lòng nhập số điện thoại.');

            // Nếu có lỗi, hiển thị và ngừng gửi
            const errorDiv = document.getElementById('errorMessages');
            if (errorMessages.length > 0) {
                errorDiv.style.display = 'block';
                errorDiv.innerHTML = errorMessages.join('<br>');
                return; // Ngừng nếu có lỗi
            } else {
                errorDiv.style.display = 'none';
            }

            // Thêm action cho AJAX request
            formData.append('action', 'tour_booking_submit');

            // Hiển thị icon loading
            document.getElementById('loadingIcon').style.display = 'block';

            submitButton.disabled = true;

            // Gửi dữ liệu nếu không có lỗi
            fetch('<?php echo admin_url('admin-ajax.php'); ?>', {
                method: 'POST',
                body: new URLSearchParams(formData),
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
            })
                .then(response => response.json())
                .then(data => {
                    // Ẩn icon loading
                    document.getElementById('loadingIcon').style.display = 'none';
                    submitButton.disabled = false;

                    if (data.success) {
                        // Hiển thị thông báo thành công và reset form
                        const successDiv = document.getElementById('successMessage');
                        successDiv.style.display = 'block';
                        successDiv.innerText = "Gửi yêu cầu thành công!";
                        form.reset();

                        // Tự động ẩn thông báo sau 3 giây
                        setTimeout(() => successDiv.style.display = 'none', 3000);
                    } else {
                        // Hiển thị thông báo lỗi từ server nếu có
                        errorDiv.style.display = 'block';
                        errorDiv.innerHTML = data.data || "Gửi yêu cầu không thành công, vui lòng thử lại.";

                        // Tự động ẩn thông báo lỗi sau 3 giây
                        setTimeout(() => errorDiv.style.display = 'none', 3000);
                    }
                })
                .catch(error => {
                    // Ẩn icon loading và hiển thị lỗi khi có vấn đề trong quá trình gửi
                    document.getElementById('loadingIcon').style.display = 'none';
                    errorDiv.style.display = 'block';
                    submitButton.disabled = false;
                    errorDiv.innerHTML = "Đã xảy ra lỗi khi gửi yêu cầu.";
                    console.error('Error:', error);
                });
        });

        // Reset form khi modal được đóng
        const bookingModal = document.getElementById('bookingModal');
        bookingModal.addEventListener('hidden.bs.modal', function() {
            const form = document.getElementById('tourBookingForm');
            form.reset(); // Đặt lại các trường trong form
            document.getElementById('errorMessages').style.display = 'none';
            document.getElementById('successMessage').style.display = 'none';
        });
    </script>
    <?php
    return ob_get_clean(); // Return the output buffer content
}


add_action('wp_ajax_tour_booking_submit', 'tour_booking_submit');
add_action('wp_ajax_nopriv_tour_booking_submit', 'tour_booking_submit');

function tour_booking_submit() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'tour_booking';

    // Kiểm tra các trường bắt buộc
    if (empty($_POST['departureDate']) || empty($_POST['departureLocation']) || empty($_POST['fullName']) || empty($_POST['phone'])) {
        wp_send_json_error('Missing required fields.');
        wp_die();
    }

    // Chuẩn bị dữ liệu để chèn vào bảng
    $data = [
        'tour_id' => intval($_POST['tour_id']),
        'departure_date' => sanitize_text_field($_POST['departureDate']),
        'departure_location' => sanitize_text_field($_POST['departureLocation']),
        'adults' => intval($_POST['adults']),
        'children' => intval($_POST['children']),
        'infants' => intval($_POST['infants']),
        'honorific' => sanitize_text_field($_POST['honorific']),
        'full_name' => sanitize_text_field($_POST['fullName']),
        'phone' => sanitize_text_field($_POST['phone']),
        'email' => sanitize_email($_POST['email']),
        'special_request' => sanitize_textarea_field($_POST['specialRequest']),
        'submitted_at' => current_time('mysql')
    ];

    // Chèn dữ liệu vào bảng
    $inserted = $wpdb->insert($table_name, $data);

    // Kiểm tra nếu chèn thành công
    if ($inserted) {
        // Gửi email thông báo cho quản trị viên
        $tour_title = get_the_title($data['tour_id']);
        $admin_email = get_option('admin_email');
        $subject = "New Booking Submission for " . $tour_title;
        $message = "
            <h2>Booking Details</h2>
            <p><strong>Tour:</strong> {$tour_title}</p>
            <p><strong>Departure Date:</strong> {$data['departure_date']}</p>
            <p><strong>Departure Location:</strong> {$data['departure_location']}</p>
            <p><strong>Adults:</strong> {$data['adults']}</p>
            <p><strong>Children:</strong> {$data['children']}</p>
            <p><strong>Infants:</strong> {$data['infants']}</p>
            <p><strong>Honorific:</strong> {$data['honorific']}</p>
            <p><strong>Full Name:</strong> {$data['full_name']}</p>
            <p><strong>Phone:</strong> {$data['phone']}</p>
            <p><strong>Email:</strong> {$data['email']}</p>
            <p><strong>Special Request:</strong> {$data['special_request']}</p>
            <p><strong>Submitted At:</strong> {$data['submitted_at']}</p>
        ";
        // Headers với tên người gửi là Linh Chi Travel
        $headers = [
            'Content-Type: text/html; charset=UTF-8',
            'From: Linh Chi Travel <no-reply@develop.io.vn>',
            'Reply-To: Linh Chi Travel <no-reply@develop.io.vn>'
        ];

        // Gửi email đến quản trị viên
        wp_mail($admin_email, $subject, $message, $headers);

        // Gửi email xác nhận đến người dùng
        $user_subject = "Xác nhận đặt tour: " . $tour_title;
        $user_message = "
            <h2>Xác nhận đặt tour</h2>
            <p>Chào {$data['honorific']} {$data['full_name']},</p>
            <p>Cảm ơn bạn đã đặt tour với chúng tôi! Đây là thông tin đặt tour của bạn:</p>
            <p><strong>Tour:</strong> {$tour_title}</p>
            <p><strong>Ngày khởi hành:</strong> {$data['departure_date']}</p>
            <p><strong>Điểm khởi hành:</strong> {$data['departure_location']}</p>
            <p><strong>Số lượng người lớn:</strong> {$data['adults']}</p>
            <p><strong>Số lượng trẻ em:</strong> {$data['children']}</p>
            <p><strong>Số lượng em bé:</strong> {$data['infants']}</p>
            <p><strong>Yêu cầu đặc biệt:</strong> {$data['special_request']}</p>
            <p><strong>Thời gian gửi:</strong> {$data['submitted_at']}</p>
            <p>Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất. Cảm ơn bạn đã chọn dịch vụ của chúng tôi!</p>
            <p>Trân trọng,<br>Đội ngũ Du Lịch</p>
        ";

        // Lấy danh sách email nhận thông báo từ cài đặt
        $additional_emails = get_option('tour_booking_emails', []);
        $emails = array_merge([$admin_email], $additional_emails);

        foreach ($emails as $email) {
            wp_mail(trim($email), $subject, $message, $headers);
        }
        // Dữ liệu để đồng bộ lên Google Sheets
        $formData = [
            "tour_id" => $data['tour_id'],
            "tour_title" => $tour_title,
            "departure_date" => $data['departure_date'],
            "departure_location" => $data['departure_location'],
            "adults" => $data['adults'],
            "children" => $data['children'],
            "infants" => $data['infants'],
            "honorific" => $data['honorific'],
            "full_name" => $data['full_name'],
            "phone" => $data['phone'],
            "email" => $data['email'],
            "special_request" => $data['special_request'],
            "submitted_at" => $data['submitted_at']
        ];

        // URL của Google Apps Script
        $url = "https://script.google.com/macros/s/AKfycbzxeekHi7npfEMHQiK_jwJ-2Z6GFpED0jiaFjP6HLbWgNYTUucPe5GguJROkI8SwYD5/exec";

        // Khởi tạo cURL để đồng bộ dữ liệu
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($formData));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);

        // Thực hiện gửi request
        $response = curl_exec($ch);
        curl_close($ch);

        // Kiểm tra phản hồi từ Google Sheets
        if ($response == "Thành công") {
            wp_send_json_success('Booking saved successfully and synced with Google Sheets.');
        } else {
            wp_send_json_error('Booking saved, but failed to sync with Google Sheets.');
        }
    } else {
        wp_send_json_error('Error saving booking.');
    }

    wp_die(); // Kết thúc AJAX request
}

// Tạo menu quản trị tùy chỉnh
add_action('admin_menu', 'add_email_notification_menu');
function add_email_notification_menu() {
    add_options_page(
        'Tour Booking Email Settings',
        'Tour Booking Emails',
        'manage_options',
        'tour_booking_email_settings',
        'render_email_settings_page'
    );
}

// Giao diện trang cài đặt email
function render_email_settings_page() {
    // Lấy danh sách email đã lưu và đảm bảo nó là một mảng
    $stored_emails = get_option('tour_booking_emails', []);
    $stored_emails = is_array($stored_emails) ? $stored_emails : [];

    // Xử lý thêm email
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['new_email'])) {
        $new_email = sanitize_email($_POST['new_email']);

        if ($new_email && is_email($new_email)) {
            // Thêm email vào danh sách nếu chưa tồn tại
            if (!in_array($new_email, $stored_emails)) {
                $stored_emails[] = $new_email;
                update_option('tour_booking_emails', $stored_emails);
                echo '<div class="updated"><p>Email added successfully.</p></div>';
            } else {
                echo '<div class="error"><p>Email already exists in the list.</p></div>';
            }
        } else {
            echo '<div class="error"><p>Invalid email address.</p></div>';
        }
    }

    // Xử lý xóa email
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['delete_email'])) {
        $delete_email = sanitize_email($_POST['delete_email']);
        $stored_emails = array_filter($stored_emails, function($email) use ($delete_email) {
            return $email !== $delete_email;
        });
        update_option('tour_booking_emails', $stored_emails);
        echo '<div class="updated"><p>Email deleted successfully.</p></div>';
    }

    ?>

    <div class="wrap">
        <h1>Email Notification Settings</h1>

        <form method="post" action="">
            <table class="form-table">
                <tr valign="top">
                    <th scope="row">Add New Email</th>
                    <td>
                        <input type="email" name="new_email" value="" placeholder="Enter email" required style="width: 100%; max-width: 400px;" />
                        <?php submit_button('Add Email', 'primary', 'submit', false); ?>
                    </td>
                </tr>
            </table>
        </form>

        <h2>Current Emails Receiving Notifications:</h2>
        <ul>
            <?php
            if (!empty($stored_emails)) {
                foreach ($stored_emails as $email) {
                    echo '<li>' . esc_html($email) . ' 
                        <form method="post" action="" style="display:inline;">
                            <input type="hidden" name="delete_email" value="' . esc_attr($email) . '">
                            <button type="submit" class="button-link-delete">Delete</button>
                        </form>
                    </li>';
                }
            } else {
                echo '<p>No additional emails added.</p>';
            }
            ?>
        </ul>
    </div>
    <?php
}


// Create an admin menu for Tour Bookings
add_action('admin_menu', 'tour_booking_admin_menu');
function tour_booking_admin_menu() {
    add_menu_page(
        'Tour Bookings',           // Page title
        'Tour Bookings',           // Menu title
        'manage_options',          // Capability
        'tour-booking-submissions',// Menu slug
        'tour_booking_admin_page', // Callback function to display the page
        'dashicons-clipboard',     // Icon (WordPress Dashicons)
        20                         // Position
    );
}

// Display Tour Booking submissions in the admin
function tour_booking_admin_page() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'tour_booking';
    $results = $wpdb->get_results("SELECT * FROM $table_name ORDER BY submitted_at DESC");

    // Page title and table headers
    echo '<div class="wrap"><h1>Tour Booking Submissions</h1>';
    echo '<table class="wp-list-table widefat fixed striped"><thead><tr>';
    echo '<th>ID</th><th>Tên Tour</th><th>Departure Date</th><th>Location</th><th>Adults</th><th>Children</th><th>Infants</th>';
    echo '<th>Full Name</th><th>Phone</th><th>Email</th><th>Submitted At</th>';
    echo '</tr></thead><tbody>';

    // Display each row in the table
    foreach ($results as $row) {
        $tour_title = get_the_title($row->tour_id); // Lấy tên của tour bằng ID
        echo "<tr>";
        echo "<td>{$row->id}</td>";
        echo "<td>{$tour_title}</td>";
        echo "<td>{$row->departure_date}</td>";
        echo "<td>{$row->departure_location}</td>";
        echo "<td>{$row->adults}</td>";
        echo "<td>{$row->children}</td>";
        echo "<td>{$row->infants}</td>";
        echo "<td>{$row->full_name}</td>";
        echo "<td>{$row->phone}</td>";
        echo "<td>{$row->email}</td>";
        echo "<td>{$row->submitted_at}</td>";
        echo "</tr>";
    }

    echo '</tbody></table></div>';
}

function ajax_tour_search_form() {
    ob_start();
    ?>
    <div class="form-search-tour">
        <div class="container d-flex justify-content-center">
            <div class="col-12 col-md-6">
                <form id="tour-search-form" action="<?php echo home_url('/'); ?>" method="get" class="form-inline position-relative">
                    <div class="input-group">
                        <input type="text" id="tour-search-input" name="s" placeholder="Tìm kiếm tour..." autocomplete="off" class="form-control" aria-label="Tìm kiếm tour" aria-describedby="button-addon2">
                        <input type="hidden" name="post_type" value="tour" />
                        <button class="btn btn-info" type="submit" id="button-addon2">
                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                        </button>
                    </div>
                    <div id="tour-search-results" class="list-group position-absolute w-100 mt-1"></div>
                </form>
            </div>
        </div>
    </div>
    <?php
    return ob_get_clean();
}
add_shortcode('ajax_tour_search_form', 'ajax_tour_search_form');

function ajax_tour_search() {
    $query = isset($_POST['query']) ? sanitize_text_field($_POST['query']) : '';

    $args = array(
        'post_type' => 'tour',
        's' => $query,
        'posts_per_page' => 5,
    );

    $tour_query = new WP_Query($args);

    if ($tour_query->have_posts()) {
        while ($tour_query->have_posts()) {
            $tour_query->the_post();
            echo '<a href="' . get_permalink() . '" class="list-group-item list-group-item-action">' . get_the_title() . '</a>';
        }
    } else {
        echo '<p class="list-group-item">Không tìm thấy kết quả nào.</p>';
    }

    wp_die();
}
add_action('wp_ajax_tour_search', 'ajax_tour_search');
add_action('wp_ajax_nopriv_tour_search', 'ajax_tour_search');



















