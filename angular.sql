-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 24, 2017 at 06:23 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 5.6.30-12~ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular_obr`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_master`
--

CREATE TABLE `cms_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_page_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unique Name for Menu',
  `page_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page_body` text COLLATE utf8_unicode_ci NOT NULL,
  `has_banner_image` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `banner_image_extension` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added_by_admin_id` bigint(20) UNSIGNED NOT NULL,
  `added_on_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_on_timestamp` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_master`
--

INSERT INTO `cms_master` (`id`, `menu_page_name`, `page_title`, `page_body`, `has_banner_image`, `banner_image_extension`, `sort_order`, `added_by_admin_id`, `added_on_timestamp`, `updated_by_admin_id`, `updated_on_timestamp`, `is_active`) VALUES
(1, 'latest_updates', 'Latest Updates', '<h2><strong>!! NO ACTIVE DEPLOYMENTS&nbsp;!</strong>!&nbsp;</h2>\r\n\r\n<p>To volunteer, text OBR to 51555<br />\r\nTo donate, text OBR 41444</p>\r\n\r\n<p>Please do not self-deploy.</p>\r\n', 1, 'jpg', 0, 10, '2017-02-21 10:10:29', 10, '2017-06-16 18:36:11', 1),
(2, 'how_to_involved', 'How to get Involved', '<p>There are many ways to volunteer for Operation BBQ Relief.<br />\r\nDEPLOYMENT VOLUNTEERS<br />\r\nOur largest group of volunteers, Deployment Volunteers are on site when Operation BBQ Relief is responding to an event.</p>\r\n\r\n<p>WAREHOUSE VOLUNTEERS<br />\r\nWarehouse volunteers help at our warehouse, managing and organizing inventory and supplies.</p>\r\n\r\n<p>STATE LEADS<br />\r\nState leads coordinate volunteers within their state for OBR Deployments.</p>\r\n\r\n<p>OTHER WAYS TO VOLUNTEER<br />\r\nThere are other ways to volunteer for OBR, including Fundraising, Marketing, helping at OBR events and more.<br />\r\nWe need volunteers throughout the year in many different areas, including Deployments, Warehouse, Fundraising, Marketing, Management, Clerical, and more.</p>\r\n\r\n<p>To Register as a Volunteer <a href=\"https://operationbbqrelief.org/apis/volunteer/home/registration\">Click Here</a></p>\r\n\r\n<p>To Edit your Registration Information <a href=\"https://operationbbqrelief.org/apis/volunteer/\">Click Here</a></p>\r\n', 1, 'jpg', 0, 1, '2017-02-21 10:10:50', 1, '2017-05-11 22:31:00', 1),
(3, 'about', 'About Us', '<p>Operation BBQ Relief was founded in May 2011 in response to a need for relief efforts in tornado-stricken Joplin, Missouri, a community of about 50,000 residents. Volunteers from competition BBQ teams from eight states answered the need to help feed displaced families, police, fire, National Guard and emergency personnel. We were able to serve over 120,000 meals over 13 days. Food was delivered to shelters, hospitals, senior living communities and the Humane Society. Volunteers loaded food into vehicles and delivered directly to families in the impacted areas. The operation was made possible by all who contributed food and supplies and funding from across the country. Operation BBQ Relief continues to respond to natural disasters and other situations to help feed displaced residents and emergency personnel.</p>\r\n', 1, 'jpg', 0, 1, '2017-02-21 10:12:17', 1, '2017-05-04 01:48:03', 1),
(4, 'contact', 'Contact', '<p style=\"font-size: 22px; font-weight: bold; font-family: \'Roboto\', sans-serif;\"><span open=\"\" style=\"color: rgb(71, 71, 71); font-family: \">Phone: 1-844-627-7353 (follow prompts)</span><br open=\"\" style=\"color: rgb(71, 71, 71); font-family: \" />\r\n<span open=\"\" style=\"color: rgb(71, 71, 71); font-family: \">Fax: 1-866-861-3297</span></p>\r\n\r\n<p open=\"\" style=\"box-sizing: border-box; color: rgb(71, 71, 71); line-height: inherit; margin: 0.85em 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; font-family: \">Click the links below to Email us:</p>\r\n\r\n<p open=\"\" style=\"box-sizing: border-box; color: rgb(71, 71, 71); line-height: inherit; margin: 0.85em 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; font-family: \"><a href=\"mailto:bod@operationbbqrelief.org?Subject=Web%20Site%20Inquiry\" style=\"box-sizing: border-box; color: rgb(168, 16, 16); margin: 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 100%;\">Board of Directors</a><br style=\"box-sizing: border-box;\" />\r\n<a href=\"mailto:volunteers@operationbbqrelief.org?Subject=Web%20Site%20Inquiry\" style=\"box-sizing: border-box; color: rgb(168, 16, 16); margin: 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 100%;\">Volunteer Information</a><br style=\"box-sizing: border-box;\" />\r\n<a href=\"mailto:donations@operationbbqrelief.org?Subject=Web%20Site%20Inquiry\" style=\"box-sizing: border-box; color: rgb(168, 16, 16); margin: 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 100%;\">Donation Inquiries</a><br style=\"box-sizing: border-box;\" />\r\n<a href=\"mailto:marketing@operationbbqrelief.org?Subject=Web%20Site%20Inquiry\" style=\"box-sizing: border-box; color: rgb(168, 16, 16); margin: 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 100%;\">Marketing</a><br style=\"box-sizing: border-box;\" />\r\n<a href=\"mailto:operations@operationbbqrelief.org?Subject=Web%20Site%20Inquiry\" style=\"box-sizing: border-box; color: rgb(168, 16, 16); margin: 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 100%;\">Operations</a><br style=\"box-sizing: border-box;\" />\r\n<a href=\"mailto:info@operationbbqrelief.org?Subject=Web%20Site%20Inquiry\" style=\"box-sizing: border-box; color: rgb(168, 16, 16); margin: 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 100%;\">General Inquiry</a></p>\r\n\r\n<p open=\"\" style=\"box-sizing: border-box; color: rgb(71, 71, 71); line-height: inherit; margin: 0.85em 0px; padding: 0px; border: 0px rgb(225, 225, 225); font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; font-family: \">Mailing Address</p>\r\n\r\n<p style=\"font-size: 20px; padding: 0; margin: 0; font-family: \'Roboto\', sans-serif;\">Operation BBQ Relief<br />\r\n15514 S McClintock Dr<br />\r\nPleasant Hill, MO 64080</p>\r\n\r\n<p style=\"font-size: 15px; text-transform: uppercase; margin: 26px 0 0 0; padding: 0; font-family: \'Roboto\', sans-serif;\">Warehouse Address</p>\r\n\r\n<p style=\"font-size: 20px; padding: 0; margin: 0 0 22px 0; font-family: \'Roboto\', sans-serif;\">Operation BBQ Relief<br />\r\n22720 Joe Holt Parkway<br />\r\nPeculiar, MO 64078</p>\r\n', 0, NULL, 0, 10, '2017-02-21 10:12:52', 10, '2017-06-09 06:32:43', 1),
(5, 'email_template', 'email template', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n<link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i\" rel=\"stylesheet\" />\r\n<title></title>\r\n<style type=\"text/css\">#outlook a {\r\n        padding: 0;\r\n    }\r\n    *{\r\n        box-sizing: border-box;\r\n    }\r\n    \r\n    body {\r\n        width: 100% !important;\r\n        -webkit-text-size-adjust: 100%;\r\n        -ms-text-size-adjust: 100%;\r\n        margin: 0;\r\n        padding: 0;\r\n        font-family: Arial, Helvetica, sans-serif; \r\n    }\r\n    \r\n    .ExternalClass {\r\n        width: 100%;\r\n    }\r\n    \r\n    .ExternalClass,\r\n    .ExternalClass p,\r\n    .ExternalClass span,\r\n    .ExternalClass font,\r\n    .ExternalClass td,\r\n    .ExternalClass div {\r\n        line-height: 100%;\r\n    }\r\n    \r\n    img {\r\n        outline: none;\r\n        text-decoration: none;\r\n        -ms-interpolation-mode: bicubic;\r\n        display: block;\r\n    }\r\n    ul,li{\r\n        list-style: none;\r\n    }\r\n    \r\n    a img {\r\n        border: none;\r\n    }\r\n    \r\n    table td {\r\n        border-collapse: collapse;\r\n    }\r\n    \r\n    table {\r\n        border-collapse: collapse;\r\n        mso-table-lspace: 0pt;\r\n        mso-table-rspace: 0pt;\r\n    }\r\n    \r\n    /* table[class=\"table\"] {\r\n        width: 600px;\r\n    } */\r\n    \r\n    .main_wraper {\r\n        width: 100%;\r\n        margin: 0 auto;\r\n        padding: 0;\r\n        background: #dadada;\r\n    }\r\n    \r\n    .main_wraper:after {\r\n        content: \"\";\r\n        display: block;\r\n        visibility: visible;\r\n        clear: both;\r\n    }\r\n    .main_container{\r\n        width: 600px;\r\n        margin: 0 auto;\r\n        background: #ffffff;\r\n    }\r\n    p.body_paratxt{\r\n        font-size: 14px; \r\n        font-family: Arial, Helvetica, sans-serif; \r\n        color: #474747; \r\n        line-height: 22px; \r\n        padding: 0; \r\n        margin: 10px 0 0 0;\r\n        text-align: left;\r\n    }\r\n    ul.body_txtlist{\r\n        padding: 0;\r\n        margin: 10px 0 0 10px;        \r\n    }\r\n     ul.body_txtlist li{\r\n        padding: 0 0 0 14px;\r\n        margin: 0;   \r\n        position: relative;  \r\n        font-size: 14px; \r\n        font-family: Arial, Helvetica, sans-serif; \r\n        color: #474747; \r\n        line-height: 22px; \r\n        text-align: left;           \r\n    }\r\n    ul.body_txtlist li:before{\r\n        margin: auto; \r\n        width:  7px;\r\n        height: 7px;\r\n        background: #474747; \r\n        position: absolute;\r\n        top: 0;\r\n        bottom: 0;\r\n        left: 0;  \r\n        content: \"\";     \r\n        border-radius: 100%;      \r\n    }\r\n    p.mid_box_txt{\r\n        padding: 0;\r\n        margin: 0;    \r\n        font-size: 22px; \r\n        font-family: Arial, Helvetica, sans-serif; \r\n        color: #ffffff; \r\n        line-height: 28px;\r\n        text-align: left;\r\n    }\r\n    p.mid_box_txt span{    \r\n        font-size: 16px; \r\n        line-height: 22px;\r\n        display: block;\r\n        margin-top: 10px;\r\n    }\r\n    \r\n    h4.black_box_bttm span{  \r\n        font-size: 16px; \r\n        display: block;\r\n        font-weight: normal;\r\n    }\r\n    ul.social_icon{\r\n        padding: 0;\r\n        margin: 0;\r\n        text-align: center;\r\n    }\r\n    ul.social_icon li {\r\n    display: inline-block;\r\n    height: 16px;\r\n    background: url(http://http://192.168.0.83/obr_version2/apis/assets/admin/img/nwsltr_social.png) 0 0 no-repeat;\r\n    cursor: pointer;\r\n    }\r\n    ul.social_icon li.one{\r\n    width: 23px;\r\n    }\r\n    ul.social_icon li.two{\r\n    width: 28px;\r\n    background-position-x: -23px;\r\n    }\r\n    ul.social_icon li.three{\r\n    width: 31px;\r\n    background-position-x: -53px;\r\n    }\r\n    ul.social_icon li.four{\r\n    width: 23px;    \r\n    background-position-x: -87px;\r\n    }\r\n    .footer_cont{\r\n        padding: 0;\r\n        margin: 10px 0 0 0;\r\n        text-align: center;\r\n    }\r\n    ul.footer_list{\r\n        padding: 0;\r\n        margin: 0;\r\n    }\r\n    ul.footer_list li{\r\n        padding: 0;\r\n        margin: 0 9px;\r\n        display: inline-block;\r\n    }\r\n    ul.footer_list li p{\r\n        padding: 0;\r\n        margin: 0;\r\n        display: inline-block;\r\n        vertical-align: middle;\r\n        font-size: 14px; \r\n        font-family: Arial, Helvetica, sans-serif; \r\n        color: #474747; \r\n        line-height: 22px;\r\n    }\r\n    ul.footer_list li p a{\r\n        color: #474747;\r\n        text-decoration: none;\r\n    }\r\n    ul.footer_list li p a:hover{\r\n        text-decoration: underline;\r\n    }\r\n    ul.footer_list li img{\r\n        display: inline-block;\r\n        vertical-align: middle;\r\n    }\r\n    p.footer_unsubscribe{\r\n        font-size: 14px; \r\n        font-family: Arial, Helvetica, sans-serif; \r\n        color: #474747; \r\n        line-height: 26px;\r\n        padding: 0;\r\n        margin: 0;\r\n    }\r\n    p.footer_unsubscribe a{\r\n        color: #c20904; \r\n        text-decoration: none;\r\n    }\r\n    p.footer_unsubscribe a:hover{\r\n        text-decoration: underline;\r\n    }\r\n</style>\r\n<div class=\"main_wraper\">\r\n<div class=\"main_container\">\r\n<div style=\"width: 100%; padding: 17px 0 0 0;\"><img alt=\"OBR\" src=\"http://localhost/obr_version2/apis/assets/admin/img/nwsltr_logo.png\" style=\"margin: 0 auto;\" title=\"OBR\" /></div>\r\n\r\n<div style=\"width: 100%;\"><img alt=\"OBR Banner\" src=\"http://localhost/obr_version2/apis/assets/admin/img/nwslter_banner.jpg\" style=\"border-bottom: 8px solid #ee2e24;\" title=\"OBR Banner\" /></div>\r\n\r\n<div style=\"padding: 20px 15px 40px 15px\">\r\n<p class=\"body_paratxt\">Hello,</p>\r\n\r\n<p class=\"body_paratxt\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam commodo sit amet nibh rhoncus cursus.</p>\r\n\r\n<p class=\"body_paratxt\">Vivamus eu lacus orci. Pellentesque venenatis mauris sed ornare posuere. Donec non consequat odio. In hac habitasse platea dictumst. Nam mi eros, interdum eu justo consectetur, porta dapibus risus. Maecenas fringilla ac ipsum et bibendum. Proin ullamcorper tincidunt placerat. Fusce lacinia vestibulum lorem id fermentum. Suspendisse potenti. Suspendisse imperdiet lectus et tincidunt iaculis.</p>\r\n\r\n<ul class=\"body_txtlist\">\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n	<li>Praesent a urna in urna accumsan lobortis sit amet vitae mauris.</li>\r\n	<li>Duis eget mauris sollicitudin, iaculis enim et, sagittis turpis.</li>\r\n	<li>Nunc euismod nisl vel dictum laoreet.</li>\r\n	<li>Suspendisse nec libero ac leo vehicula commodo suscipit non tortor.</li>\r\n	<li>Nunc faucibus tellus at purus euismod, a fermentum justo ultricies.</li>\r\n</ul>\r\n\r\n<div style=\"width: 100%; margin: 25px 0; display: table;\">\r\n<div style=\"width: 50%; display: table-cell;\"><img alt=\"\" src=\"http://localhost/obr_version2/apis/assets/admin/img/nwslter_midbody.jpg\" /></div>\r\n\r\n<div style=\"width: 50%; display: table-cell; background: #ee2e24; vertical-align: top; padding: 8% 19px 0 19px;\">\r\n<p class=\"mid_box_txt\">Donec odio ligula, tristique vel nunc sed, rhoncus luctus purus. <span>June 05, 2017</span></p>\r\n</div>\r\n</div>\r\n\r\n<p class=\"body_paratxt\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam commodo sit amet nibh rhoncus cursus.</p>\r\n\r\n<p class=\"body_paratxt\">Vivamus eu lacus orci. Pellentesque venenatis mauris sed ornare posuere. Donec non consequat odio. In hac habitasse platea dictumst. Nam mi eros, interdum eu justo consectetur, porta dapibus risus. Maecenas fringilla ac ipsum et bibendum. Proin ullamcorper tincidunt placerat. Fusce lacinia vestibulum lorem id fermentum. Suspendisse potenti. Suspendisse imperdiet lectus et tincidunt iaculis.</p>\r\n\r\n<div style=\"width: 100%; margin: 25px 0 40px 0; padding: 12px 0; background: #000000; text-align: center;\">\r\n<h4 style=\"padding: 0; margin: 0; font-size: 20px; font-family: Arial, Helvetica, sans-serif; color: #ffffff; line-height: 26px;\">Operation BBQ Relief is a 501.c.3 Organization <span>(FEIN - 45-2442792) | 1-844-627-7353</span></h4>\r\n</div>\r\n\r\n<ul class=\"social_icon\">\r\n	<li class=\"one\">&nbsp;</li>\r\n	<li class=\"two\">&nbsp;</li>\r\n	<li class=\"three\">&nbsp;</li>\r\n	<li class=\"four\">&nbsp;</li>\r\n</ul>\r\n\r\n<div class=\"footer_cont\">\r\n<ul class=\"footer_list\">\r\n	<li><img alt=\"\" src=\"http://localhost/obr_version2/apis/assets/admin/img/footer_btm_icon_2.png\" />\r\n	<p>1-844-627-7353</p>\r\n	</li>\r\n	<li><img alt=\"\" src=\"http://localhost/obr_version2/apis/assets/admin/img/footer_btm_icon.png\" />\r\n	<p><a href=\"\">info@operationbbqrelief.org</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p class=\"footer_unsubscribe\">To unsubscribe <a href=\"\">click here</a></p>\r\n\r\n<p class=\"footer_unsubscribe\">Copyright &copy; 2017 Operation bbq relief.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 0, NULL, 0, 10, '2017-06-09 06:28:26', 10, '2017-06-12 09:36:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('00137bf80a05046af1468a2a6f2c59a3e667b8f2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:25:33', NULL),
('0041c02c2b0bbf7312e6d10de97a5afe4907639e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:45:56', NULL),
('00892cffff6cff09a0c8a46e2d105d7a0548c46a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 06:09:21', NULL),
('00c359b9b77c6a3d14958efe83f69f79e25dc29c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:23:49', NULL),
('00f55e86447e4ac752c06dc27ba1c257526e5cfb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:20:55', NULL),
('0111d06918fc5c8ad2f8d0a4d07f6a9084ed7f41', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:59:33', NULL),
('01156259edd58b00f5b7ea6502b3891950bc3c7f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:36:37', NULL),
('01bc7127ff306f7a0d326ae5f270220462a16e8d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:23:44', NULL),
('02060f83bc92368015d616075d7fc498e0eebff2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:14', NULL),
('021d537a13976a5742e5d6b875a614e6492b9ca6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 08:39:02', NULL),
('022d274301352b46d4e2ad77ba248764384bf2d6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:58:19', NULL),
('0250f78f204611369f0c0a58472164140852c884', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:56:54', NULL),
('0256cd2289398dae538f0e5bcb0ab657db629fa9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:45:13', NULL),
('025cab6d1d9e73c8f1f32e84989d791446faa47b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:38:09', NULL),
('0283029b82cbcf8bb7ce25289e9000e38e3d6976', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:13:43', NULL),
('02a77464bd2bf6486f4f0c891817d01fcd177b6e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 14:24:08', NULL),
('02e3bb9d266cb2dda23466c23ba9587a591378a7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:13:23', NULL),
('03103b7dc5d09363d34b7de6609024e981d937b7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:06:27', NULL),
('03dc6866df96ab9a5d9ef8c1a48222bf76eaf76b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:59:29', NULL),
('0440b703f6423efbe5696a174531767db171fce0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 08:32:46', NULL),
('05aefdf3ba6759f99befba40f592db8d593111eb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:47:47', NULL),
('05dd7e40b023cb60c16a43c31a113987395a817a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:46:40', NULL),
('0620afcc99bdf325eca185c9e73a26af702faabf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:00:45', NULL),
('062a497cfee03762e86f80c7cc4a240bfaeabd15', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:04:13', NULL),
('0630ea4ea978f15c9d65bcf256ffc30500108a21', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:50:20', NULL),
('0665229a875f6502ca2c1219c9bb5086d161fcb0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:37:50', NULL),
('067ab21e27e3114413f632c964637752a0df9a6d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:39:14', NULL),
('07010da6fd06cdde0119a0773cefa7a66c523751', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:33:15', NULL),
('0706fcf975c8881e065b289d8675506a4b574f1e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:22:33', NULL),
('076574b8e889c08bcbc423f549d164f33014a838', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:10:59', NULL),
('0817096e52756656cb705517f927c2394a583a05', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:47:04', NULL),
('0846d2e84f410ea090476e3b6a0e77966d8c8977', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:00:25', NULL),
('087ed50381ae6c8fc957ea980e199f4197c9480a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:59:31', NULL),
('08882c0e538246a82fd1eb7110d647b348477ae0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:48:30', NULL),
('0891c1fb1b5c0824bdcf1d3bef6b8009ede5eaa0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:17:13', NULL),
('08aea1986e2a7fe2c06ea4d127abc279a21367da', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:39:10', NULL),
('090781902dfae442fc8d8626e5bb6af2b92050e9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:03:32', NULL),
('09d13cd295380ebeddd105254af3d3753b18eaf4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 13:49:58', NULL),
('0a55fea4f92df61f2ad9c5cf31393d64ef8e268e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:24:32', NULL),
('0a64df000ad6cf37dfe8f27d8cd2885823b86b1b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:26:05', NULL),
('0aa15ece88bb6fcfa56508c1127ff872829ea052', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:00:14', NULL),
('0ad94bcf33ad082a859bf02c7549f52bfc159ec0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:06:31', NULL),
('0af1d1918500974243d7f8006c9ea1b893c01fff', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:52:48', NULL),
('0b076bf79a3967a02cb03ceb09fd8b7d1cc3ea3d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:46:38', NULL),
('0b23f9ce806211dcb00c45ba5eedad2db8d1cb4c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:31:04', NULL),
('0b58fac3500a3a8ab189dd3d704f67dce4c75e4c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:28:41', NULL),
('0bd9ccfc1d2975a96ead0b577e96a445e49f0434', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:34', NULL),
('0c493269eef3b81d483aafa746a9aac113048e2f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:01:03', NULL),
('0c6baf8c107100f8957873782a2a5814d6837040', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:13:17', NULL),
('0ca60fe35225ba912e92669837b8167d8a9c4c2f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:10:18', NULL),
('0d04430833b9ce2145592c40e078552aeb7c8d62', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:57:43', NULL),
('0d5bb4a70478f2632721124f183e20bf5dc7f1a3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:05', NULL),
('0d842d4fc4063eb5093f03e95996a9f2fd3ca168', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:07:33', NULL),
('0d8c9bf2dd9b068b0880db55d79cbcd320538ef0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:51:15', NULL),
('0d960674c77768402b093f64282b52f29ab94273', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:24:10', NULL),
('0d9db44d66f88b2dacd1862d998eb4e05eb803ef', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:37:37', NULL),
('0ef8ada43e78cedfbeedb394219bba8952cb703d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:09:02', NULL),
('0f7f9276c7105edfa8f1140a630eea347f43d93f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:12:28', NULL),
('0fb787354e20f2713e0228d1eeaa99591172c549', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:11:18', NULL),
('0fffda33ddc6c3f3df4cbe4aab23136af1b600e8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:13:21', NULL),
('10259770a3b713f066ee15d934172eab5d2414de', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:33', NULL),
('103593df37e5e7c2db054af521bfba51c0360202', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:24:31', NULL),
('10963f665fbee8e24390295a2efc012f611922a8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:35:33', NULL),
('10ba99cc258fccea6587b23bb1e84e7c3f0aef4d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:33:47', NULL),
('1127b98c9d7d13fe898d63810935296bbb7d4263', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:00:18', NULL),
('113cef8239d8dcefed30712a1781202ab122f9d8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:30:17', NULL),
('1153a077a43621a6e5625af12834ea9b995b54dc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:06:53', NULL),
('1231a182d7b22d82132a120fbf8b070995553f7f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:14:11', NULL),
('125328234b5d1f209ca582ad2fb7968474f9d003', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:24:20', NULL),
('128c226e01100a3e8f72fe29ce3f212ef28b1818', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:04:17', NULL),
('13016c49c90e9af549f99893fa88ef53127bd4c2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:10:25', NULL),
('130de48bc2c4f49d38fdf494a799a5a0f2dfae89', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:26:47', NULL),
('133c300900dec38d1fc5840e51953f250f6d8eff', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:28:58', NULL),
('134f110f297a26ce46e1202cc62b35131d6466b3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:23:33', NULL),
('137889140a4f7bb10a9acfe30b99fe1c55f9caf6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:18', NULL),
('138ec94046ebc70774975a6d87c2cee482952f8b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:56:13', NULL),
('13c55f51991ea58b82354f10e96ec0839d0e246b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:54:31', NULL),
('13f948243ada172e202f28c137cc37804a1e0725', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:36:34', NULL),
('14545f28f330b81b466586a706bcfb09d9a4163a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:14:01', NULL),
('1464da5d7bf1ee0ef9864b6bead8abd258d2d0f4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:44:54', NULL),
('14854a096d8e276f1d51885eb0997dfa46578140', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:25', NULL),
('14901507febac168043fe7aa2c2d13011375dd8a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:40:21', NULL),
('14a14c046f0f39dc05654dbb4d3985e4e9e22519', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:35:05', NULL),
('14cf945431db577cc9b74247bca77a0a867127e6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:51:28', NULL),
('157078885e2fb3d73d5853202987634935deaffc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:08:04', NULL),
('15a51bbc605db3d3e482935dd8e8d5d9af8ee119', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 14:24:03', NULL),
('15dbc5121d3a91914198621803367cc38e42fd79', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:07:25', NULL),
('15e0d8c27c9e74163d0bc32748af66bb27b3ca3e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:54:50', NULL),
('1627d6b74d8fb7d3a341290f8cf4aec97cc960c7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:29:55', NULL),
('163808eccac6bbf3a50ff912b695b13cd4e3795e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:22', NULL),
('164caff2a84f13fe373b19e0385e2c66191693e7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:05:33', NULL),
('166270b1266b7d2792aa2e6934ef649826e62c0c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:30:28', NULL),
('169060377c1d20e49b7a45906c53fc104b05546e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:18:14', NULL),
('1729402e9750f5b90aadaac63902e68a732e04d8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:58:07', NULL),
('17c7be6fca196beef5537066ff96e71a09858f03', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:19:47', NULL),
('195d72a61a026e2284165356665fb1dfe308fa23', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:08:08', NULL),
('19eb5b7b298544d3f6b0badc3a26e8af48611c73', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:06:26', NULL),
('1a835557e87b5b0be83e7ee8ba5c118ae074cf24', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:00:09', NULL),
('1aaedeba65728812dc9271e5a9f167c4a2b8280d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:40:54', NULL),
('1adb8c367fd78d65a77562f23319b26e44a103af', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:53:23', NULL),
('1af2ecb3f7dcdcf144f2e22754de449f7048490e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:18', NULL),
('1b64b08867baf58d91cce98a1aaf114324acd233', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:26:08', NULL),
('1b6ab6899ea8deea9dda140f9047ef2e6ed17525', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:00:13', NULL),
('1bdc96d506ee9f3f6a3e8bf5d45a0bcf53f8578b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:30', NULL),
('1d443d1dea3f2fe91a0f23c8552b3a90382444ff', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:50:35', NULL),
('1daeafaf3d5564a7ed3ec1f5aaf094f6bc9989ef', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:59:48', NULL),
('1dcfb55d98c2fc0b4b48f96a1f8b10ded98d77f8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:34:54', NULL),
('1ddaee9497e65ee2a790ad4dec1fcb6d6771508c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:31:28', NULL),
('1e024e6605ffca0d5beff01e80b5adabac5a0839', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:30:17', NULL),
('1e17a8d41e89b3a8ea178ca89cc704d019d93780', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:38:46', NULL),
('1e6161c0dc0f0b4bca885d9cadcc95465f86230d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:18:56', NULL),
('1e764027472dff697438e3ba213fda8b9ef526cd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:23:47', NULL),
('1ea5e0c45164f2bc9343c2fe7717e115e610c1e1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:52:31', NULL),
('1fb131a207a07cc872614ef79299036ff5bcf65a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:36:31', NULL),
('1fb4d1ba281c65dadc629011d0b6c0b0ce138d99', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:42:06', NULL),
('1fec97bdf6a6723351843311e92a733575568a6a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:51:41', NULL),
('1ff19e67c3de1e307b8ebb20e6a2c9ead0484f8b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:02:53', NULL),
('2008489ec100813f1a654109725c63bd2e31096b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:47:45', NULL),
('21639326be08f10b65d5bb3d9ed4d0e67f59f285', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:09:05', NULL),
('216fc89ae4010a43683adcd0b251f1c7f65eed78', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:30', NULL),
('2179d219c2b736c5e2f75de63060f4225df1220e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:40:54', NULL),
('223be844388305019cb6f40da21cad2601f8e075', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:25:07', NULL),
('2250010232a200b13ee2cc6d132d99a23fee5d6c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:47:33', NULL),
('235ba45d78f230aee43217f63416526ca651f515', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:32:52', NULL),
('23830aa0e949a4f7d55907da490836af06b91578', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:08:04', NULL),
('23c1ead3e9d966b9ddd087e3568291fc0a44ac8a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:36:07', NULL),
('23dee1531645425249ae43d98f53a0cde1bcced9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:46:21', NULL),
('23f261726e7c9f2f87905e9e113e9f2aa2a9a426', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:36:47', NULL),
('2482d14bfaac6e23c7b7f910f8bfaa6622161f33', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:44:53', NULL),
('24a9232c57cfc6d7c260e8c0a3e205f5f9ee12f2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:08:08', NULL),
('2559b4b223f6f26273a9cf0e0ad16b2c200181fc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:13:02', NULL),
('2627e0b039f0e88ed01b36e30547daaf44a09d91', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:46:55', NULL),
('2729da62667b45fa77bef599ae901b324e06e204', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:48:43', NULL),
('27cccaa6590aad6a91346da687d0afc5a08ccba1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:51:28', NULL),
('27f7b798f4995140f3756178abc15b05029d3c35', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:27', NULL),
('284d1cc99f36cdce2b74b8b055e0f1d8478f3ef3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:16:32', NULL),
('28923223908e29e8f7a4575ab4b2b4757d329354', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:26:36', NULL),
('28e120c0795a083c1e5ec5bf3e6af151d774657c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:23', NULL),
('28f1f0734d334e7d1a244a3addb3dbf24f757666', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:59', NULL),
('2912cb8b69e5220a6ba11e873255fa4bb982ee5c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:06:35', NULL),
('2944915735449a7af2b249de41364c8fa017e062', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:09:59', NULL),
('2951f1907d16d6f4c5abcd10f49d1214f6814421', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:00:34', NULL),
('29ff11b261439a4164f02ffbfc28f28fdc9875f9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:59:26', NULL),
('2a80f3c2e1aca37e14ceaf4f689099230b1fa5e7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:27', NULL),
('2ac55d5145301ad4fd9424ebb1d4b054314b2863', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:04:09', NULL),
('2bc5d11d85c241e7a217503cf72b626a1f95dc60', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 14:19:42', NULL),
('2bccebeb978930565421b750615a0609f59f13e4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:49', NULL),
('2c7125210e3a06e010a4d355eba912eed2af5949', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:32:21', NULL),
('2d7037b4e18f8454a86fac0cadeeb855bf85a3ae', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:34', NULL),
('2e1aa7f11c58a7e648f3675d5e4a94f3a7f78542', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:17:02', NULL),
('2edd33cbcffab44e2a633536b9d1356d10604d36', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:01:28', NULL),
('2f3e8f0b4c2849cf76b6b76b3e270de90c592100', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:08:49', NULL),
('2f91b2588632ce7f597bea2eb510515f3a189b0b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:09:08', NULL),
('2fc389a80c9f44c8f70137f6f905fc2fdcd7e959', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 11:59:00', NULL),
('3006bb45360e9544d36b28885070022f6c6ce0d7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 09:47:08', NULL),
('303be4c491efccd82582d68ccab3722e1ac06712', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:01:54', NULL),
('3059e744dd27fbadb19751fca477b68bbcb4bacb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:35:25', NULL),
('3098606692344b1f28967ecf4f36cafd12966fa0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:50:30', NULL),
('3142c9a58125d6b404ee9f998bc9b6e1309dff6a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 11:25:59', NULL),
('31922e5291438b005e0527f4621381476ee600e2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:31:08', NULL),
('31934216e264b6908b88be53e8a90b2aaf16119e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:50:43', NULL),
('31a2f742a122540e957dc4c5aed7388a98a245dd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:13:38', NULL),
('31b3baea9f5e8bb9f50742a209753be44430fea4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:23:05', NULL),
('31c7da2577d0ba13592d840abf293f0ac1975a7b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:35:57', NULL),
('31deace38c517de12fc4c8c366fba79a6b2f68b1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:12:31', NULL),
('31f42f1c10ff8b461bbc44312a7d8e9a1fae04bb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:57:42', NULL),
('3247c7ab2c90f055a267abd789e295daa085dd41', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:50:45', NULL),
('324a8ed252ee712a5cf7ac678e30933ec439c5fc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:03:10', NULL),
('327330104aa91d72e6e524fe95474cbf596d5ef8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:18:59', NULL),
('3278d9d8359ec8221c66e9d2ebae675287404c2b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:09:55', NULL),
('327a5855233dff2822a91c0c8ab6fb09b1e0463c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:30:36', NULL),
('32806d62610f691624c89347d89fa6ceffcd7233', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:46:44', NULL),
('32d73b950340cf012f3ef8a287ac8e349f73a58c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:51:37', NULL),
('3338e627e5c0b5d320e970b23087fda07950a366', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:43:08', NULL),
('3353f4ca0008a16ee52f00e24037dccf2da63353', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:09:00', NULL),
('33a468d101cc466f5f02365a549def0777380bd4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:53:59', NULL),
('33f1e325fc2666f3d026690bcbc5f015b461cbca', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:26:49', NULL),
('34c44a9c245cf80e0b1c55d8bdfda6de1e0b7463', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:38:00', NULL),
('352d7a156cd3279a5bfd445a85e6f6cb9ebde2fb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:10', NULL),
('3530de0e23d941df0a19ee5dd9f4fd847cef243b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:00:14', NULL),
('36472353ff834148c86a4db9ebd3eb0d81dc0d6c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:11:56', NULL),
('368d77b95f012e60f136493f34631030cf8e9736', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:34:31', NULL),
('36f1aee9dca5d2b05b86768dcdd22889fecbf855', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 14:11:12', NULL),
('37649ba823bdacc06c25c12d0612655600e10201', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:11:33', NULL),
('376744f4fdeb7f8d581c18df25572f43e90d39c6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:28:48', NULL),
('37aaa8172bb890d095deb0db4ce93b6a01804baa', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:30:48', NULL),
('3872096e9ff02bb0c1799f171829b0be1151ae0e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:59:51', NULL),
('38ab7d43056b05f5166275254013db81e83e35a0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:38', NULL),
('397590f73934dd94979e5553a803d37458eebff5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:46:31', NULL),
('39c670fded3f879074befde33e987a575dc7ac78', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:13:38', NULL),
('3a64325ead1cdc9d0642139ced1c0f4707d5039c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:17:17', NULL),
('3ac3e02dae0724b7acb6c3be795807155432bedf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:12:05', NULL),
('3b010bf6176633853b8e26b77b605fdf19ae24da', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:11:18', NULL),
('3b227cef6b9755010d8a96c845b2976240d36c41', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:48:27', NULL),
('3b5c5444dec3b4626328ef4aa8d8014da9fea952', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:57:55', NULL),
('3c05989852bf547b68901743a1cdbda46bdc851c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:32:57', NULL),
('3c2b174957c431fd9935af9e7b2734c9214f7e78', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:45:58', NULL),
('3c813fd9ecdeec3dd98c98c1c536b916db47c09d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:13:57', NULL),
('3cd363b7df70a39f3ec5cc5b49a331577d6edd47', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:55:30', NULL),
('3d552206fa1d0fef79f20d16ddc0dbc9410d4c37', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:38:50', NULL),
('3d9de724b4ea3571f884754a50d8d149a87b1071', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:30:48', NULL),
('3db53c7559e65c7a092d0c3624909e49be383aff', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:14:02', NULL),
('3dfa96b53b54bf6b5dff725af2e314d7779e0382', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:17:14', NULL),
('3eabe49748e131b85d25502eca84b5ae4f84a0be', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:13:51', NULL),
('3ecb6d4b5ae082cc423d7d416c5b03f98a929c2a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:50:43', NULL),
('3f8d8a7c361304ba0566ae95dff88a4da225a4a7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:44:42', NULL),
('3f9e13df06780f5e38921624e11cff4520d496a3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:39:05', NULL),
('3fa2f78b8ca9ede9ad8bf5b07dd3760db7302286', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:58:24', NULL),
('3ffd334c01b50e02c51f216e8f796494de915041', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:31:54', NULL),
('40c7ba53d793d1463b4a905de765aa60f86f28d4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:46:29', NULL),
('40d88df6ca91f831db350a09adcf4024431548fd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:00:45', NULL),
('424744d8b90344d5f308318f974b0e79fab7bd20', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:33:43', NULL),
('426b652ee656d02ff074772d2ffef3e83ed1ca71', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:38:30', NULL),
('426e64be5a0529e639996393c6a654bbc0c5f468', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:16:42', NULL),
('42839f793b776949ee33fbcdadc3689691e08c69', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:53:40', NULL),
('42ac301bf9567d48c8aff926b2ca4b38da35276f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 09:52:19', NULL),
('42feb4b2287f297b6bbdb560cd809c76c3bb49d9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:40:18', NULL),
('43859392576a9ea0e630b05e3d2bb2bddb78623a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:29:29', NULL),
('43a591d1c8c87d6c1a4dd608614033708df1d878', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:38:02', NULL),
('43cd12b0a28f304347978a04d1b8413171380fc9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:51:14', NULL),
('441bab545e69f0eaed8f6898624f8d2194e60db0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:10:44', NULL),
('44c2a4aa8e0e026b615bc11be38360cc7b56f6ff', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:38:20', NULL),
('4545adf95d76edde7d534eef2a2167183deba382', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:59:55', NULL),
('45c65fc1743c1ba5ed51dd8353d6533ae534609e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:51:30', NULL),
('45fc524ba3cfd513d9729d6e5cbe7e2726844063', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:31:34', NULL),
('46119bda785e43ece66c44e2ad8505cdbd3474bb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:33:43', NULL),
('4632f195ba13d13360abc8b7f0d434b8b26d9b92', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:09:32', NULL),
('468bb1839427c79ec1d477efa6f6ac44e1562a16', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:40', NULL),
('477d04a339d6efdfd2bdd7b72805a08b94e40fff', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 08:38:54', NULL),
('47d5414bf9bdfa4f00ea9e3561739662e3a67228', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:30:44', NULL),
('486ba181377e5c78de20f190c07dffcfb8f64f4a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 11:20:15', NULL),
('4893e2cdbd0e38cc5709878fc123ca4cae7c8abe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:51:29', NULL),
('4899dc9406f714576f450ef1d1286b2b6971da34', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:46:32', NULL),
('48ae0f9c71cb0e9a7126074d6b6e574c519863df', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:50:12', NULL),
('48d09fb73bf79e917cd3a0707df1a06ec1e292d5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:26:57', NULL),
('4919a2d0172e0de458f816ad206b5e0f8900888c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:40:59', NULL),
('49273e3eaeffc0216d99acce91078a4ce51a68d4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:34:31', NULL),
('49c10362ae60024cd4ee14ec07beeeb64777886e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:38:32', NULL),
('4a0b81ea9e3ae5acba0c9a0ac4a8e944c1b9381f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:38:02', NULL),
('4a3165709fb92c29d12b255e648b6fec6117c91f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:31:15', NULL),
('4a40b2f2349a3fdb5a149498a232dad233aa1492', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:29:50', NULL),
('4a741967ef8a2c690f0463de2abec7afb924e91b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 12:35:43', NULL),
('4a81112d60f0399fc2936220593d5e8e7447049b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 11:19:42', NULL),
('4b1d82ed337e4352b62629fc7c3c09217cc3e5f4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:09:34', NULL),
('4b6f54f460891c8739e5da24a65f0914eb35f483', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:54:55', NULL),
('4bbd107ac7bf6a6795783930749fe5913da3ca76', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:16:38', NULL),
('4c60eabc8dba913021ba9ee14e4105882aeacf50', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:50:12', NULL),
('4cfaf1de972193503554fb57dcb3f14445c2219d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:11:23', NULL),
('4d4edffc563e0abec3913fe4928de60d11af2d6b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:35:23', NULL),
('4de6959745b49bdf2477562541dae556d6169ffe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:29:05', NULL),
('4e0a20434cac5b765d528a50c5e54d0e6ec7365c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:16:21', NULL),
('4f2328272c92965d7a97b86535149eba6673d944', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:59:42', NULL),
('4f2691df5b2e60c0f72a9dfdaa7faaf41c22bb66', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:30', NULL),
('4fe6370f8dd3386a248676f6461b1bf8a9819592', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:58:24', NULL),
('504aa3bcff4da36bf023955619e2ada7c538b57e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:31:12', NULL),
('5112abb7bcd6e47599ab0da544e174b14825bae6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:00:48', NULL),
('514cf29b40b13289813133919df8b3cebddc6622', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:09:47', NULL),
('517875bce2c1313def35f098479663a0024d3033', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:51:25', NULL),
('51945e95108089c1f1fde78539130e7cbb1c11bb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:58:35', NULL),
('52dd2768df1a74186ec654da7fd87277bd544bd2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:40:53', NULL),
('53c9bce046b004e04611a1f71c09d89a13098984', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:39:01', NULL),
('540e27441babe0011bdf913e67746befeae5bcf4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:35', NULL),
('544d5f7b63cc677b34347aaac46b40773148b9db', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 09:52:12', NULL),
('54b7b06ce9eac24a2db5825302d300ceb2a3f203', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:25:14', NULL),
('54d56165492ea06bc09b2adbce9514b5f7e54b24', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:50:51', NULL),
('55146adc1ed177a3710e3fa8095a14146e992aed', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:48:19', NULL),
('55240f9008fa0acb9ac56fd06bacccab3d360464', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:17:26', NULL),
('55bff898434ef76ab3c05f63a3abb116288e9f42', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:32', NULL),
('55ff82138fe09fc90f3b94e88033f4c62e9f9d2f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:37:17', NULL),
('560276903456a3180da5c23f2429e0fc555881f9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:46', NULL),
('562e0b21a7c6952bd56d1290f6ec27d700df37fc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:59:43', NULL),
('5647a49db1386af84566380be3db1748a67e830a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:38:25', NULL),
('56abb9cac96914a2cd17904c9964aeae3dcf8ffc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:12:03', NULL),
('56f5a02dc8227b0f663ceb5edc57c058b4ee1c34', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:16:22', NULL),
('5700fcd8e57567368f6ab44cdd1508a08d4fc3ab', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:48:36', NULL),
('571f214ae0da36d232e97bf56fc07d1bec5c3066', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:31', NULL),
('5737b809115aae690554b7157c30c687432e5544', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:16:35', NULL),
('5828c20af553241fca73613e488ba90b426c4a41', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:30:31', NULL),
('587a50f174f93cff3990ee4d4ac436493a96dd82', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:21:52', NULL),
('58b14d1e289ee0b1ee524888d8205c490d215315', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:52:23', NULL),
('595eb9db3c80436705705aa4308598b2a4503e18', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 08:39:13', NULL),
('59937bed9ce93b03a7cdc79ec38b78b2a023a7e4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:59:41', NULL),
('5997aeccfba15b78d360a13a3b692c4b163b9154', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:26:18', NULL),
('59c9d8000d4a2220cee52066c06019de068d6d34', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:01:09', NULL),
('5a5db7941547ea0b8e2e1198414e67f6f321d06f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:44', NULL),
('5a61bcad26e451805924ccc706c9954e0ea65a36', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:33:44', NULL),
('5a889e2a352f4af89ec3764039dc3ab5d4d11156', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:12:49', NULL),
('5ad3bd6029b9d5eb8bcf5b72fcd8edaf658970b6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:56:13', NULL),
('5b456c00f980b2560b44e1b331843c413c5962fd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 08:32:45', NULL),
('5b4e0dde17fdbccd557a6b53cac6d8016a301d09', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:20:19', NULL),
('5b62b19aee8845c71cdea2860ba78c2242ba1935', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:41:18', NULL),
('5bb355721ee6156e30ab0b19c9afa8bd6fb76eed', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:11:29', NULL),
('5bc4508f7e40067c2d53984834e83acc00fe3d0a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:38:38', NULL),
('5bccb6dfcf50d1619d006c3034bc3fb48e6df049', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:19:04', NULL),
('5bfae4757c80a6f44523a31480aba2d15d5f46bc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:11:29', NULL),
('5c15e35f729f6a63a647a6a2c59729da4787c886', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:37:23', NULL),
('5c55e2fae643c1916f5b7e8ade55d8c816e3278f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:26:24', NULL),
('5c77d35d42d4a1d1222450c1e5c02136899a3830', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:19:33', NULL),
('5ca23e2431e444795e15ecf40e578a9e2fa340cc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:55:40', NULL),
('5e015b3bfe7e538d28cf639698347f692667386e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:15:52', NULL),
('5e53698f2532bb1d444e3d0a52b0c10ce86a62e6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:23:20', NULL),
('5e7348450893c10c257914c15d393726443818b1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:22', NULL),
('5e81941fda6b26b40d8e4547fe4ed27bc544d6ab', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:46:24', NULL),
('5e82c55a6b2940de18d9be0aab2efb4a7b4d9100', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:35:46', NULL),
('5e8c144a93246fcd471146001919ee99e3fa40e4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:06', NULL),
('5ee11b4957c029f1cd30141fd3a5baa119cda1f3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:32:46', NULL),
('5ef840f503dc75394f661140e5b06c683fb12149', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:26:24', NULL),
('5f57192000037f3d3c0bc236ddca923e0c311185', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:23:11', NULL),
('5f80b6014ff810c20462955a02efa3c915cd0d47', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:43:15', NULL),
('5fdee80005a9c65809b28e9c950793ea5b4d9510', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:57:56', NULL),
('60398d4df32009ecfec498a5b7079da552614d14', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:42:38', NULL),
('605f1e2d1aa4b3ce2394230be94d411f68b1dec0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:19:53', NULL),
('60dc39f73b797ff95eee85486b9fea7733682316', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:51:59', NULL),
('615696ad8f31c88a1ae8a2630e2b63644cc1863a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:38:17', NULL),
('61ecb9ffb843bfde8924b3f15832ab6e6a3d4c4c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:23:07', NULL),
('62019c7dcd31b8b0b59bf78cc12e8d653b4ccd1c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:13:07', NULL),
('623e259669c28656da0782de63b49f6e8173e4ad', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:11:05', NULL),
('627a3add2af75f5ec617e7ad87772d84abc24302', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:55:38', NULL),
('62a7e509601ace8c4cc2ea4690a47bbeda79f71c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:59:25', NULL),
('6335c9f3a8157006bb687099b0f03625b2b192a3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:35:50', NULL),
('6365fd8ec2fcba6347ce7820f10884f9a10a4e19', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:49:58', NULL),
('63b7bde80d852b46a52e8f3a37e4c5c283fe4fe1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:24', NULL),
('63e3769e43cc1329a80b83c22b1e59c8d14c2e64', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:41:34', NULL),
('645f38a27550d16e1b5f42f20e940974c70064b9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:37:26', NULL),
('645f4d1b1f75559f5cec6977e243f0a4d340c6f1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:07:19', NULL),
('6572402ce5c0637755040f8f8426f3896869cdf2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 11:26:44', NULL),
('65cab733bc46defec0eeebf5656a4b174934d937', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:09', NULL),
('662929ff1a7c2c50c8db07d3d634babfe0fc8239', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:02:46', NULL),
('666557604230c9abf67b9b34a4f26336affe844c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 13:35:27', NULL),
('66e63c743c6d1e9964c407686adef8f3bfa74148', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:24', NULL),
('673669a91149b38590e6e095139704b69e0c26a1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:27:52', NULL),
('6842a541a549fa6f2cdaeb204efbbcb490f80bb6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:48:39', NULL),
('685809c0a6dc94e4d280bbaca490e951a14060dc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:37:04', NULL),
('68e9ff5cd954b217ddd8e102a8bb89f5a58acdc6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:09:45', NULL),
('69378dfafc6bebafd26d4e3bef7ac308b5f70ef9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:12:55', NULL),
('69de0bc5e61cdc4abecf339c76e73203d1518176', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:10:28', NULL),
('69f3031fa5dc71bf3247396215417e9b85295b96', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:44:21', NULL),
('6a53fafb29a3ad0018b6a065384ca8d683936d8c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:38:55', NULL),
('6a71d7c4456889cd68545b353ff8b78cc6978e1d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:09:59', NULL),
('6add95484740bbe72d5b4cf08cf09dab90bab242', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:07:31', NULL),
('6b1f4c27fd6211a15f701957e9f1b37551ecf99b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:37:35', NULL),
('6be2381d763ff68487d9b1724cfe6a8438678e26', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:10', NULL),
('6cda8b0f753db18b4b8ec18d3f8a1920dc6ff0c3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:15:07', NULL),
('6e0a427737e79341bdfa4401b4774733d9a613fe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:37:39', NULL),
('6e155eb6e137043dc2d09174e32124d5e60cf94b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:38:46', NULL),
('6e65b90e9a3784b3b67eb08044bf413215832b6d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:15:32', NULL),
('6ec10248348fb4ad3db8d0608007cefe262ee3fa', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:58:18', NULL),
('6efa4d5e824989fa8ae73cc3da317cd442b2bf39', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:54:25', NULL),
('6f05e5d33d680cb67ab09ee9cd8e6abb71683eb0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:47:54', NULL),
('6f8178a383e97134710ffc2b6d2f120c2f79b211', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:21:11', NULL),
('703d2c13315c08e26123b054fd029999c2519089', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:43', NULL),
('70760aee07d383b9ec9876c2f71756cd4f030359', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:24:31', NULL),
('70b1b58f21dfaf8fb736ed1f721540e05271559f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:33:41', NULL),
('70d69817abe04ae61685e483a3f213a979053e3e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:36:42', NULL),
('7124505891e592e9ad0c7513c5dad3174e9a472f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:54:20', NULL),
('717cff817769d72a55a821dad877bcff726a326d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:59:53', NULL),
('71a8a561d3d06f230d58e505be9f7109d8914ec6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 08:38:59', NULL),
('71b9e2bacc3651578d2a63ce82959ce00c4348b8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:14', NULL),
('71be2a9fff2d2c51118892d93451a9338f27ffb3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:11:20', NULL),
('722ce7a94a59b92293f4ec71499709f8aa26e3f2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:38:12', NULL),
('7245bc2fe7db7b4d49ff52da0b60d05d2824596a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:33:14', NULL),
('72460fb9d6ce191f5f796743e99a5a12974df94d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:01:09', NULL),
('7299a22d3e1c9c2d5eef193449707cfd4500cd5f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:13:40', NULL),
('72b06cb1b7d39c68a26cdba39bc7dd68fcbeca9b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:43', NULL),
('72f31fb986f45cf894c772f445f1bb65d29d5a37', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:09:09', NULL),
('733eff8cdeb4a91065b25643e1da5cdf2df9f6c3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:59:31', NULL),
('734bc811879a62c145874139cb06af434c88036d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:12:45', NULL),
('73a6bd02b197b4fd959f2e88ba9e9fad5dc38ed3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:00:18', NULL),
('73bbd89c12c5e826c5fd195d637c03d17a88e304', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:32:26', NULL),
('73c1ea5f2bf02123d15898938ccc3f2008d03b91', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:43:36', NULL),
('742cd8ecae3d22b68754148a789de68cc631c5e9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 13:45:49', NULL),
('742fc35b971c8c70ad627ab488924f3334d3997f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:38:08', NULL),
('747a0011f05fac59bec972bd16709ee66e9c3472', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:51:33', NULL),
('74d770d83fbbbd207b82e1f689fffc704f024d64', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:34:26', NULL),
('7539c75e15316b0f344579b0f30c3703b375330b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:25:08', NULL),
('7540786f72eb9a02a1b173bf41fcfb6ed7512d9f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:04:20', NULL),
('75a252d648e4b45f674f47ea108f1e0e407aecbb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:05:37', NULL),
('75addfb41084f503ca54cfc00e05bb6074babbcc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:05:46', NULL),
('76385d02001302e5914ed50a35cd3f780b1bff72', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:34:19', NULL),
('766d757494caf66537daaf1c38a4f587309eeb33', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:54:43', NULL),
('76932548fc70eaa5dfdf132f918c1aa0307796c8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:45:44', NULL),
('770fa1bf67ec6fa5d33ea89efd496eb38b4c3a98', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:53', NULL),
('772ca1c24a2cc85ffc2d857b0a2008efb1d21ca9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 13:46:00', NULL),
('777c070e07b0cc290550766170f8f77a798edb0a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:25:06', NULL),
('7783ef8aff6dd9638a12d6cf4939bfa27a795987', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:52:09', NULL),
('7816a7d5f863cbcbac643d9033b79a91596206fa', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 12:33:17', NULL),
('781917588a8000142b1fe1e891c4410b9bbe4288', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:36:48', NULL),
('784872d621bce11e4c72a49c3e35f07139e32b7e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:33', NULL),
('78668db7d1ede68a81a2ba31df9339f29edff366', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 08:39:10', NULL),
('78750f1659b63dc8414535b37bf96608feefeb78', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 09:58:14', NULL),
('78767dfd36e07fd28d474be90832c4723c47f553', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:47:57', NULL),
('78db5deee19a141b70dd9d6ba65263a84c9654e9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:58:28', NULL),
('791ae62455abbeb3795d90854afe5919fdfb3623', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:25:14', NULL),
('7922ef934e40576e8314722040da22e52c763ff6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:01:20', NULL),
('792d9958697383c39dd3f4ec5fddd5ba2cbf5234', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:35:48', NULL),
('794033a7f70252794defcbbe9529edbd77a4c30d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:06:40', NULL),
('799261bc25d5b8bd1b1938bdbd0d031b664f01af', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:46', NULL),
('7b30b50f5c0a228fb9934d295f1d98cfa443830c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:39:57', NULL),
('7b760695a4f1d4b440f3b7a0dc428f99a78fa45c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:05:38', NULL),
('7bb3b42493b38cee9a552a65a2c324a97210591d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:30:24', NULL),
('7cb1cf70c19deccb99bd7471d0607106313e0e54', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:36', NULL),
('7d0e6f8ec691df911b06aedd86fe07dd6b926b18', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:54', NULL),
('7d7fbff18d672330fad81a314437cf3cda8bc73f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:07:32', NULL),
('7d91e609f37bda000468511c7bd3c2704c1e3fed', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:54:53', NULL),
('7dbdad25af87810090472ed92ba3c0bda19a3bcc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:59:38', NULL),
('7dfe0ff38d49e5c333f905b4a11f937ce5444605', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:07:11', NULL),
('7e18ebb2d179ee879aae6afaf8ff280dc5faa572', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:04:09', NULL),
('7e5c0c539b668b94519729e2b896e5dee68fe881', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:19:19', NULL),
('7e73552228331900d4ba4085e2583bb938f8486c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:45:34', NULL),
('7ebad2d82f80ccd8d843c4e522ce1b6d072455ec', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:10:57', NULL),
('7ec424a7731a1677a2417ee4bef62bad26986ff5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:59:21', NULL),
('7ec5d55f2afc44ac6f7c476c28e54b0668ccc5cf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:54:13', NULL),
('7f54ea4f82ba053884daf118f5395b8a97195b3f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:11:52', NULL),
('7f775c85e9bdb93b9db8eef61be7f4e6986583bf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 13:41:33', NULL),
('7f99116e36f2d430b5731070250387aa423026e7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:02:52', NULL),
('803243a3149bca20159b770e8c25b3926e53ac46', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:48:47', NULL),
('805e8791a7cc3bf1cf9c4ee70d1a0fcd954f2bcf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:13', NULL),
('80a71513bd60a5d8f352cf564538ddc81f2dbd22', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:37:59', NULL),
('80db12361a5e65063448cc883b07d38f36a9b721', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:14', NULL),
('810b01a77e4460040ccdd350d9539d0b75890261', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:29:00', NULL),
('810e5d1e1739d40c89df93608018c99d436b697c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:20', NULL),
('8129e8d23a0ad4e442a0d3428d8bc6a4ba72df07', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:54:07', NULL),
('81c8de441251e0e861ddd579347de89770cec17c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:11:13', NULL),
('8229961e6d2c5d688645fd60275d8c133a05c6b8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:24', NULL),
('828e9533b9b80449394fd83ddccce2f61ab629f7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:21:31', NULL),
('82c3a552c583f4aa2764fa9634e496255d410523', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:26:39', NULL),
('831f8d8899f6865dfdeb2dee4484dffc0a31ace9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:12:06', NULL),
('8371bc901b4f36816513b43283fd11e7d5acbaf9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:58:59', NULL),
('83c65ca0f1fe2d35a5c202af0300058a0814e21d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:26:32', NULL),
('83e481ee8623e3ed4f217856bd9280486ec6b088', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:40:16', NULL),
('8417e54572b0495aa03873780997a88689ea7a89', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:58:02', NULL),
('8451e7cca095196619caa7757ee2cec4fda7acb1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:56:13', NULL),
('84de9506da35e5b8bc6362c595c18cf4fb920ae5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:10:47', NULL),
('8503dea7879f15ba3485900e94d4797062528439', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:03:11', NULL),
('85688c387e48ed044a7374adb57a8dddb8910444', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:36:48', NULL),
('860ebac249a05927fead822bae1eaa75f46cef1f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:41:11', NULL),
('863053fc1f0ee7cdff96bb18ee68d98af2d9dc2a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:00', NULL);
INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('8696cc646b7daff51aee39c1ce6c917f8b03b7fb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:11:51', NULL),
('8720f2bee869d6280fd759658cc5540200268b24', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:36:53', NULL),
('875fd1d34d489565b62c8ef4eafb273a72e29666', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 14:22:22', NULL),
('87cecf2c219bd76ca68ca0f70034b5348df18183', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:02', NULL),
('87d55ba6f72d746ecdb4f1c295edf86de0b415a0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 13:50:05', NULL),
('87f7081e4d4265a009dabdcf959757af58cfb28b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:12:20', NULL),
('8812b892354fa2e53d3a2a381164057218ae4753', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:25:01', NULL),
('8842bcf65b9039f7a3c3897d22e1f72b1be21580', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:44:19', NULL),
('8895b770d7cddb1eec216a789533d9b40f9201ee', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:28', NULL),
('88a7bae368ed1031ab5174894c9ddfacb28f14db', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:16:49', NULL),
('8976c748246c8c1e302c3c979c783d0ffe3d23e8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:44:08', NULL),
('89f43c44f42f16e6256529fb213e2d14775ae138', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 11:52:09', NULL),
('89fd49754fb5ff5086b8365149fdf1a8cf4c527d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:35:11', NULL),
('8a02187f5c0ec5bb0ae4ea617fbbcf933a92558d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:25:07', NULL),
('8a0a8b0f871ca40a66d97080d5ccff370b4ae504', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:54:09', NULL),
('8a27d4925f79c1ea7a49ffadbb050d9d257dc805', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:08:00', NULL),
('8a44960572c2b30b8df5ff8191b4fb380a563f60', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 11:10:20', NULL),
('8a6bb19df2df1e461fdc1eea7103d6789f9287bf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:13:18', NULL),
('8aa9c8b64bbe2b3bebe4522664ef555a165cc30c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:28', NULL),
('8b13ad291f276abfca708df6173a83d93b37b4e1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:23:07', NULL),
('8b32c9eb45a471b81b16b87aac6e0da8de4ce19b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:05:12', NULL),
('8bfca962df347a702cd8986fd59680fff99946a1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:16:53', NULL),
('8c2f1d9d29d5a3ee23eae3af77bc9444f7c1f9fc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:01', NULL),
('8c35ac355b3b4dcd99539f3749cb0887d681e451', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:57:19', NULL),
('8c6c62beba44067ffa4693b17f07e59471876ce1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 06:09:19', NULL),
('8c7cc2e4b9868ff8c71b2dfc1dc50f94c6650c76', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:43:36', NULL),
('8cce7c3ae794a7fbb2e3c287790b7afa0f30b3d5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:14:53', NULL),
('8cf64b001ef2bc48c829a7093b940928bf57283c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:12:01', NULL),
('8d21d819d7d7c6ab329986abb0c6a88c4f083464', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:51:19', NULL),
('8d35b5296f4633b87cb0cfc260ea5c99b47fce94', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:58:03', NULL),
('8f10ac6c2894a2e3b1cdb7b1557b8ff588dcd20e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:12:59', NULL),
('8f369580a1e0e1ce87c938d9b070d9bafce99cc5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:03:45', NULL),
('8f90b509f2aef1c6e186e2c7a2937a574b2f262c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:51:06', NULL),
('8fa156df70e39e8e1eeb862f7534ae8acfb425ef', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:29:33', NULL),
('912918e893258a15bdeb6fa8028bc8adc9ce4ccb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:04:09', NULL),
('9162d2caaefef34dbb3e161608b62018e9a5411f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:02', NULL),
('91b618578068180b880e7901a0caff763f587063', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:01:01', NULL),
('91e5463710c2fa69bfb1f6ff2e3d95a9e8c432d9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:02:39', NULL),
('9277d2e5805d5c1e39de83c3824e67019a7b1bd8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:30:20', NULL),
('9290545cf95ef9b358e6b77c6f725de6fd88bc7f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:34:26', NULL),
('92b3928cf07136db290dd58edebf1b3630d8cca3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:33:32', NULL),
('92d889bcb78885fdfc2e5a4c5b93fe48ab682727', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:10:00', NULL),
('92dba156459d97ef847ce15fe706ba135d908d1e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:20:22', NULL),
('92fefd91b1be6adad37bca6d760e23c28a01de4c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:39:35', NULL),
('937a36358cd098c5e53683d82a0b30d17df25280', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:21', NULL),
('937b98f77d99a8d5655f07776673b6d8b4620fb6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:07:34', NULL),
('93fe79d26d36f6b4fbac4f7af18aed66737b70bd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:25', NULL),
('94a6200dd91e030c1c75ab03a15cc638f714f26a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:25', NULL),
('94b1276a6777d28d605b5782cd0a96a226f58051', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:12:13', NULL),
('94d2053ae0ae5353f43e37b6cf87a166074dd5cb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:03:20', NULL),
('94e6e7156677e1ce4dd1a730661af61ea2f71eb7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:16:44', NULL),
('955aca936c26fec1ca34efc123e38e81a2efa051', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:38:07', NULL),
('95a382eeeaba6d41afa428537aa542bd57cd78ac', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:20', NULL),
('96c84074caf719b4aa63239ad7fe5abdc0c82f4d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:40', NULL),
('96f3fe98cb2165f59ed6b134d4021a7869f62201', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:47:51', NULL),
('96f50a6617fc0878cfd0e6356ffbca9f9a0f1504', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:31:56', NULL),
('977e87b58d07e69fc0cb273c385b9cf2d92f52c9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:23:06', NULL),
('978230ba205881538646805bf3a107c9093bda06', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:44:02', NULL),
('97b250e1f9d1c67f2f3f7ad8df0a83fc8249aa15', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 11:26:08', NULL),
('984a785f5d1d6b0cf316336a07a9f3566fe17b90', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:05', NULL),
('98a95da685bf63919c003dd21f9408482b448869', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:10:00', NULL),
('990600b3087578c20e77e45aecad6262631a6212', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:16:31', NULL),
('9932648b77d4c19b069fa6d919d94e02de9086c0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:28:58', NULL),
('99844597766dfe9be1de65ed453be66884fd9df6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:47:04', NULL),
('99ceee506cf5983b045e5a0143c3365eb938d58c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:14', NULL),
('99f39a49635d7fcb09573f139b9e47af4f7a3a2c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:01:58', NULL),
('9a2ed20d51d33633d56369f1d8308bdfcb6ddbbe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 13:46:03', NULL),
('9b70c1065a6f4b64315f843f3e642eae696eb836', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:09:03', NULL),
('9b92b7577981e37b46dd46b2045a4560363397da', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:00', NULL),
('9bb0e2dc9d934b709c148b755a1ab7ecdc56c775', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:59:28', NULL),
('9bdb2f697f953138ac7ccce2894b5655b5e006c9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:06:45', NULL),
('9c01fd0e20d2ddcc0f03c280c2c0276269d325ed', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:08', NULL),
('9c17b4bd1518c3aec94196e8cfb0666f00865fb9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:12:09', NULL),
('9c41c1ed8243d5df20708a5b59cf32c5238bbb3d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 07:59:35', NULL),
('9cbcc097808be0a18df7aa1a3d2e741453035b78', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:02:48', NULL),
('9cdfe6fb660824186d7ff83caeb9ba0df524a421', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:00:08', NULL),
('9d29aa719393a864289953cc63f6586c4f5bc9cf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:42:23', NULL),
('9d9647dacba24843f87b657cfcfcfd3fab238904', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:19:40', NULL),
('9de8097ab6760087b9ad2ef7ed17c23f2c6f715c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:30', NULL),
('9dfd82098e3a6c1d59f6c3b0faa0b397218b639d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:31:06', NULL),
('9e21db1cd16023e1c50acb4e44647a0189f0e2be', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 11:20:33', NULL),
('9e52c92af1e40c6407651989e4f6a5b784531fba', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:57:56', NULL),
('9e5594ced062983e76c97d6580b907b56a045de8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:46:56', NULL),
('9e5df6b5ac4a4394cb65606923293bedce153720', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:17:12', NULL),
('9e78278f3c7adf48c5f4ffe0ebd800dfd8dba0b8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:56:37', NULL),
('9e785d4bdf0f78984fb366f234bbb50228e3de31', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:21:01', NULL),
('9e81b1373fc35a380be714d52beb78f1031fe1ab', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:42:16', NULL),
('9ea8aa89969ad8015fa416dff454f2dc0b83419a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:27:32', NULL),
('9f23cff0b96bebfb22dd275b598ba2efa87433a7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:18:49', NULL),
('9f53b765d5081a06d78d1d27806eb6f42c1f49f7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:19:55', NULL),
('9f59dde13ed958874f855f4f3ab7a1d5d2266977', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:42:47', NULL),
('a00821e71b49fd6e9f8427ecf77a199c015ca088', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:57:59', NULL),
('a03b10f487d5e3d90ec028cf743b636db801a90f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:42:00', NULL),
('a0d5ead176ed3d45ca49a1585b2dcdb38997cf17', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:35:54', NULL),
('a1d8c82ccaad6fb0491f5da8895e87d538424f36', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:45:25', NULL),
('a28a5ade1ac77670ab0756f3f4bb31a0e8d8343b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:10', NULL),
('a2c3a4e694bdbf6414f68861031aa6aaa8cc303a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:38:13', NULL),
('a2c75c12047be70c4bb7692cc8447a0ca4f52b10', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:00:15', NULL),
('a2e135a09be6421fa8707a52f724395452fed6bd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:35:03', NULL),
('a2e6e4e66f59520c63f33d667f0cd3a14294c6b8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:56:57', NULL),
('a30c2d75398be0fba9da901fac3b7ba9c146bce0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:11:24', NULL),
('a32232525d863c607927504755a72556554fdcce', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:50:17', NULL),
('a35a1280e298c02b6420deeb467c48797f23eaf5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:54:28', NULL),
('a43ddf3b8a4d011d102bf71a8e20ac8c76927601', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 11:20:15', NULL),
('a45d5120776188084ad3e73d7e56bed468b65118', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:11:31', NULL),
('a4811ec3ea24196572967fce95a9c6a4b4334a71', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:38:22', NULL),
('a4f63b0b764877d017cea7bb02547b1ecfbcab5d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:53:08', NULL),
('a5076984bbebfe19357f1b44bae6c353c95e110c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:10:56', NULL),
('a50ee19e56ab8b20d5d54ef8fc7bf78004b0122d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:57:38', NULL),
('a5bd08f46e5c52aed805b988f069a4d63b52706a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:07:48', NULL),
('a5fce133e15382a340ab9122b48afc8c5b60dd96', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:49:04', NULL),
('a6450d1794775f655016804336f71004a499a23f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:48:50', NULL),
('a8c182f839a514c661dd54bcfaa562f68471896c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:35:42', NULL),
('a903abc9ba5013507b30cdc656053647ebaa99bb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:27:02', NULL),
('a91c36c3949acccdb6dda172b2f329631204c499', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:38:39', NULL),
('a93523bb5f8b7e0203486efe97dd4d6b2d216e33', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:34:59', NULL),
('a9792779d0cf44a187df1318d4f7d51b996f627a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:57:19', NULL),
('a97a7cbafd206c747438757e3ca32e108697b30f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:51:23', NULL),
('aa66a79a5a13febc77b2e071b6f220dbd44c545c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:02', NULL),
('ab19bc0746fc35528e1b2088d9a4d4d5506cfeee', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:28', NULL),
('ab31bd38cacbd0b1c056501f9c583a79cf17b543', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:54:21', NULL),
('ab7066bf17b6001d1b6480261f80d023c05d7e99', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:16:04', NULL),
('ab8f65ff0225e2aad084c1e9a3e1fae6ed504a00', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:46:42', NULL),
('ab977a4383771398cd29a5c93289427314721c0c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:59:08', NULL),
('abedeb428d7f26b58ecb50a0b351a3779b635f77', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:25:32', NULL),
('ac051fc31abad03b88a8199a795d48db8e389ade', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:51:53', NULL),
('ac06d2bd6d7a3672cfc172f1ec326777355be49e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:13', NULL),
('ac07983ce62741de55da7cf3bd80687327dbac8e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:08:10', NULL),
('ac46cd27a9992bd658b1b8e7a1c131ac47961980', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:02:55', NULL),
('acd7db0199ba8ce5472cd4a7340547e8e74b1019', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:47:22', NULL),
('ad5dea82bb6e218074600a7df32f16a0aab7a6a8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:16:11', NULL),
('ae1b38b129215362354c156e6b9291128d863f5e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 10:01:29', NULL),
('ae5328749350709eb8b8923b023a15faeaba0481', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 14:27:28', NULL),
('aed231c442001ebe60c8bc7245676c8dca709a71', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:42:01', NULL),
('aeffbaa143d53349d6e27b0079be8619ebdeb4ba', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:58:37', NULL),
('af263d334cca641049b1d409d08cdc8fd187280c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:11:50', NULL),
('af47f49a75fa2a6423904308c6459557954aa8bd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:30:33', NULL),
('af5947eefdfe6c4cee740ecf104e21745283309b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:08', NULL),
('afe94c362cfabf2251a4bf0373533cc11c785306', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:41:53', NULL),
('b0a0c7d79b3793bc616df127674cb8e71bddc829', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:51:16', NULL),
('b0cfda7802b8d21f67f19338edbe3e8e6f0eeb7a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 10:01:29', NULL),
('b1c6319eb76345138c2718f6814885a94c4d227a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:50:03', NULL),
('b23115eeee8e9c9c42496f9d61d1f5e5c7d128b5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:35', NULL),
('b241846529e2e656f1d74573d30be98ae6c4be5b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:02', NULL),
('b2499fa2537c697e1c35bd254152cb5757a3dae4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:55:54', NULL),
('b28a6bd863aa9d9404f5392d2db9c23312c16785', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:12:21', NULL),
('b2f1f9ac5df2b78147df2756aa5c457a5395dc71', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:08:06', NULL),
('b35fbd4225fae09d0050d39b0dcec68d4b960da9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:33:46', NULL),
('b3919cf786d67c59c3932b3c5e5e02bd3bda5a0e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:55:17', NULL),
('b3bc7ed860cc8ce65bdde017a815c4f51ff1d509', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:05:22', NULL),
('b3c1ea664da595e6079e9d0450ff6918e2c99cd2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:24:12', NULL),
('b3ebc4e367c79493abfaf61afbe8d80065981dbf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:23:55', NULL),
('b41fe5fc671fddbb176b8bf3245487dd8db46641', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:04:25', NULL),
('b506770736b94bb8bbf2e2f7a07aeacd106e69e4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:22:48', NULL),
('b546ef8521adf9e0429a84080cc306c039f1b0a0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:12:27', NULL),
('b54dd23a0f23a37a02227d472136fc14970236a2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:15:39', NULL),
('b58a062d06adab062624a8107bf11dc53a36ce87', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:12:09', NULL),
('b5e29c56a26c60a1a097affd0ce7b6c3d5280fdd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:54:39', NULL),
('b62f4dd3682d79208cba6b7fe70423f757e6b91a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 13:47:31', NULL),
('b6c290c1cd3582fa0e8fa018dcf04816cad92bf9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:35:23', NULL),
('b71b15717224eb2734645baa2fc2d2ec687f3014', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:55:42', NULL),
('b7473ef320500d4a77027d8daa267e929bbd9859', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:22:00', NULL),
('b767dbf82848d477c760b144a8e5d65634a3f576', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:23:35', NULL),
('b7ab4729c645c9161753b6a8a9a881c98ff0341e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:48:39', NULL),
('b7dacab2d4fdc92e13e1d5fd75fe70731e690fee', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:44:11', NULL),
('b80cf426ca2025e7e105b7aa0f88c8a0717fdf8b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:36:29', NULL),
('b824ab563e78afb44a18a4bfe28a9a01e24404d9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:51:24', NULL),
('b828b0cc1f95a5fc9b7601decdacfaee1bc4e41c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:38:29', NULL),
('b829b01d813141267a4da4743d6659f89cf82800', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:20:19', NULL),
('b85d9345b7bd977d5b5ebd115e1f7e811bfa7d8f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:42:19', NULL),
('b88bdb5444e4c1825d1189591f9b0fa0dece9e04', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:50:34', NULL),
('b91770a5334963abff1e87fe5fe8da53d29407d1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:55:17', NULL),
('b95c81365a45c4ceff20d43d67a3b3bd91f570a1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:00:05', NULL),
('b98881a2606ecaead1619d86d9716a3b643f084d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:23:45', NULL),
('b9b37acc203be55ebe7f4347bf2074d1719773ea', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:41:45', NULL),
('b9c9fdfe344fdf0ace3541e4e2322862ff539319', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:46:54', NULL),
('ba25c64bcae06d5fbcaf76b7ca973f7465bcfa7d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:49:06', NULL),
('ba6a1ba4105191dcab3aebc1cca6e55948dfbe8f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 08:20:17', NULL),
('bb23207ae46433fa12714a5fcf87e9cbc37a1b5e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:59:14', NULL),
('bc291c0cce8916a461e4793f9b61cc8a505209de', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:16:40', NULL),
('bc6b0a409fcda9ec8c04b036c8586ec832d8790c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:47:08', NULL),
('bc7f00e2c9fd8aca28d1fe86727badf81443e719', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 14:23:09', NULL),
('bd05464ee7bf84da0950d746d76aa4332e4261e5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:07:59', NULL),
('bd0d9e050ffeca08887645c31ba2a80f59a26e55', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:18:34', NULL),
('bd554107f856a98b6a2b54c96460bc0a4b0a8390', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:38:04', NULL),
('bd98d58599e0cc04b71ff602038946f46d0ce255', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:02:42', NULL),
('bde5a1e92dd5a89657907f8c5dd7b9de54ea028d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 06:09:18', NULL),
('bed1a8641bcf81b10c99e75e1f2bb110dadaa7d3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:54:27', NULL),
('bef7ecccc4f7d0b0db643e732b21ef80983d4a49', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:37:09', NULL),
('bf425999419437a8bc1a251d2af21443bba23dfc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:08', NULL),
('bf4be7aaa1a51b098507c049d3764c9351126995', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:36:32', NULL),
('c00216c1f5795fe8008020cf4620b506394b7884', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:51:50', NULL),
('c020c79bb01761ddb9449d73cdce9781263a7e3b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:38', NULL),
('c02a528b38700804449549d710838684d9a7a688', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:16:40', NULL),
('c02d9cdfc5983dd71c65d96ec949d0b582c16c40', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:26', NULL),
('c04e9e20569266306ac3e29fa036e8354e408d9a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:03:18', NULL),
('c058fe0d7a1abc111caaf0d7bbf7036bd3bad522', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:05', NULL),
('c09b8411777aa660ffa69eb89cbcba82de019999', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:26:26', NULL),
('c0b1fa7341e2a8ecaf3a3133d4f2899811a00f34', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:30:16', NULL),
('c1653cacf2ab38cb8a93d06bd0819906fdae45f8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:06:15', NULL),
('c1ac93078c71237395583313be9f13963caabb9e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 11:50:57', NULL),
('c1adf9cd9ce54645b91f7097352ac38594365b81', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:29:45', NULL),
('c1d7a0af335ad98b8e72e0c84015936f196845fb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:35', NULL),
('c20dc6b443d13b6066a09c43305339ed8985bdff', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:11:56', NULL),
('c27c8b0f9e4ac597c132808648bde1ceb1e59934', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:35:15', NULL),
('c2d8e721cf7a55fed70654ced537223ae66a8713', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:11', NULL),
('c3176516b579732afd66e111cb47bf15f6daceb8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:39:20', NULL),
('c433f1a0acc610c2167ae761011819649f517eb1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:33:45', NULL),
('c4355748acdd99058fe132e906242f0bd2e39a3e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:38:48', NULL),
('c4cf34753b1de7f42fd03c82ec6932fce3e45807', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:34:41', NULL),
('c4f11b11ab411df81bdd4c4c7d2f0a83e4f59aec', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:16:40', NULL),
('c4fe3fc0baf53548c954afee959d0e5b7ba3cafe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:49:32', NULL),
('c557f32fc707e49ae92e28db053d8cb9284e96d4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:36:28', NULL),
('c5704a454c8c6998919785ddc87ee75dc50b43fc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:25:37', NULL),
('c5b66630a99232f31468540fade08c873d94ed57', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:00', NULL),
('c6462d4ab4ccf4dfebbf82df8d71a37febb38b67', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:11:16', NULL),
('c6af38d0ed159b0a3aff8d7719bc94f4a1193a1d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:16:40', NULL),
('c6e49a86ef218df87b30b9060495a78c70dbc135', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:51:07', NULL),
('c6f33e1c6b8e8f52efbbe0a7ebdaab9bead8edfe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:27:15', NULL),
('c765d3cb9c6977940bed1cbf96d23fbf851d2179', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:38:47', NULL),
('c797bd900a276498104d4b132dbddfe183d94303', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:25:31', NULL),
('c7ea0796cec90971d51c3ef6a8d90bebdca4dd3d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:56:11', NULL),
('c82a20bbeffa612184d6544c0a3699b20e965f89', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:57:36', NULL),
('c82cbd8387e711410ecb8997e38ce4bb2398b7e7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:15:54', NULL),
('c83df4c55c3333223ae2ee2bfa7d4256a8e7b8dd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:38:59', NULL),
('c8c58f7dd4139de880e343b3252d69924e3e7178', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 11:32:34', NULL),
('c8ddeedc3cd2105de7e14150f8c6df8dc28740ca', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:05:46', NULL),
('c8e4c72be4b7df59a817ed9c72b83b9c39f867d3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:12:18', NULL),
('c9d8ddb6bc2accb7b90a0efc8d92dc993be3fca8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:15:04', NULL),
('ca3c9c80b29bfb764ae25d5db4453bb8804899f9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:24:58', NULL),
('ca61fa4f6b79fc4d37514e04d1333a02c490d448', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:42:36', NULL),
('ca7283716b22335c570ce209da2932c9619174d3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:24:58', NULL),
('ca8c7b8e72b81ad0c5b3267d581d8bf141f28c54', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:35:13', NULL),
('caaabc1878c2aeb99327a59688613701e061bd24', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:08:33', NULL),
('cb16388c87ef945d07db6db3db96045618cbc0a5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:49', NULL),
('cb41bae2d421904c59a4ab434a1326104fa0b319', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:41:15', NULL),
('cbab28c858a8b3ebfbd50b3d8432510ca7863762', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:27:52', NULL),
('cbe1fcb875c1031b08a0d7662b1b27a7def06958', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 08:39:03', NULL),
('cbed09fd16258848747c25d50f103299762104f5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:54:29', NULL),
('cc7c853584e1969af0d9bc840dcee0a2edbaba78', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:58:10', NULL),
('cc7db6d2fe3d42945477ee1e847f67a986293793', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:57', NULL),
('cce69951db29a7ca829872d286ae3dd581c2aeaf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:09:11', NULL),
('ce188702ed4c307dc74449f903909de5a7effa82', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:33:10', NULL),
('ce223fc3e58effca7a5772e6db26abccd0129fad', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:52:42', NULL),
('ce25e5e8525b4f99b8413e34d2726c1bff322466', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:49:23', NULL),
('cef9ea332ee13768b4b432e8eaba00a0a53af1e9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:56', NULL),
('cf23d8bc324654265c87483783bf62bcf460248e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:31:49', NULL),
('cf52b08810548362d52d665f616527387f297b8f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:43', NULL),
('cf589329e66bcde431c74b96fdfeaa70f0faf008', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:19:12', NULL),
('d07bfe65f020145630471534a4358c93c6ad42b1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:40:04', NULL),
('d0e96da1239991d9f2aa2464b1499032837f4189', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:30:13', NULL),
('d0eaf475316f7448a71ab05e1f9b72dee52bbb59', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:37:16', NULL),
('d143051ba0021d5a26b5ab8a610c71964f40f82c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:34:29', NULL),
('d1ff2b515cbb140fe3177c4215abb5315c8ea772', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:02', NULL),
('d27ecebf4142803c1326b44bbc75f2499dabd871', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:58:34', NULL),
('d2eb04433c5ca9379fc3b79dd7554a383fd4555d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 07:59:36', NULL),
('d2f493d8b172d1d2b8784709fb7c414f8bdc1cc3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:31:53', NULL),
('d37315d529a6710b20230be9f354fc1fe16d6113', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:59:51', NULL),
('d373d4f634469738d6504e996d4bac97fad23062', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:40:52', NULL),
('d39cdf600245c76d20d8542d803a20451e00edc5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:47:20', NULL),
('d4228908719bcc289a75b2ebb6e6873b0ed08c99', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:12:55', NULL),
('d42995ee4cbaf197914a6062c0422b0de825407a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:59:03', NULL),
('d44ebb6fb411ac1dc9a4b0a5125eedbdd778c9ee', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:16:25', NULL),
('d477fc7f03eac6d07ab2f875ea994c41aa4943b1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:47:07', NULL),
('d48365836dcdbab4c30abf3af535cd2d1f961417', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:36:23', NULL),
('d4bcda74a87f3e9abe722dba97cf4acf4b7454ba', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:40:54', NULL),
('d4bd5902e6da9b9c9e952de09f3124d618efab85', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:30:15', NULL),
('d4f7682779b329e6ef48457efc6c53eca2a42d45', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:37:40', NULL),
('d5175849aeb276c81db75359b645068ceddbeb2d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 13:36:13', NULL),
('d60e98e065aaa3dee43f29b74a46d5174cf7b02c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:00:02', NULL),
('d84cdd19c8c0b1f5c911decf1c94d2ebd836f4b3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:37:21', NULL),
('d8f59c745bbd82ebd9d456dc0729ec789431271b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:04', NULL),
('d9f6540e57d711a1b7af0f181cc4c6c45036e1a2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:43:33', NULL),
('da197e48b7142767e9b2030a2e89bcf23273436d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:49:21', NULL),
('da4e9b256c553767ac851782f8011c8bcff4c675', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:34:19', NULL),
('dab9e9d51a9d1872bb8c3ee9a4895ecbd29e6f78', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 06:09:20', NULL),
('daf194a23db0ba1782977cb8272dcc51b0b6c32a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:56:47', NULL),
('db02e8172321ac8b1f674deb6f29f03cb3f0f877', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:15:31', NULL),
('db1124a07227e155c6542fa15d2e14a9876fbbfe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:20:19', NULL),
('db29f9a9eb9289bb7a813d56b7bf804677954dbc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-21 12:34:29', NULL),
('db2c1292a1ea236548cbc86d576adf69be4b8275', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:30:32', NULL),
('db626b188fdde7e9cd694a78de07a78feb49e3c0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:42:43', NULL),
('dbff12018411827dfc2df8b8a29eca33ef9cb817', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:55:12', NULL),
('dc48f3e4c0ae1247e765a31ab5728f0641570886', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:38:22', NULL),
('dc52666475f266a4b939189f40eb81bce879c305', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:58:39', NULL),
('dc600a83b9ba26aaf0c6b986812e1cc3871e64e9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:19:14', NULL),
('dc69aa24b7758baaefaf574b3cde572f80bbc26c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:38:07', NULL),
('dc998eeb5ddcbc4617e0475e7f563afc2a32e19e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:24:58', NULL),
('dcb1014434dfa4ffcf684128a5eb483d50b32351', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:47:12', NULL),
('ddd4ed4eb697c7917b026cc596cb569e5d609095', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:53:43', NULL),
('de200414db448c895fa7da0a2d3896eb6b289cb3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:38:45', NULL),
('deb7f33e713d402e88bd97c81c30ce2418ef45e2', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:32:53', NULL),
('debf1dda5f8d571a7c502459e8bcf0b180b161d0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:00:54', NULL),
('deeedf55c5756ac275e11bd15ecff9d69e0532d8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:40:37', NULL),
('df0bd0d4d45b068402711a0c60c22839f1e905dd', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:54:15', NULL),
('dfb173556e21f67628e398fada7c183c6b266b8d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:39', NULL),
('dff2fac6d4a2affe7c981afb218f62454217548f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:08:08', NULL),
('e048a43504e8d6668fd7eaed29a9fc68dc373b7a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:54:40', NULL),
('e04dd1111b3f349450b26de98cfdffa4b14d63c8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:00:16', NULL),
('e0c138543faa538266c10494f997d3835c10565c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 08:38:48', NULL),
('e1a0b7302f8e556e1f98e03e7ac27edfe6c310cb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:16:16', NULL),
('e1b83bfcd4af3e71afa206392a2ec40a8f9324d4', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:51:24', NULL),
('e1eaf065ab7e63dd5f9b0072823a0d3857d21476', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:24:05', NULL),
('e2828d3e49562c75df25e6f0618b4d57ca001c36', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 05:44:49', NULL),
('e2a212c57d8bda9a16458996bf4f7328f88df235', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 09:47:02', NULL),
('e2b7f56ef32e397c33691da6cb6df38d7d613cd1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:47:39', NULL),
('e2e0a313142afab000fef616a729f3ae394cf80c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:44:47', NULL),
('e3a2729e060be0489bb8e634de6fceccaed0ad40', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:54:23', NULL),
('e3b5df188b48ea7e73acc82365a6042e118c8a53', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 07:26:35', NULL),
('e3f7a424e8de32265e8934f75ea128e5f671fadb', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:13:22', NULL),
('e4019704cba8ca5acffd9aa9b6699319a4f9dded', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:16:46', NULL),
('e42dd1d4715f442899e48c56571ae0d6f61accf9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 10:53:11', NULL),
('e46cbcdbc2fd430b891950a2cfb0b3b37782abbc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:13:19', NULL),
('e4b1af3c5124f33ee6eece06b422a8a844c89557', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:05:42', NULL),
('e4d5bb19bbcd3a217d71e4cf462b3b92f02e0e15', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:36:27', NULL),
('e4f150a015a6d3a3c0f9fb68887c56cf68490a31', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:12:12', NULL),
('e5068969968fddf100e1cb50684db758e19b45aa', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:23:09', NULL),
('e520b3d3b2c6df17d85a7cb8256bd3b49d681838', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:48:57', NULL),
('e5aa1551691c77fe5e2846ccd4ef572637e92164', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:53:47', NULL),
('e61b9ba867b74ffb3c401cb9dba97fd099285f5d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:06', NULL),
('e67fb31d75dfaf533fe553515133d58c698b0dd0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:03:22', NULL),
('e68d2617b478fcaf0d67b47695c26a3917ce9748', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:12:24', NULL),
('e70054f91e4f7f0f9b0b87d998c33d2da4cd7f70', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:23:18', NULL),
('e7569ebc4c8a1b7a98e361a13ba8222f903c9ca7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:12', NULL),
('e7668270d27fb5451130ea54968c46a1e0e635e0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:40:52', NULL),
('e928e1ab608e266557d3db24c934075964f2f3d9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:10:18', NULL),
('e92b29fc4c8f50a46b9ea6487b32f89d67fe37d0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:08:27', NULL),
('e93ddfb0d7b01d9c46daf57f780c7f3ca02e950c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:29:00', NULL),
('ea63d70b73298cbfc022865aa85de5faf53c29be', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:19:16', NULL),
('eb018908bcabdd1ed84a78d2b226dc4a87620ce9', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 09:47:16', NULL),
('eb6ca9eeb8e2e07b0a0a02e70397bc9688a625d8', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-15 11:48:16', NULL),
('ec9e74c1f86256b887f5729d429b2caf8e8f08e3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:16:45', NULL),
('eca4c38943863eba04be93a43cfa07a02afc8597', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:34:19', NULL),
('ee1087be1f11d14977870fd936520ec007c6f80f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:58:08', NULL),
('ee12de94303818f51f7bb6c8262953a53cccccfc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 11:18:35', NULL),
('ee49e0109df49790d68558c47860b7380c827bf6', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:54:22', NULL),
('ee6e180bd7e2d084c77479ca1e36084206c8f4d1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:41:15', NULL),
('ee7d42c900aa665637552b63911c83b8eaccf26b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:00', NULL),
('ee983146858c9301ee21101b805ca99578c344e5', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:35:53', NULL),
('ef50a3b7fd3b964151ebda1219563c8bdb086b65', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 07:59:48', NULL),
('efd22f3224dc880a30d48213a0750fbea0ce971a', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:51:58', NULL),
('f09fceeba77b3ad0f97202b6bd745c357462dc30', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 08:09:30', NULL),
('f0b5aa43b438f3875e019ee60c74c236c84e97b1', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:31', NULL),
('f15df0fcc42831f7ca31906e0ea9148dbf6d3154', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:00:07', NULL),
('f1e1d76d3cf45b0dccda287f8c0fb071eb9dc06e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:34:26', NULL),
('f204941a844c3f1546cb9d85c1d055933545f080', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 06:25:44', NULL),
('f23d8f358f3a85daaaca3cae65422ed71f7243e7', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 09:51:36', NULL),
('f24731f150d8b983d1c4865e88990b0ef7e70317', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:05:43', NULL),
('f2a2eeafbe48ee81d80b9cda1d2173650e07b8fc', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:01', NULL),
('f47ba0a9a6cc7158ef952e5ad411fd10d3ea9f20', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 05:49:06', NULL),
('f51e680f754fc7b0d8889bd3169ee3fadb6b0a29', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:48:00', NULL),
('f52a308b17d6f2bad44db1aa4523752311d06550', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 14:19:09', NULL),
('f56b91d9a053d8b1e7fb03c4c693459dcbbefecf', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:57:25', NULL),
('f632128712ec38db10e966254f8502ec1967fa71', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:05:52', NULL),
('f698972f4f22ae9e1b0e9f8024c849ebde6b7681', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 11:38:39', NULL),
('f6c5cc3df813dd7a42674caa0fcfab4767ca72d3', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:33:47', NULL),
('f712b7c295834212aef4c4be2e7b04ff969b157b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 12:38:20', NULL),
('f76746c942a4fb84b218662731456a23b876b3e0', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:24:20', NULL),
('f864a62d0e4aac8e4e3fd5402ab753c0681bbf06', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:00:09', NULL),
('f89893f6a6f217223e686f364fbc8c6e83fe893d', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 12:50:49', NULL),
('f8a2f6cae7362331015c54a21ce1d1ce603e3353', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:38', NULL),
('f929cf40e620990c4522fec73442ac6893c47100', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 11:10:25', NULL),
('f934f76b070d39c6aaa38063880b1f2af2a86b90', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:31:01', NULL),
('f9abf6a0d9270e674dc32c076756dc083643f03f', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:33:24', NULL),
('f9dfa9b2bf6fd9eae059da7d9ec020486efebfbe', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:30:12', NULL),
('f9f8c2f9241d4daf946a34f17200d04585232154', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:30:18', NULL),
('fa15802f030d0fecc1168e7d9003d511a0f1d84b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 12:09:29', NULL),
('fa25e9a43914c05d80ebd693630203ed433d867b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:08:49', NULL),
('fada58d0889849ac52561ec1d95913242c3cb509', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 07:59:26', NULL),
('fadfa31f26c804341f2c2596c3655b19e6795649', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:41:43', NULL),
('fb812d9d0eab8d7315c1895998e22c6ab1b1a427', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 13:55:21', NULL),
('fc6418e897102557ebb947eb4fb1adb793cc5628', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:24:38', NULL),
('fd5c908ff819ec20cbdc5ad4f569f82005613032', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-24 07:34:36', NULL),
('fd91314bd43e58d6b250df4fdb5d9eca256a046b', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:26:28', NULL),
('fde3e73160293ad98e0b1838116b5fdb763e2a59', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 13:35:51', NULL),
('fde86362fda39fe7d96e8596dfa79307d4a5e47c', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 11:49:31', NULL),
('fe1487510f5269069ace7669c4ae0672ba694800', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 14:30:33', NULL),
('fe822af96a5c4b8a8008eae1d5852ccaed60820e', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-18 06:13:25', NULL),
('feb85801ff6f2420d9c59652a476c7942d42df70', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-19 10:13:08', NULL),
('fed2da17cbb5882221c99a0fac4bc4e391a60801', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 10:13:59', NULL),
('ffd5c63d908e001206abcacf128f74a4f18f1e65', '9d911a9a00ef11e48aff0019d114582', NULL, '2017-07-20 05:54:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `grant_types` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('9d911a9a00ef11e48aff0019d114582', '463ceaeab4db11e3aa520019d119645', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_key` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` text COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_sessions`
--

CREATE TABLE `oauth_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('user','auto') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `code` text COLLATE utf8_unicode_ci,
  `access_token` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `stage` enum('request','granted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'request',
  `first_requested` int(10) UNSIGNED NOT NULL,
  `last_updated` int(10) UNSIGNED NOT NULL,
  `limited_access` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Used for user agent flows'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_session_scopes`
--

CREATE TABLE `oauth_session_scopes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `access_token` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scope` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admins`
--

CREATE TABLE `tbl_admins` (
  `id` int(11) NOT NULL,
  `login_email` varchar(250) NOT NULL,
  `login_pwd` varchar(250) NOT NULL,
  `f_name` varchar(250) NOT NULL,
  `l_name` varchar(250) NOT NULL,
  `file_extension` varchar(15) NOT NULL,
  `admin_level` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_activity_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login_timestamp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`id`, `login_email`, `login_pwd`, `f_name`, `l_name`, `file_extension`, `admin_level`, `is_active`, `last_activity_timestamp`, `last_login_timestamp`) VALUES
(1, 'a@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Vishal', 'Gupta', 'jpg', 1, 1, '2017-07-24 00:29:48', '2017-07-24 05:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_angular`
--

CREATE TABLE `tbl_admin_angular` (
  `id` bigint(20) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_angular`
--

INSERT INTO `tbl_admin_angular` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_loginsessions`
--

CREATE TABLE `tbl_admin_loginsessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_admin_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(100) NOT NULL COMMENT 'IPv4 or IPv6',
  `browser_session_id` varchar(100) NOT NULL,
  `user_agent` varchar(300) NOT NULL,
  `login_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gps_location` point DEFAULT NULL COMMENT 'Optional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Browser Login Session';

--
-- Dumping data for table `tbl_admin_loginsessions`
--

INSERT INTO `tbl_admin_loginsessions` (`id`, `fk_admin_id`, `ip_address`, `browser_session_id`, `user_agent`, `login_timestamp`, `gps_location`) VALUES
(2, 1, '127.0.0.1', '0fb54fc5df9ca9adb1d93142c3a0379732555cb2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-06-16 05:31:22', NULL),
(3, 1, '127.0.0.1', 'c3c8b0693a8fedebd84cfe3f8d0dea14e153e987', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-17 05:11:27', NULL),
(5, 1, '127.0.0.1', '971b42016dc6f8ad55191f17848c8780410e6f9d', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-20 07:05:59', NULL),
(6, 1, '127.0.0.1', '171a2e0ed7cb3dd308d788dbb4144326e8d5bc18', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-21 04:49:21', NULL),
(7, 1, '127.0.0.1', '56c5ea2fd0d285f69b9bd8fe93d97a5ecda7900f', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-23 09:56:37', NULL),
(8, 1, '127.0.0.1', 'c043f9f3b45891a0dbc402a0571a4a0d888008aa', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-27 13:30:25', NULL),
(10, 1, '127.0.0.1', 'bb2de90118cbb0451e928ef383d517ab3e8c3a05', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-28 13:13:08', NULL),
(11, 1, '127.0.0.1', '9241d21eec8ecfae94da46addc13566ec546916d', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-29 03:57:31', NULL),
(16, 1, '127.0.0.1', '3394369426929c08d232d47a7b8ee928fd723b49', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-10 09:50:00', NULL),
(17, 1, '127.0.0.1', 'd736037f71c925d5b44c21e08f3c207eacc25b35', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-11 04:53:36', NULL),
(18, 1, '127.0.0.1', '908361742c7c1dc6d1f47aae0ef34aa0f6e25594', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-11 06:58:00', NULL),
(19, 1, '127.0.0.1', '89db7829dd92fc8205f9e19d07167b9cabec17af', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-12 12:33:25', NULL),
(24, 1, '127.0.0.1', '129b88cd375dd77f464ff3a9175cb8bdd3b75fbb', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-19 09:13:19', NULL),
(33, 1, '127.0.0.1', '1bb66158cf688f9f57fe0314c46fd3e89aef13f2', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-19 09:21:12', NULL),
(37, 1, '127.0.0.1', '12f03a4709bd5887d63c4dddf6bc009e8683ae04', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-19 09:24:32', NULL),
(39, 1, '127.0.0.1', '00e6ceaa30959576385da7cd415f25e362bcb0e7', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-19 11:16:46', NULL),
(40, 1, '127.0.0.1', '7ffb80ab27a35fa309035c75307b678da3f30463', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-20 04:50:35', NULL),
(41, 1, '127.0.0.1', '06f1e10933baaf97207204384c37afef0c267f14', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-20 07:38:48', NULL),
(42, 1, '127.0.0.1', 'c9ecd5552d7c408fe69d73cf96854a3311da199a', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-20 09:06:26', NULL),
(43, 1, '127.0.0.1', '2bab8494b7d8a8814970db726b8b671c22b1943c', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-20 12:41:33', NULL),
(44, 1, '127.0.0.1', 'ff37fd0f313bee9655ec2d5b754e4fe47ea20a9d', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-21 10:26:08', NULL),
(45, 1, '127.0.0.1', 'b5b3d0277871070a7d61af2260d40b064472decb', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-24 05:19:33', NULL),
(46, 1, '127.0.0.1', '2d69248bade32a9e785474fc00939aa5c9ed8a23', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-24 05:59:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_pwd_reset_codes`
--

CREATE TABLE `tbl_admin_pwd_reset_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_admin_id` bigint(20) UNSIGNED NOT NULL,
  `passcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unique Passcode (P- + Eight Alpha Numeric)',
  `generated_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Password Reset Table for Admins';

--
-- Dumping data for table `tbl_admin_pwd_reset_codes`
--

INSERT INTO `tbl_admin_pwd_reset_codes` (`id`, `fk_admin_id`, `passcode`, `generated_timestamp`) VALUES
(4, 4, 'P-5bce575f', '2017-05-27 13:03:55'),
(5, 2, 'P-V', '2017-05-27 13:06:21'),
(6, 3, 'P-Tf1JM', '2017-05-27 13:21:40'),
(7, 1, 'P-s7axTQb', '2017-07-19 08:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`) VALUES
(1, 'Laptops'),
(2, 'Mobiles'),
(3, 'Cameras');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(205) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `state` varchar(205) NOT NULL,
  `address` text,
  `detail` text NOT NULL,
  `date_of_joing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `name`, `company`, `email`, `phone`, `designation`, `state`, `address`, `detail`, `date_of_joing`) VALUES
(11, 'dsas', 'Msadsa', 'adfsdsdsf', 'sdsad', 'ssadsas', 'ddsadad', 'dsddada', '', '2017-05-26'),
(12, 'Barun', 'rwrwrwre', 'czx', 'adsad', 'dsdsfdsf', 'wrewewr', 'rreew', '', '2017-05-26'),
(17, 'Ram', 'Mass Softwre', 'ram@gmail.com', '345678975', 'Employee', 'Westbengal', 'Kolkata', '', '2017-05-26'),
(18, 'Sagar', 'Self', 'sagar@gmail.com', '123213232', 'Self Employee', 'Westbengal', 'Asansol!!!!!!!!!!!!!!!!!!!!!!!!', '', '2017-05-26'),
(19, 'Ramesh', 'Mass', 'ramesh@gmail.com', '123456708', 'Developer', 'West bengal', 'Kolkata', '', '2017-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` bigint(20) NOT NULL,
  `fk_category_id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_price` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `fk_category_id`, `product_name`, `product_code`, `product_price`, `status`) VALUES
(1, 1, 'Dell Inspiration ', 'DIABBSSE', 20000, 1),
(2, 1, 'SONY VAIO', 'PR153', 25000, 1),
(3, 1, 'DELL 1250', 'PR435', 36000, 1),
(4, 2, 'Lenovo K6 Note', 'PR288', 14000, 1),
(5, 3, 'Sony Camera', 'PR98', 65000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Should be unique once added (code level checking)',
  `display_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'By default the email id, later user changes (Unique)',
  `login_pwd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_email_id_verified` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `is_mobile_number_verified` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `is_block` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ip_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mac_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_timestamp` timestamp NULL DEFAULT NULL,
  `user_since_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `customer_id`, `email_id`, `mobile_number`, `display_name`, `login_pwd`, `is_email_id_verified`, `is_mobile_number_verified`, `is_active`, `is_block`, `ip_address`, `mac_address`, `last_login_timestamp`, `user_since_timestamp`) VALUES
(1, '16111910001', 'vishal2143.niit@gmail.com', '7501553048', 'Vishal Gupta', '$2y$10$chVe7caxjgTToUOIMHPnn./FGvR4PRfEOzmLzIG7N/NOvFVm.rh/W', 1, 1, 1, 'N', '', '', '2017-06-05 23:39:42', '2017-06-05 13:01:11'),
(3, '17061310001', 'vishal143.niit@gmail.com', '7501553047', 'vishal', '$2y$10$8xNvjk/NzQ4pPGAvJj1BReK3bpkSoHCI0V8KfYQEDmM/JmHwaToiy', 0, 1, 0, 'N', '127.0.0.1', NULL, '2017-07-18 01:29:48', '2017-06-13 10:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_angular`
--

CREATE TABLE `tbl_user_angular` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_angular`
--

INSERT INTO `tbl_user_angular` (`id`, `name`, `address`, `email`, `mobile`) VALUES
(10, 'vishal', '98367604788', 'vishal@gmail.com', '9836760488'),
(11, 'pallab 123', 'nabodoy club', 'pallab@gmail.com', '9836760448'),
(12, 'ssss', 'vbgb', 'jeetdas11@yahoo.in', 'sssss'),
(13, 'rahul', 'Park street', 'rahul@gmail.com', '9836760488'),
(14, 'vishal', 'asansol', 'vishal@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_loginsessions`
--

CREATE TABLE `tbl_user_loginsessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(100) NOT NULL COMMENT 'IPv4 or IPv6',
  `browser_session_id` varchar(100) NOT NULL,
  `user_agent` varchar(300) NOT NULL,
  `login_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gps_location` point DEFAULT NULL COMMENT 'Optional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Browser Login Session';

--
-- Dumping data for table `tbl_user_loginsessions`
--

INSERT INTO `tbl_user_loginsessions` (`id`, `fk_user_id`, `ip_address`, `browser_session_id`, `user_agent`, `login_timestamp`, `gps_location`) VALUES
(2, 3, '127.0.0.1', 'e4e718a77e094584da36bde618a922a67a29ea7d', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-16 12:44:29', NULL),
(4, 3, '127.0.0.1', 'c0b05dcb9069499d9876ddfb9d42ad86e0dab7c8', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-22 07:08:34', NULL),
(6, 3, '127.0.0.1', '5eae6ef639afc4724a83b8c88a82d24916dba4bd', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-06-23 11:08:12', NULL),
(8, 3, '127.0.0.1', 'bcf14ebbdcbb3e5ef49ad014faa3e3c7582e0d1c', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-13 12:33:03', NULL),
(10, 3, '127.0.0.1', 'b6205f79886b7402c0a951e29a34af1330d01378', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0', '2017-07-18 06:59:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profile_basics`
--

CREATE TABLE `tbl_user_profile_basics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Only single active data for each user, inactive ones are history',
  `profile_picture_file_extension` enum('jpg','jpeg','png','gif') COLLATE utf8_unicode_ci NOT NULL,
  `s3_media_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'By default the email id, later user changes (Unique)',
  `f_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `m_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `residence_street1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `residence_street2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_street3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_post_office` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_district` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_zipcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `residence_phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_street2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_post_office` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_district` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_zipcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_profession_type_id` tinyint(3) UNSIGNED NOT NULL,
  `date_of_birth` date NOT NULL,
  `fathers_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_gender_id` tinyint(3) UNSIGNED NOT NULL,
  `fk_marital_status_id` tinyint(3) UNSIGNED NOT NULL,
  `fk_residence_status_id` tinyint(3) UNSIGNED NOT NULL,
  `addition_timestamp` timestamp NULL DEFAULT NULL COMMENT 'Copied Date',
  `fk_admin_id` bigint(20) UNSIGNED NOT NULL,
  `approved_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_profile_basics`
--

INSERT INTO `tbl_user_profile_basics` (`id`, `fk_user_id`, `profile_picture_file_extension`, `s3_media_version`, `display_name`, `f_name`, `m_name`, `l_name`, `residence_street1`, `residence_street2`, `residence_street3`, `residence_post_office`, `residence_city`, `residence_district`, `residence_state`, `residence_zipcode`, `residence_phone`, `permanent_street1`, `permanent_street2`, `permanent_street3`, `permanent_post_office`, `permanent_city`, `permanent_district`, `permanent_state`, `permanent_zipcode`, `permanent_phone`, `fk_profession_type_id`, `date_of_birth`, `fathers_name`, `fk_gender_id`, `fk_marital_status_id`, `fk_residence_status_id`, `addition_timestamp`, `fk_admin_id`, `approved_timestamp`) VALUES
(2, 1, 'jpg', 'B.GMYxbDUQ9Iw1iWBarrZ6rSMGVbczCj', 'Vishal Gupta', 'Vishal', '', 'Gupta', 'CD 105', '', '', '', 'Sector-v', '', 'WEST BENGAL', '713342', NULL, 'CD 105', '', '', '', 'Beleghata', '', 'WEST BENGAL', '700010', NULL, 1, '1980-01-18', 'P.Bakshi', 2, 1, 2, '2016-11-19 09:34:06', 1, '2016-11-19 15:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_types`
--

CREATE TABLE `tbl_user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL,
  `user_code` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unique User Code for Referal Purpose (Format: REF + Eight Alpha Numeric)',
  `user_mode` enum('B','L') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'B->Borrower, L->Lender (Null if user is just an agent)',
  `is_agent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `fk_profession_type_id` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_types`
--

INSERT INTO `tbl_user_types` (`id`, `fk_user_id`, `user_code`, `user_mode`, `is_agent`, `fk_profession_type_id`) VALUES
(2, 1, 'REF235B58C1', 'B', 0, 1),
(3, 3, 'REF88EA5928', 'L', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_verification_codes`
--

CREATE TABLE `tbl_user_verification_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL,
  `verification_type` enum('E','M') COLLATE utf8_unicode_ci NOT NULL COMMENT 'E->Email, M->Mobile',
  `verification_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unique Passcode (M- or E- + Eight Alpha Numeric)',
  `generated_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Email and Mobile Verification Code';

--
-- Dumping data for table `tbl_user_verification_codes`
--

INSERT INTO `tbl_user_verification_codes` (`id`, `fk_user_id`, `verification_type`, `verification_code`, `generated_timestamp`) VALUES
(5, 3, 'E', 'E-257662', '2017-06-16 04:46:03'),
(6, 3, 'M', 'M-182377', '2017-06-16 10:59:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_master`
--
ALTER TABLE `cms_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_page_name` (`menu_page_name`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_jwt`
--
ALTER TABLE `oauth_jwt`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `scope` (`scope`),
  ADD KEY `access_token` (`access_token`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_angular`
--
ALTER TABLE `tbl_admin_angular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_loginsessions`
--
ALTER TABLE `tbl_admin_loginsessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_session` (`fk_admin_id`,`browser_session_id`),
  ADD KEY `current_timezone_id` (`gps_location`(25));

--
-- Indexes for table `tbl_admin_pwd_reset_codes`
--
ALTER TABLE `tbl_admin_pwd_reset_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passcode` (`passcode`),
  ADD UNIQUE KEY `fk_admin_id` (`fk_admin_id`) USING BTREE;

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`fk_category_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email_id`) USING BTREE,
  ADD UNIQUE KEY `unique_display_name` (`display_name`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `customer_id_2` (`customer_id`);

--
-- Indexes for table `tbl_user_angular`
--
ALTER TABLE `tbl_user_angular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_loginsessions`
--
ALTER TABLE `tbl_user_loginsessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_session` (`fk_user_id`,`browser_session_id`),
  ADD KEY `current_timezone_id` (`gps_location`(25));

--
-- Indexes for table `tbl_user_profile_basics`
--
ALTER TABLE `tbl_user_profile_basics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_display_name` (`display_name`),
  ADD KEY `fk_admin_id` (`fk_admin_id`),
  ADD KEY `fk_user_id` (`fk_user_id`) USING BTREE,
  ADD KEY `fk_profession_type_id` (`fk_profession_type_id`),
  ADD KEY `fk_gender_id` (`fk_gender_id`),
  ADD KEY `fk_marital_status_id` (`fk_marital_status_id`),
  ADD KEY `fk_residence_status_id` (`fk_residence_status_id`);

--
-- Indexes for table `tbl_user_types`
--
ALTER TABLE `tbl_user_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_id` (`fk_user_id`),
  ADD UNIQUE KEY `unique_user_code` (`user_code`) USING BTREE,
  ADD KEY `fk_profession_type_id` (`fk_profession_type_id`);

--
-- Indexes for table `tbl_user_verification_codes`
--
ALTER TABLE `tbl_user_verification_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verification_code` (`verification_code`) USING BTREE,
  ADD UNIQUE KEY `unique_user_verification_type` (`fk_user_id`,`verification_type`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_master`
--
ALTER TABLE `cms_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_admin_angular`
--
ALTER TABLE `tbl_admin_angular`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_admin_loginsessions`
--
ALTER TABLE `tbl_admin_loginsessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_admin_pwd_reset_codes`
--
ALTER TABLE `tbl_admin_pwd_reset_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user_angular`
--
ALTER TABLE `tbl_user_angular`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_user_loginsessions`
--
ALTER TABLE `tbl_user_loginsessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_user_profile_basics`
--
ALTER TABLE `tbl_user_profile_basics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user_types`
--
ALTER TABLE `tbl_user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user_verification_codes`
--
ALTER TABLE `tbl_user_verification_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `tbl_products_ibfk_1` FOREIGN KEY (`fk_category_id`) REFERENCES `tbl_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
