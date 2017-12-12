-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Lun 11 Décembre 2017 à 17:05
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp2_commentmeta`
--

CREATE TABLE `wp2_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp2_comments`
--

CREATE TABLE `wp2_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_comments`
--

INSERT INTO `wp2_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-30 12:08:34', '2017-11-30 11:08:34', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp2_links`
--

CREATE TABLE `wp2_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp2_options`
--

CREATE TABLE `wp2_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_options`
--

INSERT INTO `wp2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress2', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress2', 'yes'),
(3, 'blogname', 'Training', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paulmauve@outlook.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:155:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"slider-locations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?slider-locations=$matches[1]&feed=$matches[2]\";s:52:\"slider-locations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?slider-locations=$matches[1]&feed=$matches[2]\";s:33:\"slider-locations/([^/]+)/embed/?$\";s:49:\"index.php?slider-locations=$matches[1]&embed=true\";s:45:\"slider-locations/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?slider-locations=$matches[1]&paged=$matches[2]\";s:27:\"slider-locations/([^/]+)/?$\";s:38:\"index.php?slider-locations=$matches[1]\";s:53:\"project-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project-type=$matches[1]&feed=$matches[2]\";s:48:\"project-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project-type=$matches[1]&feed=$matches[2]\";s:29:\"project-type/([^/]+)/embed/?$\";s:45:\"index.php?project-type=$matches[1]&embed=true\";s:41:\"project-type/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?project-type=$matches[1]&paged=$matches[2]\";s:23:\"project-type/([^/]+)/?$\";s:34:\"index.php?project-type=$matches[1]\";s:59:\"project-attributes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?project-attributes=$matches[1]&feed=$matches[2]\";s:54:\"project-attributes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?project-attributes=$matches[1]&feed=$matches[2]\";s:35:\"project-attributes/([^/]+)/embed/?$\";s:51:\"index.php?project-attributes=$matches[1]&embed=true\";s:47:\"project-attributes/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?project-attributes=$matches[1]&paged=$matches[2]\";s:29:\"project-attributes/([^/]+)/?$\";s:40:\"index.php?project-attributes=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"home_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home_slider/([^/]+)/embed/?$\";s:44:\"index.php?home_slider=$matches[1]&embed=true\";s:32:\"home_slider/([^/]+)/trackback/?$\";s:38:\"index.php?home_slider=$matches[1]&tb=1\";s:40:\"home_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&paged=$matches[2]\";s:47:\"home_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&cpage=$matches[2]\";s:36:\"home_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?home_slider=$matches[1]&page=$matches[2]\";s:28:\"home_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"nectar_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"nectar_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"nectar_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"nectar_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"nectar_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"nectar_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"nectar_slider/([^/]+)/embed/?$\";s:46:\"index.php?nectar_slider=$matches[1]&embed=true\";s:34:\"nectar_slider/([^/]+)/trackback/?$\";s:40:\"index.php?nectar_slider=$matches[1]&tb=1\";s:42:\"nectar_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?nectar_slider=$matches[1]&paged=$matches[2]\";s:49:\"nectar_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?nectar_slider=$matches[1]&cpage=$matches[2]\";s:38:\"nectar_slider/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?nectar_slider=$matches[1]&page=$matches[2]\";s:30:\"nectar_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"nectar_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"nectar_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"nectar_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"nectar_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"nectar_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:35:\"js_composer_salient/js_composer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'salient', 'yes'),
(41, 'stylesheet', 'salient', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp2_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:12:\"page-sidebar\";a:0:{}s:19:\"woocommerce-sidebar\";a:0:{}s:20:\"nectar-extra-sidebar\";a:0:{}s:13:\"footer-area-1\";a:0:{}s:13:\"footer-area-2\";a:0:{}s:13:\"footer-area-3\";a:0:{}s:13:\"footer-area-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1512774516;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512817762;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512817765;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512818631;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512040288;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(141, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"paulmauve@outlook.fr\";s:7:\"version\";s:5:\"4.9.1\";s:9:\"timestamp\";i:1512040151;}', 'no'),
(143, 'current_theme', 'Salient', 'yes'),
(144, 'theme_mods_salient', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"top_nav\";i:3;s:13:\"secondary_nav\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(146, 'widget_nectar_popular_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(148, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"630\";s:4:\"crop\";i:1;}', 'yes'),
(149, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"130\";s:4:\"crop\";i:1;}', 'yes');
INSERT INTO `wp2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(150, 'salient_redux', 'a:373:{s:8:\"last_tab\";s:1:\"1\";s:10:\"theme-skin\";s:6:\"ascend\";s:7:\"favicon\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:14:\"button-styling\";s:7:\"default\";s:16:\"theme-icon-style\";s:7:\"minimal\";s:16:\"overall-bg-color\";s:7:\"#ffffff\";s:18:\"overall-font-color\";s:0:\"\";s:11:\"body-border\";s:1:\"1\";s:17:\"body-border-color\";s:7:\"#452a89\";s:16:\"body-border-size\";s:1:\"2\";s:11:\"back-to-top\";s:1:\"1\";s:18:\"back-to-top-mobile\";s:1:\"0\";s:16:\"smooth-scrolling\";s:1:\"0\";s:18:\"one-page-scrolling\";s:1:\"1\";s:10:\"responsive\";s:1:\"1\";s:14:\"ext_responsive\";s:1:\"1\";s:19:\"max_container_width\";s:4:\"1425\";s:15:\"lightbox_script\";s:8:\"magnific\";s:16:\"default-lightbox\";s:1:\"0\";s:23:\"column_animation_easing\";s:12:\"easeOutCubic\";s:23:\"column_animation_timing\";s:3:\"750\";s:20:\"external-dynamic-css\";s:1:\"0\";s:16:\"google-analytics\";s:0:\"\";s:19:\"google-maps-api-key\";s:0:\"\";s:10:\"custom-css\";s:0:\"\";s:11:\"disable_tgm\";s:1:\"0\";s:22:\"disable_home_slider_pt\";s:1:\"0\";s:24:\"disable_nectar_slider_pt\";s:1:\"0\";s:12:\"accent-color\";s:7:\"#3452ff\";s:13:\"extra-color-1\";s:7:\"#ff1053\";s:13:\"extra-color-2\";s:7:\"#2AC4EA\";s:13:\"extra-color-3\";s:7:\"#333333\";s:20:\"extra-color-gradient\";a:2:{s:4:\"from\";s:7:\"#3452ff\";s:2:\"to\";s:7:\"#ff1053\";}s:22:\"extra-color-gradient-2\";a:2:{s:4:\"from\";s:7:\"#2AC4EA\";s:2:\"to\";s:7:\"#32d6ff\";}s:12:\"boxed_layout\";s:1:\"0\";s:16:\"background-color\";s:7:\"#f1f1f1\";s:16:\"background_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:17:\"background-repeat\";s:0:\"\";s:19:\"background-position\";s:0:\"\";s:21:\"background-attachment\";s:0:\"\";s:16:\"background-cover\";s:1:\"0\";s:19:\"extended-theme-font\";s:1:\"0\";s:22:\"navigation_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:31:\"navigation_dropdown_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:24:\"page_heading_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:33:\"page_heading_subtitle_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:26:\"off_canvas_nav_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:34:\"off_canvas_nav_subtext_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:16:\"body_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h1_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h2_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h3_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h4_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h5_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h6_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:13:\"i_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:17:\"label_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:33:\"nectar_slider_heading_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:31:\"home_slider_caption_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:23:\"testimonial_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:28:\"sidebar_footer_h_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:29:\"portfolio_filters_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:29:\"portfolio_caption_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:25:\"team_member_h_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:26:\"nectar_dropcap_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:41:\"nectar_sidebar_footer_headers_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:33:\"use-responsive-heading-typography\";s:0:\"\";s:26:\"h1-small-desktop-font-size\";s:2:\"75\";s:19:\"h1-tablet-font-size\";s:2:\"70\";s:18:\"h1-phone-font-size\";s:2:\"65\";s:26:\"h2-small-desktop-font-size\";s:2:\"85\";s:19:\"h2-tablet-font-size\";s:2:\"80\";s:18:\"h2-phone-font-size\";s:2:\"70\";s:26:\"h3-small-desktop-font-size\";s:2:\"85\";s:19:\"h3-tablet-font-size\";s:2:\"80\";s:18:\"h3-phone-font-size\";s:2:\"70\";s:26:\"h4-small-desktop-font-size\";s:3:\"100\";s:19:\"h4-tablet-font-size\";s:2:\"90\";s:18:\"h4-phone-font-size\";s:2:\"90\";s:26:\"h5-small-desktop-font-size\";s:3:\"100\";s:19:\"h5-tablet-font-size\";s:3:\"100\";s:18:\"h5-phone-font-size\";s:3:\"100\";s:26:\"h6-small-desktop-font-size\";s:3:\"100\";s:19:\"h6-tablet-font-size\";s:3:\"100\";s:18:\"h6-phone-font-size\";s:3:\"100\";s:8:\"use-logo\";s:0:\"\";s:4:\"logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:11:\"retina-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:11:\"logo-height\";s:0:\"\";s:18:\"mobile-logo-height\";s:0:\"\";s:14:\"header-padding\";s:0:\"\";s:19:\"header-remove-fixed\";s:1:\"0\";s:19:\"header-mobile-fixed\";s:1:\"1\";s:29:\"header-menu-mobile-breakpoint\";s:4:\"1000\";s:17:\"header-box-shadow\";s:5:\"small\";s:24:\"header-menu-item-spacing\";s:2:\"10\";s:17:\"header-bg-opacity\";s:3:\"100\";s:12:\"header-color\";s:5:\"light\";s:23:\"header-background-color\";s:7:\"#ffffff\";s:17:\"header-font-color\";s:7:\"#888888\";s:23:\"header-font-hover-color\";s:7:\"#27CCC0\";s:32:\"header-dropdown-background-color\";s:7:\"#1F1F1F\";s:38:\"header-dropdown-background-hover-color\";s:7:\"#313233\";s:26:\"header-dropdown-font-color\";s:7:\"#CCCCCC\";s:32:\"header-dropdown-font-hover-color\";s:7:\"#27CCC0\";s:34:\"header-dropdown-heading-font-color\";s:7:\"#ffffff\";s:40:\"header-dropdown-heading-font-hover-color\";s:7:\"#ffffff\";s:22:\"header-separator-color\";s:7:\"#eeeeee\";s:33:\"secondary-header-background-color\";s:7:\"#F8F8F8\";s:27:\"secondary-header-font-color\";s:7:\"#666666\";s:33:\"secondary-header-font-hover-color\";s:7:\"#222222\";s:45:\"header-slide-out-widget-area-background-color\";s:7:\"#3452ff\";s:47:\"header-slide-out-widget-area-background-color-2\";s:0:\"\";s:41:\"header-slide-out-widget-area-header-color\";s:7:\"#ffffff\";s:34:\"header-slide-out-widget-area-color\";s:7:\"#eefbfa\";s:40:\"header-slide-out-widget-area-hover-color\";s:7:\"#ffffff\";s:43:\"header-slide-out-widget-area-close-bg-color\";s:7:\"#ff1053\";s:45:\"header-slide-out-widget-area-close-icon-color\";s:7:\"#ffffff\";s:13:\"header_format\";s:7:\"default\";s:16:\"header-fullwidth\";s:1:\"0\";s:21:\"header-disable-search\";s:1:\"0\";s:26:\"header-disable-ajax-search\";s:1:\"1\";s:13:\"header_layout\";s:8:\"standard\";s:23:\"enable_social_in_header\";s:1:\"0\";s:24:\"use-facebook-icon-header\";s:0:\"\";s:23:\"use-twitter-icon-header\";s:0:\"\";s:27:\"use-google-plus-icon-header\";s:0:\"\";s:21:\"use-vimeo-icon-header\";s:0:\"\";s:24:\"use-dribbble-icon-header\";s:0:\"\";s:25:\"use-pinterest-icon-header\";s:0:\"\";s:23:\"use-youtube-icon-header\";s:0:\"\";s:22:\"use-tumblr-icon-header\";s:0:\"\";s:24:\"use-linkedin-icon-header\";s:0:\"\";s:19:\"use-rss-icon-header\";s:0:\"\";s:23:\"use-behance-icon-header\";s:0:\"\";s:25:\"use-instagram-icon-header\";s:0:\"\";s:22:\"use-flickr-icon-header\";s:0:\"\";s:23:\"use-spotify-icon-header\";s:0:\"\";s:22:\"use-github-icon-header\";s:0:\"\";s:29:\"use-stackexchange-icon-header\";s:0:\"\";s:26:\"use-soundcloud-icon-header\";s:0:\"\";s:18:\"use-vk-icon-header\";s:0:\"\";s:20:\"use-vine-icon-header\";s:0:\"\";s:21:\"use-houzz-icon-header\";s:0:\"\";s:20:\"use-yelp-icon-header\";s:0:\"\";s:21:\"use-email-icon-header\";s:0:\"\";s:21:\"use-phone-icon-header\";s:0:\"\";s:18:\"transparent-header\";s:1:\"0\";s:20:\"header-starting-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:27:\"header-starting-retina-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:25:\"header-starting-logo-dark\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:32:\"header-starting-retina-logo-dark\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:21:\"header-starting-color\";s:7:\"#ffffff\";s:29:\"header-transparent-dark-color\";s:7:\"#000000\";s:28:\"header-permanent-transparent\";s:1:\"0\";s:24:\"header-inherit-row-color\";s:1:\"0\";s:20:\"header-remove-border\";s:1:\"0\";s:19:\"header-hover-effect\";s:18:\"animated_underline\";s:24:\"header-hide-until-needed\";s:0:\"\";s:23:\"header-resize-on-scroll\";s:1:\"1\";s:34:\"header-resize-on-scroll-shrink-num\";s:0:\"\";s:21:\"header-dropdown-style\";s:7:\"classic\";s:23:\"header-dropdown-opacity\";s:3:\"100\";s:21:\"header-megamenu-width\";s:9:\"contained\";s:34:\"header-megamenu-remove-transparent\";s:1:\"0\";s:34:\"header-slide-out-widget-area-style\";s:20:\"slide-out-from-right\";s:46:\"header-slide-out-widget-area-dropdown-behavior\";s:7:\"default\";s:28:\"header-slide-out-widget-area\";s:1:\"0\";s:35:\"header-slide-out-widget-area-social\";s:1:\"0\";s:40:\"header-slide-out-widget-area-bottom-text\";s:0:\"\";s:44:\"header-slide-out-widget-area-overlay-opacity\";s:4:\"dark\";s:46:\"header-slide-out-widget-area-top-nav-in-mobile\";s:1:\"0\";s:23:\"enable-main-footer-area\";s:1:\"1\";s:14:\"footer_columns\";s:1:\"4\";s:19:\"footer-custom-color\";s:1:\"0\";s:23:\"footer-background-color\";s:7:\"#313233\";s:17:\"footer-font-color\";s:7:\"#CCCCCC\";s:27:\"footer-secondary-font-color\";s:7:\"#777777\";s:33:\"footer-copyright-background-color\";s:7:\"#1F1F1F\";s:27:\"footer-copyright-font-color\";s:7:\"#777777\";s:33:\"footer-copyright-icon-hover-color\";s:7:\"#ffffff\";s:21:\"footer-copyright-line\";s:0:\"\";s:17:\"footer-full-width\";s:1:\"0\";s:13:\"footer-reveal\";s:1:\"0\";s:20:\"footer-reveal-shadow\";s:4:\"none\";s:29:\"disable-copyright-footer-area\";s:0:\"\";s:21:\"footer-copyright-text\";s:0:\"\";s:22:\"disable-auto-copyright\";s:0:\"\";s:23:\"footer-background-image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:31:\"footer-background-image-overlay\";s:3:\"0.8\";s:17:\"use-facebook-icon\";s:0:\"\";s:16:\"use-twitter-icon\";s:0:\"\";s:20:\"use-google-plus-icon\";s:0:\"\";s:14:\"use-vimeo-icon\";s:0:\"\";s:17:\"use-dribbble-icon\";s:0:\"\";s:18:\"use-pinterest-icon\";s:0:\"\";s:16:\"use-youtube-icon\";s:0:\"\";s:15:\"use-tumblr-icon\";s:0:\"\";s:17:\"use-linkedin-icon\";s:0:\"\";s:12:\"use-rss-icon\";s:0:\"\";s:16:\"use-behance-icon\";s:0:\"\";s:18:\"use-instagram-icon\";s:0:\"\";s:15:\"use-flickr-icon\";s:0:\"\";s:16:\"use-spotify-icon\";s:0:\"\";s:15:\"use-github-icon\";s:0:\"\";s:22:\"use-stackexchange-icon\";s:0:\"\";s:19:\"use-soundcloud-icon\";s:0:\"\";s:11:\"use-vk-icon\";s:0:\"\";s:13:\"use-vine-icon\";s:0:\"\";s:14:\"use-houzz-icon\";s:0:\"\";s:13:\"use-yelp-icon\";s:0:\"\";s:17:\"ajax-page-loading\";s:1:\"1\";s:17:\"transition-method\";s:4:\"ajax\";s:32:\"disable-transition-fade-on-click\";s:1:\"0\";s:17:\"transition-effect\";s:16:\"horizontal_swipe\";s:12:\"loading-icon\";s:8:\"material\";s:19:\"loading-icon-colors\";a:2:{s:4:\"from\";s:7:\"#3452ff\";s:2:\"to\";s:7:\"#3452ff\";}s:13:\"loading-image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:23:\"loading-image-animation\";s:4:\"none\";s:19:\"transition-bg-color\";s:7:\"#870974\";s:21:\"transition-bg-color-2\";s:7:\"#000000\";s:24:\"header-animate-in-effect\";s:4:\"none\";s:23:\"header-down-arrow-style\";s:7:\"default\";s:10:\"form-style\";s:7:\"minimal\";s:17:\"form-fancy-select\";s:1:\"0\";s:21:\"form-submit-btn-style\";s:7:\"regular\";s:8:\"cta-text\";s:0:\"\";s:7:\"cta-btn\";s:0:\"\";s:12:\"cta-btn-link\";s:0:\"\";s:20:\"cta-background-color\";s:7:\"#ECEBE9\";s:14:\"cta-text-color\";s:7:\"#4B4F52\";s:13:\"cta-btn-color\";s:12:\"accent-color\";s:21:\"main_portfolio_layout\";s:1:\"3\";s:28:\"main_portfolio_project_style\";s:1:\"1\";s:27:\"main_portfolio_item_spacing\";s:7:\"default\";s:21:\"portfolio_use_masonry\";s:1:\"0\";s:29:\"portfolio_masonry_grid_sizing\";s:7:\"default\";s:24:\"portfolio_inline_filters\";s:1:\"0\";s:20:\"portfolio_single_nav\";s:13:\"after_project\";s:27:\"portfolio_loading_animation\";s:19:\"fade_in_from_bottom\";s:24:\"portfolio_sidebar_follow\";s:1:\"0\";s:16:\"portfolio_social\";s:1:\"1\";s:22:\"portfolio_social_style\";s:7:\"default\";s:26:\"portfolio-facebook-sharing\";s:1:\"1\";s:25:\"portfolio-twitter-sharing\";s:1:\"1\";s:29:\"portfolio-google-plus-sharing\";s:1:\"1\";s:27:\"portfolio-pinterest-sharing\";s:1:\"1\";s:26:\"portfolio-linkedin-sharing\";s:1:\"1\";s:14:\"portfolio_date\";s:1:\"1\";s:20:\"portfolio_pagination\";s:1:\"0\";s:25:\"portfolio_pagination_type\";s:7:\"default\";s:26:\"portfolio_extra_pagination\";s:1:\"0\";s:27:\"portfolio_pagination_number\";s:0:\"\";s:22:\"portfolio_rewrite_slug\";s:0:\"\";s:14:\"carousel-title\";s:0:\"\";s:13:\"carousel-link\";s:0:\"\";s:23:\"portfolio-sortable-text\";s:0:\"\";s:19:\"main-portfolio-link\";s:0:\"\";s:34:\"portfolio_same_category_single_nav\";s:1:\"0\";s:9:\"blog_type\";s:16:\"std-blog-sidebar\";s:18:\"blog_standard_type\";s:7:\"classic\";s:17:\"blog_masonry_type\";s:7:\"classic\";s:25:\"blog_auto_masonry_spacing\";s:3:\"8px\";s:22:\"blog_loading_animation\";s:4:\"none\";s:16:\"blog_header_type\";s:7:\"default\";s:17:\"blog_hide_sidebar\";s:1:\"1\";s:14:\"blog_enable_ss\";s:1:\"0\";s:24:\"blog_hide_featured_image\";s:1:\"0\";s:21:\"blog_archive_bg_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:10:\"author_bio\";s:1:\"1\";s:17:\"blog_auto_excerpt\";s:1:\"0\";s:19:\"blog_excerpt_length\";s:0:\"\";s:19:\"blog_next_post_link\";s:1:\"1\";s:25:\"blog_next_post_link_style\";s:19:\"fullwidth_next_only\";s:18:\"blog_related_posts\";s:1:\"0\";s:24:\"blog_related_posts_style\";s:8:\"material\";s:29:\"blog_related_posts_title_text\";s:13:\"related_posts\";s:11:\"blog_social\";s:1:\"1\";s:17:\"blog_social_style\";s:7:\"default\";s:21:\"blog-facebook-sharing\";s:1:\"1\";s:20:\"blog-twitter-sharing\";s:1:\"1\";s:24:\"blog-google-plus-sharing\";s:1:\"1\";s:22:\"blog-pinterest-sharing\";s:1:\"1\";s:21:\"blog-linkedin-sharing\";s:1:\"1\";s:12:\"display_tags\";s:1:\"0\";s:17:\"display_full_date\";s:1:\"0\";s:20:\"blog_pagination_type\";s:7:\"default\";s:16:\"extra_pagination\";s:1:\"0\";s:18:\"recent-posts-title\";s:0:\"\";s:17:\"recent-posts-link\";s:0:\"\";s:10:\"zoom-level\";s:0:\"\";s:15:\"enable-map-zoom\";s:1:\"0\";s:10:\"center-lat\";s:0:\"\";s:10:\"center-lng\";s:0:\"\";s:14:\"use-marker-img\";s:1:\"0\";s:10:\"marker-img\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:20:\"enable-map-animation\";s:1:\"1\";s:11:\"map-point-1\";s:1:\"0\";s:9:\"latitude1\";s:0:\"\";s:10:\"longitude1\";s:0:\"\";s:9:\"map-info1\";s:0:\"\";s:11:\"map-point-2\";s:1:\"0\";s:9:\"latitude2\";s:0:\"\";s:10:\"longitude2\";s:0:\"\";s:9:\"map-info2\";s:0:\"\";s:11:\"map-point-3\";s:1:\"0\";s:9:\"latitude3\";s:0:\"\";s:10:\"longitude3\";s:0:\"\";s:9:\"map-info3\";s:0:\"\";s:11:\"map-point-4\";s:1:\"0\";s:9:\"latitude4\";s:0:\"\";s:10:\"longitude4\";s:0:\"\";s:9:\"map-info4\";s:0:\"\";s:11:\"map-point-5\";s:1:\"0\";s:9:\"latitude5\";s:0:\"\";s:10:\"longitude5\";s:0:\"\";s:9:\"map-info5\";s:0:\"\";s:11:\"map-point-6\";s:1:\"0\";s:9:\"latitude6\";s:0:\"\";s:10:\"longitude6\";s:0:\"\";s:9:\"map-info6\";s:0:\"\";s:11:\"map-point-7\";s:1:\"0\";s:9:\"latitude7\";s:0:\"\";s:10:\"longitude7\";s:0:\"\";s:9:\"map-info7\";s:0:\"\";s:11:\"map-point-8\";s:1:\"0\";s:9:\"latitude8\";s:0:\"\";s:10:\"longitude8\";s:0:\"\";s:9:\"map-info8\";s:0:\"\";s:11:\"map-point-9\";s:1:\"0\";s:9:\"latitude9\";s:0:\"\";s:10:\"longitude9\";s:0:\"\";s:9:\"map-info9\";s:0:\"\";s:12:\"map-point-10\";s:1:\"0\";s:10:\"latitude10\";s:0:\"\";s:11:\"longitude10\";s:0:\"\";s:10:\"map-info10\";s:0:\"\";s:20:\"add-remove-locations\";s:0:\"\";s:13:\"map-greyscale\";s:1:\"0\";s:9:\"map-color\";s:0:\"\";s:14:\"map-ultra-flat\";s:0:\"\";s:21:\"map-dark-color-scheme\";s:0:\"\";s:24:\"slider-caption-animation\";s:1:\"1\";s:23:\"slider-background-cover\";s:1:\"1\";s:15:\"slider-autoplay\";s:1:\"1\";s:20:\"slider-advance-speed\";s:0:\"\";s:22:\"slider-animation-speed\";s:0:\"\";s:13:\"slider-height\";s:0:\"\";s:15:\"slider-bg-color\";s:7:\"#000000\";s:24:\"sharing_btn_accent_color\";s:1:\"1\";s:12:\"facebook-url\";s:0:\"\";s:11:\"twitter-url\";s:0:\"\";s:15:\"google-plus-url\";s:0:\"\";s:9:\"vimeo-url\";s:0:\"\";s:12:\"dribbble-url\";s:0:\"\";s:13:\"pinterest-url\";s:0:\"\";s:11:\"youtube-url\";s:0:\"\";s:10:\"tumblr-url\";s:0:\"\";s:12:\"linkedin-url\";s:0:\"\";s:7:\"rss-url\";s:0:\"\";s:11:\"behance-url\";s:0:\"\";s:10:\"flickr-url\";s:0:\"\";s:11:\"spotify-url\";s:0:\"\";s:13:\"instagram-url\";s:0:\"\";s:10:\"github-url\";s:0:\"\";s:17:\"stackexchange-url\";s:0:\"\";s:14:\"soundcloud-url\";s:0:\"\";s:6:\"vk-url\";s:0:\"\";s:8:\"vine-url\";s:0:\"\";s:9:\"houzz-url\";s:0:\"\";s:8:\"yelp-url\";s:0:\"\";s:9:\"email-url\";s:0:\"\";s:9:\"phone-url\";s:0:\"\";}', 'yes'),
(151, 'salient_redux-transients', 'a:2:{s:14:\"changed_values\";a:4:{s:8:\"last_tab\";s:2:\"22\";s:11:\"body-border\";s:1:\"0\";s:17:\"body-border-color\";s:7:\"#ffffff\";s:16:\"body-border-size\";s:0:\"\";}s:9:\"last_save\";i:1512053212;}', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'vc_version', '5.2.4', 'yes'),
(157, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1512044291;s:7:\"version\";s:5:\"4.9.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(165, 'slider-locations_children', 'a:0:{}', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(172, 'widget_recent-posts-extra', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_recent-projects', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, '_site_transient_timeout_theme_roots', '1512745028', 'no'),
(180, '_site_transient_theme_roots', 'a:5:{s:9:\"salient 2\";s:7:\"/themes\";s:7:\"salient\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(181, 'category_children', 'a:0:{}', 'yes'),
(182, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1512743245;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(183, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512743252;s:7:\"checked\";a:5:{s:9:\"salient 2\";s:5:\"8.5.3\";s:7:\"salient\";s:5:\"8.5.3\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(184, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512743249;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp2_postmeta`
--

CREATE TABLE `wp2_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_postmeta`
--

INSERT INTO `wp2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(3, 4, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n<label>Adress\n[text* Adress]</label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(4, 4, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Training \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <paulmauve@outlook.fr>\";s:9:\"recipient\";s:20:\"paulmauve@outlook.fr\";s:4:\"body\";s:179:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Training (http://localhost:8888/wordpress2)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 4, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Training \"[your-subject]\"\";s:6:\"sender\";s:31:\"Training <paulmauve@outlook.fr>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Training (http://localhost:8888/wordpress2)\";s:18:\"additional_headers\";s:30:\"Reply-To: paulmauve@outlook.fr\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 4, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(7, 4, '_additional_settings', ''),
(8, 4, '_locale', 'fr_FR'),
(9, 1, '_nectar_love', '0'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1512041022'),
(12, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(13, 2, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(14, 6, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(15, 6, '_edit_last', '1'),
(16, 6, '_edit_lock', '1512056701:1'),
(17, 6, '_wp_page_template', 'default'),
(18, 6, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(19, 6, 'nectar-metabox-portfolio-display-sortable', 'off'),
(20, 6, '_nectar_full_screen_rows', 'off'),
(21, 6, '_nectar_full_screen_rows_animation', 'parallax'),
(22, 6, '_nectar_full_screen_rows_animation_speed', 'medium'),
(23, 6, '_nectar_full_screen_rows_overall_bg_color', '#ffffff'),
(24, 6, '_nectar_full_screen_rows_anchors', 'off'),
(25, 6, '_nectar_full_screen_rows_mobile_disable', 'on'),
(26, 6, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(27, 6, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(28, 6, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(29, 6, '_nectar_full_screen_rows_footer', 'none'),
(30, 6, '_nectar_slider_bg_type', 'image_bg'),
(31, 6, '_nectar_canvas_shapes', ''),
(32, 6, '_nectar_media_upload_webm', ''),
(33, 6, '_nectar_media_upload_mp4', ''),
(34, 6, '_nectar_media_upload_ogv', ''),
(35, 6, '_nectar_slider_preview_image', ''),
(36, 6, '_nectar_header_bg', ''),
(37, 6, '_nectar_header_parallax', 'off'),
(38, 6, '_nectar_header_box_roll', 'off'),
(39, 6, '_nectar_header_bg_height', ''),
(40, 6, '_nectar_header_fullscreen', 'off'),
(41, 6, '_nectar_header_title', ''),
(42, 6, '_nectar_header_subtitle', ''),
(43, 6, '_nectar_page_header_text-effect', 'none'),
(44, 6, '_nectar_particle_rotation_timing', ''),
(45, 6, '_nectar_particle_disable_explosion', 'off'),
(46, 6, '_nectar_page_header_alignment', 'left'),
(47, 6, '_nectar_page_header_alignment_v', 'middle'),
(48, 6, '_nectar_page_header_bg_alignment', 'center'),
(49, 6, '_nectar_header_bg_color', ''),
(50, 6, '_nectar_header_font_color', ''),
(51, 6, '_nectar_header_bg_overlay_color', ''),
(52, 6, '_wpb_vc_js_status', 'true'),
(53, 9, '_wp_attached_file', '2017/11/Bouftou-royal.png'),
(54, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:25:\"2017/11/Bouftou-royal.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Bouftou-royal-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:25:\"Bouftou-royal-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"nectar_small_square\";a:4:{s:4:\"file\";s:25:\"Bouftou-royal-140x140.png\";s:5:\"width\";i:140;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 16, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(56, 16, '_edit_last', '1'),
(57, 16, '_wp_page_template', 'default'),
(58, 16, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(59, 16, 'nectar-metabox-portfolio-display-sortable', 'off'),
(60, 16, '_nectar_full_screen_rows', 'off'),
(61, 16, '_nectar_full_screen_rows_animation', 'none'),
(62, 16, '_nectar_full_screen_rows_animation_speed', 'medium'),
(63, 16, '_nectar_full_screen_rows_overall_bg_color', ''),
(64, 16, '_nectar_full_screen_rows_anchors', 'off'),
(65, 16, '_nectar_full_screen_rows_mobile_disable', 'off'),
(66, 16, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(67, 16, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(68, 16, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(69, 16, '_nectar_full_screen_rows_footer', 'none'),
(70, 16, '_nectar_slider_bg_type', 'image_bg'),
(71, 16, '_nectar_canvas_shapes', ''),
(72, 16, '_nectar_media_upload_webm', ''),
(73, 16, '_nectar_media_upload_mp4', ''),
(74, 16, '_nectar_media_upload_ogv', ''),
(75, 16, '_nectar_slider_preview_image', ''),
(76, 16, '_nectar_header_bg', ''),
(77, 16, '_nectar_header_parallax', 'off'),
(78, 16, '_nectar_header_box_roll', 'off'),
(79, 16, '_nectar_header_bg_height', ''),
(80, 16, '_nectar_header_fullscreen', 'off'),
(81, 16, '_nectar_header_title', ''),
(82, 16, '_nectar_header_subtitle', ''),
(83, 16, '_nectar_page_header_text-effect', 'none'),
(84, 16, '_nectar_particle_rotation_timing', ''),
(85, 16, '_nectar_particle_disable_explosion', 'off'),
(86, 16, '_nectar_page_header_alignment', 'left'),
(87, 16, '_nectar_page_header_alignment_v', 'middle'),
(88, 16, '_nectar_page_header_bg_alignment', 'center'),
(89, 16, '_nectar_header_bg_color', ''),
(90, 16, '_nectar_header_font_color', ''),
(91, 16, '_nectar_header_bg_overlay_color', ''),
(92, 16, '_wpb_vc_js_status', 'true'),
(93, 16, '_edit_lock', '1512046687:1'),
(94, 18, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(95, 18, '_edit_last', '1'),
(96, 18, '_edit_lock', '1512046890:1'),
(97, 18, '_wp_page_template', 'default'),
(98, 18, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(99, 18, 'nectar-metabox-portfolio-display-sortable', 'off'),
(100, 18, '_nectar_full_screen_rows', 'off'),
(101, 18, '_nectar_full_screen_rows_animation', 'none'),
(102, 18, '_nectar_full_screen_rows_animation_speed', 'medium'),
(103, 18, '_nectar_full_screen_rows_overall_bg_color', ''),
(104, 18, '_nectar_full_screen_rows_anchors', 'off'),
(105, 18, '_nectar_full_screen_rows_mobile_disable', 'off'),
(106, 18, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(107, 18, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(108, 18, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(109, 18, '_nectar_full_screen_rows_footer', 'none'),
(110, 18, '_nectar_slider_bg_type', 'image_bg'),
(111, 18, '_nectar_canvas_shapes', ''),
(112, 18, '_nectar_media_upload_webm', ''),
(113, 18, '_nectar_media_upload_mp4', ''),
(114, 18, '_nectar_media_upload_ogv', ''),
(115, 18, '_nectar_slider_preview_image', ''),
(116, 18, '_nectar_header_bg', ''),
(117, 18, '_nectar_header_parallax', 'off'),
(118, 18, '_nectar_header_box_roll', 'off'),
(119, 18, '_nectar_header_bg_height', ''),
(120, 18, '_nectar_header_fullscreen', 'off'),
(121, 18, '_nectar_header_title', ''),
(122, 18, '_nectar_header_subtitle', ''),
(123, 18, '_nectar_page_header_text-effect', 'none'),
(124, 18, '_nectar_particle_rotation_timing', ''),
(125, 18, '_nectar_particle_disable_explosion', 'off'),
(126, 18, '_nectar_page_header_alignment', 'left'),
(127, 18, '_nectar_page_header_alignment_v', 'middle'),
(128, 18, '_nectar_page_header_bg_alignment', 'center'),
(129, 18, '_nectar_header_bg_color', ''),
(130, 18, '_nectar_header_font_color', ''),
(131, 18, '_nectar_header_bg_overlay_color', ''),
(132, 18, '_wpb_vc_js_status', 'true'),
(134, 21, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(135, 21, '_edit_last', '1'),
(136, 21, '_nectar_slider_bg_type', 'image_bg'),
(137, 21, '_nectar_slider_image', 'http://localhost:8888/wordpress2/wp-content/uploads/2017/11/Bouftou-royal.png'),
(138, 21, '_nectar_media_upload_webm', ''),
(139, 21, '_nectar_media_upload_mp4', ''),
(140, 21, '_nectar_media_upload_ogv', ''),
(141, 21, '_nectar_slider_preview_image', ''),
(142, 21, '_nectar_slider_video_texture', 'off'),
(143, 21, '_nectar_slider_slide_bg_alignment', 'center'),
(144, 21, '_nectar_slider_slide_font_color', 'dark'),
(145, 21, '_nectar_slider_heading', 'yosh'),
(146, 21, '_nectar_slider_caption', 'itadakimasu'),
(147, 21, '_nectar_slider_caption_background', 'off'),
(148, 21, '_nectar_slider_down_arrow', 'off'),
(149, 21, '_nectar_slider_link_type', 'button_links'),
(150, 21, '_nectar_slider_button', 'blblbllblblblblb'),
(151, 21, '_nectar_slider_button_url', ''),
(152, 21, '_nectar_slider_button_style', 'solid_color'),
(153, 21, '_nectar_slider_button_color', 'primary-color'),
(154, 21, '_nectar_slider_button_2', 'yeahyeahyeah'),
(155, 21, '_nectar_slider_button_url_2', ''),
(156, 21, '_nectar_slider_button_style_2', 'solid_color'),
(157, 21, '_nectar_slider_button_color_2', 'extra-color-1'),
(158, 21, '_nectar_slider_entire_link', ''),
(159, 21, '_nectar_slider_video_popup', ''),
(160, 21, '_nectar_slide_xpos_alignment', 'left'),
(161, 21, '_nectar_slide_ypos_alignment', 'middle'),
(162, 21, '_nectar_slider_slide_custom_class', ''),
(163, 21, '_edit_lock', '1512048742:1'),
(164, 22, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(165, 23, '_wp_attached_file', '2017/11/sphinctercell.png'),
(166, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:25:\"2017/11/sphinctercell.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"sphinctercell-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:25:\"sphinctercell-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"nectar_small_square\";a:4:{s:4:\"file\";s:25:\"sphinctercell-140x140.png\";s:5:\"width\";i:140;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 22, '_edit_last', '1'),
(168, 22, '_nectar_slider_bg_type', 'image_bg'),
(169, 22, '_nectar_slider_image', 'http://localhost:8888/wordpress2/wp-content/uploads/2017/11/sphinctercell.png'),
(170, 22, '_nectar_media_upload_webm', ''),
(171, 22, '_nectar_media_upload_mp4', ''),
(172, 22, '_nectar_media_upload_ogv', ''),
(173, 22, '_nectar_slider_preview_image', ''),
(174, 22, '_nectar_slider_video_texture', 'off'),
(175, 22, '_nectar_slider_slide_bg_alignment', 'center'),
(176, 22, '_nectar_slider_slide_font_color', 'dark'),
(177, 22, '_nectar_slider_heading', 'beurk'),
(178, 22, '_nectar_slider_caption', 'sa sent le rat mort nan?'),
(179, 22, '_nectar_slider_caption_background', 'off'),
(180, 22, '_nectar_slider_down_arrow', 'off'),
(181, 22, '_nectar_slider_link_type', 'button_links'),
(182, 22, '_nectar_slider_button', 'blblbllblblblbllblbl'),
(183, 22, '_nectar_slider_button_url', ''),
(184, 22, '_nectar_slider_button_style', 'solid_color'),
(185, 22, '_nectar_slider_button_color', 'primary-color'),
(186, 22, '_nectar_slider_button_2', 'yeahyeahyeah'),
(187, 22, '_nectar_slider_button_url_2', ''),
(188, 22, '_nectar_slider_button_style_2', 'solid_color'),
(189, 22, '_nectar_slider_button_color_2', 'primary-color'),
(190, 22, '_nectar_slider_entire_link', ''),
(191, 22, '_nectar_slider_video_popup', ''),
(192, 22, '_nectar_slide_xpos_alignment', 'left'),
(193, 22, '_nectar_slide_ypos_alignment', 'middle'),
(194, 22, '_nectar_slider_slide_custom_class', ''),
(195, 22, '_edit_lock', '1512048617:1'),
(196, 27, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(197, 27, '_menu_item_type', 'post_type'),
(198, 27, '_menu_item_menu_item_parent', '0'),
(199, 27, '_menu_item_object_id', '6'),
(200, 27, '_menu_item_object', 'page'),
(201, 27, '_menu_item_target', ''),
(202, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 27, '_menu_item_xfn', ''),
(204, 27, '_menu_item_url', ''),
(206, 28, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(207, 28, '_menu_item_type', 'post_type'),
(208, 28, '_menu_item_menu_item_parent', '0'),
(209, 28, '_menu_item_object_id', '16'),
(210, 28, '_menu_item_object', 'page'),
(211, 28, '_menu_item_target', ''),
(212, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 28, '_menu_item_xfn', ''),
(214, 28, '_menu_item_url', ''),
(216, 29, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(217, 29, '_menu_item_type', 'post_type'),
(218, 29, '_menu_item_menu_item_parent', '0'),
(219, 29, '_menu_item_object_id', '18'),
(220, 29, '_menu_item_object', 'page'),
(221, 29, '_menu_item_target', ''),
(222, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 29, '_menu_item_xfn', ''),
(224, 29, '_menu_item_url', ''),
(227, 32, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(228, 32, '_edit_last', '1'),
(229, 32, '_wp_page_template', 'default'),
(230, 32, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(231, 32, 'nectar-metabox-portfolio-display-sortable', 'off'),
(232, 32, '_nectar_full_screen_rows', 'off'),
(233, 32, '_nectar_full_screen_rows_animation', 'none'),
(234, 32, '_nectar_full_screen_rows_animation_speed', 'medium'),
(235, 32, '_nectar_full_screen_rows_overall_bg_color', ''),
(236, 32, '_nectar_full_screen_rows_anchors', 'off'),
(237, 32, '_nectar_full_screen_rows_mobile_disable', 'off'),
(238, 32, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(239, 32, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(240, 32, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(241, 32, '_nectar_full_screen_rows_footer', 'none'),
(242, 32, '_nectar_slider_bg_type', 'image_bg'),
(243, 32, '_nectar_canvas_shapes', ''),
(244, 32, '_nectar_media_upload_webm', ''),
(245, 32, '_nectar_media_upload_mp4', ''),
(246, 32, '_nectar_media_upload_ogv', ''),
(247, 32, '_nectar_slider_preview_image', ''),
(248, 32, '_nectar_header_bg', ''),
(249, 32, '_nectar_header_parallax', 'off'),
(250, 32, '_nectar_header_box_roll', 'off'),
(251, 32, '_nectar_header_bg_height', ''),
(252, 32, '_nectar_header_fullscreen', 'off'),
(253, 32, '_nectar_header_title', ''),
(254, 32, '_nectar_header_subtitle', ''),
(255, 32, '_nectar_page_header_text-effect', 'none'),
(256, 32, '_nectar_particle_rotation_timing', ''),
(257, 32, '_nectar_particle_disable_explosion', 'off'),
(258, 32, '_nectar_page_header_alignment', 'left'),
(259, 32, '_nectar_page_header_alignment_v', 'middle'),
(260, 32, '_nectar_page_header_bg_alignment', 'center'),
(261, 32, '_nectar_header_bg_color', ''),
(262, 32, '_nectar_header_font_color', ''),
(263, 32, '_nectar_header_bg_overlay_color', ''),
(264, 32, '_wpb_vc_js_status', 'true'),
(266, 32, '_edit_lock', '1512058044:1'),
(267, 1, 'nectar_blog_post_view_count', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp2_posts`
--

CREATE TABLE `wp2_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_posts`
--

INSERT INTO `wp2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-30 12:08:34', '2017-11-30 11:08:34', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-11-30 12:08:34', '2017-11-30 11:08:34', '', 0, 'http://localhost:8888/wordpress2/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-30 12:08:34', '2017-11-30 11:08:34', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress2/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2017-11-30 12:23:42', '2017-11-30 11:23:42', '', 0, 'http://localhost:8888/wordpress2/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-11-30 12:18:10', '2017-11-30 11:18:10', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n<label>Adress\r\n[text* Adress]</label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nTraining \"[your-subject]\"\n[your-name] <paulmauve@outlook.fr>\npaulmauve@outlook.fr\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Training (http://localhost:8888/wordpress2)\nReply-To: [your-email]\n\n\n\n\nTraining \"[your-subject]\"\nTraining <paulmauve@outlook.fr>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Training (http://localhost:8888/wordpress2)\nReply-To: paulmauve@outlook.fr\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-11-30 15:58:21', '2017-11-30 14:58:21', '', 0, 'http://localhost:8888/wordpress2/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2017-11-30 12:23:42', '2017-11-30 11:23:42', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress2/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-11-30 12:23:42', '2017-11-30 11:23:42', '', 2, 'http://localhost:8888/wordpress2/2017/11/30/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-11-30 12:24:06', '2017-11-30 11:24:06', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. hello[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_slider location=\"test\" flexible_slider_height=\"true\" arrow_navigation=\"true\" overall_style=\"classic\" desktop_swipe=\"true\" parallax=\"true\" loop=\"true\" slider_transition=\"slide\" button_sizing=\"regular\" slider_height=\"600\" autorotate=\"5000\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][contact-form-7 id=\"4\"][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2017-11-30 16:06:30', '2017-11-30 15:06:30', '', 0, 'http://localhost:8888/wordpress2/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-11-30 12:24:06', '2017-11-30 11:24:06', 'hello', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 12:24:06', '2017-11-30 11:24:06', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-11-30 14:31:36', '2017-11-30 13:31:36', '<p>[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. hello[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]</p>\n<p>Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<p>[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_slider flexible_slider_height=\"true\" arrow_navigation=\"true\" overall_style=\"classic\" desktop_swipe=\"true\" parallax=\"true\" loop=\"true\" slider_transition=\"slide\" button_sizing=\"regular\" location=\"\" slider_height=\"600\"][/vc_column][/vc_row]</p>\n', 'Home', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2017-11-30 14:31:36', '2017-11-30 13:31:36', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-autosave-v1/', 0, 'revision', '', 0),
(9, 1, '2017-11-30 12:28:21', '2017-11-30 11:28:21', '', 'Bouftou-royal', '', 'inherit', 'open', 'closed', '', 'bouftou-royal', '', '', '2017-11-30 12:28:21', '2017-11-30 11:28:21', '', 6, 'http://localhost:8888/wordpress2/wp-content/uploads/2017/11/Bouftou-royal.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2017-11-30 12:29:59', '2017-11-30 11:29:59', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 12:29:59', '2017-11-30 11:29:59', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-11-30 13:40:11', '2017-11-30 12:40:11', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 13:40:11', '2017-11-30 12:40:11', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-11-30 13:44:01', '2017-11-30 12:44:01', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 13:44:01', '2017-11-30 12:44:01', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-11-30 13:46:50', '2017-11-30 12:46:50', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 13:46:50', '2017-11-30 12:46:50', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-11-30 13:48:42', '2017-11-30 12:48:42', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 13:48:42', '2017-11-30 12:48:42', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-11-30 13:49:34', '2017-11-30 12:49:34', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. hello[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 13:49:34', '2017-11-30 12:49:34', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-11-30 13:59:00', '2017-11-30 12:59:00', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" top_padding=\"7%\" bottom_padding=\"7%\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_row_inner column_margin=\"default\" bottom_padding=\"60\" text_align=\"left\"][vc_column_inner column_padding=\"no-extra-padding\" column_padding_position=\"all\" centered_text=\"true\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" column_border_width=\"none\" column_border_style=\"solid\"][vc_custom_heading text=\"Meet Our Team\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][divider line_type=\"Small Line\" line_thickness=\"2\" divider_color=\"accent-color\" animate=\"yes\" custom_height=\"40\" custom_line_width=\"40\"][vc_column_text max_width=\"650\"]I am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_row_inner column_margin=\"default\" text_align=\"left\"][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/BZ2PNGD5Emw/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Igor Kozlov\" job_position=\"Graphic Designer\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/tBt9JxuQBYs/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Mark Jones\" job_position=\"Back-end Developer\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/R5tHd-aYmPs/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Andre Smith\" job_position=\"Fine Artist\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][/vc_row_inner][vc_row_inner column_margin=\"default\" text_align=\"left\"][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/500x500/?person\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Ethan Young\" job_position=\"Team Leader\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/5lexwsAzUT4/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Ava Morgan\" job_position=\"The SEO Expert\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/HZGkX1vKJvo/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"James Anderson\" job_position=\"Front-end Developer\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2017-11-30 13:59:00', '2017-11-30 12:59:00', '', 0, 'http://localhost:8888/wordpress2/?page_id=16', 0, 'page', '', 0);
INSERT INTO `wp2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(17, 1, '2017-11-30 13:59:00', '2017-11-30 12:59:00', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" top_padding=\"7%\" bottom_padding=\"7%\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_row_inner column_margin=\"default\" bottom_padding=\"60\" text_align=\"left\"][vc_column_inner column_padding=\"no-extra-padding\" column_padding_position=\"all\" centered_text=\"true\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" column_border_width=\"none\" column_border_style=\"solid\"][vc_custom_heading text=\"Meet Our Team\" font_container=\"tag:h3|text_align:center\" use_theme_fonts=\"yes\"][divider line_type=\"Small Line\" line_thickness=\"2\" divider_color=\"accent-color\" animate=\"yes\" custom_height=\"40\" custom_line_width=\"40\"][vc_column_text max_width=\"650\"]I am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_row_inner column_margin=\"default\" text_align=\"left\"][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/BZ2PNGD5Emw/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Igor Kozlov\" job_position=\"Graphic Designer\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/tBt9JxuQBYs/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Mark Jones\" job_position=\"Back-end Developer\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/R5tHd-aYmPs/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Andre Smith\" job_position=\"Fine Artist\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][/vc_row_inner][vc_row_inner column_margin=\"default\" text_align=\"left\"][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/500x500/?person\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Ethan Young\" job_position=\"Team Leader\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/5lexwsAzUT4/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"Ava Morgan\" job_position=\"The SEO Expert\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][vc_column_inner enable_animation=\"true\" animation=\"grow-in\" column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" column_border_width=\"none\" column_border_style=\"solid\"][team_member image_url=\"https://source.unsplash.com/HZGkX1vKJvo/500x500\" bio_image_url=\"http://themenectar.com/demo/dummy-data-imgs/business/about-team-member-big.jpg\" team_memeber_style=\"bio_fullscreen\" name=\"James Anderson\" job_position=\"Front-end Developer\" team_member_bio=\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. \"][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Team', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-11-30 13:59:00', '2017-11-30 12:59:00', '', 16, 'http://localhost:8888/wordpress2/2017/11/30/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-11-30 14:03:14', '2017-11-30 13:03:14', '[vc_row type=\"full_width_background\" full_screen_row_position=\"middle\" bg_color=\"#ffffff\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" top_padding=\"7%\" bottom_padding=\"7%\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][recent_posts style=\"slider\" category=\"all\" order=\"DESC\" orderby=\"date\" slider_size=\"650\" posts_per_page=\"3\"][/vc_column][/vc_row]', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2017-11-30 14:03:14', '2017-11-30 13:03:14', '', 0, 'http://localhost:8888/wordpress2/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-11-30 14:03:14', '2017-11-30 13:03:14', '[vc_row type=\"full_width_background\" full_screen_row_position=\"middle\" bg_color=\"#ffffff\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" top_padding=\"7%\" bottom_padding=\"7%\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][recent_posts style=\"slider\" category=\"all\" order=\"DESC\" orderby=\"date\" slider_size=\"650\" posts_per_page=\"3\"][/vc_column][/vc_row]', 'Search', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-11-30 14:03:14', '2017-11-30 13:03:14', '', 18, 'http://localhost:8888/wordpress2/2017/11/30/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-11-30 14:29:12', '2017-11-30 13:29:12', '', 'Brouillon auto', '', 'publish', 'closed', 'closed', '', 'brouillon-auto', '', '', '2017-11-30 14:32:21', '2017-11-30 13:32:21', '', 0, 'http://localhost:8888/wordpress2/?post_type=nectar_slider&#038;p=21', 0, 'nectar_slider', '', 0),
(22, 1, '2017-11-30 14:30:23', '2017-11-30 13:30:23', '', 'Brouillon auto', '', 'publish', 'closed', 'closed', '', 'brouillon-auto-2', '', '', '2017-11-30 14:32:36', '2017-11-30 13:32:36', '', 0, 'http://localhost:8888/wordpress2/?post_type=nectar_slider&#038;p=22', 0, 'nectar_slider', '', 0),
(23, 1, '2017-11-30 14:29:34', '2017-11-30 13:29:34', '', 'sphinctercell', '', 'inherit', 'open', 'closed', '', 'sphinctercell', '', '', '2017-11-30 14:29:34', '2017-11-30 13:29:34', '', 0, 'http://localhost:8888/wordpress2/wp-content/uploads/2017/11/sphinctercell.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2017-11-30 14:31:57', '2017-11-30 13:31:57', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. hello[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_slider flexible_slider_height=\"true\" arrow_navigation=\"true\" overall_style=\"classic\" desktop_swipe=\"true\" parallax=\"true\" loop=\"true\" slider_transition=\"slide\" button_sizing=\"regular\" location=\"\" slider_height=\"600\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 14:31:57', '2017-11-30 13:31:57', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-11-30 14:33:01', '2017-11-30 13:33:01', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. hello[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_slider location=\"test\" flexible_slider_height=\"true\" arrow_navigation=\"true\" overall_style=\"classic\" desktop_swipe=\"true\" parallax=\"true\" loop=\"true\" slider_transition=\"slide\" button_sizing=\"regular\" slider_height=\"600\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 14:33:01', '2017-11-30 13:33:01', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-11-30 14:33:24', '2017-11-30 13:33:24', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. hello[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_slider location=\"test\" flexible_slider_height=\"true\" arrow_navigation=\"true\" overall_style=\"classic\" desktop_swipe=\"true\" parallax=\"true\" loop=\"true\" slider_transition=\"slide\" button_sizing=\"regular\" slider_height=\"600\" autorotate=\"5000\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 14:33:24', '2017-11-30 13:33:24', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-11-30 15:01:38', '2017-11-30 14:01:38', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-11-30 15:01:38', '2017-11-30 14:01:38', '', 0, 'http://localhost:8888/wordpress2/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-11-30 15:01:38', '2017-11-30 14:01:38', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2017-11-30 15:01:38', '2017-11-30 14:01:38', '', 0, 'http://localhost:8888/wordpress2/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2017-11-30 15:01:38', '2017-11-30 14:01:38', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-11-30 15:01:38', '2017-11-30 14:01:38', '', 0, 'http://localhost:8888/wordpress2/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2017-11-30 16:06:30', '2017-11-30 15:06:30', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" equal_height=\"yes\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\" shape_type=\"\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" background_image=\"9\" enable_bg_scale=\"true\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_animated_title heading_tag=\"h3\" style=\"color-strip-reveal\" color=\"Accent-Color\" text_color=\"#0c0c0c\" text=\"Hello\"][divider line_type=\"Full Width Line\" line_thickness=\"3\" divider_color=\"default\"][vc_column_text]Je suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. helloJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. hello[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][divider line_type=\"No Line\" custom_height=\"50\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n\r\nJe suis un bloc de texte, cliquez sur le bouton \\\"éditer\\\" pour me modifier. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"9\" alignment=\"center\" animation=\"flip-in-vertical\" border_radius=\"none\" box_shadow=\"none\" max_width=\"100%\" delay=\"5\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_slider location=\"test\" flexible_slider_height=\"true\" arrow_navigation=\"true\" overall_style=\"classic\" desktop_swipe=\"true\" parallax=\"true\" loop=\"true\" slider_transition=\"slide\" button_sizing=\"regular\" slider_height=\"600\" autorotate=\"5000\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][contact-form-7 id=\"4\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-30 16:06:30', '2017-11-30 15:06:30', '', 6, 'http://localhost:8888/wordpress2/2017/11/30/6-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-11-30 16:52:27', '2017-11-30 15:52:27', '[vc_row type=\"full_width_content\" full_screen_row_position=\"middle\" bg_color=\"#202020\" scene_position=\"center\" text_color=\"light\" text_align=\"left\" top_padding=\"7%\" bottom_padding=\"7%\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][testimonial_slider style=\"multiple_visible_minimal\" star_rating_color=\"accent-color\" add_border=\"true\"][testimonial star_rating=\"100%\" title=\"Testimonial\" id=\"1485906178798-158ab-0d88\" name=\"Aura Brooks\" subtitle=\"Graphic Designer, Owl Eyes\" quote=\"By far the best team I\'ve ever worked with. They truly understood the look I was going for and completely nailed it! I would highly recommend them as a company, you simply just won\'t find any better team! \" tab_id=\"1512057650732-5\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"80%\" title=\"Testimonial\" id=\"1485906178802-358ab-0d88\" name=\"Eve Crawford\" subtitle=\"Product Designer, That Biz\" quote=\"It was really fun getting to know the team during the project. They were all helpful in answering my questions and made me feel completely at ease. The design ended up being twice as good as I could have ever envisioned!\" tab_id=\"1512057650778-1\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"91%\" title=\"Testimonial\" id=\"1485906178807-958ab-0d88\" name=\"Jack Graham\" subtitle=\"Co founder, Coffee Inc\" quote=\"I\'m wondering why I never contacted these guys sooner! Seriously, they all have commendable talent in their respective fields and knocked my concept out of the ballpark. Thanks for an amazing experience!\" tab_id=\"1512057650845-3\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"91%\" title=\"Testimonial\" id=\"1485906178826-958ab-0d88\" name=\"Zak Reid\" subtitle=\"Instructor, Skate Nao\" quote=\"Salient is by far the most astonishing WP theme out there! I literally could not be happier that I chose to buy your theme! Your regular updates and superb attention to detail blows me away every time I visit my new site! \" tab_id=\"1512057650919-5\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"100%\" title=\"Testimonial\" id=\"1485906178832-758ab-0d88\" name=\"Jake Smith\" subtitle=\"Instructor, Skate Nao\" quote=\"Salient is by far the most astonishing WP theme out there! I literally could not be happier that I chose to buy your theme! Your regular updates and superb attention to detail blows me away every time I visit my new site! \" tab_id=\"1512057650974-4\"] Click the edit button to add your testimonial. [/testimonial][/testimonial_slider][/vc_column][/vc_row]', '', '', 'publish', 'closed', 'closed', '', '32-2', '', '', '2017-11-30 17:01:01', '2017-11-30 16:01:01', '', 0, 'http://localhost:8888/wordpress2/?page_id=32', 0, 'page', '', 0),
(33, 1, '2017-11-30 16:52:27', '2017-11-30 15:52:27', '[vc_row type=\"full_width_content\" full_screen_row_position=\"middle\" equal_height=\"yes\" content_placement=\"middle\" full_height=\"yes\" columns_placement=\"stretch\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column centered_text=\"true\" column_padding=\"padding-7-percent\" column_padding_position=\"all\" background_color=\"#ffffff\" background_color_opacity=\"1\" background_color_hover=\"#f4f4f4\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h5>Basic</h5>\r\n[/vc_column_text][nectar_gradient_text heading_tag=\"h1\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"$10\"][nectar_gradient_text heading_tag=\"h6\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"/month\" margin_top=\"-40px\"][vc_column_text css=\".vc_custom_1485375453676{margin-top: 20px !important;}\"]Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantic[/vc_column_text][nectar_btn size=\"large\" button_style=\"regular\" button_color_2=\"Accent-Color\" color_override=\"#0a0101\" icon_family=\"iconsmind\" url=\"#\" text=\"Buy Now\" margin_top=\"80\" icon_iconsmind=\"iconsmind-Triangle-ArrowRight\"][/vc_column][vc_column centered_text=\"true\" column_padding=\"padding-7-percent\" column_padding_position=\"all\" background_color=\"#ffffff\" background_color_opacity=\"1\" background_color_hover=\"#f4f4f4\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h5>Premium</h5>\r\n[/vc_column_text][nectar_gradient_text heading_tag=\"h1\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"$20\"][nectar_gradient_text heading_tag=\"h6\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"/month\" margin_top=\"-40px\"][vc_column_text css=\".vc_custom_1485375453676{margin-top: 20px !important;}\"]Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantic[/vc_column_text][nectar_btn size=\"large\" button_style=\"regular\" button_color_2=\"Accent-Color\" color_override=\"#0a0101\" icon_family=\"iconsmind\" url=\"#\" text=\"Buy Now\" margin_top=\"80\" icon_iconsmind=\"iconsmind-Triangle-ArrowRight\"][/vc_column][vc_column centered_text=\"true\" column_padding=\"padding-7-percent\" column_padding_position=\"all\" background_color=\"#ffffff\" background_color_opacity=\"1\" background_color_hover=\"#f4f4f4\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h5>Developer</h5>\r\n[/vc_column_text][nectar_gradient_text heading_tag=\"h1\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"$40\"][nectar_gradient_text heading_tag=\"h6\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"/month\" margin_top=\"-40px\"][vc_column_text css=\".vc_custom_1485375453676{margin-top: 20px !important;}\"]Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantic[/vc_column_text][nectar_btn size=\"large\" button_style=\"regular\" button_color_2=\"Accent-Color\" color_override=\"#0a0101\" icon_family=\"iconsmind\" url=\"#\" text=\"Buy Now\" margin_top=\"80\" icon_iconsmind=\"iconsmind-Triangle-ArrowRight\"][/vc_column][/vc_row]', '', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-30 16:52:27', '2017-11-30 15:52:27', '', 32, 'http://localhost:8888/wordpress2/2017/11/30/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-11-30 16:55:08', '2017-11-30 15:55:08', '[vc_row type=\"full_width_content\" full_screen_row_position=\"middle\" equal_height=\"yes\" content_placement=\"middle\" full_height=\"yes\" columns_placement=\"stretch\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column centered_text=\"true\" column_padding=\"padding-7-percent\" column_padding_position=\"all\" background_color=\"#ffffff\" background_color_opacity=\"1\" background_color_hover=\"#f4f4f4\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h5>Basic</h5>\r\n[/vc_column_text][nectar_gradient_text heading_tag=\"h1\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"$600\"][nectar_gradient_text heading_tag=\"h6\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"/month\" margin_top=\"-40px\"][vc_column_text css=\".vc_custom_1485375453676{margin-top: 20px !important;}\"]Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantic[/vc_column_text][nectar_btn size=\"large\" button_style=\"regular\" button_color_2=\"Accent-Color\" color_override=\"#0a0101\" icon_family=\"iconsmind\" url=\"#\" text=\"Buy Now\" margin_top=\"80\" icon_iconsmind=\"iconsmind-Triangle-ArrowRight\"][/vc_column][vc_column centered_text=\"true\" column_padding=\"padding-7-percent\" column_padding_position=\"all\" background_color=\"#ffffff\" background_color_opacity=\"1\" background_color_hover=\"#f4f4f4\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h5>Premium</h5>\r\n[/vc_column_text][nectar_gradient_text heading_tag=\"h1\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"$20\"][nectar_gradient_text heading_tag=\"h6\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"/month\" margin_top=\"-40px\"][vc_column_text css=\".vc_custom_1485375453676{margin-top: 20px !important;}\"]Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantic[/vc_column_text][nectar_btn size=\"large\" button_style=\"regular\" button_color_2=\"Accent-Color\" color_override=\"#0a0101\" icon_family=\"iconsmind\" url=\"#\" text=\"Buy Now\" margin_top=\"80\" icon_iconsmind=\"iconsmind-Triangle-ArrowRight\"][/vc_column][vc_column centered_text=\"true\" column_padding=\"padding-7-percent\" column_padding_position=\"all\" background_color=\"#ffffff\" background_color_opacity=\"1\" background_color_hover=\"#f4f4f4\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h5>Developer</h5>\r\n[/vc_column_text][nectar_gradient_text heading_tag=\"h1\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"$40\"][nectar_gradient_text heading_tag=\"h6\" color=\"extra-color-gradient-1\" gradient_direction=\"horizontal\" text=\"/month\" margin_top=\"-40px\"][vc_column_text css=\".vc_custom_1485375453676{margin-top: 20px !important;}\"]Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantic[/vc_column_text][nectar_btn size=\"large\" button_style=\"regular\" button_color_2=\"Accent-Color\" color_override=\"#0a0101\" icon_family=\"iconsmind\" url=\"#\" text=\"Buy Now\" margin_top=\"80\" icon_iconsmind=\"iconsmind-Triangle-ArrowRight\"][/vc_column][/vc_row]', '', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-30 16:55:08', '2017-11-30 15:55:08', '', 32, 'http://localhost:8888/wordpress2/2017/11/30/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-11-30 16:59:39', '2017-11-30 15:59:39', '<br />\n', '', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2017-11-30 16:59:39', '2017-11-30 15:59:39', '', 32, 'http://localhost:8888/wordpress2/2017/11/30/32-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(36, 1, '2017-11-30 17:01:01', '2017-11-30 16:01:01', '[vc_row type=\"full_width_content\" full_screen_row_position=\"middle\" bg_color=\"#202020\" scene_position=\"center\" text_color=\"light\" text_align=\"left\" top_padding=\"7%\" bottom_padding=\"7%\" overlay_strength=\"0.3\" shape_divider_position=\"bottom\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" column_border_radius=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][testimonial_slider style=\"multiple_visible_minimal\" star_rating_color=\"accent-color\" add_border=\"true\"][testimonial star_rating=\"100%\" title=\"Testimonial\" id=\"1485906178798-158ab-0d88\" name=\"Aura Brooks\" subtitle=\"Graphic Designer, Owl Eyes\" quote=\"By far the best team I\'ve ever worked with. They truly understood the look I was going for and completely nailed it! I would highly recommend them as a company, you simply just won\'t find any better team! \" tab_id=\"1512057650732-5\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"80%\" title=\"Testimonial\" id=\"1485906178802-358ab-0d88\" name=\"Eve Crawford\" subtitle=\"Product Designer, That Biz\" quote=\"It was really fun getting to know the team during the project. They were all helpful in answering my questions and made me feel completely at ease. The design ended up being twice as good as I could have ever envisioned!\" tab_id=\"1512057650778-1\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"91%\" title=\"Testimonial\" id=\"1485906178807-958ab-0d88\" name=\"Jack Graham\" subtitle=\"Co founder, Coffee Inc\" quote=\"I\'m wondering why I never contacted these guys sooner! Seriously, they all have commendable talent in their respective fields and knocked my concept out of the ballpark. Thanks for an amazing experience!\" tab_id=\"1512057650845-3\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"91%\" title=\"Testimonial\" id=\"1485906178826-958ab-0d88\" name=\"Zak Reid\" subtitle=\"Instructor, Skate Nao\" quote=\"Salient is by far the most astonishing WP theme out there! I literally could not be happier that I chose to buy your theme! Your regular updates and superb attention to detail blows me away every time I visit my new site! \" tab_id=\"1512057650919-5\"] Click the edit button to add your testimonial. [/testimonial][testimonial star_rating=\"100%\" title=\"Testimonial\" id=\"1485906178832-758ab-0d88\" name=\"Jake Smith\" subtitle=\"Instructor, Skate Nao\" quote=\"Salient is by far the most astonishing WP theme out there! I literally could not be happier that I chose to buy your theme! Your regular updates and superb attention to detail blows me away every time I visit my new site! \" tab_id=\"1512057650974-4\"] Click the edit button to add your testimonial. [/testimonial][/testimonial_slider][/vc_column][/vc_row]', '', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-30 17:01:01', '2017-11-30 16:01:01', '', 32, 'http://localhost:8888/wordpress2/2017/11/30/32-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp2_termmeta`
--

CREATE TABLE `wp2_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp2_terms`
--

CREATE TABLE `wp2_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_terms`
--

INSERT INTO `wp2_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'test', 'test', 0),
(3, 'MenuHeader', 'menuheader', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp2_term_relationships`
--

CREATE TABLE `wp2_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_term_relationships`
--

INSERT INTO `wp2_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp2_term_taxonomy`
--

CREATE TABLE `wp2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_term_taxonomy`
--

INSERT INTO `wp2_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'slider-locations', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp2_usermeta`
--

CREATE TABLE `wp2_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_usermeta`
--

INSERT INTO `wp2_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp2_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp2_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0d58a24ef46bbde96c83934183f1f5427d02f3b9bba0c2f851107ff7d7991b4c\";a:4:{s:10:\"expiration\";i:1512212931;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512040131;}}'),
(17, 1, 'wp2_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'tgmpa_dismissed_notice_tgmpa', '1'),
(20, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:69:\"submitdiv,pageparentdiv,nectar-metabox-portfolio-display,postimagediv\";s:6:\"normal\";s:148:\"wpb_visual_composer,nectar-metabox-fullscreen-rows,nectar-metabox-page-header,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_page', '2'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:7:{i:0;s:32:\"nectar-metabox-portfolio-display\";i:1;s:26:\"nectar-metabox-page-header\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(24, 1, 'wp2_user-settings', 'libraryContent=browse&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=952px&edit_element_vcUIPanelTop=74px&editor=tinymce'),
(25, 1, 'wp2_user-settings-time', '1512041396'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:25:\"add-post-type-home_slider\";i:1;s:23:\"add-post-type-portfolio\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:16:\"add-project-type\";i:5;s:22:\"add-project-attributes\";}'),
(28, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Structure de la table `wp2_users`
--

CREATE TABLE `wp2_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp2_users`
--

INSERT INTO `wp2_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BBx7PReFplYp/jD3XPdxDKxDvpti5d.', 'admin', 'paulmauve@outlook.fr', '', '2017-11-30 11:08:34', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp3_commentmeta`
--

CREATE TABLE `wp3_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp3_comments`
--

CREATE TABLE `wp3_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_comments`
--

INSERT INTO `wp3_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-01 08:54:53', '2017-12-01 07:54:53', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp3_links`
--

CREATE TABLE `wp3_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp3_options`
--

CREATE TABLE `wp3_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_options`
--

INSERT INTO `wp3_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress3', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress3', 'yes'),
(3, 'blogname', 'Training', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paulmauve@outlook.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:14:\"avis/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'trainingtheme', 'yes'),
(41, 'stylesheet', 'trainingtheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:3:\"hey\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp3_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"right_sidebar\";a:0:{}s:12:\"left_sidebar\";a:2:{i:0;s:7:\"pages-2\";i:1;s:12:\"categories-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:8:\"blblblbl\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1512762895;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512806136;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512810863;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512115173;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(141, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"paulmauve@outlook.fr\";s:7:\"version\";s:5:\"4.9.1\";s:9:\"timestamp\";i:1512114931;}', 'no'),
(143, 'current_theme', 'trainingTheme', 'yes'),
(144, 'theme_mods_trainingtheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-2\";i:9;s:6:\"menu-3\";i:10;s:6:\"menu-1\";i:7;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'home_category', '8', 'yes'),
(163, 'category_children', 'a:0:{}', 'yes'),
(183, 'custom_colors', 'a:3:{s:7:\"headers\";a:6:{i:0;s:6:\"BDC6FF\";i:1;s:6:\"9DFF13\";i:2;s:6:\"8AEFFF\";i:3;s:6:\"FF71BD\";i:4;s:6:\"76FF97\";i:5;s:6:\"4376FF\";}s:7:\"content\";s:6:\"A9FFA4\";s:10:\"background\";s:6:\"39B2FF\";}', 'yes'),
(190, '_site_transient_timeout_theme_roots', '1512745020', 'no'),
(191, '_site_transient_theme_roots', 'a:4:{s:13:\"trainingtheme\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(192, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1512743227;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.1\";s:7:\"updated\";s:19:\"2017-12-05 11:28:54\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(193, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512743234;s:7:\"checked\";a:4:{s:13:\"trainingtheme\";s:5:\"1.0.1\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(194, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512743231;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp3_postmeta`
--

CREATE TABLE `wp3_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_postmeta`
--

INSERT INTO `wp3_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-home.php'),
(2, 1, '_edit_lock', '1512138677:1'),
(3, 4, '_wp_attached_file', '2017/12/cote.jpg'),
(4, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2017/12/cote.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cote-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"cote-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"cote-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"cote-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 1, '_edit_last', '1'),
(6, 1, '_thumbnail_id', '4'),
(9, 6, '_menu_item_type', 'custom'),
(10, 6, '_menu_item_menu_item_parent', '0'),
(11, 6, '_menu_item_object_id', '6'),
(12, 6, '_menu_item_object', 'custom'),
(13, 6, '_menu_item_target', ''),
(14, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 6, '_menu_item_xfn', ''),
(16, 6, '_menu_item_url', 'http://localhost:8888/wordpress3/'),
(17, 6, '_menu_item_orphaned', '1512118440'),
(18, 7, '_menu_item_type', 'post_type'),
(19, 7, '_menu_item_menu_item_parent', '0'),
(20, 7, '_menu_item_object_id', '2'),
(21, 7, '_menu_item_object', 'page'),
(22, 7, '_menu_item_target', ''),
(23, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 7, '_menu_item_xfn', ''),
(25, 7, '_menu_item_url', ''),
(26, 7, '_menu_item_orphaned', '1512118440'),
(27, 8, '_edit_last', '1'),
(28, 8, '_edit_lock', '1512138665:1'),
(29, 10, '_wp_attached_file', '2017/12/bcklog.png'),
(30, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2017/12/bcklog.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bcklog-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bcklog-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"bcklog-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"bcklog-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 8, '_thumbnail_id', '10'),
(40, 2, '_edit_lock', '1512490352:1'),
(41, 2, '_edit_last', '1'),
(42, 13, '_menu_item_type', 'custom'),
(43, 13, '_menu_item_menu_item_parent', '0'),
(44, 13, '_menu_item_object_id', '13'),
(45, 13, '_menu_item_object', 'custom'),
(46, 13, '_menu_item_target', ''),
(47, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 13, '_menu_item_xfn', ''),
(49, 13, '_menu_item_url', 'http://localhost:8888/wordpress3/'),
(50, 13, '_menu_item_orphaned', '1512133001'),
(51, 14, '_menu_item_type', 'post_type'),
(52, 14, '_menu_item_menu_item_parent', '0'),
(53, 14, '_menu_item_object_id', '2'),
(54, 14, '_menu_item_object', 'page'),
(55, 14, '_menu_item_target', ''),
(56, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 14, '_menu_item_xfn', ''),
(58, 14, '_menu_item_url', ''),
(59, 14, '_menu_item_orphaned', '1512133001'),
(60, 15, '_menu_item_type', 'custom'),
(61, 15, '_menu_item_menu_item_parent', '0'),
(62, 15, '_menu_item_object_id', '15'),
(63, 15, '_menu_item_object', 'custom'),
(64, 15, '_menu_item_target', ''),
(65, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 15, '_menu_item_xfn', ''),
(67, 15, '_menu_item_url', 'http://localhost:8888/wordpress3/'),
(68, 15, '_menu_item_orphaned', '1512133057'),
(69, 16, '_menu_item_type', 'post_type'),
(70, 16, '_menu_item_menu_item_parent', '0'),
(71, 16, '_menu_item_object_id', '2'),
(72, 16, '_menu_item_object', 'page'),
(73, 16, '_menu_item_target', ''),
(74, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 16, '_menu_item_xfn', ''),
(76, 16, '_menu_item_url', ''),
(78, 17, '_wp_trash_meta_status', 'publish'),
(79, 17, '_wp_trash_meta_time', '1512133184'),
(82, 18, '_menu_item_type', 'taxonomy'),
(83, 18, '_menu_item_menu_item_parent', '0'),
(84, 18, '_menu_item_object_id', '2'),
(85, 18, '_menu_item_object', 'category'),
(86, 18, '_menu_item_target', ''),
(87, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 18, '_menu_item_xfn', ''),
(89, 18, '_menu_item_url', ''),
(91, 19, '_menu_item_type', 'taxonomy'),
(92, 19, '_menu_item_menu_item_parent', '0'),
(93, 19, '_menu_item_object_id', '8'),
(94, 19, '_menu_item_object', 'category'),
(95, 19, '_menu_item_target', ''),
(96, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 19, '_menu_item_xfn', ''),
(98, 19, '_menu_item_url', ''),
(99, 21, '_edit_last', '1'),
(100, 21, '_edit_lock', '1512466214:1'),
(101, 21, '_wp_page_template', 'template-left-menu.php'),
(102, 23, '_menu_item_type', 'post_type'),
(103, 23, '_menu_item_menu_item_parent', '0'),
(104, 23, '_menu_item_object_id', '21'),
(105, 23, '_menu_item_object', 'page'),
(106, 23, '_menu_item_target', ''),
(107, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 23, '_menu_item_xfn', ''),
(109, 23, '_menu_item_url', ''),
(111, 24, '_menu_item_type', 'post_type'),
(112, 24, '_menu_item_menu_item_parent', '0'),
(113, 24, '_menu_item_object_id', '2'),
(114, 24, '_menu_item_object', 'page'),
(115, 24, '_menu_item_target', ''),
(116, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 24, '_menu_item_xfn', ''),
(118, 24, '_menu_item_url', ''),
(120, 28, '_edit_last', '1'),
(121, 28, '_edit_lock', '1512473078:1'),
(122, 28, '_wp_page_template', 'template-left-menu.php'),
(123, 30, '_menu_item_type', 'post_type'),
(124, 30, '_menu_item_menu_item_parent', '0'),
(125, 30, '_menu_item_object_id', '28'),
(126, 30, '_menu_item_object', 'page'),
(127, 30, '_menu_item_target', ''),
(128, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 30, '_menu_item_xfn', ''),
(130, 30, '_menu_item_url', ''),
(132, 31, '_edit_last', '1'),
(133, 31, '_edit_lock', '1512485692:1'),
(134, 32, '_edit_last', '1'),
(135, 32, '_edit_lock', '1512485706:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp3_posts`
--

CREATE TABLE `wp3_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_posts`
--

INSERT INTO `wp3_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-01 08:54:53', '2017-12-01 07:54:53', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-12-01 15:33:36', '2017-12-01 14:33:36', '', 0, 'http://localhost:8888/wordpress3/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-01 08:54:53', '2017-12-01 07:54:53', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n\r\n[avis]\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress3/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2017-12-05 16:00:27', '2017-12-05 15:00:27', '', 0, 'http://localhost:8888/wordpress3/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-12-01 09:40:45', '2017-12-01 08:40:45', '', 'cote', '', 'inherit', 'open', 'closed', '', 'cote', '', '', '2017-12-01 09:40:45', '2017-12-01 08:40:45', '', 1, 'http://localhost:8888/wordpress3/wp-content/uploads/2017/12/cote.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-12-01 09:47:27', '2017-12-01 08:47:27', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-01 09:47:27', '2017-12-01 08:47:27', '', 1, 'http://localhost:8888/wordpress3/2017/12/01/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-12-01 09:53:59', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-01 09:53:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress3/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2017-12-01 09:54:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-01 09:54:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress3/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2017-12-01 10:15:43', '2017-12-01 09:15:43', 'Lorem ipsum de lavega hoy de te sue', 'New article', '', 'publish', 'open', 'open', '', 'new-article', '', '', '2017-12-01 10:20:08', '2017-12-01 09:20:08', '', 0, 'http://localhost:8888/wordpress3/?p=8', 0, 'post', '', 0),
(10, 1, '2017-12-01 10:15:29', '2017-12-01 09:15:29', '', 'bcklog', '', 'inherit', 'open', 'closed', '', 'bcklog', '', '', '2017-12-01 10:15:29', '2017-12-01 09:15:29', '', 8, 'http://localhost:8888/wordpress3/wp-content/uploads/2017/12/bcklog.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2017-12-01 10:15:43', '2017-12-01 09:15:43', 'Lorem ipsum de lavega hoy de te sue', 'New article', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-12-01 10:15:43', '2017-12-01 09:15:43', '', 8, 'http://localhost:8888/wordpress3/2017/12/01/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-12-01 12:23:00', '2017-12-01 11:23:00', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress3/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-01 12:23:00', '2017-12-01 11:23:00', '', 2, 'http://localhost:8888/wordpress3/2017/12/01/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-12-01 13:56:39', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-01 13:56:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress3/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2017-12-01 13:56:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-01 13:56:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress3/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2017-12-01 13:57:36', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-01 13:57:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress3/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-12-01 13:57:47', '2017-12-01 12:57:47', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2017-12-05 10:52:12', '2017-12-05 09:52:12', '', 0, 'http://localhost:8888/wordpress3/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-12-01 13:59:44', '2017-12-01 12:59:44', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 12:59:44\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 12:59:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '84751ddb-2792-4cc0-84f1-112c472d7d27', '', '', '2017-12-01 13:59:44', '2017-12-01 12:59:44', '', 0, 'http://localhost:8888/wordpress3/2017/12/01/84751ddb-2792-4cc0-84f1-112c472d7d27/', 0, 'customize_changeset', '', 0),
(18, 1, '2017-12-01 16:10:11', '2017-12-01 15:10:11', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-12-05 10:52:03', '2017-12-05 09:52:03', '', 0, 'http://localhost:8888/wordpress3/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2017-12-01 16:10:11', '2017-12-01 15:10:11', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-12-05 10:52:03', '2017-12-05 09:52:03', '', 0, 'http://localhost:8888/wordpress3/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2017-12-05 09:32:25', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-05 09:32:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress3/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-12-05 09:34:08', '2017-12-05 08:34:08', 'Hello je suis toujours random', 'random', '', 'publish', 'closed', 'closed', '', 'random', '', '', '2017-12-05 10:32:35', '2017-12-05 09:32:35', '', 0, 'http://localhost:8888/wordpress3/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-12-05 09:34:03', '2017-12-05 08:34:03', 'Hello je suis random', 'random', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-05 09:34:03', '2017-12-05 08:34:03', '', 21, 'http://localhost:8888/wordpress3/2017/12/05/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-12-05 10:29:27', '2017-12-05 09:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-12-05 10:51:49', '2017-12-05 09:51:49', '', 0, 'http://localhost:8888/wordpress3/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-12-05 10:29:44', '2017-12-05 09:29:44', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-12-05 10:51:49', '2017-12-05 09:51:49', '', 0, 'http://localhost:8888/wordpress3/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2017-12-05 10:32:02', '2017-12-05 09:32:02', 'Hello je suis toujours random', 'Hello', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2017-12-05 10:32:02', '2017-12-05 09:32:02', '', 21, 'http://localhost:8888/wordpress3/2017/12/05/21-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2017-12-05 10:32:04', '2017-12-05 09:32:04', 'Hello je suis toujours random', 'Hello', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-05 10:32:04', '2017-12-05 09:32:04', '', 21, 'http://localhost:8888/wordpress3/2017/12/05/21-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-12-05 10:32:35', '2017-12-05 09:32:35', 'Hello je suis toujours random', 'random', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-05 10:32:35', '2017-12-05 09:32:35', '', 21, 'http://localhost:8888/wordpress3/2017/12/05/21-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-12-05 10:33:00', '2017-12-05 09:33:00', 'ahahhahahahhahahhhahaha', 'Aleatory', '', 'publish', 'closed', 'closed', '', 'aleatory', '', '', '2017-12-05 10:33:00', '2017-12-05 09:33:00', '', 0, 'http://localhost:8888/wordpress3/?page_id=28', 0, 'page', '', 0),
(29, 1, '2017-12-05 10:33:00', '2017-12-05 09:33:00', 'ahahhahahahhahahhhahaha', 'Aleatory', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-12-05 10:33:00', '2017-12-05 09:33:00', '', 28, 'http://localhost:8888/wordpress3/2017/12/05/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-12-05 10:51:49', '2017-12-05 09:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2017-12-05 10:51:49', '2017-12-05 09:51:49', '', 0, 'http://localhost:8888/wordpress3/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2017-12-05 15:57:09', '2017-12-05 14:57:09', 'Cool', 'avis1', '', 'publish', 'closed', 'closed', '', 'avis1', '', '', '2017-12-05 15:57:09', '2017-12-05 14:57:09', '', 0, 'http://localhost:8888/wordpress3/?post_type=avis&#038;p=31', 0, 'avis', '', 0),
(32, 1, '2017-12-05 15:57:26', '2017-12-05 14:57:26', 'Nul', 'avis2', '', 'publish', 'closed', 'closed', '', 'avis2', '', '', '2017-12-05 15:57:26', '2017-12-05 14:57:26', '', 0, 'http://localhost:8888/wordpress3/?post_type=avis&#038;p=32', 0, 'avis', '', 0),
(33, 1, '2017-12-05 16:00:27', '2017-12-05 15:00:27', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n\r\n[avis]\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress3/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-05 16:00:27', '2017-12-05 15:00:27', '', 2, 'http://localhost:8888/wordpress3/2017/12/05/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp3_termmeta`
--

CREATE TABLE `wp3_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp3_terms`
--

CREATE TABLE `wp3_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_terms`
--

INSERT INTO `wp3_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Nouveaute', 'nouveaute', 0),
(3, 'debut', 'debut', 0),
(4, 'prefab', 'prefab', 0),
(5, 'new', 'new', 0),
(6, 'random', 'random', 0),
(7, 'Menu 1', 'menu-1', 0),
(8, 'Old', 'old', 0),
(9, 'menu2', 'menu2', 0),
(10, 'menu3', 'menu3', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp3_term_relationships`
--

CREATE TABLE `wp3_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_term_relationships`
--

INSERT INTO `wp3_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(1, 4, 0),
(1, 8, 0),
(8, 2, 0),
(8, 5, 0),
(8, 6, 0),
(16, 7, 0),
(18, 9, 0),
(19, 9, 0),
(23, 10, 0),
(24, 10, 0),
(30, 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp3_term_taxonomy`
--

CREATE TABLE `wp3_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_term_taxonomy`
--

INSERT INTO `wp3_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'nav_menu', '', 0, 2),
(10, 10, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp3_usermeta`
--

CREATE TABLE `wp3_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_usermeta`
--

INSERT INTO `wp3_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp3_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp3_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"616a09a70b7354b13f90721ba607cdcd6994cbecf0b8ca2455386b5cb47a7e1e\";a:4:{s:10:\"expiration\";i:1512634991;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512462191;}}'),
(17, 1, 'wp3_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp3_user-settings', 'libraryContent=browse'),
(20, 1, 'wp3_user-settings-time', '1512117843'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '7');

-- --------------------------------------------------------

--
-- Structure de la table `wp3_users`
--

CREATE TABLE `wp3_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp3_users`
--

INSERT INTO `wp3_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BUjoR9PBmx7bTCGXgzzCaylScuOmpc1', 'admin', 'paulmauve@outlook.fr', '', '2017-12-01 07:54:53', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp4_commentmeta`
--

CREATE TABLE `wp4_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp4_comments`
--

CREATE TABLE `wp4_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_comments`
--

INSERT INTO `wp4_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-08 13:45:59', '2017-12-08 12:45:59', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp4_links`
--

CREATE TABLE `wp4_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp4_options`
--

CREATE TABLE `wp4_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_options`
--

INSERT INTO `wp4_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpressTP', 'yes'),
(2, 'home', 'http://localhost:8888/wordpressTP', 'yes'),
(3, 'blogname', 'TpWordpress', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paulmauve@outlook.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=30&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tptheme', 'yes'),
(41, 'stylesheet', 'tptheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:\"title\";s:3:\"cat\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '30', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp4_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:14:\"recent-posts-2\";}s:13:\"right_sidebar\";a:1:{i:0;s:12:\"categories-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1513039561;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1513082811;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513085704;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512737690;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(121, '_site_transient_timeout_browser_7661b048898b341cd2924bd8860426fe', '1513341975', 'no'),
(122, '_site_transient_browser_7661b048898b341cd2924bd8860426fe', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(135, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1512996388;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(137, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1513008262;s:7:\"checked\";a:4:{s:7:\"tptheme\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(138, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512996396;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(141, 'current_theme', 'TpTheme', 'yes'),
(142, 'theme_mods_tptheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(148, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1513023734', 'no'),
(149, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:14:\"WordCamp Paris\";s:3:\"url\";s:31:\"https://2018.paris.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-03-09 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:5:\"Paris\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:48.82406919999999672654666937887668609619140625;s:9:\"longitude\";d:2.372298900000000099197450253996066749095916748046875;}}}}', 'no'),
(150, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1513023735', 'no');
INSERT INTO `wp4_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(151, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 07:26:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Sep 2017 11:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1860285\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/gen5-evenement-numerique-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"BlendWebMix 2017 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WzJcLpFnZ7Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Aug 2017 10:00:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1780344\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"Le BlendWebMix 2017 aura lieu les 26 et 27 octobre 2017 à Lyon. Pour l&#8217;occasion, WPFR vous propose une billetterie communautaire pour vous faire profiter de tarifs avantageux. Le BlendWebMix est un évènement Web similaire aux WordCamps organisés par la communauté WordPress. Elle rassemble des orateurs talentueux aux multiples compétences Web qui vous feront partager leurs<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WzJcLpFnZ7Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"Compte rendu de la réunion du 10 juillet 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/HOXhXbdFR7A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Aug 2017 06:22:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Association\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1689645\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1481:\"Présents : Xavier Borderie, Benoît Catherineau et Aurélien Denis L’ordre du jour Les finances Actions en cours et à venir Questions diverses Aurélien Denis, Président, ouvre la séance en rappelant que l&#8217;association compte à ce jour 225 membres à jour de leur cotisation. Il passe la parole à Xavier pour parler des finances. Les finances<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/HOXhXbdFR7A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/compte-rendu-reunion-10-juillet-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"Les résultats du grand sondage de la communauté francophone de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_z7qQytCHB8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Jul 2017 12:52:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"sondage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1647338\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"Fin mai, un grand sondage était lancé par Maxime Bernard-Jacquet au nom de la communauté francophone de WordPress afin de mieux identifier comment elle se composait ! Aujourd&#8217;hui les résultats sont disponibles. La première statistique intéressante est la participation, puisque ce sont 1000 personnes qui ont répondues à ce questionnaire. Ceci permet donc d&#8217;avoir des<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_z7qQytCHB8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Cap des 200 adhérents WPFR franchi !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/dZ9emWhTWPc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Jun 2017 15:16:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1642124\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1476:\"C&#8217;est officiel, l&#8217;association WordPress Francophone compte 200 membres à jour de cotisation ! Ouvertes depuis septembre 2016, les adhésions en ligne remportent un vif succès et nous sommes heureux de voir que la communauté WordPress se porte bien. On se donne rendez-vous à Paris pour le WordCamp Europe du 16 et 17 juin prochain. Le<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/dZ9emWhTWPc\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Annonce de la prochaine Assemblée Générale du 12/12\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/g8Lqzfsj1e0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wpfr.net/annonce-prochaine-assemblee-generale-12-12/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Dec 2017 19:28:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1641226\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Cher membre, Nous vous serions très obligés de bien vouloir assister à l’Assemblée Générale annuelle de l’association WordPress Francophone qui aura lieu mardi 12 décembre 2017, à 20 h 00. Cette assemblée générale se déroulera en direct sur YouTube par l’intermédiaire de l’application Google Hangout visible ici-même : L’ordre du jour abordé sera le suivant : Rapport<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=g8Lqzfsj1e0:6ZmWJIqm-Bg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=g8Lqzfsj1e0:6ZmWJIqm-Bg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=g8Lqzfsj1e0:6ZmWJIqm-Bg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=g8Lqzfsj1e0:6ZmWJIqm-Bg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=g8Lqzfsj1e0:6ZmWJIqm-Bg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=g8Lqzfsj1e0:6ZmWJIqm-Bg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/g8Lqzfsj1e0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wpfr.net/annonce-prochaine-assemblee-generale-12-12/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wpfr.net/annonce-prochaine-assemblee-generale-12-12/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Un grand sondage pour mieux connaître la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ArHvRJvd55Y/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 May 2017 14:15:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1638548\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1516:\"Maxime et Alexandre, les « chefs cuistot » de la communauté viennent de lancer un sondage à destination de la communauté francophone de WordPress. L&#8217;objectif est de mieux connaitre celles et ceux qui la composent. Alors que vous soyez débutant ou confirmé, simple utilisateur, bidouilleur passionné ou professionnel venez répondre à ce questionnaire qui permettra de mieux<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ArHvRJvd55Y\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Compte rendu de la réunion du bureau du 9 mars 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/scUWeRFptEQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Apr 2017 09:02:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"Réunion\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1629790\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1529:\"Présent : Willy Bahuaud, Xavier, Borderie, Benoît Catherineau et Aurélien Denis L’élection du nouveau bureau a été clôturée le 4 mars 2017. Le résultat donne vainqueur les 3 candidats suivants : Benoît Catherineau, Xavier Borderie, Aurélien Denis. Cette réunion a pour objet l’installation du nouveau bureau de WPFR. L’ordre du jour Répartition des postes de Président, Secrétaire<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/scUWeRFptEQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"foYTkxDzvyKHcSftiXy1MGaAu2M\";s:13:\"last-modified\";s:29:\"Mon, 11 Dec 2017 07:52:49 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 11 Dec 2017 08:22:14 GMT\";s:7:\"expires\";s:29:\"Mon, 11 Dec 2017 08:22:14 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,38,37,35\"\";}}s:5:\"build\";s:14:\"20130911030210\";}', 'no');
INSERT INTO `wp4_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(152, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1513023735', 'no'),
(153, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1512980535', 'no'),
(154, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1513023737', 'no'),
(155, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Comment créer un Espace de Membres avec votre WordPress ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/eTpoqvkpD9o/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpformation.com/espace-membres-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Dec 2017 08:04:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:589:\"\n		        Si vous êtes plusieurs à utiliser le même site WordPress, vous connaissez déjà la notion de rôles que vous pouvez définir dans la rubrique  “utilisateurs” de votre Dashboard. L’espace de membres reprend cette notion mais il vous permet surtout de créer un espace dédié spécifiquement à vos utilisateurs. &#160; Pourquoi créer un Espace de Membres [&#8230;]\n\n\nComment créer un Espace de Membres avec votre WordPress ? est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1428:\"<p><img width=\"877\" height=\"547\" src=\"https://cdn.wpformation.com/wp-content/uploads/2017/11/espace-de-membres-WordPress.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"espace de membres WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Si vous êtes plusieurs à utiliser le même site WordPress, vous connaissez déjà la notion de rôles que vous pouvez définir dans la rubrique  “utilisateurs” de votre Dashboard. L’espace de membres reprend cette notion mais il vous permet surtout de créer un espace dédié spécifiquement à vos utilisateurs. &#160; Pourquoi créer un Espace de Membres [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/espace-membres-wordpress/\">Comment créer un Espace de Membres avec votre WordPress ?</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/eTpoqvkpD9o\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpformation.com/espace-membres-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"L’extension « Press This » de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/f6qqh4RrMWY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://dfarnier.fr/lextension-press-this/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Dec 2017 11:56:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:613:\"\n		        Vous consultez un site internet, et vous aimeriez pouvoir facilement recopier tout ou partie de son contenu dans un nouvel article publié sur votre site WordPress. C&#8217;est exactement ce que permet l&#8217;extension « Press This ». Jusqu&#8217;à la version 4.8, l&#8217;outil était intégré au noyau de WordPress. Depuis la version 4.9, il faut installer l&#8217;extension « Press This ». &#8230; Suite de l\'article L&#8217;extension « Press This » de WordPress ...\nCet article L&rsquo;extension « Press This » de WordPress est apparu en premier sur Débuter WordPress.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Daniel Farnier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:933:\"<p>Vous consultez un site internet, et vous aimeriez pouvoir facilement recopier tout ou partie de son contenu dans un nouvel article publié sur votre site WordPress. C&#8217;est exactement ce que permet l&#8217;extension « Press This ». Jusqu&#8217;à la version 4.8, l&#8217;outil était intégré au noyau de WordPress. Depuis la version 4.9, il faut installer l&#8217;extension « Press This ». &#8230; <a href=\"https://dfarnier.fr/lextension-press-this/\" class=\"more-link\">Suite de l\'article <span class=\"screen-reader-text\">L&#8217;extension « Press This » de WordPress</span> ...</a></p>\n<p>Cet article <a rel=\"nofollow\" href=\"https://dfarnier.fr/lextension-press-this/\">L&rsquo;extension « Press This » de WordPress</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://dfarnier.fr\">Débuter WordPress</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/f6qqh4RrMWY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://dfarnier.fr/lextension-press-this/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WordPress en 2018 et la révolution Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/O1Lt2NL6wRs/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"http://www.geekpress.fr/wordpress-en-2018-et-la-revolution-gutenberg/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Dec 2017 19:12:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:501:\"\n		        Chaque année en décembre se déroule le WordCamp US (voir notre article sur l’édition 2016), l’évènement le plus attendu avec le WordCamp Europe. En plus des conférences et du contributeur day, c’est aussi l’occasion d’assister au State of the Word (#SOTW) présenté par Matt Mullenweg qui annonce les changements majeurs sur WordPress. Les 2000 participants [&#8230;]\nCet article WordPress en 2018 et la révolution Gutenberg est apparu en premier sur GeekPress.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Geekpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:737:\"<p>Chaque année en décembre se déroule le WordCamp US (voir notre article sur l’édition 2016), l’évènement le plus attendu avec le WordCamp Europe. En plus des conférences et du contributeur day, c’est aussi l’occasion d’assister au State of the Word (#SOTW) présenté par Matt Mullenweg qui annonce les changements majeurs sur WordPress. Les 2000 participants [&#8230;]</p>\n<p>Cet article <a rel=\"nofollow\" href=\"http://www.geekpress.fr/wordpress-en-2018-et-la-revolution-gutenberg/\">WordPress en 2018 et la révolution Gutenberg</a> est apparu en premier sur <a rel=\"nofollow\" href=\"http://www.geekpress.fr\">GeekPress</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/O1Lt2NL6wRs\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"http://www.geekpress.fr/wordpress-en-2018-et-la-revolution-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"L’accessibilité numérique : une composante essentielle pour un site WordPress de qualité\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/kgxuTHe-SvE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://www.wpnormandie.fr/laccessibilite-numerique-une-composante-essentielle-pour-un-site-wordpress-de-qualite/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Dec 2017 14:24:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:408:\"\n		        L’accessibilité numérique permet aux personnes en situation de handicap d’utiliser votre site WordPress comme tout le monde, sans blocage, sans perte d’information et en utilisant tous les services que vous mettez à la disposition des internautes. D’après l’organisme commun des institutions de rente et de prévoyance (ocirp), 20 % de la population en France est [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:478:\"L’accessibilité numérique permet aux personnes en situation de handicap d’utiliser votre site WordPress comme tout le monde, sans blocage, sans perte d’information et en utilisant tous les services que vous mettez à la disposition des internautes. D’après l’organisme commun des institutions de rente et de prévoyance (ocirp), 20 % de la population en France est [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/kgxuTHe-SvE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://www.wpnormandie.fr/laccessibilite-numerique-une-composante-essentielle-pour-un-site-wordpress-de-qualite/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"FacetWP vs Search &amp; Filter : quel est le meilleur plugin de filtres ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/17oNxqPzpW4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpformation.com/facetwp-vs-search-filter/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Dec 2017 07:45:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:593:\"\n		        Lorsque l\'on crée des sites WordPress avancés, il arrive que l\'ont ait besoin d\'un plugin qui permette à l\'internaute de filtrer les contenus disponibles sur le site afin qu\'il puisse trouver plus rapidement les informations qu\'il recherche. On retrouve les filtres le plus fréquemment sur les sites e-commerce mais ils peuvent servir pour tout type [&#8230;]\n\n\nFacetWP vs Search &amp; Filter : quel est le meilleur plugin de filtres ? est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1445:\"<p><img width=\"1118\" height=\"381\" src=\"https://cdn.wpformation.com/wp-content/uploads/2017/10/facetwp-vs-search-and-filter-pro.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"facetwp vs search &amp; filter pro\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Lorsque l\'on crée des sites WordPress avancés, il arrive que l\'ont ait besoin d\'un plugin qui permette à l\'internaute de filtrer les contenus disponibles sur le site afin qu\'il puisse trouver plus rapidement les informations qu\'il recherche. On retrouve les filtres le plus fréquemment sur les sites e-commerce mais ils peuvent servir pour tout type [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/facetwp-vs-search-filter/\">FacetWP vs Search &amp; Filter : quel est le meilleur plugin de filtres ?</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/17oNxqPzpW4\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpformation.com/facetwp-vs-search-filter/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Supporter les galeries d’images WordPress en HTML5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/rmn4bLD4LY0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wpchannel.com/support-galeries-wordpress-html5/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 03 Dec 2017 15:34:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:386:\"\n		        WordPress ajoute des styles par défaut sur les galeries d&#8217;images de vos articles pour les thèmes qui ne gèrent pas le support en HTML5 de ce type d&#8217;élément. À l&#8217;aide d&#8217;un bout de code, vous pourrez désactiver ces styles et ainsi avoir à nouveau la possibilité d&#8217;appliquer vos propres styles CSS. Un thème bien codé [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:666:\"<img width=\"448\" height=\"300\" src=\"https://wpchannel.com/images/2017/04/museum-gallery-448x300.jpg\" class=\"webfeedsFeaturedVisual wp-post-image\" alt=\"\" style=\"margin: auto;margin-bottom: 5px;max-width: 100%\" />WordPress ajoute des styles par défaut sur les galeries d&#8217;images de vos articles pour les thèmes qui ne gèrent pas le support en HTML5 de ce type d&#8217;élément. À l&#8217;aide d&#8217;un bout de code, vous pourrez désactiver ces styles et ainsi avoir à nouveau la possibilité d&#8217;appliquer vos propres styles CSS. Un thème bien codé [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/rmn4bLD4LY0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wpchannel.com/support-galeries-wordpress-html5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Version 4.9.1 : WordPress corrige sécurité et bug\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/RSXCI6g3B2Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://www.wpnormandie.fr/version-4-9-1-wordpress-corrige-securite-et-bug/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 30 Nov 2017 07:13:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:369:\"\n		        Ce n&#8217;est pas moins de 11 bugs et des problèmes de sécurité qui sont corrigés dans la version « WordPress 4.9.1 » qui vient de sortir. Si votre installation ne met pas à jour automatiquement votre site nous vous conseillons vivement de faire cette mise à jour d’urgence. Consulter cet article que nous avions fait sur les [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:439:\"Ce n&#8217;est pas moins de 11 bugs et des problèmes de sécurité qui sont corrigés dans la version « WordPress 4.9.1 » qui vient de sortir. Si votre installation ne met pas à jour automatiquement votre site nous vous conseillons vivement de faire cette mise à jour d’urgence. Consulter cet article que nous avions fait sur les [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/RSXCI6g3B2Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://www.wpnormandie.fr/version-4-9-1-wordpress-corrige-securite-et-bug/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"Comment partager vos brouillons d’articles WordPress à l’aide de liens temporaires ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/jBmYWTg8aq0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpformation.com/partager-brouillons-articles-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Nov 2017 07:35:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:618:\"\n		        La plupart du temps, donner à vos collaborateurs un accès sans restrictions à votre tableau de bord n’est pas une bonne idée. Après tout, plus le nombre de personnes disposant des privilèges administrateurs est élevé, plus la chance est grande qu’un problème entraînant de lourdes conséquences survienne sur votre site. Un excellent moyen de limiter [&#8230;]\n\n\nComment partager vos brouillons d’articles WordPress à l’aide de liens temporaires ? est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"<p><img width=\"931\" height=\"516\" src=\"https://cdn.wpformation.com/wp-content/uploads/2017/11/Fotolia_166136979_S.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"Partager brouillons articles WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />La plupart du temps, donner à vos collaborateurs un accès sans restrictions à votre tableau de bord n’est pas une bonne idée. Après tout, plus le nombre de personnes disposant des privilèges administrateurs est élevé, plus la chance est grande qu’un problème entraînant de lourdes conséquences survienne sur votre site. Un excellent moyen de limiter [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/partager-brouillons-articles-wordpress/\">Comment partager vos brouillons d’articles WordPress à l’aide de liens temporaires ?</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/jBmYWTg8aq0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpformation.com/partager-brouillons-articles-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"mUiP8sitQoabC7HnyvQjzfjW5r4\";s:13:\"last-modified\";s:29:\"Mon, 11 Dec 2017 08:18:17 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 11 Dec 2017 08:22:16 GMT\";s:7:\"expires\";s:29:\"Mon, 11 Dec 2017 08:22:16 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,38,37,35\"\";}}s:5:\"build\";s:14:\"20130911030210\";}', 'no'),
(156, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1513023737', 'no'),
(157, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1512980537', 'no'),
(158, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1513023737', 'no'),
(159, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/g8Lqzfsj1e0/\'>Annonce de la prochaine Assemblée Générale du 12/12</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/eTpoqvkpD9o/\'>Comment créer un Espace de Membres avec votre WordPress ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/f6qqh4RrMWY/\'>L’extension « Press This » de WordPress</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/O1Lt2NL6wRs/\'>WordPress en 2018 et la révolution Gutenberg</a></li></ul></div>', 'no'),
(164, 'category_children', 'a:0:{}', 'yes'),
(182, '_site_transient_timeout_theme_roots', '1513010061', 'no'),
(183, '_site_transient_theme_roots', 'a:4:{s:7:\"tptheme\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp4_postmeta`
--

CREATE TABLE `wp4_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_postmeta`
--

INSERT INTO `wp4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-views.php'),
(2, 2, '_edit_lock', '1513004076:1'),
(3, 2, '_edit_last', '1'),
(4, 5, '_wp_trash_meta_status', 'publish'),
(5, 5, '_wp_trash_meta_time', '1512739112'),
(6, 1, '_edit_lock', '1512981925:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1512983527:1'),
(9, 7, '_wp_page_template', 'template-views.php'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1512981962:1'),
(14, 1, '_edit_last', '1'),
(17, 12, '_edit_last', '1'),
(18, 12, '_edit_lock', '1512983047:1'),
(21, 14, '_wp_attached_file', '2017/12/City2.jpg'),
(22, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2017/12/City2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"City2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"City2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"City2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"City2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_wp_attached_file', '2017/12/villa3.jpg'),
(24, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:18:\"2017/12/villa3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"villa3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"villa3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"villa3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2017/12/villa2.jpg'),
(26, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:18:\"2017/12/villa2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"villa2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"villa2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"villa2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 1, '_thumbnail_id', '14'),
(30, 9, '_thumbnail_id', '15'),
(33, 12, '_thumbnail_id', '16'),
(36, 7, '_wp_trash_meta_status', 'publish'),
(37, 7, '_wp_trash_meta_time', '1512984196'),
(38, 7, '_wp_desired_post_slug', 'category'),
(39, 17, '_edit_last', '1'),
(40, 17, '_edit_lock', '1512989018:1'),
(43, 19, '_edit_last', '1'),
(44, 19, '_edit_lock', '1513004350:1'),
(49, 23, '_edit_last', '1'),
(50, 23, '_edit_lock', '1512996435:1'),
(55, 25, '_edit_last', '1'),
(56, 25, '_edit_lock', '1513002321:1'),
(57, 25, '_thumbnail_id', '14'),
(58, 26, '_edit_last', '1'),
(59, 26, '_edit_lock', '1512997714:1'),
(60, 26, '_wp_trash_meta_status', 'publish'),
(61, 26, '_wp_trash_meta_time', '1512997858'),
(62, 26, '_wp_desired_post_slug', 'iiii'),
(63, 27, '_edit_last', '1'),
(64, 27, '_edit_lock', '1513002352:1'),
(65, 27, '_thumbnail_id', '15'),
(66, 28, '_menu_item_type', 'post_type'),
(67, 28, '_menu_item_menu_item_parent', '0'),
(68, 28, '_menu_item_object_id', '2'),
(69, 28, '_menu_item_object', 'page'),
(70, 28, '_menu_item_target', ''),
(71, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 28, '_menu_item_xfn', ''),
(73, 28, '_menu_item_url', ''),
(74, 28, '_menu_item_orphaned', '1513004228'),
(75, 29, '_menu_item_type', 'post_type'),
(76, 29, '_menu_item_menu_item_parent', '0'),
(77, 29, '_menu_item_object_id', '2'),
(78, 29, '_menu_item_object', 'page'),
(79, 29, '_menu_item_target', ''),
(80, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 29, '_menu_item_xfn', ''),
(82, 29, '_menu_item_url', ''),
(83, 29, '_menu_item_orphaned', '1513004229'),
(84, 30, '_edit_last', '1'),
(85, 30, '_edit_lock', '1513008117:1'),
(86, 30, '_wp_page_template', 'template-views.php'),
(87, 2, '_wp_trash_meta_status', 'publish'),
(88, 2, '_wp_trash_meta_time', '1513004343'),
(89, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(90, 32, '_wp_trash_meta_status', 'publish'),
(91, 32, '_wp_trash_meta_time', '1513004381');

-- --------------------------------------------------------

--
-- Structure de la table `wp4_posts`
--

CREATE TABLE `wp4_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_posts`
--

INSERT INTO `wp4_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-08 13:45:59', '2017-12-08 12:45:59', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-12-11 09:47:44', '2017-12-11 08:47:44', '', 0, 'http://localhost:8888/wordpressTP/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-08 13:45:59', '2017-12-08 12:45:59', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpressTP/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2017-12-11 15:59:03', '2017-12-11 14:59:03', '', 0, 'http://localhost:8888/wordpressTP/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-12-08 13:46:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-08 13:46:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpressTP/?p=3', 0, 'post', '', 0),
(4, 1, '2017-12-08 14:17:16', '2017-12-08 13:17:16', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpressTP/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-08 14:17:16', '2017-12-08 13:17:16', '', 2, 'http://localhost:8888/wordpressTP/2017/12/08/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-12-08 14:18:30', '2017-12-08 13:18:30', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-08 13:18:30\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-08 13:18:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2da32f70-7871-4224-b42b-6098a95fb63c', '', '', '2017-12-08 14:18:30', '2017-12-08 13:18:30', '', 0, 'http://localhost:8888/wordpressTP/2017/12/08/2da32f70-7871-4224-b42b-6098a95fb63c/', 0, 'customize_changeset', '', 0),
(6, 1, '2017-12-08 14:35:04', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-08 14:35:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpressTP/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-12-08 14:36:06', '2017-12-08 13:36:06', '', 'Category', '', 'trash', 'closed', 'closed', '', 'category__trashed', '', '', '2017-12-11 10:23:16', '2017-12-11 09:23:16', '', 0, 'http://localhost:8888/wordpressTP/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-12-08 14:36:06', '2017-12-08 13:36:06', '', 'Category', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-08 14:36:06', '2017-12-08 13:36:06', '', 7, 'http://localhost:8888/wordpressTP/2017/12/08/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-12-11 09:23:46', '2017-12-11 08:23:46', 'lorem ipsum lalalala c\'est trop bien la vie lalalalala', 'Hello world', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-12-11 09:48:04', '2017-12-11 08:48:04', '', 0, 'http://localhost:8888/wordpressTP/?p=9', 0, 'post', '', 0),
(10, 1, '2017-12-11 09:23:46', '2017-12-11 08:23:46', 'lorem ipsum lalalala c\'est trop bien la vie lalalalala', 'Hello world', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-12-11 09:23:46', '2017-12-11 08:23:46', '', 9, 'http://localhost:8888/wordpressTP/2017/12/11/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-12-11 09:24:22', '2017-12-11 08:24:22', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-11 09:24:22', '2017-12-11 08:24:22', '', 1, 'http://localhost:8888/wordpressTP/2017/12/11/1-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-12-11 09:26:09', '2017-12-11 08:26:09', 'skraaaaaaaaa papapakaka skidipapapa and a poupoupouprrrrpoum poumpoum u dont know', 'The things goes', '', 'publish', 'open', 'open', '', 'the-things-goes', '', '', '2017-12-11 09:49:07', '2017-12-11 08:49:07', '', 0, 'http://localhost:8888/wordpressTP/?p=12', 0, 'post', '', 0),
(13, 1, '2017-12-11 09:26:09', '2017-12-11 08:26:09', 'skraaaaaaaaa papapakaka skidipapapa and a poupoupouprrrrpoum poumpoum u dont know', 'The things goes', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-12-11 09:26:09', '2017-12-11 08:26:09', '', 12, 'http://localhost:8888/wordpressTP/2017/12/11/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-12-11 09:46:37', '2017-12-11 08:46:37', '', 'City2', '', 'inherit', 'open', 'closed', '', 'city2', '', '', '2017-12-11 09:46:37', '2017-12-11 08:46:37', '', 1, 'http://localhost:8888/wordpressTP/wp-content/uploads/2017/12/City2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-12-11 09:46:55', '2017-12-11 08:46:55', '', 'villa3', '', 'inherit', 'open', 'closed', '', 'villa3', '', '', '2017-12-11 09:46:55', '2017-12-11 08:46:55', '', 9, 'http://localhost:8888/wordpressTP/wp-content/uploads/2017/12/villa3.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-12-11 09:47:20', '2017-12-11 08:47:20', '', 'villa2', '', 'inherit', 'open', 'closed', '', 'villa2', '', '', '2017-12-11 09:47:20', '2017-12-11 08:47:20', '', 12, 'http://localhost:8888/wordpressTP/wp-content/uploads/2017/12/villa2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2017-12-11 11:38:38', '2017-12-11 10:38:38', 'take off the jacket i said babe mans not hot', 'Mans not hot', '', 'publish', 'open', 'open', '', 'mans-not-hot', '', '', '2017-12-11 11:44:23', '2017-12-11 10:44:23', '', 0, 'http://localhost:8888/wordpressTP/?p=17', 0, 'post', '', 0),
(18, 1, '2017-12-11 11:38:38', '2017-12-11 10:38:38', 'take the jacket i sais babe mans not hot', 'Mans not hot', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-12-11 11:38:38', '2017-12-11 10:38:38', '', 17, 'http://localhost:8888/wordpressTP/2017/12/11/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-12-11 11:39:39', '2017-12-11 10:39:39', 'no ketchup, just sauce, raw sauce', 'Sauce', '', 'publish', 'open', 'open', '', 'sauce', '', '', '2017-12-11 11:39:39', '2017-12-11 10:39:39', '', 0, 'http://localhost:8888/wordpressTP/?p=19', 0, 'post', '', 0),
(20, 1, '2017-12-11 11:39:39', '2017-12-11 10:39:39', 'no ketchup, just sauce, raw sauce', 'Sauce', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-12-11 11:39:39', '2017-12-11 10:39:39', '', 19, 'http://localhost:8888/wordpressTP/2017/12/11/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-12-11 11:44:23', '2017-12-11 10:44:23', 'take off the jacket i said babe mans not hot', 'Mans not hot', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-12-11 11:44:23', '2017-12-11 10:44:23', '', 17, 'http://localhost:8888/wordpressTP/2017/12/11/17-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-12-11 11:46:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-11 11:46:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpressTP/?p=22', 0, 'post', '', 0),
(23, 1, '2017-12-11 11:46:18', '2017-12-11 10:46:18', 'on test des choses', 'Test', '', 'publish', 'open', 'open', '', 'test', '', '', '2017-12-11 11:46:52', '2017-12-11 10:46:52', '', 0, 'http://localhost:8888/wordpressTP/?p=23', 0, 'post', '', 0),
(24, 1, '2017-12-11 11:46:18', '2017-12-11 10:46:18', 'on test des choses', 'Test', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-11 11:46:18', '2017-12-11 10:46:18', '', 23, 'http://localhost:8888/wordpressTP/2017/12/11/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-12-11 14:09:16', '2017-12-11 13:09:16', '', 'Slider', '', 'publish', 'closed', 'closed', '', 'slider', '', '', '2017-12-11 14:09:53', '2017-12-11 13:09:53', '', 0, 'http://localhost:8888/wordpressTP/?post_type=slider&#038;p=25', 0, 'slider', '', 0),
(26, 1, '2017-12-11 14:10:48', '2017-12-11 13:10:48', '', 'iiii', '', 'trash', 'closed', 'closed', '', 'iiii__trashed', '', '', '2017-12-11 14:10:58', '2017-12-11 13:10:58', '', 0, 'http://localhost:8888/wordpressTP/?post_type=slider&#038;p=26', 0, 'slider', '', 0),
(27, 1, '2017-12-11 15:27:59', '2017-12-11 14:27:59', '', 'nouveau', '', 'publish', 'closed', 'closed', '', 'nouveau', '', '', '2017-12-11 15:27:59', '2017-12-11 14:27:59', '', 0, 'http://localhost:8888/wordpressTP/?post_type=slider&#038;p=27', 0, 'slider', '', 0),
(28, 1, '2017-12-11 15:57:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-11 15:57:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpressTP/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2017-12-11 15:57:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-11 15:57:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpressTP/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2017-12-11 15:58:16', '2017-12-11 14:58:16', 'Ici vous vous trouvez sur mon antre soyez les bienvenues a vous les aventuriers de la faille', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2017-12-11 15:58:49', '2017-12-11 14:58:49', '', 0, 'http://localhost:8888/wordpressTP/?page_id=30', 0, 'page', '', 0),
(31, 1, '2017-12-11 15:58:16', '2017-12-11 14:58:16', 'Ici vous vous trouvez sur mon antre soyez les bienvenues a vous les aventuriers de la faille', 'Accueil', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-12-11 15:58:16', '2017-12-11 14:58:16', '', 30, 'http://localhost:8888/wordpressTP/2017/12/11/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-12-11 15:59:41', '2017-12-11 14:59:41', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-11 14:59:41\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-11 14:59:41\"\n    },\n    \"page_on_front\": {\n        \"value\": \"30\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-11 14:59:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '37497708-26e0-46e4-b82c-0b7670c4ec63', '', '', '2017-12-11 15:59:41', '2017-12-11 14:59:41', '', 0, 'http://localhost:8888/wordpressTP/2017/12/11/37497708-26e0-46e4-b82c-0b7670c4ec63/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp4_termmeta`
--

CREATE TABLE `wp4_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp4_terms`
--

CREATE TABLE `wp4_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_terms`
--

INSERT INTO `wp4_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Recit', 'recit', 0),
(3, 'Boom', 'boom', 0),
(4, 'Bigshaq', 'bigshaq', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp4_term_relationships`
--

CREATE TABLE `wp4_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_term_relationships`
--

INSERT INTO `wp4_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(9, 2, 0),
(12, 4, 0),
(17, 4, 0),
(19, 4, 0),
(23, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp4_term_taxonomy`
--

CREATE TABLE `wp4_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_term_taxonomy`
--

INSERT INTO `wp4_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp4_usermeta`
--

CREATE TABLE `wp4_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_usermeta`
--

INSERT INTO `wp4_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp4_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp4_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ec337d4b4e5a9d529caf91f72711af67a8034aed7f0ad28beb9bafabb29e800f\";a:4:{s:10:\"expiration\";i:1513153330;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512980530;}}'),
(17, 1, 'wp4_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp4_user-settings', 'libraryContent=browse'),
(20, 1, 'wp4_user-settings-time', '1512981998'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:20:\"add-post-type-slider\";i:1;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp4_users`
--

CREATE TABLE `wp4_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp4_users`
--

INSERT INTO `wp4_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BE/3IbYc30/sbhUKkE.xjRiR4CSM6y.', 'admin', 'paulmauve@outlook.fr', '', '2017-12-08 12:45:59', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-30 11:56:13', '2017-11-30 10:56:13', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress', 'yes'),
(3, 'blogname', 'TrainingWordpress', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paulmauve@outlook.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:74:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:39:\"siteorigin-panels/siteorigin-panels.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '1', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1512082574;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512125789;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512125790;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(118, '_site_transient_timeout_theme_roots', '1512041184', 'no'),
(119, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(124, '_site_transient_timeout_browser_7661b048898b341cd2924bd8860426fe', '1512644193', 'no'),
(125, '_site_transient_browser_7661b048898b341cd2924bd8860426fe', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1512082596', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(127, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 30 Nov 2017 10:42:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Sep 2017 11:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1860285\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/gen5-evenement-numerique-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"BlendWebMix 2017 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WzJcLpFnZ7Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Aug 2017 10:00:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1780344\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"Le BlendWebMix 2017 aura lieu les 26 et 27 octobre 2017 à Lyon. Pour l&#8217;occasion, WPFR vous propose une billetterie communautaire pour vous faire profiter de tarifs avantageux. Le BlendWebMix est un évènement Web similaire aux WordCamps organisés par la communauté WordPress. Elle rassemble des orateurs talentueux aux multiples compétences Web qui vous feront partager leurs<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WzJcLpFnZ7Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"Compte rendu de la réunion du 10 juillet 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/HOXhXbdFR7A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Aug 2017 06:22:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Association\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1689645\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1481:\"Présents : Xavier Borderie, Benoît Catherineau et Aurélien Denis L’ordre du jour Les finances Actions en cours et à venir Questions diverses Aurélien Denis, Président, ouvre la séance en rappelant que l&#8217;association compte à ce jour 225 membres à jour de leur cotisation. Il passe la parole à Xavier pour parler des finances. Les finances<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/HOXhXbdFR7A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/compte-rendu-reunion-10-juillet-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"Les résultats du grand sondage de la communauté francophone de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_z7qQytCHB8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Jul 2017 12:52:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"sondage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1647338\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"Fin mai, un grand sondage était lancé par Maxime Bernard-Jacquet au nom de la communauté francophone de WordPress afin de mieux identifier comment elle se composait ! Aujourd&#8217;hui les résultats sont disponibles. La première statistique intéressante est la participation, puisque ce sont 1000 personnes qui ont répondues à ce questionnaire. Ceci permet donc d&#8217;avoir des<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_z7qQytCHB8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Cap des 200 adhérents WPFR franchi !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/dZ9emWhTWPc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Jun 2017 15:16:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1642124\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1476:\"C&#8217;est officiel, l&#8217;association WordPress Francophone compte 200 membres à jour de cotisation ! Ouvertes depuis septembre 2016, les adhésions en ligne remportent un vif succès et nous sommes heureux de voir que la communauté WordPress se porte bien. On se donne rendez-vous à Paris pour le WordCamp Europe du 16 et 17 juin prochain. Le<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/dZ9emWhTWPc\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Un grand sondage pour mieux connaître la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ArHvRJvd55Y/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 May 2017 14:15:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1638548\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1516:\"Maxime et Alexandre, les « chefs cuistot » de la communauté viennent de lancer un sondage à destination de la communauté francophone de WordPress. L&#8217;objectif est de mieux connaitre celles et ceux qui la composent. Alors que vous soyez débutant ou confirmé, simple utilisateur, bidouilleur passionné ou professionnel venez répondre à ce questionnaire qui permettra de mieux<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ArHvRJvd55Y\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Compte rendu de la réunion du bureau du 9 mars 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/scUWeRFptEQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Apr 2017 09:02:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"Réunion\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1629790\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1529:\"Présent : Willy Bahuaud, Xavier, Borderie, Benoît Catherineau et Aurélien Denis L’élection du nouveau bureau a été clôturée le 4 mars 2017. Le résultat donne vainqueur les 3 candidats suivants : Benoît Catherineau, Xavier Borderie, Aurélien Denis. Cette réunion a pour objet l’installation du nouveau bureau de WPFR. L’ordre du jour Répartition des postes de Président, Secrétaire<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/scUWeRFptEQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_rNOgYbgrxk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Mar 2017 14:35:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1625743\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1487:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2017, nous vous communiquons les résultats pour l&#8217;élection du bureau 2017. Vous avez été 54% des adhérents à participer au vote, soit 87 suffrages exprimés. 5 candidatures étaient présentées pour 3 postes à pourvoir. Chaque candidat a reçu une majorité de<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_rNOgYbgrxk:qyaNilbMKjw:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_rNOgYbgrxk:qyaNilbMKjw:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_rNOgYbgrxk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"JGhMMwk2fgrlCfF2bXz+iersgEQ\";s:13:\"last-modified\";s:29:\"Thu, 30 Nov 2017 10:55:02 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 30 Nov 2017 10:56:36 GMT\";s:7:\"expires\";s:29:\"Thu, 30 Nov 2017 10:56:36 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,38,37,35\"\";}}s:5:\"build\";s:14:\"20130911030210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(128, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1512082596', 'no'),
(129, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1512039396', 'no'),
(130, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1512082596', 'no'),
(131, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:11:\"WordCamp US\";s:3:\"url\";s:29:\"https://2017.us.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2017-12-01 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Nashville, TN, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:36.15660849999999726378518971614539623260498046875;s:9:\"longitude\";d:-86.7784908999999942125214147381484508514404296875;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:14:\"WordCamp Paris\";s:3:\"url\";s:31:\"https://2018.paris.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-03-09 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:5:\"Paris\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:48.82406919999999672654666937887668609619140625;s:9:\"longitude\";d:2.372298900000000099197450253996066749095916748046875;}}}}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(133, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1512082597', 'no'),
(134, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"Comment partager vos brouillons d’articles WordPress à l’aide de liens temporaires ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/jBmYWTg8aq0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpformation.com/partager-brouillons-articles-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Nov 2017 07:35:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:618:\"\n		        La plupart du temps, donner à vos collaborateurs un accès sans restrictions à votre tableau de bord n’est pas une bonne idée. Après tout, plus le nombre de personnes disposant des privilèges administrateurs est élevé, plus la chance est grande qu’un problème entraînant de lourdes conséquences survienne sur votre site. Un excellent moyen de limiter [&#8230;]\n\n\nComment partager vos brouillons d’articles WordPress à l’aide de liens temporaires ? est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"<p><img width=\"931\" height=\"516\" src=\"https://cdn.wpformation.com/wp-content/uploads/2017/11/Fotolia_166136979_S.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"Partager brouillons articles WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />La plupart du temps, donner à vos collaborateurs un accès sans restrictions à votre tableau de bord n’est pas une bonne idée. Après tout, plus le nombre de personnes disposant des privilèges administrateurs est élevé, plus la chance est grande qu’un problème entraînant de lourdes conséquences survienne sur votre site. Un excellent moyen de limiter [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/partager-brouillons-articles-wordpress/\">Comment partager vos brouillons d’articles WordPress à l’aide de liens temporaires ?</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/jBmYWTg8aq0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpformation.com/partager-brouillons-articles-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"Comment intégrer Twitter à WordPress : le guide complet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/jxOygdOFPCA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wpmarmite.com/twitter-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Nov 2017 05:35:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:422:\"\n		        \n30 minutes. Cela fait 30 fichues minutes que vous cherchez comment intégrer Twitter à WordPress. Quelle extension choisir ? Comment afficher son fil d’actu ? Comment publier vos articles sur...\nComment intégrer Twitter à WordPress : le guide complet est un article de WP Marmite, le blog qui vous aide à tirer le meilleur de WordPress.\nAbonnez-vous à la newsletter pour recevoir les suivants.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:858:\"<p><img width=\"640\" height=\"220\" src=\"https://media-6d6e.kxcdn.com/wp-content/uploads/2017/11/twitter-wordpress.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>30 minutes. Cela fait 30 fichues minutes que vous cherchez comment intégrer Twitter à WordPress. Quelle extension choisir ? Comment afficher son fil d’actu ? Comment publier vos articles sur...</p>\n<p><a rel=\"nofollow\" href=\"https://wpmarmite.com/twitter-wordpress/\">Comment intégrer Twitter à WordPress : le guide complet</a> est un article de <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>, le blog qui vous aide à tirer le meilleur de WordPress.<br />\n<a href=\"https://wpmarmite.com/newsletter\">Abonnez-vous à la newsletter</a> pour recevoir les suivants.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/jxOygdOFPCA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wpmarmite.com/twitter-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9 : Problème de Menu pour les « template de page »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/A9qozQZMNmI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.wpnormandie.fr/wordpress-4-9-probleme-de-menu-pour-les-template-de-page/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Nov 2017 17:24:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:439:\"\n		        La mise à jour WordPress 4.9 « Tipton » a été publié la semaine dernière. Certains utilisateurs ont détectés un soucis ennuyeux. Les modèles de page personnalisés créés ne s&#8217;affichent pas dans le menu déroulant Modèle du module « Attributs de page« . Le problème est lié aux modifications apportées à l&#8217;éditeur de fichiers dans cette version de WordPress. Après avoir [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:509:\"La mise à jour WordPress 4.9 « Tipton » a été publié la semaine dernière. Certains utilisateurs ont détectés un soucis ennuyeux. Les modèles de page personnalisés créés ne s&#8217;affichent pas dans le menu déroulant Modèle du module « Attributs de page« . Le problème est lié aux modifications apportées à l&#8217;éditeur de fichiers dans cette version de WordPress. Après avoir [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/A9qozQZMNmI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.wpnormandie.fr/wordpress-4-9-probleme-de-menu-pour-les-template-de-page/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Créez un réseau multisite avec WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/qx_osTJoBBg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wpformation.com/multisite-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Nov 2017 07:35:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:559:\"\n		        A quoi sert le multisite de WordPress ? La fonction « multisite » de WordPress vous permet de gérer à partir d’une seule et même interface plusieurs sites ou sous-sites que vous créez ou que vos abonnés/membres peuvent également générer. Nous allons découvrir dans ce tuto les possibilités offertes par le réseau multisite et comment le [&#8230;]\n\n\nCréez un réseau multisite avec WordPress est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1360:\"<p><img width=\"1200\" height=\"573\" src=\"https://cdn.wpformation.com/wp-content/uploads/2017/10/multiste-wordpress-2.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />A quoi sert le multisite de WordPress ? La fonction « multisite » de WordPress vous permet de gérer à partir d’une seule et même interface plusieurs sites ou sous-sites que vous créez ou que vos abonnés/membres peuvent également générer. Nous allons découvrir dans ce tuto les possibilités offertes par le réseau multisite et comment le [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/multisite-wordpress/\">Créez un réseau multisite avec WordPress</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/qx_osTJoBBg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wpformation.com/multisite-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WordCamp Paris : OpenBar c’est vous qui décidez du programme !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/ZZujINMS3R0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://www.wpnormandie.fr/wordcamp-paris-openbar-cest-vous-qui-decidez-du-programme/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 Nov 2017 14:55:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:405:\"\n		        Comme vous le savez certainement, le WordCamp Paris 2018 aura lieu le 9 mars. Cette année vous pourrez décider d&#8217;une partie du programme grâce à l&#8217;OpenBar. Petit retour aux sources et clin d’œil aux Barcamp parisiens auxquels j&#8217;ai eu le plaisir de participer notamment durant l&#8217;édition de 2012. L&#8217;idée est simple : faire participer les [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:475:\"Comme vous le savez certainement, le WordCamp Paris 2018 aura lieu le 9 mars. Cette année vous pourrez décider d&#8217;une partie du programme grâce à l&#8217;OpenBar. Petit retour aux sources et clin d’œil aux Barcamp parisiens auxquels j&#8217;ai eu le plaisir de participer notamment durant l&#8217;édition de 2012. L&#8217;idée est simple : faire participer les [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/ZZujINMS3R0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://www.wpnormandie.fr/wordcamp-paris-openbar-cest-vous-qui-decidez-du-programme/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WooCommerce vs PrestaShop, quelle solution envisager ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/3d9AE5TSCYA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://www.geekeries.fr/woocommerce-vs-prestashop/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Nov 2017 16:16:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:472:\"\n		        \nLes boutiques en ligne fleurissent sur Internet, vous êtes donc à la recherche d’une solution adaptée à vos attentes et surtout à votre projet. Si vous vous intéressez à WooCommerce ou à PrestaShop, il y a de grandes chances pour que le domaine du e-commerce attire votre regard. Avant de concrétiser votre souhait, il est [&#8230;]\nCet article WooCommerce vs PrestaShop, quelle solution envisager ? est apparu en premier sur Geekeries.fr.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:818:\"<figure><img src=\'https://www.geekeries.fr/wp-content/medias/2016/08/wordpress-46.jpg\' class=\'webfeedsFeaturedVisual\'></figure>\n<p>Les boutiques en ligne fleurissent sur Internet, vous êtes donc à la recherche d’une solution adaptée à vos attentes et surtout à votre projet. Si vous vous intéressez à WooCommerce ou à PrestaShop, il y a de grandes chances pour que le domaine du e-commerce attire votre regard. Avant de concrétiser votre souhait, il est [&#8230;]</p>\n<p>Cet article <a rel=\"nofollow\" href=\"https://www.geekeries.fr/woocommerce-vs-prestashop/\">WooCommerce vs PrestaShop, quelle solution envisager ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://www.geekeries.fr\">Geekeries.fr</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/3d9AE5TSCYA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://www.geekeries.fr/woocommerce-vs-prestashop/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Comment fonctionne WordPress ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/JBWf1XPi-JI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://www.seomix.fr/fonctionnement-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Nov 2017 05:00:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1267:\"\n		        Comment fonctionne réellement l\'outil de création de sites Internet WordPress. Les mixeurs de l\'agence SeoMix vont tout vous dire sur son histoire, son fonctionnement et les astuces indispensables à connaître sur ce CMS !Accédez à l\'article original : Comment fonctionne WordPress ?.\n    Voici le début du contenu : Au moment où j&rsquo;écris cet article, WordPress représente 29% du web mondial. Pourtant, très peu de personnes comprennent réellement comment cela fonctionne. Et malheureusement, ceci est vrai autant pour les débutants que pour des utilisateurs plus avancés, développeurs inclus. L&rsquo;idée ici est donc de faire comprendre globalement à chacun ce qui se cache derrière cet outil gratuit afin d&rsquo;en comprendre les atouts. Le but est bien entendu d&rsquo;éviter de multiples erreurs pour le référencement naturel, la sécurité, le développement ou encore pour l&rsquo;ergonomie. Il ne suffit pas d&rsquo;utiliser WordPress avec ses fonctions de base, mais bien de la maîtriser complètement. Cet article s&rsquo;adresse donc avant tout à ceux qui veulent savoir comment utiliser WordPress, mais aussi aux développeurs qui ont une fâcheuse tendance à ne pas maîtriser réellement tous les [...]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1618:\"<div><img class=\"webfeedsFeaturedVisual\" src=\"https://www.seomix.fr/wp-content/uploads/2014/03/logo-wordpress-450x450.png\" /></div>Comment fonctionne réellement l\'outil de création de sites Internet WordPress. Les mixeurs de l\'agence SeoMix vont tout vous dire sur son histoire, son fonctionnement et les astuces indispensables à connaître sur ce CMS !<p><strong>Accédez à l\'article original :</strong> <a href=\"https://www.seomix.fr/fonctionnement-wordpress/\">Comment fonctionne WordPress ?</a>.</p>\n    <p><strong>Voici le début du contenu :</strong> <p>Au moment où j&rsquo;écris cet article, <strong>WordPress représente 29% du web mondial</strong>. Pourtant, très peu de personnes comprennent réellement comment cela fonctionne. Et malheureusement, ceci est vrai autant pour les débutants que pour des utilisateurs plus avancés, développeurs inclus.</p> <p>L&rsquo;idée ici est donc de faire comprendre globalement à chacun ce qui se cache derrière cet outil gratuit afin d&rsquo;en comprendre les atouts. Le but est bien entendu d&rsquo;éviter de multiples erreurs pour le référencement naturel, la sécurité, le développement ou encore pour l&rsquo;ergonomie. Il ne suffit pas d&rsquo;utiliser WordPress avec ses fonctions de base, mais bien de la maîtriser complètement.</p> <p>Cet article s&rsquo;adresse donc avant tout à ceux qui veulent savoir comment utiliser WordPress, mais aussi aux développeurs qui ont une fâcheuse tendance à ne pas maîtriser réellement tous les [...]</p><hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/JBWf1XPi-JI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://www.seomix.fr/fonctionnement-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"Les livraisons dans le Ecommerce &amp; les solutions de livraison WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/_LEMOJEw8UY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://www.wpnormandie.fr/les-livraisons-dans-le-ecommerce-les-solutions-de-livraison-woocommerce/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Nov 2017 14:41:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:496:\"\n		        La livraison : le nerf de la guerre pour les E-commerçants ! Ipsos et ITinSell ont mené une enquête (Décembre 2016) sur les livraisons et le Ecommerce pour mieux connaître les attentes des Français. Enquête à découvrir ci-après : https://www.ipsos.com/fr-fr/liberes-delivres-mes-colis-sont-arrives-les-francais-et-la-livraison-e-commerce En résumé, le mode de livraison préféré des Français reste : La livraison à domicile en 48h (pour 48% des [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:566:\"La livraison : le nerf de la guerre pour les E-commerçants ! Ipsos et ITinSell ont mené une enquête (Décembre 2016) sur les livraisons et le Ecommerce pour mieux connaître les attentes des Français. Enquête à découvrir ci-après : https://www.ipsos.com/fr-fr/liberes-delivres-mes-colis-sont-arrives-les-francais-et-la-livraison-e-commerce En résumé, le mode de livraison préféré des Français reste : La livraison à domicile en 48h (pour 48% des [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/_LEMOJEw8UY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://www.wpnormandie.fr/les-livraisons-dans-le-ecommerce-les-solutions-de-livraison-woocommerce/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"IXQg+MW6fKIuUeUuEHnGZ8Gj8Lk\";s:13:\"last-modified\";s:29:\"Thu, 30 Nov 2017 10:36:46 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 30 Nov 2017 10:56:37 GMT\";s:7:\"expires\";s:29:\"Thu, 30 Nov 2017 10:56:37 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,38,37,35\"\";}}s:5:\"build\";s:14:\"20130911030210\";}', 'no'),
(135, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1512082598', 'no'),
(136, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1512039398', 'no'),
(137, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1512082598', 'no'),
(138, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\'>Certification WordPress par WPFR, appel à contributions</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/jBmYWTg8aq0/\'>Comment partager vos brouillons d’articles WordPress à l’aide de liens temporaires ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/jxOygdOFPCA/\'>Comment intégrer Twitter à WordPress : le guide complet</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/A9qozQZMNmI/\'>WordPress 4.9 : Problème de Menu pour les « template de page »</a></li></ul></div>', 'no'),
(139, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1512050217', 'no'),
(140, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4405;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2518;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2451;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2379;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1846;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1616;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1609;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1439;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1366;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1365;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1350;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1282;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1277;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1160;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1070;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1055;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1004;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:968;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:843;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:835;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:817;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:782;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:775;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:681;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:673;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:670;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:668;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:662;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:650;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:641;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:638;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:618;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:614;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:599;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:592;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:591;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:588;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:583;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:572;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:570;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:550;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:541;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:529;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:526;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:513;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:504;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:504;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:495;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:484;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:481;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:480;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:475;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:459;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:456;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:456;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:451;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:449;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:445;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:426;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:416;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:416;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:410;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:410;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:408;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:401;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:394;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:385;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:378;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:358;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:349;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:349;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:345;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:338;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:337;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:336;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:332;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:331;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:329;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:327;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:325;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:324;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:321;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:314;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:305;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:304;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:299;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:298;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:297;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:290;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:288;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:287;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:284;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:281;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:280;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:278;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:277;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:277;}}', 'no'),
(144, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"paulmauve@outlook.fr\";s:7:\"version\";s:5:\"4.9.1\";s:9:\"timestamp\";i:1512039432;}', 'no'),
(146, '_transient_timeout_plugin_slugs', '1512126146', 'no'),
(147, '_transient_plugin_slugs', 'a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(159, 'siteorigin_panels_initial_version', '2.5.16', 'no'),
(160, 'siteorigin_panels_active_version', '2.5.16', 'yes'),
(161, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-30 11:56:13', '2017-11-30 10:56:13', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-11-30 11:56:13', '2017-11-30 10:56:13', '', 0, 'http://localhost:8888/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-30 11:56:13', '2017-11-30 10:56:13', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2017-11-30 11:56:13', '2017-11-30 10:56:13', '', 0, 'http://localhost:8888/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-11-30 11:56:34', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-30 11:56:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=3', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bcecf8e5a7919abd519e68d1276b91516a82b832e290098473d3e029d722b798\";a:4:{s:10:\"expiration\";i:1512212188;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512039388;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(18, 1, 'wp_user-settings-time', '1512039389'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BzngXDcMkrhR/Oqy.jczKg9mFGP0mI1', 'admin', 'paulmauve@outlook.fr', '', '2017-11-30 10:56:13', '', 0, 'admin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp2_commentmeta`
--
ALTER TABLE `wp2_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp2_comments`
--
ALTER TABLE `wp2_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp2_links`
--
ALTER TABLE `wp2_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp2_options`
--
ALTER TABLE `wp2_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp2_postmeta`
--
ALTER TABLE `wp2_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp2_posts`
--
ALTER TABLE `wp2_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp2_termmeta`
--
ALTER TABLE `wp2_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp2_terms`
--
ALTER TABLE `wp2_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp2_term_relationships`
--
ALTER TABLE `wp2_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp2_term_taxonomy`
--
ALTER TABLE `wp2_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp2_usermeta`
--
ALTER TABLE `wp2_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp2_users`
--
ALTER TABLE `wp2_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp3_commentmeta`
--
ALTER TABLE `wp3_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp3_comments`
--
ALTER TABLE `wp3_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp3_links`
--
ALTER TABLE `wp3_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp3_options`
--
ALTER TABLE `wp3_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp3_postmeta`
--
ALTER TABLE `wp3_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp3_posts`
--
ALTER TABLE `wp3_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp3_termmeta`
--
ALTER TABLE `wp3_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp3_terms`
--
ALTER TABLE `wp3_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp3_term_relationships`
--
ALTER TABLE `wp3_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp3_term_taxonomy`
--
ALTER TABLE `wp3_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp3_usermeta`
--
ALTER TABLE `wp3_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp3_users`
--
ALTER TABLE `wp3_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp4_commentmeta`
--
ALTER TABLE `wp4_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp4_comments`
--
ALTER TABLE `wp4_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp4_links`
--
ALTER TABLE `wp4_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp4_options`
--
ALTER TABLE `wp4_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp4_postmeta`
--
ALTER TABLE `wp4_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp4_posts`
--
ALTER TABLE `wp4_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp4_termmeta`
--
ALTER TABLE `wp4_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp4_terms`
--
ALTER TABLE `wp4_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp4_term_relationships`
--
ALTER TABLE `wp4_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp4_term_taxonomy`
--
ALTER TABLE `wp4_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp4_usermeta`
--
ALTER TABLE `wp4_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp4_users`
--
ALTER TABLE `wp4_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp2_commentmeta`
--
ALTER TABLE `wp2_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp2_comments`
--
ALTER TABLE `wp2_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp2_links`
--
ALTER TABLE `wp2_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp2_options`
--
ALTER TABLE `wp2_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT pour la table `wp2_postmeta`
--
ALTER TABLE `wp2_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;
--
-- AUTO_INCREMENT pour la table `wp2_posts`
--
ALTER TABLE `wp2_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `wp2_termmeta`
--
ALTER TABLE `wp2_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp2_terms`
--
ALTER TABLE `wp2_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp2_term_taxonomy`
--
ALTER TABLE `wp2_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp2_usermeta`
--
ALTER TABLE `wp2_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `wp2_users`
--
ALTER TABLE `wp2_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp3_commentmeta`
--
ALTER TABLE `wp3_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp3_comments`
--
ALTER TABLE `wp3_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp3_links`
--
ALTER TABLE `wp3_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp3_options`
--
ALTER TABLE `wp3_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT pour la table `wp3_postmeta`
--
ALTER TABLE `wp3_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT pour la table `wp3_posts`
--
ALTER TABLE `wp3_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `wp3_termmeta`
--
ALTER TABLE `wp3_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp3_terms`
--
ALTER TABLE `wp3_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `wp3_term_taxonomy`
--
ALTER TABLE `wp3_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `wp3_usermeta`
--
ALTER TABLE `wp3_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `wp3_users`
--
ALTER TABLE `wp3_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp4_commentmeta`
--
ALTER TABLE `wp4_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp4_comments`
--
ALTER TABLE `wp4_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp4_links`
--
ALTER TABLE `wp4_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp4_options`
--
ALTER TABLE `wp4_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT pour la table `wp4_postmeta`
--
ALTER TABLE `wp4_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT pour la table `wp4_posts`
--
ALTER TABLE `wp4_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `wp4_termmeta`
--
ALTER TABLE `wp4_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp4_terms`
--
ALTER TABLE `wp4_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `wp4_term_taxonomy`
--
ALTER TABLE `wp4_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `wp4_usermeta`
--
ALTER TABLE `wp4_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `wp4_users`
--
ALTER TABLE `wp4_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;