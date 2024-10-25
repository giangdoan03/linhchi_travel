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
        'posts_per_page' => -1, // Điều chỉnh số lượng bài viết
        'meta_query' => array(
            array(
                'key' => 'show_tour_hot', // Tên trường tùy chỉnh
                'value' => array('Yes', '1'), // Kiểm tra cả "Yes" và '1'
                'compare' => '='
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
            $output .= '<div class="swiper-slide">';
            $output .= '<div class="card h-100">';

            // Hiển thị ảnh đại diện
            $output .= $thumbnail;

            // Hiển thị tiêu đề và liên kết
            $output .= '<div class="card-body">';
            $output .= '<h5 class="card-title">' . get_the_title() . '</h5>';
            $output .= '<a href="' . get_permalink() . '" class="btn btn-outline-primary">Xem chi tiết</a>';
            $output .= '</div>'; // Đóng card-body

            $output .= '</div>'; // Đóng card
            $output .= '</div>'; // Đóng swiper-slide
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

    // Thêm trang con tùy chọn (nếu cần)
    acf_add_options_sub_page(array(
        'page_title'    => 'Cài đặt tiêu đề',
        'menu_title'    => 'Tiêu đề',
        'parent_slug'   => 'acf-general-settings',
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

            // Mỗi bài viết sẽ là một Swiper slide
            $output .= '<div class="swiper-slide">';
            $output .= '<div class="card h-100">';

            // Hiển thị ảnh đại diện
            $output .= $thumbnail;

            // Hiển thị tiêu đề và liên kết
            $output .= '<div class="card-body">';
            $output .= '<h5 class="card-title">' . get_the_title() . '</h5>';
            $output .= '<a href="' . get_permalink() . '" class="btn btn-outline-primary">Xem chi tiết</a>';
            $output .= '</div>'; // Đóng card-body

            $output .= '</div>'; // Đóng card
            $output .= '</div>'; // Đóng swiper-slide
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

            // Mỗi bài viết sẽ là một Swiper slide
            $output .= '<div class="swiper-slide">';
            $output .= '<div class="card h-100">';

            // Hiển thị ảnh đại diện
            $output .= $thumbnail;

            // Hiển thị tiêu đề và liên kết
            $output .= '<div class="card-body">';
            $output .= '<h5 class="card-title">' . get_the_title() . '</h5>';
            $output .= '<a href="' . get_permalink() . '" class="btn btn-outline-primary">Xem chi tiết</a>';
            $output .= '</div>'; // Đóng card-body

            $output .= '</div>'; // Đóng card
            $output .= '</div>'; // Đóng swiper-slide
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

















