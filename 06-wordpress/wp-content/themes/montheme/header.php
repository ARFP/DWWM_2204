<!-- Entête du thème -->
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
    <link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>">
    <!-- <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css"> -->
</head>
<body <?php body_class(); ?>>

<?php wp_body_open(); ?>

<header class="header">
    <a href="<?php echo home_url('/'); ?>">
        <img class="logo" src="<?php echo get_template_directory_uri(); ?>/images/logo.svg" alt="Logo">
        <?php bloginfo('name'); ?>
    </a>
</header>
