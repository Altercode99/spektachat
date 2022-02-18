-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 08:58 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kf_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `gr_ads`
--

CREATE TABLE `gr_ads` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `adslot` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adheight` int(11) NOT NULL DEFAULT '100',
  `xtras` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tms` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_ads`
--

INSERT INTO `gr_ads` (`id`, `name`, `content`, `adslot`, `adheight`, `xtras`, `tms`) VALUES
(1, 'Tes Iklan', '<p style=\'color:#166171\'>Hardware & Network Team <br/>©Copyright 2022</p>', 'leftside', 100, '0', '2022-01-30 22:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `gr_alerts`
--

CREATE TABLE `gr_alerts` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '10',
  `v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v2` bigint(20) DEFAULT NULL,
  `v3` bigint(20) DEFAULT NULL,
  `tms` datetime DEFAULT NULL,
  `seen` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_alerts`
--

INSERT INTO `gr_alerts` (`id`, `uid`, `type`, `v1`, `v2`, `v3`, `tms`, `seen`) VALUES
(1, 2, 'newmsg', '1', 1, 1, '2022-01-30 09:39:52', 1),
(2, 2, 'newmsg', '1', 2, 1, '2022-01-30 09:40:00', 1),
(3, 2, 'newmsg', '1', 3, 1, '2022-01-30 09:40:04', 1),
(4, 2, 'newmsg', '1', 4, 1, '2022-01-30 09:40:07', 1),
(5, 2, 'newmsg', '1', 10, 1, '2022-01-30 22:45:06', 1),
(6, 4, 'newmsg', '1', 28, 1, '2022-01-31 10:06:58', 0),
(7, 2, 'newmsg', '1', 29, 1, '2022-01-31 10:08:34', 1),
(8, 2, 'newmsg', '1', 30, 1, '2022-01-31 10:10:36', 1),
(9, 4, 'newmsg', '1', 39, 1, '2022-01-31 10:28:24', 0),
(10, 2, 'newmsg', '1', 51, 1, '2022-02-02 07:46:23', 1),
(11, 2, 'newmsg', '1', 52, 1, '2022-02-02 07:46:30', 1),
(12, 2, 'newmsg', '1', 53, 1, '2022-02-02 07:46:47', 1),
(13, 2, 'newmsg', '1', 54, 1, '2022-02-02 07:47:15', 1),
(14, 4, 'newmsg', '1', 57, 1, '2022-02-02 09:51:02', 0),
(15, 2, 'newmsg', '1', 61, 1, '2022-02-02 10:15:21', 1),
(16, 2, 'newmsg', '1', 62, 1, '2022-02-02 10:15:28', 1),
(17, 1, 'replied', '43', 77, 2, '2022-02-02 12:00:42', 1),
(18, 2, 'newmsg', '1', 96, 1, '2022-02-02 22:21:05', 1),
(19, 2, 'newmsg', '1', 140, 1, '2022-02-04 17:20:00', 1),
(20, 3, 'liked', '43', 142, 1, '2022-02-04 17:40:11', 1),
(21, 2, 'liked', '43', 130, 1, '2022-02-04 17:40:17', 1),
(22, 3, 'liked', '43', 148, 1, '2022-02-06 04:16:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gr_complaints`
--

CREATE TABLE `gr_complaints` (
  `id` bigint(20) NOT NULL,
  `gid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `msid` bigint(20) DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_complaints`
--

INSERT INTO `gr_complaints` (`id`, `gid`, `uid`, `msid`, `type`, `comment`, `status`, `tms`) VALUES
(1, 43, 2, 74, 'inappropriate', 'Just test', 3, '2022-02-02 12:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `gr_customize`
--

CREATE TABLE `gr_customize` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `element` mediumtext COLLATE utf8mb4_unicode_ci,
  `device` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'all',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xtra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_customize`
--

INSERT INTO `gr_customize` (`id`, `name`, `element`, `device`, `type`, `v1`, `v2`, `xtra`) VALUES
(1, 'custom_css', '', 'all', 'custom', '', '', '0'),
(2, 'aside_left_header_bg', '.swr-grupo .lside > .head', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(3, 'aside_left_header_icon_color', '.swr-grupo .aside > .head i', 'all', 'color', '#A9A9A9', '', '0'),
(4, 'aside_left_header_icon_size', '.swr-grupo .lside > .head i', 'all', 'font-size', '25', '', '0'),
(5, 'aside_left_search_bg', '.swr-grupo .lside > .search', 'all', 'background', '#F7F9FB', '#F7F9FB', '0'),
(6, 'aside_left_search_input_bg', '.swr-grupo .lside > .search > input', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(7, 'aside_left_search_input_text_color', '.swr-grupo .lside > .search > input,.swr-grupo .lside > .search > i', 'all', 'color', '#676767', '', '0'),
(8, 'aside_left_search_input_font_size', '.swr-grupo .lside > .search > input', 'all', 'font-size', '14', '', '0'),
(9, 'aside_left_search_input_icon_size', '.swr-grupo .lside > .search > i', 'all', 'font-size', '16', '', '0'),
(10, 'aside_left_tabs_bg', '.swr-grupo .lside > .tabs', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(11, 'aside_left_tabs_text_color', '.swr-grupo .lside > .tabs > ul > li', 'all', 'color', '#808080', '', '0'),
(12, 'aside_left_active_tab_text_color', '.swr-grupo .lside > .tabs > ul > li.active', 'all', 'color', '#000000', '', '0'),
(13, 'aside_left_active_tab_border_color', '.swr-grupo .lside > .tabs > ul > li.active', 'all', 'border-color', '#616161', '', 'easyedit'),
(14, 'aside_left_contents_bg', '.swr-grupo .lside', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(15, 'aside_left_list_title_text_color', '.swr-grupo .lside > .content > .list > li > div > .center > b > span', 'all', 'color', '#696767', '', '0'),
(16, 'aside_left_list_sub_text_color', '.swr-grupo .lside > .content > .list > li > div > .center > span', 'all', 'color', '#828588', '', '0'),
(17, 'aside_left_list_title_font-size', '.swr-grupo .lside > .content > .list > li > div > .center > b > span', 'all', 'font-size', '13', '', '0'),
(18, 'aside_left_list_sub_font-size', '.swr-grupo .lside > .content > .list > li > div > .center > span', 'all', 'font-size', '12', '', '0'),
(19, 'aside_left_list_options_text_color', '.swr-grupo .lside > .content > .list > li > div > .right', 'all', 'color', '#A4A5A7', '', '0'),
(20, 'aside_left_list_options_font_size', '.swr-grupo .lside > .content > .list > li > div > .right', 'all', 'font-size', '11', '', '0'),
(21, 'aside_left_list_options_hover_bg', '.swr-grupo .lside .opt > ul > li:hover', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(22, 'aside_left_list_options_hover_text_color', '.swr-grupo .lside .opt > ul > li:hover', 'all', 'color', '#FFFFFF', '', '0'),
(23, 'aside_left_list_add_icon_bg', '.swr-grupo .lside > .content > .addmore > span', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(24, 'aside_left_list_add_icon_color', '.swr-grupo .lside > .content > .addmore > span', 'all', 'color', '#FFFFFF', '', '0'),
(25, 'aside_left_list_add_icon_size', '.swr-grupo .lside > .content > .addmore > span > i', 'all', 'font-size', '16', '', '0'),
(26, 'aside_right_header_bg', '.swr-grupo .rside > .head', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(27, 'aside_right_profile_name_text_color', '.swr-grupo .rside > .top > .left > span > span', 'all', 'color', '#5A5A5A', '', '0'),
(28, 'aside_right_username_text_color', '.swr-grupo .rside > .top > .left > span > span > span', 'all', 'color', '#8B8E90', '', '0'),
(29, 'aside_right_search_bg', '.swr-grupo .rside > .search', 'all', 'background', '#F7F9FB', '#F7F9FB', '0'),
(30, 'aside_right_search_input_bg', '.swr-grupo .rside > .search > input', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(31, 'aside_right_search_input_text_color', '.swr-grupo .rside > .search > input,.swr-grupo .rside > .search > i', 'all', 'color', '#676767', '', '0'),
(32, 'aside_right_search_input_font_size', '.swr-grupo .rside > .search > input', 'all', 'font-size', '14', '', '0'),
(33, 'aside_right_search_input_icon_size', '.swr-grupo .rside > .search > i', 'all', 'font-size', '16', '', '0'),
(34, 'aside_right_tabs_bg', '.swr-grupo .rside > .tabs', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(35, 'aside_right_tabs_text_color', '.swr-grupo .rside > .tabs > ul > li', 'all', 'color', '#808080', '', '0'),
(36, 'aside_right_active_tab_text_color', '.swr-grupo .rside > .tabs > ul > li.active', 'all', 'color', '#000000', '', '0'),
(37, 'aside_right_active_tab_border_color', '.swr-grupo .rside > .tabs > ul > li.active', 'all', 'border-color', '#616161', '', 'easyedit'),
(38, 'aside_right_contents_bg', '.swr-grupo .rside', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(39, 'aside_right_list_title_text_color', '.swr-grupo .rside > .content > .list > li > div > .center > b > span', 'all', 'color', '#696767', '', '0'),
(40, 'aside_right_list_sub_text_color', '.swr-grupo .rside > .content > .list > li > div > .center > span', 'all', 'color', '#828588', '', '0'),
(41, 'aside_right_list_title_font-size', '.swr-grupo .rside > .content > .list > li > div > .center > b > span', 'all', 'font-size', '13', '', '0'),
(42, 'aside_right_list_sub_font-size', '.swr-grupo .rside > .content > .list > li > div > .center > span', 'all', 'font-size', '12', '', '0'),
(43, 'aside_right_list_options_text_color', '.swr-grupo .rside > .content > .list > li > div > .right', 'all', 'color', '#A4A5A7', '', '0'),
(44, 'aside_right_list_options_font_size', '.swr-grupo .rside > .content > .list > li > div > .right', 'all', 'font-size', '11', '', '0'),
(45, 'aside_right_list_options_hover_bg', '.swr-grupo .rside .opt > ul > li:hover', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(46, 'aside_right_list_options_hover_text_color', '.swr-grupo .rside .opt > ul > li:hover', 'all', 'color', '#FFFFFF', '', '0'),
(47, 'aside_right_list_add_icon_bg', '.swr-grupo .rside > .content > .addmore > span', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(48, 'aside_right_list_add_icon_color', '.swr-grupo .rside > .content > .addmore > span', 'all', 'color', '#FFFFFF', '', '0'),
(49, 'aside_right_list_add_icon_size', '.swr-grupo .rside > .content > .addmore > span > i', 'all', 'font-size', '16', '', '0'),
(50, 'menu_background', '.swr-menu', 'all', 'background', '#FFFFFF', '#FFFFFF', 'easyedit'),
(51, 'menu_text_color', '.swr-menu', 'all', 'color', '#000000', '', '0'),
(52, 'menu_active_bg', '.swr-menu > ul > li:hover, .swr-menu > ul > li.active', 'all', 'background', '#101010', '#101010', '0'),
(53, 'menu_active_text_color', '.swr-menu > ul > li:hover, .swr-menu > ul > li.active', 'all', 'color', '#FFFFFF', '', '0'),
(54, 'chatbox_bg', '.swr-grupo .panel', 'all', 'background', '#F7F9FB', '#F7F9FB', '0'),
(55, 'chatbox_welcome_text_color', '.swr-grupo .zeroelem > .welcome > span > i', 'all', 'color', '#6B6B6B', '', '0'),
(56, 'chatbox_welcome_heading_font_size', '.swr-grupo .zeroelem > .welcome > span > i.title', 'all', 'font-size', '21', '', '0'),
(57, 'chatbox_welcome_desc_font_size', '.swr-grupo .zeroelem > .welcome > span > i.desc', 'all', 'font-size', '15', '', '0'),
(58, 'chatbox_welcome_footer_font_size', '.swr-grupo .zeroelem > .welcome > span> i.foot', 'all', 'font-size', '13', '', '0'),
(59, 'chatbox_header_bg', '.swr-grupo .panel > .head', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(60, 'chatbox_header_title_text_color', '.swr-grupo .panel > .head > .left > span > span', 'all', 'color', '#616161', '', 'easyedit'),
(61, 'chatbox_header_title_font_size', '.swr-grupo .panel > .head > .left > span > span', 'all', 'font-size', '13', '', '0'),
(62, 'chatbox_header_sub_text_color', '.swr-grupo .panel > .head > .left > span > span > span,.swr-grupo .panel > .head > .left > span > span > .typing', 'all', 'color', '#8B8E90', '', '0'),
(63, 'chatbox_header_sub_font_size', '.swr-grupo .panel > .head > .left > span > span > span,.swr-grupo .panel > .head > .left > span > span > .typing', 'all', 'font-size', '12', '', '0'),
(64, 'chatbox_header_icon_color', '.swr-grupo .panel > .head > .right > i', 'all', 'color', '#8B8E90', '', '0'),
(65, 'chatbox_header_icon_size', '.swr-grupo .panel > .head > .right > i', 'all', 'font-size', '19', '', '0'),
(66, 'chatbox_searchbox_bg', '.swr-grupo .panel > .searchbar > span > input', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(67, 'chatbox_searchbox_text_color', '.swr-grupo .panel > .searchbar > span,.swr-grupo .panel > .searchbar > span > input', 'all', 'color', '#6B6B6B', '', '0'),
(68, 'chatbox_searchbox_font_size', '.swr-grupo .panel > .searchbar > span > input', 'all', 'font-size', '14', '', '0'),
(69, 'chatbox_searchbox_icon_size', '.swr-grupo .panel > .searchbar > span > i', 'all', 'font-size', '16', '', '0'),
(70, 'received_message_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(71, 'received_message_text_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i', 'all', 'color', '#333333', '', '0'),
(72, 'received_message_mention_text_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i i.mentnd', 'all', 'color', '#FF9800', '', '0'),
(73, 'received_message_font_size', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i', 'all', 'font-size', '13', '', '0'),
(74, 'received_message_time_text_color', '.swr-grupo .panel > .room > .msgs > li > div i.info', 'all', 'color', '#333333', '', '0'),
(75, 'received_message_time_font_size', '.swr-grupo .panel > .room > .msgs > li > div i.info', 'all', 'font-size', '10', '', '0'),
(76, 'sent_message_bg', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(77, 'sent_message_text_color', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i', 'all', 'color', '#FFFFFF', '', '0'),
(78, 'sent_message_mention_text_color', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i i.mentnd', 'all', 'color', '#FFEB3B', '', '0'),
(79, 'sent_message_font_size', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i', 'all', 'font-size', '13', '', '0'),
(80, 'sent_message_time_text_color', '.swr-grupo .panel > .room > .msgs > li.you > div i.info', 'all', 'color', '#FFFFFF', '', '0'),
(81, 'sent_message_time_font_size', '.swr-grupo .panel > .room > .msgs > li.you > div i.info', 'all', 'font-size', '10', '', '0'),
(82, 'audio_player_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay', 'all', 'background', '#607D8B', '#607D8B', '0'),
(83, 'audio_player_controls_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.play', 'all', 'color', '#FFFFFF', '', '0'),
(84, 'audio_player_seek_bar_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.seek > i.bar', 'all', 'background', '#616161', '#616161', '0'),
(85, 'audio_player_slider_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.seek > i.bar > i', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(86, 'audio_player_icon_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.icon', 'all', 'background', '#3F535D', '#3F535D', '0'),
(87, 'audio_player_icon_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.icon', 'all', 'color', '#FFFFFF', '', '0'),
(88, 'chatbox_textarea_bg', '.swr-grupo .panel > .textbox > .box', 'all', 'background', '#F7F9FB', '#F7F9FB', '0'),
(89, 'chatbox_textarea_input_bg', '.emojionearea.focused, .emojionearea > .emojionearea-editor, .emojionearea', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(90, 'chatbox_textarea_input_text_color', '.emojionearea.focused, .emojionearea > .emojionearea-editor, .emojionearea', 'all', 'color', '#676767', '', '0'),
(91, 'mobile_aside_left_header_bg', '.swr-grupo .lside > .head', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(92, 'mobile_aside_left_header_icon_color', '.swr-grupo .aside > .head i', 'mobile', 'color', '#FFFFFF', '', '0'),
(93, 'mobile_aside_left_header_icon_size', '.swr-grupo .lside > .head i', 'mobile', 'font-size', '25', '', '0'),
(94, 'mobile_aside_left_search_bg', '.swr-grupo .lside > .search', 'mobile', 'background', '#000000', '#000000', '0'),
(95, 'mobile_aside_left_search_input_bg', '.swr-grupo .lside > .search > input', 'mobile', 'background', '#000000', '#000000', '0'),
(96, 'mobile_aside_left_search_input_text_color', '.swr-grupo .lside > .search > input,.swr-grupo .lside > .search > i', 'mobile', 'color', '#FFFFFF', '', '0'),
(97, 'mobile_aside_left_search_input_font_size', '.swr-grupo .lside > .search > input', 'mobile', 'font-size', '14', '', '0'),
(98, 'mobile_aside_left_search_input_icon_size', '.swr-grupo .lside > .search > i', 'mobile', 'font-size', '16', '', '0'),
(99, 'mobile_aside_left_tabs_bg', '.swr-grupo .lside > .tabs', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(100, 'mobile_aside_left_tabs_text_color', '.swr-grupo .lside > .tabs > ul > li', 'mobile', 'color', '#808080', '', '0'),
(101, 'mobile_aside_left_active_tab_text_color', '.swr-grupo .lside > .tabs > ul > li.active', 'mobile', 'color', '#000000', '', '0'),
(102, 'mobile_aside_left_active_tab_border_color', '.swr-grupo .lside > .tabs > ul > li.active', 'mobile', 'custom', '#616161', '#E91E63', 'easyedit'),
(103, 'mobile_aside_left_contents_bg', '.swr-grupo .lside', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(104, 'mobile_aside_left_list_title_text_color', '.swr-grupo .lside > .content > .list > li > div > .center > b > span', 'mobile', 'color', '#696767', '', '0'),
(105, 'mobile_aside_left_list_sub_text_color', '.swr-grupo .lside > .content > .list > li > div > .center > span', 'mobile', 'color', '#828588', '', '0'),
(106, 'mobile_aside_left_list_title_font-size', '.swr-grupo .lside > .content > .list > li > div > .center > b > span', 'mobile', 'font-size', '13', '', '0'),
(107, 'mobile_aside_left_list_sub_font-size', '.swr-grupo .lside > .content > .list > li > div > .center > span', 'mobile', 'font-size', '12', '', '0'),
(108, 'mobile_aside_left_list_options_text_color', '.swr-grupo .lside > .content > .list > li > div > .right', 'mobile', 'color', '#A4A5A7', '', '0'),
(109, 'mobile_aside_left_list_options_font_size', '.swr-grupo .lside > .content > .list > li > div > .right', 'mobile', 'font-size', '11', '', '0'),
(110, 'mobile_aside_left_list_options_hover_bg', '.swr-grupo .lside .opt > ul > li:hover', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(111, 'mobile_aside_left_list_options_hover_text_color', '.swr-grupo .lside .opt > ul > li:hover', 'mobile', 'color', '#FFFFFF', '', '0'),
(112, 'mobile_aside_left_list_add_icon_bg', '.swr-grupo .lside > .content > .addmore > span', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(113, 'mobile_aside_left_list_add_icon_color', '.swr-grupo .lside > .content > .addmore > span', 'mobile', 'color', '#FFFFFF', '', '0'),
(114, 'mobile_aside_left_list_add_icon_size', '.swr-grupo .lside > .content > .addmore > span > i', 'mobile', 'font-size', '16', '', '0'),
(115, 'mobile_aside_right_header_bg', '.swr-grupo .aside > .head, .swr-grupo .panel > .head, .swr-grupo .rside > .top', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(116, 'mobile_aside_right_profile_name_text_color', '.swr-grupo .rside > .top > .left > span > span', 'mobile', 'color', '#FFFFFF', '', '0'),
(117, 'mobile_aside_right_username_text_color', '.swr-grupo .rside > .top > .left > span > span > span', 'mobile', 'color', '#FFFFFF', '', '0'),
(118, 'mobile_aside_right_search_bg', '.swr-grupo .rside > .search', 'mobile', 'background', '#000000', '#000000', '0'),
(119, 'mobile_aside_right_search_input_bg', '.swr-grupo .rside > .search > input', 'mobile', 'background', '#000000', '#000000', '0'),
(120, 'mobile_aside_right_search_input_text_color', '.swr-grupo .rside > .search > input,.swr-grupo .rside > .search > i', 'mobile', 'color', '#FFFFFF', '', '0'),
(121, 'mobile_aside_right_search_input_font_size', '.swr-grupo .rside > .search > input', 'mobile', 'font-size', '14', '', '0'),
(122, 'mobile_aside_right_search_input_icon_size', '.swr-grupo .rside > .search > i', 'mobile', 'font-size', '16', '', '0'),
(123, 'mobile_aside_right_tabs_bg', '.swr-grupo .rside > .tabs', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(124, 'mobile_aside_right_tabs_text_color', '.swr-grupo .rside > .tabs > ul > li', 'mobile', 'color', '#808080', '', '0'),
(125, 'mobile_aside_right_active_tab_text_color', '.swr-grupo .rside > .tabs > ul > li.active', 'mobile', 'color', '#000000', '', '0'),
(126, 'mobile_aside_right_active_tab_border_color', '.swr-grupo .rside > .tabs > ul > li.active', 'mobile', 'border-color', '#616161', '', 'easyedit'),
(127, 'mobile_aside_right_contents_bg', '.swr-grupo .rside', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(128, 'mobile_aside_right_list_title_text_color', '.swr-grupo .rside > .content > .list > li > div > .center > b > span', 'mobile', 'color', '#696767', '', '0'),
(129, 'mobile_aside_right_list_sub_text_color', '.swr-grupo .rside > .content > .list > li > div > .center > span', 'mobile', 'color', '#828588', '', '0'),
(130, 'mobile_aside_right_list_title_font-size', '.swr-grupo .rside > .content > .list > li > div > .center > b > span', 'mobile', 'font-size', '13', '', '0'),
(131, 'mobile_aside_right_list_sub_font-size', '.swr-grupo .rside > .content > .list > li > div > .center > span', 'mobile', 'font-size', '12', '', '0'),
(132, 'mobile_aside_right_list_options_text_color', '.swr-grupo .rside > .content > .list > li > div > .right', 'mobile', 'color', '#A4A5A7', '', '0'),
(133, 'mobile_aside_right_list_options_font_size', '.swr-grupo .rside > .content > .list > li > div > .right', 'mobile', 'font-size', '11', '', '0'),
(134, 'mobile_aside_right_list_options_hover_bg', '.swr-grupo .rside .opt > ul > li:hover', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(135, 'mobile_aside_right_list_options_hover_text_color', '.swr-grupo .rside .opt > ul > li:hover', 'mobile', 'color', '#FFFFFF', '', '0'),
(136, 'mobile_aside_right_list_add_icon_bg', '.swr-grupo .rside > .content > .addmore > span', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(137, 'mobile_aside_right_list_add_icon_color', '.swr-grupo .rside > .content > .addmore > span', 'mobile', 'color', '#FFFFFF', '', '0'),
(138, 'mobile_aside_right_list_add_icon_size', '.swr-grupo .rside > .content > .addmore > span > i', 'mobile', 'font-size', '16', '', '0'),
(139, 'mobile_menu_background', '.swr-menu', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(140, 'mobile_menu_text_color', '.swr-menu', 'mobile', 'color', '#FFFFFF', '', '0'),
(141, 'mobile_menu_active_bg', '.swr-menu > ul > li:hover, .swr-menu > ul > li.active', 'mobile', 'background', '#101010', '#101010', '0'),
(142, 'mobile_menu_active_text_color', '.swr-menu > ul > li:hover, .swr-menu > ul > li.active', 'mobile', 'color', '#FFFFFF', '', '0'),
(143, 'mobile_chatbox_bg', '.swr-grupo .panel', 'mobile', 'background', '#F7F9FB', '#F7F9FB', '0'),
(144, 'mobile_chatbox_welcome_text_color', '.swr-grupo .zeroelem > .welcome > span > i', 'mobile', 'color', '#6B6B6B', '', '0'),
(145, 'mobile_chatbox_welcome_heading_font_size', '.swr-grupo .zeroelem > .welcome > span > i.title', 'mobile', 'font-size', '21', '', '0'),
(146, 'mobile_chatbox_welcome_desc_font_size', '.swr-grupo .zeroelem > .welcome > span > i.desc', 'mobile', 'font-size', '15', '', '0'),
(147, 'mobile_chatbox_welcome_footer_font_size', '.swr-grupo .zeroelem > .welcome > span> i.foot', 'mobile', 'font-size', '13', '', '0'),
(148, 'mobile_chatbox_header_bg', '.swr-grupo .panel > .head', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(149, 'mobile_chatbox_header_title_text_color', '.swr-grupo .panel > .head > .left > span > span', 'mobile', 'color', '#FFFFFF', '', '0'),
(150, 'mobile_chatbox_header_title_font_size', '.swr-grupo .panel > .head > .left > span > span', 'mobile', 'font-size', '13', '', '0'),
(151, 'mobile_chatbox_header_sub_text_color', '.swr-grupo .panel > .head > .left > span > span > span,.swr-grupo .panel > .head > .left > span > span > .typing', 'mobile', 'color', '#FFFFFF', '', '0'),
(152, 'mobile_chatbox_header_sub_font_size', '.swr-grupo .panel > .head > .left > span > span > span,.swr-grupo .panel > .head > .left > span > span > .typing', 'mobile', 'font-size', '12', '', '0'),
(153, 'mobile_chatbox_header_icon_color', '.swr-grupo .panel > .head > .right > i', 'mobile', 'color', '#FFFFFF', '', '0'),
(154, 'mobile_chatbox_header_icon_size', '.swr-grupo .panel > .head > .right > i', 'mobile', 'font-size', '22', '', '0'),
(155, 'mobile_chatbox_searchbox_bg', '.swr-grupo .panel > .searchbar > span > input', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(156, 'mobile_chatbox_searchbox_text_color', '.swr-grupo .panel > .searchbar > span,.swr-grupo .panel > .searchbar > span > input', 'mobile', 'color', '#6B6B6B', '', '0'),
(157, 'mobile_chatbox_searchbox_font_size', '.swr-grupo .panel > .searchbar > span > input', 'mobile', 'font-size', '14', '', '0'),
(158, 'mobile_chatbox_searchbox_icon_size', '.swr-grupo .panel > .searchbar > span > i', 'mobile', 'font-size', '16', '', '0'),
(159, 'mobile_received_message_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(160, 'mobile_received_message_text_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i', 'mobile', 'color', '#333333', '', '0'),
(161, 'mobile_received_message_mention_text_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > i.mentnd', 'mobile', 'color', '#FF9800', '', '0'),
(162, 'mobile_received_message_font_size', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i', 'mobile', 'font-size', '13', '', '0'),
(163, 'mobile_received_message_time_text_color', '.swr-grupo .panel > .room > .msgs > li > div i.info', 'mobile', 'color', '#333333', '', '0'),
(164, 'mobile_received_message_time_font_size', '.swr-grupo .panel > .room > .msgs > li > div i.info', 'mobile', 'font-size', '10', '', '0'),
(165, 'mobile_sent_message_bg', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(166, 'mobile_sent_message_text_color', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i', 'mobile', 'color', '#FFFFFF', '', '0'),
(167, 'mobile_sent_message_mention_text_color', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i > i.mentnd', 'mobile', 'color', '#FFEB3B', '', '0'),
(168, 'mobile_sent_message_font_size', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > i', 'mobile', 'font-size', '13', '', '0'),
(169, 'mobile_sent_message_time_text_color', '.swr-grupo .panel > .room > .msgs > li.you > div i.info', 'mobile', 'color', '#FFFFFF', '', '0'),
(170, 'mobile_sent_message_time_font_size', '.swr-grupo .panel > .room > .msgs > li.you > div i.info', 'mobile', 'font-size', '10', '', '0'),
(171, 'mobile_audio_player_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay', 'mobile', 'background', '#607D8B', '#607D8B', '0'),
(172, 'mobile_audio_player_controls_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.play', 'mobile', 'color', '#FFFFFF', '', '0'),
(173, 'mobile_audio_player_seek_bar_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.seek > i.bar', 'mobile', 'background', '#616161', '#616161', '0'),
(174, 'mobile_audio_player_slider_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.seek > i.bar > i', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(175, 'mobile_audio_player_icon_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.icon', 'mobile', 'background', '#3F535D', '#3F535D', '0'),
(176, 'mobile_audio_player_icon_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > i > span.audioplay > span.icon', 'mobile', 'color', '#FFFFFF', '', '0'),
(177, 'mobile_chatbox_textarea_bg', '.swr-grupo .panel > .textbox > .box', 'mobile', 'background', '#F7F9FB', '#F7F9FB', '0'),
(178, 'mobile_chatbox_textarea_input_bg', '.emojionearea.focused, .emojionearea > .emojionearea-editor, .emojionearea', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(179, 'mobile_chatbox_textarea_input_text_color', '.emojionearea.focused, .emojionearea > .emojionearea-editor, .emojionearea', 'mobile', 'color', '#676767', '', '0'),
(180, 'form_popup_header_bg', '.grupo-pop > div > form > .head', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(181, 'form_popup_header_textcolor', '.grupo-pop > div > form > .head', 'all', 'color', '#FFFFFF', '', '0'),
(182, 'form_popup_header_font_size', '.grupo-pop > div > form > .head', 'all', 'font-size', '14', '', '0'),
(183, 'form_popup_search_bg', '.grupo-pop > div > form > .search', 'all', 'background', '#181A21', '#181A21', '0'),
(184, 'form_popup_search_text_color', '.grupo-pop > div > form > .search > i, .grupo-pop > div > form > .search > input', 'all', 'color', '#E2E2E2', '', '0'),
(185, 'form_popup_bg', '.grupo-pop > div > form', 'all', 'background', '#232630', '#252D40', '0'),
(186, 'form_popup_field_text_color', '.grupo-pop > div > form > div > div > label', 'all', 'color', '#FFFFFF', '', '0'),
(187, 'form_popup_field_font_size', '.grupo-pop > div > form > div > div > label', 'all', 'font-size', '14', '', '0'),
(188, 'form_popup_input_text_color', '.grupo-pop > div > form > .fields > div > span, .grupo-pop > div > form > div > div > input, .grupo-pop > div > form > div > div > select, .grupo-pop > div > form > div > div > textarea', 'all', 'color', '#9FABB1', '', '0'),
(189, 'form_popup_input_font_size', '.grupo-pop > div > form > .fields > div > span, .grupo-pop > div > form > div > div > input, .grupo-pop > div > form > div > div > select, .grupo-pop > div > form > div > div > textarea', 'all', 'font-size', '15', '', '0'),
(190, 'form_popup_submit_btn_bg', '.grupo-pop > div > form > input[type=\"submit\"]', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(191, 'form_popup_submit_btn_text_color', '.grupo-pop > div > form > input[type=\"submit\"]', 'all', 'color', '#FFFFFF', '', '0'),
(192, 'form_popup_submit_btn_font_size', '.grupo-pop > div > form > input[type=\"submit\"]', 'all', 'font-size', '14', '', '0'),
(193, 'form_popup_cancel_btn_font_size', '.grupo-pop > div > form > span.cancel', 'all', 'font-size', '13', '', '0'),
(194, 'form_popup_cancel_btn_text_color', '.grupo-pop > div > form > span.cancel', 'all', 'color', '#C7C7C7', '', '0'),
(195, 'profile_name_text_color', '.swr-grupo .aside > .content .profile > .top > span.name', 'all', 'color', '#FFFFFF', '', '0'),
(196, 'profile_username_text_color', '.swr-grupo .aside > .content .profile > .top > span.role', 'all', 'color', '#FFFFFF', '', '0'),
(197, 'profile_username_font_size', '.swr-grupo .aside > .content .profile > .top > span.role', 'all', 'font-size', '14', '', '0'),
(198, 'profile_name_font_size', '.swr-grupo .aside > .content .profile > .top > span.name', 'all', 'font-size', '15', '', '0'),
(199, 'profile_btn_bg', '.swr-grupo .aside > .content .profile > .middle > span.pm', 'all', 'background', '#E91E63', '#FF9C07', '0'),
(200, 'profile_btn_text_color', '.swr-grupo .aside > .content .profile > .middle > span.pm', 'all', 'color', '#FFFFFF', '', '0'),
(201, 'profile_btn_font_size', '.swr-grupo .aside > .content .profile > .middle > span.pm', 'all', 'font-size', '14', '', '0'),
(202, 'profile_editbtn_font_size', '.swr-grupo .aside > .content .profile > .top > span.edit > i', 'all', 'font-size', '13', '', '0'),
(203, 'profile_editbtn_text_color', '.swr-grupo .aside > .content .profile > .top > span.edit > i', 'all', 'color', '#FFC107', '', '0'),
(204, 'profile_statistics_bg', '.swr-grupo .aside > .content .profile > .middle', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(205, 'profile_statistics_result_text_color', '.swr-grupo .aside > .content .profile > .middle > span.stats > span', 'all', 'color', '#727273', '', '0'),
(206, 'profile_statistics_result_font_size', '.swr-grupo .aside > .content .profile > .middle > span.stats > span', 'all', 'font-size', '19', '', '0'),
(207, 'profile_statistics_title_text_color', '.swr-grupo .aside > .content .profile > .middle > span.stats > span > i', 'all', 'color', '#9A9A9A', '', '0'),
(208, 'profile_statistics_title_font_size', '.swr-grupo .aside > .content .profile > .middle > span.stats > span > i', 'all', 'font-size', '12', '', '0'),
(209, 'profile_fields_bg', '.swr-grupo .aside > .content .profile > .bottom', 'all', 'background', '#F7F9FB', '#F7F9FB', '0'),
(210, 'profile_field_name_text_color', '.swr-grupo .aside > .content .profile > .bottom > div > ul > li > b', 'all', 'color', '#212529', '', '0'),
(211, 'profile_field_name_font_size', '.swr-grupo .aside > .content .profile > .bottom > div > ul > li > b', 'all', 'font-size', '14', '', '0'),
(212, 'profile_field_value_text_color', '.swr-grupo .aside > .content .profile > .bottom > div > ul > li > span', 'all', 'color', '#212529', '', '0'),
(213, 'profile_field_value_font_size', '.swr-grupo .aside > .content .profile > .bottom > div > ul > li > span', 'all', 'font-size', '14', '', '0'),
(214, 'loader_color', '.ajx-ripple div', 'all', 'border-color', '#FFFFFF', '', '0'),
(215, 'loader_title_text_color', '.ajxprocess > div >  span', 'all', 'color', '#FFFFFF', '', '0'),
(216, 'loader_sub_text_color', '.ajxprocess > div > span > span', 'all', 'color', '#FFFFFF', '', '0'),
(217, 'loader_bg', '.ajxprocess > div', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(218, 'login_box_bg', '.two > section > div > div > .box', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(219, 'login_box_logo_bg', '.two > section > div > div .logo', 'all', 'background', '#000000', '#000000', '0'),
(220, 'login_box_text_color', '.two > section', 'all', 'color', '#636363', '', '0'),
(221, 'login_box_tab_active', '.two > section > div > div > .box .swithlogin > ul > li.active', 'all', 'color', '#616161', '', 'easyedit'),
(222, 'login_box_font_size', '.two > section', 'all', 'font-size', '14', '', '0'),
(223, 'login_box_field_bg', '.two > section > div > div form label', 'all', 'background', '#EEF2F5', '#EEF2F5', '0'),
(224, 'login_box_field_text_color', '.two > section > div > div form label > input,.two > section > div > div form label > i', 'all', 'color', '#636363', '', '0'),
(225, 'login_box_field_font_size', '.two > section > div > div form label > input', 'all', 'font-size', '13', '', '0'),
(226, 'login_box_field_icon_size', '.two > section > div > div form label > i', 'all', 'font-size', '14', '', '0'),
(227, 'login_box_submit_btn_bg', '.two > section > div > div form .submit', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(228, 'login_box_submit_btn_text_color', '.two > section > div > div form .submit', 'all', 'color', '#FFFFFF', '', '0'),
(229, 'login_box_submit_btn_font_size', '.two > section > div > div form .submit', 'all', 'font-size', '14', '', '0'),
(230, 'login_box_footer_bg', '.sign > section > div > div form > .switch', 'all', 'background', '#EEF2F5', '#EEF2F5', '0'),
(231, 'login_box_footer_text_color', '.sign > section > div > div form > .switch > i', 'all', 'color', '#636363', '', '0'),
(232, 'login_box_footer_font_size', '.sign > section > div > div form > .switch > i', 'all', 'font-size', '12', '', '0'),
(233, 'login_box_secondary_btn_bg', '.two > section > div > div form > .switch > span', 'all', 'background', '#000000', '#000000', '0'),
(234, 'login_box_secondary_btn_hover_bg', '.two > section > div > div form > .switch > span:hover', 'all', 'background', '#000000', '#000000', '0'),
(235, 'login_box_secondary_btn_hover_text_color', '.two > section > div > div form > .switch > span:hover', 'all', 'color', '#FFFFFF', '', '0'),
(236, 'login_box_secondary_btn_text_color', '.two > section > div > div form > .switch > span', 'all', 'color', '#FFFFFF', '', '0'),
(237, 'login_box_secondary_btn_font_size', '.two > section > div > div form > .switch > span', 'all', 'font-size', '12', '', '0'),
(238, 'cookie_constent_bg', '.gr-consent', 'all', 'background', '#1C2123', '#1C2123', '0'),
(239, 'cookie_constent_text_color', '.gr-consent', 'all', 'color', '#FFFFFF', '', '0'),
(240, 'site_tos_btn_text_color', '.gr-consent > span > span >i', 'all', 'color', '#FFC107', '', '0'),
(241, 'site_tos_heading_text_color', '.sign > section > div > div .tos > h4 > span', 'all', 'color', '#FFC107', '', '0'),
(242, 'site_tos_close_btn_color', '.sign > section > div > div .tos > h4 > i', 'all', 'color', '#636363', '', '0'),
(243, 'cookie_constent_btn_bg', '.gr-consent > span > i', 'all', 'background', '#F44336', '#E91E63', '0'),
(244, 'cookie_constent_btn_text_color', '.gr-consent > span > i', 'all', 'color', '#FFFFFF', '', '0'),
(245, 'coverpic_bg', '.swr-grupo .aside > .content .profile > .top', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(246, 'reload_button_bg', '.swr-grupo .panel > .room > .groupreload > i', 'all', 'background', '#000000', '#000000', '0'),
(247, 'reload_button_font_size', '.swr-grupo .panel > .room > .groupreload > i', 'all', 'font-size', '13', '', '0'),
(248, 'reload_button_text_color', '.swr-grupo .panel > .room > .groupreload > i', 'all', 'color', '#FFFFFF', '', '0'),
(249, 'uploading_icon_bg', '.gruploader', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(250, 'uploading_icon_color', '.gruploader', 'all', 'color', '#FFFFFF', '', '0'),
(251, 'uploading_icon_size', '.gruploader', 'all', 'font-size', '11', '', '0'),
(252, 'message_unread_icon_color', '.swr-grupo .panel > .room > .msgs > li.right > div i.info > i.tick', 'all', 'color', '#FFFFFF', '', '0'),
(253, 'message_read_icon_color', '.swr-grupo .panel > .room > .msgs > li.right > div i.info > i.tick.read > i', 'all', 'color', '#FFEB3B', '', '0'),
(254, 'send_btn_color', '.swr-grupo .panel > .textbox > .box > i', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(255, 'options_items_bg', '.swr-grupo .opt > ul', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(256, 'options_items_text_color', '.swr-grupo .opt > ul', 'all', 'color', '#A4A5A7', '', '0'),
(257, 'tab_drop_down_bg', '.swr-grupo .aside > .tabs > ul > li > .subtab', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(258, 'tab_drop_down_text_color', '.swr-grupo .aside > .tabs > ul > li > .subtab', 'all', 'color', '#000000', '#808080', '0'),
(259, 'tab_drop_down_hover_text_color', '.swr-grupo .aside > .tabs > ul > li > .subtab', 'all', 'color', '#808080', '', '0'),
(260, 'tab_drop_down_hover_bg', '.swr-grupo .aside > .tabs > ul > li > .subtab > li:hover, .swr-grupo .aside > .tabs > ul > li > .subtab > li.active', 'all', 'background', '#F7F9FB', '#F7F9FB', '0'),
(261, 'sent_message_link_preview_bg', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > .urlpreview', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(262, 'sent_message_link_preview_text_color', '.swr-grupo .panel > .room > .msgs > li.you > div > .msg > .urlpreview', 'all', 'color', '#FFFFFF', '', '0'),
(263, 'recieved_message_link_preview_bg', '.swr-grupo .panel > .room > .msgs > li > div > .msg > .urlpreview', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(264, 'recieved_message_link_preview_text_color', '.swr-grupo .panel > .room > .msgs > li > div > .msg > .urlpreview', 'all', 'color', '#4C4C4C', '', '0'),
(265, 'more_icon_bg', '.swr-grupo .panel > .textbox > .box > .icon > .gr-moreico > ul > li > span', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(266, 'more_icon_hover_bg', '.swr-grupo .panel > .textbox > .box > .icon > .gr-moreico > ul > li > span:hover', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(267, 'dark_aside_left_header_bg', '.dark .swr-grupo .lside &gt; .head', 'all', 'background', '#212529', '#212529', '0'),
(268, 'dark_aside_left_header_icon_color', '.dark .swr-grupo .aside &gt; .head i', 'all', 'color', '#A9A9A9', '', '0'),
(269, 'dark_aside_left_header_icon_size', '.dark .swr-grupo .lside &gt; .head i', 'all', 'font-size', '25', '', '0'),
(270, 'dark_aside_left_search_bg', '.dark .swr-grupo .lside &gt; .search', 'all', 'background', '#1C1F22', '#1C1F22', '0'),
(271, 'dark_aside_left_search_input_bg', '.dark .swr-grupo .lside &gt; .search &gt; input', 'all', 'background', '#282D31', '#282D31', '0'),
(272, 'dark_aside_left_search_input_text_color', '.dark .swr-grupo .lside &gt; .search &gt; input,.dark .swr-grupo .lside &gt; .search &gt; i', 'all', 'color', '#A7A7A7', '', '0'),
(273, 'dark_aside_left_search_input_font_size', '.dark .swr-grupo .lside &gt; .search &gt; input', 'all', 'font-size', '14', '', '0'),
(274, 'dark_aside_left_search_input_icon_size', '.dark .swr-grupo .lside &gt; .search &gt; i', 'all', 'font-size', '16', '', '0'),
(275, 'dark_aside_left_tabs_bg', '.dark .swr-grupo .lside &gt; .tabs', 'all', 'background', '#191B1E', '#191B1E', '0'),
(276, 'dark_aside_left_tabs_text_color', '.dark .swr-grupo .lside &gt; .tabs &gt; ul &gt; li', 'all', 'color', '#808080', '', '0'),
(277, 'dark_aside_left_active_tab_text_color', '.dark .swr-grupo .lside &gt; .tabs &gt; ul &gt; li.active', 'all', 'color', '#ADADAD', '', '0'),
(278, 'dark_aside_left_active_tab_border_color', '.dark .swr-grupo .lside &gt; .tabs &gt; ul &gt; li.active', 'all', 'border-color', '#616161', '', 'easyedit'),
(279, 'dark_aside_left_contents_bg', '.dark .swr-grupo .lside', 'all', 'background', '#222529', '#222529', '0'),
(280, 'dark_aside_left_list_title_text_color', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'all', 'color', '#ABABAB', '', '0'),
(281, 'dark_aside_left_list_sub_text_color', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'all', 'color', '#828588', '', '0'),
(282, 'dark_aside_left_list_title_font-size', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'all', 'font-size', '13', '', '0'),
(283, 'dark_aside_left_list_sub_font-size', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'all', 'font-size', '12', '', '0'),
(284, 'dark_aside_left_list_options_text_color', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'all', 'color', '#A4A5A7', '', '0'),
(285, 'dark_aside_left_list_options_font_size', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'all', 'font-size', '11', '', '0'),
(286, 'dark_aside_left_list_options_hover_bg', '.dark .swr-grupo .lside .opt &gt; ul &gt; li:hover', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(287, 'dark_aside_left_list_options_hover_text_color', '.dark .swr-grupo .lside .opt &gt; ul &gt; li:hover', 'all', 'color', '#FFFFFF', '', '0'),
(288, 'dark_aside_left_list_add_icon_bg', '.dark .swr-grupo .lside &gt; .content &gt; .addmore &gt; span', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(289, 'dark_aside_left_list_add_icon_color', '.dark .swr-grupo .lside &gt; .content &gt; .addmore &gt; span', 'all', 'color', '#FFFFFF', '', '0'),
(290, 'dark_aside_left_list_add_icon_size', '.dark .swr-grupo .lside &gt; .content &gt; .addmore &gt; span &gt; i', 'all', 'font-size', '16', '', '0'),
(291, 'dark_aside_right_header_bg', '.dark .swr-grupo .rside &gt; .head', 'all', 'background', '#212529', '#212529', '0'),
(292, 'dark_aside_right_profile_name_text_color', '.dark .swr-grupo .rside &gt; .top &gt; .left &gt; span &gt; span', 'all', 'color', '#B5B5B5', '', '0'),
(293, 'dark_aside_right_username_text_color', '.dark .swr-grupo .rside &gt; .top &gt; .left &gt; span &gt; span &gt; span', 'all', 'color', '#8B8E90', '', '0'),
(294, 'dark_aside_right_search_bg', '.dark .swr-grupo .rside &gt; .search', 'all', 'background', '#1C1F22', '#1C1F22', '0'),
(295, 'dark_aside_right_search_input_bg', '.dark .swr-grupo .rside &gt; .search &gt; input', 'all', 'background', '#282D31', '#282D31', '0'),
(296, 'dark_aside_right_search_input_text_color', '.dark .swr-grupo .rside &gt; .search &gt; input,.dark .swr-grupo .rside &gt; .search &gt; i', 'all', 'color', '#A7A7A7', '', '0'),
(297, 'dark_aside_right_search_input_font_size', '.dark .swr-grupo .rside &gt; .search &gt; input', 'all', 'font-size', '14', '', '0'),
(298, 'dark_aside_right_search_input_icon_size', '.dark .swr-grupo .rside &gt; .search &gt; i', 'all', 'font-size', '16', '', '0'),
(299, 'dark_aside_right_tabs_bg', '.dark .swr-grupo .rside &gt; .tabs', 'all', 'background', '#191B1E', '#191B1E', '0'),
(300, 'dark_aside_right_tabs_text_color', '.dark .swr-grupo .rside &gt; .tabs &gt; ul &gt; li', 'all', 'color', '#808080', '', '0'),
(301, 'dark_aside_right_active_tab_text_color', '.dark .swr-grupo .rside &gt; .tabs &gt; ul &gt; li.active', 'all', 'color', '#E9E9E9', '', '0'),
(302, 'dark_aside_right_active_tab_border_color', '.dark .swr-grupo .rside &gt; .tabs &gt; ul &gt; li.active', 'all', 'border-color', '#616161', '', 'easyedit'),
(303, 'dark_aside_right_contents_bg', '.dark .swr-grupo .rside', 'all', 'background', '#222529', '#222529', '0'),
(304, 'dark_aside_right_list_title_text_color', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'all', 'color', '#ABABAB', '', '0'),
(305, 'dark_aside_right_list_sub_text_color', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'all', 'color', '#828588', '', '0'),
(306, 'dark_aside_right_list_title_font-size', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'all', 'font-size', '13', '', '0'),
(307, 'dark_aside_right_list_sub_font-size', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'all', 'font-size', '12', '', '0'),
(308, 'dark_aside_right_list_options_text_color', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'all', 'color', '#A4A5A7', '', '0'),
(309, 'dark_aside_right_list_options_font_size', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'all', 'font-size', '11', '', '0'),
(310, 'dark_aside_right_list_options_hover_bg', '.dark .swr-grupo .rside .opt &gt; ul &gt; li:hover', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(311, 'dark_aside_right_list_options_hover_text_color', '.dark .swr-grupo .rside .opt &gt; ul &gt; li:hover', 'all', 'color', '#FFFFFF', '', '0'),
(312, 'dark_aside_right_list_add_icon_bg', '.dark .swr-grupo .rside &gt; .content &gt; .addmore &gt; span', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(313, 'dark_aside_right_list_add_icon_color', '.dark .swr-grupo .rside &gt; .content &gt; .addmore &gt; span', 'all', 'color', '#FFFFFF', '', '0'),
(314, 'dark_aside_right_list_add_icon_size', '.dark .swr-grupo .rside &gt; .content &gt; .addmore &gt; span &gt; i', 'all', 'font-size', '16', '', '0'),
(315, 'dark_menu_background', '.dark .swr-menu', 'all', 'background', '#000000', '#000000', 'easyedit'),
(316, 'dark_menu_text_color', '.dark .swr-menu', 'all', 'color', '#FFFFFF', '', '0'),
(317, 'dark_menu_active_bg', '.dark .swr-menu &gt; ul &gt; li:hover, .dark .swr-menu &gt; ul &gt; li.active', 'all', 'background', '#101010', '#101010', '0'),
(318, 'dark_menu_active_text_color', '.dark .swr-menu &gt; ul &gt; li:hover, .dark .swr-menu &gt; ul &gt; li.active', 'all', 'color', '#FFFFFF', '', '0'),
(319, 'dark_chatbox_bg', '.dark .swr-grupo .panel', 'all', 'background', '#191B1E', '#191B1E', '0'),
(320, 'dark_chatbox_welcome_text_color', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span &gt; i', 'all', 'color', '#B9B9B9', '', '0'),
(321, 'dark_chatbox_welcome_heading_font_size', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span &gt; i.title', 'all', 'font-size', '21', '', '0'),
(322, 'dark_chatbox_welcome_desc_font_size', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span &gt; i.desc', 'all', 'font-size', '15', '', '0'),
(323, 'dark_chatbox_welcome_footer_font_size', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span&gt; i.foot', 'all', 'font-size', '13', '', '0'),
(324, 'dark_chatbox_header_bg', '.dark .swr-grupo .panel &gt; .head', 'all', 'background', '#212529', '#212529', '0'),
(325, 'dark_chatbox_header_title_text_color', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span', 'all', 'color', '#616161', '', 'easyedit'),
(326, 'dark_chatbox_header_title_font_size', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span', 'all', 'font-size', '13', '', '0'),
(327, 'dark_chatbox_header_sub_text_color', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; span,.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; .typing', 'all', 'color', '#8B8E90', '', '0'),
(328, 'dark_chatbox_header_sub_font_size', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; span,.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; .typing', 'all', 'font-size', '12', '', '0'),
(329, 'dark_chatbox_header_icon_color', '.dark .swr-grupo .panel &gt; .head &gt; .right &gt; i', 'all', 'color', '#8B8E90', '', '0'),
(330, 'dark_chatbox_header_icon_size', '.dark .swr-grupo .panel &gt; .head &gt; .right &gt; i', 'all', 'font-size', '19', '', '0'),
(331, 'dark_chatbox_searchbox_bg', '.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; input', 'all', 'background', '#24272B', '#24272B', '0'),
(332, 'dark_chatbox_searchbox_text_color', '.dark .swr-grupo .panel &gt; .searchbar &gt; span,.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; input', 'all', 'color', '#6B6B6B', '', '0'),
(333, 'dark_chatbox_searchbox_font_size', '.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; input', 'all', 'font-size', '14', '', '0'),
(334, 'dark_chatbox_searchbox_icon_size', '.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; i', 'all', 'font-size', '16', '', '0'),
(335, 'dark_received_message_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i', 'all', 'background', '#24272B', '#24272B', '0'),
(336, 'dark_received_message_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i', 'all', 'color', '#B1B1B1', '', '0'),
(337, 'dark_received_message_mention_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i i.mentnd', 'all', 'color', '#FF9800', '', '0'),
(338, 'dark_received_message_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i', 'all', 'font-size', '13', '', '0'),
(339, 'dark_received_message_time_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div i.info', 'all', 'color', '#ADADAD', '', '0'),
(340, 'dark_received_message_time_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div i.info', 'all', 'font-size', '10', '', '0'),
(341, 'dark_sent_message_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(342, 'dark_sent_message_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i', 'all', 'color', '#FFFFFF', '', '0'),
(343, 'dark_sent_message_mention_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i i.mentnd', 'all', 'color', '#FFEB3B', '', '0'),
(344, 'dark_sent_message_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i', 'all', 'font-size', '13', '', '0'),
(345, 'dark_sent_message_time_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div i.info', 'all', 'color', '#FFFFFF', '', '0'),
(346, 'dark_sent_message_time_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div i.info', 'all', 'font-size', '10', '', '0'),
(347, 'dark_audio_player_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay', 'all', 'background', '#607D8B', '#607D8B', '0'),
(348, 'dark_audio_player_controls_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.play', 'all', 'color', '#FFFFFF', '', '0'),
(349, 'dark_audio_player_seek_bar_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.seek &gt; i.bar', 'all', 'background', '#616161', '#616161', '0'),
(350, 'dark_audio_player_slider_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.seek &gt; i.bar &gt; i', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(351, 'dark_audio_player_icon_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.icon', 'all', 'background', '#3F535D', '#3F535D', '0'),
(352, 'dark_audio_player_icon_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.icon', 'all', 'color', '#FFFFFF', '', '0'),
(353, 'dark_chatbox_textarea_bg', '.dark .swr-grupo .panel &gt; .textbox &gt; .box', 'all', 'background', '#24272B', '#24272B', '0'),
(354, 'dark_chatbox_textarea_input_bg', '.dark .emojionearea.focused, .dark .emojionearea &gt; .emojionearea-editor, .dark .emojionearea', 'all', 'background', '#191B1E', '#191B1E', '0'),
(355, 'dark_chatbox_textarea_input_text_color', '.dark .emojionearea.focused, .dark .emojionearea &gt; .emojionearea-editor, .dark .emojionearea', 'all', 'color', '#676767', '', '0'),
(356, 'dark_mobile_aside_left_header_bg', '.dark .swr-grupo .lside &gt; .head', 'mobile', 'background', '#212529', '#212529', '0'),
(357, 'dark_mobile_aside_left_header_icon_color', '.dark .swr-grupo .aside &gt; .head i', 'mobile', 'color', '#A9A9A9', '', '0'),
(358, 'dark_mobile_aside_left_header_icon_size', '.dark .swr-grupo .lside &gt; .head i', 'mobile', 'font-size', '25', '', '0'),
(359, 'dark_mobile_aside_left_search_bg', '.dark .swr-grupo .lside &gt; .search', 'mobile', 'background', '#1C1F22', '#1C1F22', '0'),
(360, 'dark_mobile_aside_left_search_input_bg', '.dark .swr-grupo .lside &gt; .search &gt; input', 'mobile', 'background', '#282D31', '#282D31', '0'),
(361, 'dark_mobile_aside_left_search_input_text_color', '.dark .swr-grupo .lside &gt; .search &gt; input,.dark .swr-grupo .lside &gt; .search &gt; i', 'mobile', 'color', '#A7A7A7', '', '0');
INSERT INTO `gr_customize` (`id`, `name`, `element`, `device`, `type`, `v1`, `v2`, `xtra`) VALUES
(362, 'dark_mobile_aside_left_search_input_font_size', '.dark .swr-grupo .lside &gt; .search &gt; input', 'mobile', 'font-size', '14', '', '0'),
(363, 'dark_mobile_aside_left_search_input_icon_size', '.dark .swr-grupo .lside &gt; .search &gt; i', 'mobile', 'font-size', '16', '', '0'),
(364, 'dark_mobile_aside_left_tabs_bg', '.dark .swr-grupo .lside &gt; .tabs', 'mobile', 'background', '#191B1E', '#191B1E', '0'),
(365, 'dark_mobile_aside_left_tabs_text_color', '.dark .swr-grupo .lside &gt; .tabs &gt; ul &gt; li', 'mobile', 'color', '#808080', '', '0'),
(366, 'dark_mobile_aside_left_active_tab_text_color', '.dark .swr-grupo .lside &gt; .tabs &gt; ul &gt; li.active', 'mobile', 'color', '#ADADAD', '', '0'),
(367, 'dark_mobile_aside_left_active_tab_border_color', '.dark .swr-grupo .lside &gt; .tabs &gt; ul &gt; li.active', 'mobile', 'custom', '#616161', '#E91E63', 'easyedit'),
(368, 'dark_mobile_aside_left_contents_bg', '.dark .swr-grupo .lside', 'mobile', 'background', '#222529', '#222529', '0'),
(369, 'dark_mobile_aside_left_list_title_text_color', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'mobile', 'color', '#ABABAB', '', '0'),
(370, 'dark_mobile_aside_left_list_sub_text_color', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'mobile', 'color', '#828588', '', '0'),
(371, 'dark_mobile_aside_left_list_title_font-size', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'mobile', 'font-size', '13', '', '0'),
(372, 'dark_mobile_aside_left_list_sub_font-size', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'mobile', 'font-size', '12', '', '0'),
(373, 'dark_mobile_aside_left_list_options_text_color', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'mobile', 'color', '#A4A5A7', '', '0'),
(374, 'dark_mobile_aside_left_list_options_font_size', '.dark .swr-grupo .lside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'mobile', 'font-size', '11', '', '0'),
(375, 'dark_mobile_aside_left_list_options_hover_bg', '.dark .swr-grupo .lside .opt &gt; ul &gt; li:hover', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(376, 'dark_mobile_aside_left_list_options_hover_text_color', '.dark .swr-grupo .lside .opt &gt; ul &gt; li:hover', 'mobile', 'color', '#FFFFFF', '', '0'),
(377, 'dark_mobile_aside_left_list_add_icon_bg', '.dark .swr-grupo .lside &gt; .content &gt; .addmore &gt; span', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(378, 'dark_mobile_aside_left_list_add_icon_color', '.dark .swr-grupo .lside &gt; .content &gt; .addmore &gt; span', 'mobile', 'color', '#FFFFFF', '', '0'),
(379, 'dark_mobile_aside_left_list_add_icon_size', '.dark .swr-grupo .lside &gt; .content &gt; .addmore &gt; span &gt; i', 'mobile', 'font-size', '16', '', '0'),
(380, 'dark_mobile_aside_right_header_bg', '.dark .swr-grupo .aside &gt; .head, .dark .swr-grupo .panel &gt; .head, .dark .swr-grupo .rside &gt; .top', 'mobile', 'background', '#212529', '#212529', '0'),
(381, 'dark_mobile_aside_right_profile_name_text_color', '.dark .swr-grupo .rside &gt; .top &gt; .left &gt; span &gt; span', 'mobile', 'color', '#B5B5B5', '', '0'),
(382, 'dark_mobile_aside_right_username_text_color', '.dark .swr-grupo .rside &gt; .top &gt; .left &gt; span &gt; span &gt; span', 'mobile', 'color', '#FFFFFF', '', '0'),
(383, 'dark_mobile_aside_right_search_bg', '.dark .swr-grupo .rside &gt; .search', 'mobile', 'background', '#1C1F22', '#1C1F22', '0'),
(384, 'dark_mobile_aside_right_search_input_bg', '.dark .swr-grupo .rside &gt; .search &gt; input', 'mobile', 'background', '#282D31', '#282D31', '0'),
(385, 'dark_mobile_aside_right_search_input_text_color', '.dark .swr-grupo .rside &gt; .search &gt; input,.dark .swr-grupo .rside &gt; .search &gt; i', 'mobile', 'color', '#A7A7A7', '', '0'),
(386, 'dark_mobile_aside_right_search_input_font_size', '.dark .swr-grupo .rside &gt; .search &gt; input', 'mobile', 'font-size', '14', '', '0'),
(387, 'dark_mobile_aside_right_search_input_icon_size', '.dark .swr-grupo .rside &gt; .search &gt; i', 'mobile', 'font-size', '16', '', '0'),
(388, 'dark_mobile_aside_right_tabs_bg', '.dark .swr-grupo .rside &gt; .tabs', 'mobile', 'background', '#191B1E', '#191B1E', '0'),
(389, 'dark_mobile_aside_right_tabs_text_color', '.dark .swr-grupo .rside &gt; .tabs &gt; ul &gt; li', 'mobile', 'color', '#808080', '', '0'),
(390, 'dark_mobile_aside_right_active_tab_text_color', '.dark .swr-grupo .rside &gt; .tabs &gt; ul &gt; li.active', 'mobile', 'color', '#E9E9E9', '', '0'),
(391, 'dark_mobile_aside_right_active_tab_border_color', '.dark .swr-grupo .rside &gt; .tabs &gt; ul &gt; li.active', 'mobile', 'border-color', '#616161', '', 'easyedit'),
(392, 'dark_mobile_aside_right_contents_bg', '.dark .swr-grupo .rside', 'mobile', 'background', '#222529', '#222529', '0'),
(393, 'dark_mobile_aside_right_list_title_text_color', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'mobile', 'color', '#ABABAB', '', '0'),
(394, 'dark_mobile_aside_right_list_sub_text_color', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'mobile', 'color', '#828588', '', '0'),
(395, 'dark_mobile_aside_right_list_title_font-size', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; b &gt; span', 'mobile', 'font-size', '13', '', '0'),
(396, 'dark_mobile_aside_right_list_sub_font-size', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .center &gt; span', 'mobile', 'font-size', '12', '', '0'),
(397, 'dark_mobile_aside_right_list_options_text_color', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'mobile', 'color', '#A4A5A7', '', '0'),
(398, 'dark_mobile_aside_right_list_options_font_size', '.dark .swr-grupo .rside &gt; .content &gt; .list &gt; li &gt; div &gt; .right', 'mobile', 'font-size', '11', '', '0'),
(399, 'dark_mobile_aside_right_list_options_hover_bg', '.dark .swr-grupo .rside .opt &gt; ul &gt; li:hover', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(400, 'dark_mobile_aside_right_list_options_hover_text_color', '.dark .swr-grupo .rside .opt &gt; ul &gt; li:hover', 'mobile', 'color', '#FFFFFF', '', '0'),
(401, 'dark_mobile_aside_right_list_add_icon_bg', '.dark .swr-grupo .rside &gt; .content &gt; .addmore &gt; span', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(402, 'dark_mobile_aside_right_list_add_icon_color', '.dark .swr-grupo .rside &gt; .content &gt; .addmore &gt; span', 'mobile', 'color', '#FFFFFF', '', '0'),
(403, 'dark_mobile_aside_right_list_add_icon_size', '.dark .swr-grupo .rside &gt; .content &gt; .addmore &gt; span &gt; i', 'mobile', 'font-size', '16', '', '0'),
(404, 'dark_mobile_menu_background', '.dark .swr-menu', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(405, 'dark_mobile_menu_text_color', '.dark .swr-menu', 'mobile', 'color', '#FFFFFF', '', '0'),
(406, 'dark_mobile_menu_active_bg', '.dark .swr-menu &gt; ul &gt; li:hover, .dark .swr-menu &gt; ul &gt; li.active', 'mobile', 'background', '#101010', '#101010', '0'),
(407, 'dark_mobile_menu_active_text_color', '.dark .swr-menu &gt; ul &gt; li:hover, .dark .swr-menu &gt; ul &gt; li.active', 'mobile', 'color', '#FFFFFF', '', '0'),
(408, 'dark_mobile_chatbox_bg', '.dark .swr-grupo .panel', 'mobile', 'background', '#191B1E', '#191B1E', '0'),
(409, 'dark_mobile_chatbox_welcome_text_color', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span &gt; i', 'mobile', 'color', '#B9B9B9', '', '0'),
(410, 'dark_mobile_chatbox_welcome_heading_font_size', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span &gt; i.title', 'mobile', 'font-size', '21', '', '0'),
(411, 'dark_mobile_chatbox_welcome_desc_font_size', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span &gt; i.desc', 'mobile', 'font-size', '15', '', '0'),
(412, 'dark_mobile_chatbox_welcome_footer_font_size', '.dark .swr-grupo .zeroelem &gt; .welcome &gt; span&gt; i.foot', 'mobile', 'font-size', '13', '', '0'),
(413, 'dark_mobile_chatbox_header_bg', '.dark .swr-grupo .panel &gt; .head', 'mobile', 'background', '#212529', '#212529', '0'),
(414, 'dark_mobile_chatbox_header_title_text_color', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span', 'mobile', 'color', '#A9A9A9', '', '0'),
(415, 'dark_mobile_chatbox_header_title_font_size', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span', 'mobile', 'font-size', '13', '', '0'),
(416, 'dark_mobile_chatbox_header_sub_text_color', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; span,.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; .typing', 'mobile', 'color', '#8B8E90', '', '0'),
(417, 'dark_mobile_chatbox_header_sub_font_size', '.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; span,.dark .swr-grupo .panel &gt; .head &gt; .left &gt; span &gt; span &gt; .typing', 'mobile', 'font-size', '12', '', '0'),
(418, 'dark_mobile_chatbox_header_icon_color', '.dark .swr-grupo .panel &gt; .head &gt; .right &gt; i', 'mobile', 'color', '#A9A9A9', '', '0'),
(419, 'dark_mobile_chatbox_header_icon_size', '.dark .swr-grupo .panel &gt; .head &gt; .right &gt; i', 'mobile', 'font-size', '22', '', '0'),
(420, 'dark_mobile_chatbox_searchbox_bg', '.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; input', 'mobile', 'background', '#24272B', '#24272B', '0'),
(421, 'dark_mobile_chatbox_searchbox_text_color', '.dark .swr-grupo .panel &gt; .searchbar &gt; span,.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; input', 'mobile', 'color', '#6B6B6B', '', '0'),
(422, 'dark_mobile_chatbox_searchbox_font_size', '.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; input', 'mobile', 'font-size', '14', '', '0'),
(423, 'dark_mobile_chatbox_searchbox_icon_size', '.dark .swr-grupo .panel &gt; .searchbar &gt; span &gt; i', 'mobile', 'font-size', '16', '', '0'),
(424, 'dark_mobile_received_message_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i', 'mobile', 'background', '#24272B', '#24272B', '0'),
(425, 'dark_mobile_received_message_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i', 'mobile', 'color', '#B1B1B1', '', '0'),
(426, 'dark_mobile_received_message_mention_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; i.mentnd', 'mobile', 'color', '#FF9800', '', '0'),
(427, 'dark_mobile_received_message_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i', 'mobile', 'font-size', '13', '', '0'),
(428, 'dark_mobile_received_message_time_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div i.info', 'mobile', 'color', '#ADADAD', '', '0'),
(429, 'dark_mobile_received_message_time_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div i.info', 'mobile', 'font-size', '10', '', '0'),
(430, 'dark_mobile_sent_message_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i', 'mobile', 'background', '#616161', '#115D61', 'easyedit'),
(431, 'dark_mobile_sent_message_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i', 'mobile', 'color', '#FFFFFF', '', '0'),
(432, 'dark_mobile_sent_message_mention_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i &gt; i.mentnd', 'mobile', 'color', '#FFEB3B', '', '0'),
(433, 'dark_mobile_sent_message_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; i', 'mobile', 'font-size', '13', '', '0'),
(434, 'dark_mobile_sent_message_time_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div i.info', 'mobile', 'color', '#FFFFFF', '', '0'),
(435, 'dark_mobile_sent_message_time_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div i.info', 'mobile', 'font-size', '10', '', '0'),
(436, 'dark_mobile_audio_player_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay', 'mobile', 'background', '#607D8B', '#607D8B', '0'),
(437, 'dark_mobile_audio_player_controls_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.play', 'mobile', 'color', '#FFFFFF', '', '0'),
(438, 'dark_mobile_audio_player_seek_bar_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.seek &gt; i.bar', 'mobile', 'background', '#616161', '#616161', '0'),
(439, 'dark_mobile_audio_player_slider_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.seek &gt; i.bar &gt; i', 'mobile', 'background', '#FFFFFF', '#FFFFFF', '0'),
(440, 'dark_mobile_audio_player_icon_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.icon', 'mobile', 'background', '#3F535D', '#3F535D', '0'),
(441, 'dark_mobile_audio_player_icon_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; i &gt; span.audioplay &gt; span.icon', 'mobile', 'color', '#FFFFFF', '', '0'),
(442, 'dark_mobile_chatbox_textarea_bg', '.dark .swr-grupo .panel &gt; .textbox &gt; .box', 'mobile', 'background', '#24272B', '#24272B', '0'),
(443, 'dark_mobile_chatbox_textarea_input_bg', '.dark .emojionearea.focused, .dark .emojionearea &gt; .emojionearea-editor, .dark .emojionearea', 'mobile', 'background', '#191B1E', '#191B1E', '0'),
(444, 'dark_mobile_chatbox_textarea_input_text_color', '.dark .emojionearea.focused, .dark .emojionearea &gt; .emojionearea-editor, .dark .emojionearea', 'mobile', 'color', '#676767', '', '0'),
(445, 'dark_form_popup_header_bg', '.dark .grupo-pop &gt; div &gt; form &gt; .head', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(446, 'dark_form_popup_header_textcolor', '.dark .grupo-pop &gt; div &gt; form &gt; .head', 'all', 'color', '#FFFFFF', '', '0'),
(447, 'dark_form_popup_header_font_size', '.dark .grupo-pop &gt; div &gt; form &gt; .head', 'all', 'font-size', '14', '', '0'),
(448, 'dark_form_popup_search_bg', '.dark .grupo-pop &gt; div &gt; form &gt; .search', 'all', 'background', '#181A21', '#181A21', '0'),
(449, 'dark_form_popup_search_text_color', '.dark .grupo-pop &gt; div &gt; form &gt; .search &gt; i, .dark .grupo-pop &gt; div &gt; form &gt; .search &gt; input', 'all', 'color', '#E2E2E2', '', '0'),
(450, 'dark_form_popup_bg', '.dark .grupo-pop &gt; div &gt; form', 'all', 'background', '#232630', '#252D40', '0'),
(451, 'dark_form_popup_field_text_color', '.dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; label', 'all', 'color', '#FFFFFF', '', '0'),
(452, 'dark_form_popup_field_font_size', '.dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; label', 'all', 'font-size', '14', '', '0'),
(453, 'dark_form_popup_input_text_color', '.dark .grupo-pop &gt; div &gt; form &gt; .fields &gt; div &gt; span, .dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; input, .dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; select, .dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; textarea', 'all', 'color', '#9FABB1', '', '0'),
(454, 'dark_form_popup_input_font_size', '.dark .grupo-pop &gt; div &gt; form &gt; .fields &gt; div &gt; span, .dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; input, .dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; select, .dark .grupo-pop &gt; div &gt; form &gt; div &gt; div &gt; textarea', 'all', 'font-size', '15', '', '0'),
(455, 'dark_form_popup_submit_btn_bg', '.dark .grupo-pop &gt; div &gt; form &gt; input[type=&quot;submit&quot;]', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(456, 'dark_form_popup_submit_btn_text_color', '.dark .grupo-pop &gt; div &gt; form &gt; input[type=&quot;submit&quot;]', 'all', 'color', '#FFFFFF', '', '0'),
(457, 'dark_form_popup_submit_btn_font_size', '.dark .grupo-pop &gt; div &gt; form &gt; input[type=&quot;submit&quot;]', 'all', 'font-size', '14', '', '0'),
(458, 'dark_form_popup_cancel_btn_font_size', '.dark .grupo-pop &gt; div &gt; form &gt; span.cancel', 'all', 'font-size', '13', '', '0'),
(459, 'dark_form_popup_cancel_btn_text_color', '.dark .grupo-pop &gt; div &gt; form &gt; span.cancel', 'all', 'color', '#C7C7C7', '', '0'),
(460, 'dark_profile_name_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .top &gt; span.name', 'all', 'color', '#FFFFFF', '', '0'),
(461, 'dark_profile_username_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .top &gt; span.role', 'all', 'color', '#FFFFFF', '', '0'),
(462, 'dark_profile_username_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .top &gt; span.role', 'all', 'font-size', '14', '', '0'),
(463, 'dark_profile_name_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .top &gt; span.name', 'all', 'font-size', '15', '', '0'),
(464, 'dark_profile_btn_bg', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle &gt; span.pm', 'all', 'background', '#E91E63', '#FF9C07', '0'),
(465, 'dark_profile_btn_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle &gt; span.pm', 'all', 'color', '#FFFFFF', '', '0'),
(466, 'dark_profile_btn_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle &gt; span.pm', 'all', 'font-size', '14', '', '0'),
(467, 'dark_profile_editbtn_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .top &gt; span.edit &gt; i', 'all', 'font-size', '13', '', '0'),
(468, 'dark_profile_editbtn_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .top &gt; span.edit &gt; i', 'all', 'color', '#FFC107', '', '0'),
(469, 'dark_profile_statistics_bg', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle', 'all', 'background', '#191B1E', '#191B1E', '0'),
(470, 'dark_profile_statistics_result_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle &gt; span.stats &gt; span', 'all', 'color', '#727273', '', '0'),
(471, 'dark_profile_statistics_result_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle &gt; span.stats &gt; span', 'all', 'font-size', '19', '', '0'),
(472, 'dark_profile_statistics_title_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle &gt; span.stats &gt; span &gt; i', 'all', 'color', '#9A9A9A', '', '0'),
(473, 'dark_profile_statistics_title_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .middle &gt; span.stats &gt; span &gt; i', 'all', 'font-size', '12', '', '0'),
(474, 'dark_profile_fields_bg', '.dark .swr-grupo .aside &gt; .content .profile &gt; .bottom', 'all', 'background', '#222529', '#222529', '0'),
(475, 'dark_profile_field_name_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .bottom &gt; div &gt; ul &gt; li &gt; b', 'all', 'color', '#CECECE', '', '0'),
(476, 'dark_profile_field_name_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .bottom &gt; div &gt; ul &gt; li &gt; b', 'all', 'font-size', '14', '', '0'),
(477, 'dark_profile_field_value_text_color', '.dark .swr-grupo .aside &gt; .content .profile &gt; .bottom &gt; div &gt; ul &gt; li &gt; span', 'all', 'color', '#969292', '', '0'),
(478, 'dark_profile_field_value_font_size', '.dark .swr-grupo .aside &gt; .content .profile &gt; .bottom &gt; div &gt; ul &gt; li &gt; span', 'all', 'font-size', '14', '', '0'),
(479, 'dark_loader_color', '.dark .ajx-ripple div', 'all', 'border-color', '#FFFFFF', '', '0'),
(480, 'dark_loader_title_text_color', '.dark .ajxprocess &gt; div &gt;  span', 'all', 'color', '#FFFFFF', '', '0'),
(481, 'dark_loader_sub_text_color', '.dark .ajxprocess &gt; div &gt; span &gt; span', 'all', 'color', '#FFFFFF', '', '0'),
(482, 'dark_loader_bg', '.dark .ajxprocess &gt; div', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(483, 'dark_cookie_constent_bg', '.dark .gr-consent', 'all', 'background', '#1C2123', '#1C2123', '0'),
(484, 'dark_cookie_constent_text_color', '.dark .gr-consent', 'all', 'color', '#FFFFFF', '', '0'),
(485, 'dark_cookie_constent_btn_bg', '.dark .gr-consent &gt; span &gt; i', 'all', 'background', '#F44336', '#E91E63', '0'),
(486, 'dark_cookie_constent_btn_text_color', '.dark .gr-consent &gt; span &gt; i', 'all', 'color', '#FFFFFF', '', '0'),
(487, 'dark_coverpic_bg', '.dark .swr-grupo .aside &gt; .content .profile &gt; .top', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(488, 'dark_reload_button_bg', '.dark .swr-grupo .panel &gt; .room &gt; .groupreload &gt; i', 'all', 'background', '#000000', '#000000', '0'),
(489, 'dark_reload_button_font_size', '.dark .swr-grupo .panel &gt; .room &gt; .groupreload &gt; i', 'all', 'font-size', '13', '', '0'),
(490, 'dark_reload_button_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .groupreload &gt; i', 'all', 'color', '#FFFFFF', '', '0'),
(491, 'dark_uploading_icon_bg', '.dark .gruploader', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(492, 'dark_uploading_icon_color', '.dark .gruploader', 'all', 'color', '#FFFFFF', '', '0'),
(493, 'dark_uploading_icon_size', '.dark .gruploader', 'all', 'font-size', '11', '', '0'),
(494, 'dark_message_unread_icon_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.right &gt; div i.info &gt; i.tick', 'all', 'color', '#FFFFFF', '', '0'),
(495, 'dark_message_read_icon_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.right &gt; div i.info &gt; i.tick.read &gt; i', 'all', 'color', '#FFEB3B', '', '0'),
(496, 'dark_send_btn_color', '.dark .swr-grupo .panel &gt; .textbox &gt; .box &gt; i', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(497, 'dark_options_items_bg', '.dark .swr-grupo .opt &gt; ul', 'all', 'background', '#434242', '#434242', '0'),
(498, 'dark_options_items_text_color', '.dark .swr-grupo .opt &gt; ul', 'all', 'color', '#A4A5A7', '', '0'),
(499, 'dark_tab_drop_down_bg', '.dark .swr-grupo .aside &gt; .tabs &gt; ul &gt; li &gt; .subtab', 'all', 'background', '#24272B', '#24272B', '0'),
(500, 'dark_tab_drop_down_text_color', '.dark .swr-grupo .aside &gt; .tabs &gt; ul &gt; li &gt; .subtab', 'all', 'color', '#A7A7A7', '#808080', '0'),
(501, 'dark_tab_drop_down_hover_text_color', '.dark .swr-grupo .aside &gt; .tabs &gt; ul &gt; li &gt; .subtab', 'all', 'color', '#BDBCBC', '', '0'),
(502, 'dark_tab_drop_down_hover_bg', '.dark .swr-grupo .aside &gt; .tabs &gt; ul &gt; li &gt; .subtab &gt; li:hover, .dark .swr-grupo .aside &gt; .tabs &gt; ul &gt; li &gt; .subtab &gt; li.active', 'all', 'background', '#202121', '#202121', '0'),
(503, 'dark_sent_message_link_preview_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; .urlpreview', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(504, 'dark_sent_message_link_preview_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li.you &gt; div &gt; .msg &gt; .urlpreview', 'all', 'color', '#FFFFFF', '', '0'),
(505, 'dark_recieved_message_link_preview_bg', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; .urlpreview', 'all', 'background', '#24272B', '#24272B', '0'),
(506, 'dark_recieved_message_link_preview_text_color', '.dark .swr-grupo .panel &gt; .room &gt; .msgs &gt; li &gt; div &gt; .msg &gt; .urlpreview', 'all', 'color', '#B1B1B1', '', '0'),
(507, 'dark_more_icon_bg', '.dark .swr-grupo .panel &gt; .textbox &gt; .box &gt; .icon &gt; .gr-moreico &gt; ul &gt; li &gt; span', 'all', 'background', '#191B1E', '#191B1E', '0'),
(508, 'dark_more_icon_hover_bg', '.dark .swr-grupo .panel &gt; .textbox &gt; .box &gt; .icon &gt; .gr-moreico &gt; ul &gt; li &gt; span:hover', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(509, 'chatbox_textarea_font_size', '.emojionearea > .emojionearea-editor', 'all', 'font-size', '13', '', '0'),
(510, 'radio_player_bg', '.swr-grupo .grradioplayer', 'all', 'background', '#FFFFFF', '#FFFFFF', '0'),
(511, 'dark_radio_player_bg', '.dark .swr-grupo .grradioplayer', 'all', 'background', '#1C1F23', '#1C1F23', '0'),
(512, 'radio_player_play_button_bg', '.swr-grupo .grradioplayer > div > .rcontrols > i.rplay', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(513, 'dark_radio_player_play_button_bg', '.dark .swr-grupo .grradioplayer > div > .rcontrols > i.rplay', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(514, 'switch_gif_sticker_active_button', '.grgif > .wrap > .switchtabs > ul > li.active', 'all', 'background', '#616161', '#115D61', 'easyedit'),
(515, 'dark_switch_gif_sticker_active_button', '.dark .grgif > .wrap > .switchtabs > ul > li.active', 'all', 'background', '#616161', '#115D61', 'easyedit');

-- --------------------------------------------------------

--
-- Table structure for table `gr_defaults`
--

CREATE TABLE `gr_defaults` (
  `id` bigint(20) NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `v2` text COLLATE utf8mb4_unicode_ci,
  `v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `v4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `v5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `v6` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `v7` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_defaults`
--

INSERT INTO `gr_defaults` (`id`, `type`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`, `tms`) VALUES
(1, 'default', 'sitename', 'S.P.E.K.T.A Chat', '0', '0', '0', '', '', NULL),
(2, 'default', 'sitedesc', 'Aplikasi Chatting PT. Kimia Farma Tbk. Plant Jakarta', '0', '0', '0', '', '', NULL),
(3, 'default', 'siteslogan', 'Go Fast To The Next Level', '0', '0', '0', '', '', NULL),
(4, 'default', 'sysemail', 'septian.arman009@gmail.com', '0', '0', '0', '', '', NULL),
(5, 'default', 'sendername', 'S.P.E.K.T.A Chat', '0', '0', '0', '', '', NULL),
(6, 'default', 'userreg', 'enable', '0', '0', '0', '', '', NULL),
(7, 'default', 'timezone', 'Asia/Jakarta', '0', '0', '0', '', '', '2019-04-06 18:10:19'),
(8, 'default', 'recaptcha', 'disable', '0', '0', '0', '', '', NULL),
(9, 'default', 'rsecretkey', '', '0', '0', '0', '', '', NULL),
(10, 'default', 'rsitekey', '', '0', '0', '0', '', '', NULL),
(11, 'default', 'language', '1', '0', '0', '0', '', '', NULL),
(12, 'default', 'delmsgexpiry', '10', '0', '0', '0', '', '', NULL),
(13, 'default', 'autogroupjoin', '52', '0', '0', '0', '', '', NULL),
(14, 'default', 'fileexpiry', '720', '0', '0', '0', '', '', NULL),
(15, 'default', 'boxed', 'disable', '0', '0', '0', '', '', NULL),
(16, 'blacklist', 'ip', '112.121.153.0 - 112.121.153.255\n51.89.23.57\n183.80.183.88\n223.241.166.96\n51.79.62.116\n35.172.136.41\n137.169.63.241\n18.207.142.233\n3.227.233.55\n36.69.93.218\n125.118.73.41\n185.102.139.15\n216.244.66.250\n196.196.193.196\n195.154.123.46\n196.240.54.38\n35.171.146.16\n116.7.162.205\n54.36.148.250\n195.154.122.95\n61.154.64.45\n54.227.117.173\n39.88.21.134\n61.154.197.55\n2.176.205.209\n46.183.221.15\n82.102.21.52\n113.123.0.47\n27.31.102.142\n171.80.187.37\n58.54.221.49\n117.78.58.30\n185.106.94.133\n27.31.102.152\n117.78.58.25\n3.93.169.195\n117.78.58.24\n117.78.58.18\n114.95.205.13\n117.78.58.16\n119.62.208.204\n192.69.90.178\n117.78.58.17\n2.191.43.217\n103.115.41.90\n117.78.58.22\n117.78.58.28\n195.154.123.18\n117.78.58.27\n117.78.58.19\n117.78.58.14\n185.112.81.55\n100.25.38.220\n216.170.126.176\n195.154.104.5\n163.172.71.139\n195.154.104.4\n185.102.137.85\n111.202.100.123\n216.186.243.70\n212.115.122.89\n52.23.204.195\n84.75.207.109\n68.139.206.214\n163.172.71.6\n185.112.100.33\n52.90.162.255\n213.202.253.46\n163.172.71.84\n13.59.168.16\n195.154.104.170\n85.208.96.65\n144.168.163.119\n218.69.225.124\n34.76.178.121\n35.189.255.190\n54.209.162.70\n111.177.117.36\n185.112.81.140\n27.157.90.195\n34.234.54.252\n221.193.124.122\n46.183.222.15\n83.110.248.130\n2.61.214.145\n54.166.130.16\n185.106.94.128\n91.242.162.7\n36.90.89.64\n200.159.250.2\n61.132.225.40\n18.205.109.82\n34.226.234.20\n207.180.226.173\n91.242.162.10\n149.202.211.239\n54.36.150.108\n41.87.207.142\n123.14.219.83\n213.74.79.34\n166.62.84.121\n89.163.242.239\n77.168.164.74\n83.178.235.206\n35.172.100.232\n51.77.70.4\n129.56.117.163\n81.92.203.62\n3.93.75.30\n104.248.247.150\n195.154.123.57\n104.248.243.235\n185.167.160.83\n34.80.141.133\n162.216.115.103\n85.208.96.66\n123.14.63.250\n134.19.176.22\n185.248.12.162\n109.245.36.65\n91.79.52.84\n100.26.182.28\n216.244.66.195\n67.220.186.137\n91.242.162.57\n46.217.82.6\n3.86.206.185\n165.16.181.172\n5.62.34.46\n18.204.2.53\n192.3.136.27\n37.49.231.118\n3.226.243.130\n3.227.254.12\n193.124.191.215\n92.99.144.189\n54.36.148.217\n45.61.48.64\n34.204.176.189\n185.117.118.252\n182.110.22.115\n102.68.77.254\n218.70.200.139\n141.8.189.76\n62.210.80.82\n92.53.33.154\n91.242.162.22\n27.187.58.159\n34.237.76.91\n163.172.30.236\n79.143.28.100\n192.243.53.51\n106.38.241.116\n36.90.89.53\n190.152.180.58\n18.206.48.142\n103.45.100.168\n61.230.210.31\n117.78.58.23\n66.160.140.184\n182.253.245.114\n37.148.46.175\n185.24.233.187\n131.203.43.48\n23.18.139.79\n36.222.72.101\n112.25.188.171\n2.61.231.144\n85.208.96.68\n117.78.58.20\n160.120.4.171\n117.78.58.15\n111.206.221.86\n109.102.111.58\n111.226.236.217\n46.240.189.44\n37.140.159.2\n46.4.105.251\n69.167.38.186\n85.208.96.67\n207.241.226.107\n47.92.84.119\n111.172.66.52\n217.170.202.237\n122.11.135.159\n123.136.135.98\n218.77.57.10\n18.206.16.123\n173.63.217.134\n92.255.195.226\n3.87.134.248\n45.123.43.30\n89.163.146.110\n185.36.81.39\n196.50.5.97\n3.91.51.153\n60.184.109.226\n103.219.207.39\n104.131.75.86\n195.91.155.132\n69.30.226.234\n169.159.119.98\n45.137.17.167\n196.70.251.73\n199.96.83.9\n80.77.42.209\n145.239.2.240\n54.165.90.203\n197.210.44.208\n89.163.146.71\n194.110.84.100\n84.38.129.31\n129.56.78.30\n5.9.6.51\n17.122.128.175\n2.61.193.59\n125.121.51.147\n52.9.20.166\n125.121.49.168\n103.137.12.206\n203.186.170.66\n5.188.84.184\n36.27.111.3\n41.217.86.96\n218.70.201.123\n121.239.108.165\n183.25.179.204\n39.53.130.136\n103.195.238.158\n51.255.134.131\n185.248.13.186\n59.55.202.68\n73.171.83.254\n105.208.57.92\n109.252.20.243\n36.90.88.149\n78.46.174.55\n34.227.91.38\n95.168.191.169\n109.93.249.91\n60.176.78.81\n195.154.122.66\n178.149.88.114\n93.158.166.139\n167.86.73.202\n119.62.205.177\n66.160.140.183\n86.52.207.82\n106.120.173.156\n54.191.53.48\n39.188.104.180\n172.245.13.162\n69.77.176.154\n46.229.168.142\n195.154.123.127\n195.154.123.87\n94.130.10.89\n17.58.101.49\n223.80.227.88\n123.21.196.161\n59.55.241.38\n2.61.170.40\n37.140.159.0\n54.36.149.82\n199.168.140.151\n54.36.150.16\n54.36.150.93\n85.208.96.69\n188.68.226.106\n54.36.150.175\n185.5.251.207\n54.36.150.56\n54.36.150.2\n54.90.161.92\n54.36.150.65\n54.36.150.12\n54.36.148.68\n54.36.148.56\n54.36.150.183\n54.36.148.166\n188.68.226.102\n54.36.150.81\n54.36.149.29\n54.36.148.191\n54.36.150.22\n5.2.183.39\n54.36.150.50\n117.239.48.242\n116.206.137.146\n23.228.90.13\n54.36.150.97\n54.36.150.1\n81.166.130.184\n54.36.150.86\n54.36.150.156\n54.36.148.245\n106.9.137.118\n54.36.150.83\n54.36.148.33\n54.36.148.10\n35.239.58.193\n54.36.150.141\n54.36.150.188\n54.36.148.49\n54.36.148.147\n188.68.226.103\n54.36.149.30\n54.36.148.237\n185.38.251.59\n54.36.150.88\n182.253.14.20\n54.36.150.167\n54.36.150.101\n54.36.149.90\n54.36.148.96\n113.102.166.15\n5.188.84.138\n54.36.150.116\n54.36.149.65\n54.36.148.118\n123.126.113.125\n198.204.229.90\n45.76.20.179\n54.36.149.70\n54.36.150.47\n54.36.149.80\n54.36.148.111\n41.82.92.83\n54.36.150.51\n54.36.148.132\n46.4.100.132\n195.88.253.235\n54.36.149.5\n54.36.150.132\n129.18.156.246\n109.238.247.83\n54.36.150.62\n54.36.148.34\n54.36.150.29\n54.36.150.128\n54.36.150.136\n54.36.148.198\n218.70.200.192\n46.229.168.154\n23.226.130.76\n54.36.148.194\n183.156.22.199\n54.36.150.55\n85.208.96.4\n54.36.148.221\n54.36.149.63\n59.41.24.26\n111.224.13.119\n54.36.148.173\n54.36.150.130\n195.154.61.130\n205.134.171.79\n54.36.150.184\n188.68.226.105\n54.36.149.1\n54.36.148.226\n54.36.150.171\n170.130.205.87\n82.57.55.118\n54.36.149.42\n54.36.150.11\n188.68.226.108\n103.88.233.5\n54.36.150.76\n188.68.226.107\n121.40.224.143\n54.36.148.18\n114.103.64.50\n47.111.102.108\n112.73.24.219\n121.40.130.229\n103.133.104.170\n54.36.148.70\n121.40.225.125\n54.36.148.180\n54.36.150.75\n194.99.105.243\n47.111.65.9\n121.40.210.30\n54.36.150.160\n207.148.102.16\n188.68.226.101\n54.36.149.72\n54.36.150.15\n54.36.148.121\n23.254.202.98\n54.36.148.137\n54.36.150.102\n107.6.156.2\n47.111.136.117\n94.25.168.181\n54.36.148.46\n176.9.4.111\n62.210.111.58\n121.40.207.234\n3.230.119.16\n54.36.150.71\n121.40.244.177\n54.38.19.73\n190.156.243.166\n37.140.159.1\n157.55.201.215\n75.162.79.99\n54.36.150.161\n195.154.122.234\n124.41.228.15\n105.159.249.101\n46.229.168.132\n188.68.226.100\n54.36.150.91\n192.243.56.76\n103.212.33.223\n54.36.149.57\n121.40.103.29\n121.40.76.239\n54.36.150.143\n17.58.97.31\n103.7.79.79\n54.36.148.107\n54.36.150.23\n54.36.148.254\n118.71.107.73\n141.8.188.178\n47.111.111.174\n54.36.150.98\n105.112.32.58\n54.36.148.64\n192.3.8.36\n54.36.150.121\n93.180.64.137\n198.50.183.1\n54.36.148.105\n47.92.222.191\n203.133.169.184\n184.75.211.107\n47.111.156.198\n159.69.189.218\n46.229.168.139\n52.4.105.228\n46.229.168.161\n121.40.249.129\n46.229.168.137\n182.74.103.193\n81.106.8.37\n216.244.66.203\n46.229.161.131\n54.36.148.190\n95.216.172.180\n46.229.168.162\n178.159.37.125\n54.36.148.43\n46.229.168.129\n173.44.40.49\n54.36.150.35\n202.49.183.168\n121.40.129.130\n46.229.168.141\n121.40.142.193\n46.229.168.153\n116.31.102.8\n54.36.150.39\n39.100.157.106\n159.65.137.115\n164.68.96.84\n210.2.157.130\n88.248.23.216\n27.189.34.35\n46.229.168.140\n203.133.169.241\n141.8.188.201\n141.8.188.145\n54.36.149.37\n178.159.37.55\n141.8.143.170\n54.36.150.43\n141.8.188.196\n46.229.168.147\n54.36.148.171\n141.8.188.143\n121.40.101.160\n54.36.148.126\n85.208.96.7\n121.40.246.140\n54.36.150.61\n121.40.238.244\n46.4.60.249\n195.154.123.53\n93.158.166.10\n121.40.219.58\n42.113.50.23\n13.57.217.89\n46.229.168.136\n54.36.150.145\n54.36.150.90\n14.226.203.62\n121.40.113.77\n47.111.125.140\n212.7.208.140\n54.36.148.51\n46.229.168.149\n103.63.158.254\n121.40.228.36\n64.44.131.61\n93.158.166.146\n121.40.164.34\n46.229.168.163\n95.236.18.183\n112.34.110.149\n142.252.249.91\n121.40.225.4\n83.221.88.181\n213.174.147.83\n45.89.197.195\n23.100.232.233\n121.40.153.27\n223.241.79.240\n188.165.200.217\n41.103.204.206\n102.165.33.20\n46.229.168.143\n52.162.161.148\n107.173.222.196\n18.208.178.230\n46.140.101.194\n3.212.81.28\n62.210.80.58\n122.224.204.36\n216.244.66.228\n46.229.168.131\n46.229.168.146\n46.229.168.135\n111.206.198.44\n39.100.158.151\n46.229.168.130\n2.61.172.111\n110.86.19.26\n39.98.128.208\n39.98.129.207\n46.229.168.145\n39.100.147.54\n47.92.214.153\n46.229.168.152\n218.70.204.84\n85.208.96.1\n206.189.56.14\n46.229.168.138\n46.229.168.133\n13.66.139.0\n18.222.24.144\n84.25.85.171\n112.34.110.156\n46.229.168.151\n62.210.80.98\n113.66.252.206\n192.69.95.250\n121.40.144.114\n66.206.0.173\n173.249.18.133\n90.188.236.43\n62.210.80.25\n188.68.226.104\n60.169.115.55\n46.229.168.150\n121.40.111.18\n121.40.189.110\n121.40.118.135\n45.123.41.94\n195.206.104.237\n121.40.219.187\n206.81.31.194\n121.40.110.89\n47.111.133.130\n47.111.127.121\n111.206.221.29\n162.221.200.177\n93.182.109.32\n185.160.100.26\n112.34.110.29\n121.40.114.207\n112.34.110.28\n47.111.64.179\n188.2.211.28\n121.40.150.14\n46.229.168.144\n164.68.123.23\n157.55.199.147\n121.40.192.236\n46.229.168.134\n46.229.168.148\n47.111.89.120\n121.40.175.46\n47.99.196.186\n151.80.200.152\n193.56.28.150\n45.141.71.22\n2.61.224.130\n121.40.248.200\n121.40.106.86\n210.56.127.217\n190.90.140.55\n85.208.96.71\n1.179.180.98\n75.159.84.200\n94.21.118.140\n27.255.193.172\n2001:1c06:8c2:e300:6c36:11af:25e:a81f\n2001:1c06:8c2:e300:e5f2:b2b5:1c17:7afd\n2001:1c06:8c2:e300:f55f:559f:2f34:f2d0\n2401:4900:16bc:6f12:e4c5:b2dc:39eb:f244\n2001:e68:5422:28a1:a433:b10:645d:b9a1\n2607:fea8:91c0:40a:548:ae6b:ff7f:18f3\n2001:1c06:8c2:e300:e912:206b:b0d7:e7b4\n2001:e68:5422:28a1:2936:b9e4:7ca0:89e\n2001:e68:5420:2a0c:e08a:d855:1cef:92a5', '0', '0', '0', '', '', NULL),
(17, 'filterwords', 'words', 'bordel\r\nbuzna\r\nčumět\r\nčurák\r\ndebil\r\ndršťka\r\ndržka\r\nflundra\r\nhajzl\r\nhovno\r\nchcanky\r\nchuj\r\njebat\r\nkokot\r\nkokotina\r\nkoňomrd\r\nkunda\r\nkurva\r\nmamrd\r\nmrdat\r\nmrdka\r\nmrdník\r\noslošoust\r\npiča\r\npíčus\r\npíchat\r\npizda\r\nprcat\r\nprdel\r\nprdelka\r\nsračka\r\nsrát\r\nšoustat\r\nšulin\r\nvypíčenec\r\nzkurvit\r\nzkurvysyn\r\nzmrd\r\nžrát\r\nanus\r\nbøsserøv\r\ncock\r\nfisse\r\nfissehår\r\nfuck\r\nfuckoff\r\nhestepik\r\nkussekryller\r\nlort\r\nluder\r\npik\r\npikhår\r\npikslugeri\r\npiksutteri\r\npis\r\nrøv\r\nrøvhul\r\nrøvskæg\r\nrøvspræke\r\nshit\r\nanalritter\r\narsch\r\narschficker\r\narschlecker\r\narschloch\r\nbimbo\r\nbratze\r\nbumsen\r\nbonze\r\ndödel\r\nfick\r\nficken\r\nflittchen\r\nfotze\r\nfratze\r\nhackfresse\r\nhure\r\nhurensohn\r\nische\r\nkackbratze\r\nkacke\r\nkacken\r\nkackwurst\r\nkampflesbe\r\nkanake\r\nkimme\r\nlümmel\r\nMILF\r\nmöpse\r\nmorgenlatte\r\nmöse\r\nmufti\r\nmuschi\r\nnackt\r\nneger\r\nnigger\r\nnippel\r\nnutte\r\nonanieren\r\norgasmus\r\npenis\r\npimmel\r\npimpern\r\npinkeln\r\npissen\r\npisser\r\npopel\r\npoppen\r\nporno\r\nreudig\r\nrosette\r\nschabracke\r\nschlampe\r\nscheiße\r\nscheisser\r\nschiesser\r\nschnackeln\r\nschwanzlutscher\r\nschwuchtel\r\ntittchen\r\ntitten\r\nvögeln\r\nvollpfosten\r\nwichse\r\nwichsen\r\nwichser\r\n2g1c\r\nacrotomophilia\r\nanal\r\nanilingus\r\nanus\r\napeshit\r\narsehole\r\nass\r\nasshole\r\nassmunch\r\nautoerotic\r\nbabeland\r\nbangbros\r\nbangbus\r\nbareback\r\nbarenaked\r\nbastard\r\nbastardo\r\nbastinado\r\nbbw\r\nbdsm\r\nbeaner\r\nbeaners\r\nbeastiality\r\nbestiality\r\nbimbos\r\nbirdlock\r\nbitch\r\nbitches\r\nblowjob\r\nblumpkin\r\nbollocks\r\nbondage\r\nboner\r\nboob\r\nboobs\r\nbukkake\r\nbulldyke\r\nbullshit\r\nbunghole\r\nbusty\r\nbutt\r\nbuttcheeks\r\nbutthole\r\ncamgirl\r\ncamslut\r\ncamwhore\r\ncarpetmuncher\r\ncialis\r\ncirclejerk\r\nclit\r\nclitoris\r\nclusterfuck\r\ncock\r\ncocks\r\ncoprolagnia\r\ncoprophilia\r\ncornhole\r\ncoon\r\ncoons\r\ncreampie\r\ncum\r\ncumming\r\ncumshot\r\ncumshots\r\ncunnilingus\r\ncunt\r\ndarkie\r\ndaterape\r\ndeepthroat\r\ndendrophilia\r\ndick\r\ndildo\r\ndingleberry\r\ndingleberries\r\ndoggiestyle\r\ndoggystyle\r\ndolcett\r\ndomination\r\ndominatrix\r\ndommes\r\ndvda\r\necchi\r\nejaculation\r\nerotic\r\nerotism\r\nescort\r\neunuch\r\nfag\r\nfaggot\r\nfecal\r\nfelch\r\nfellatio\r\nfeltch\r\nfemdom\r\nfigging\r\nfingerbang\r\nfingering\r\nfisting\r\nfootjob\r\nfrotting\r\nfuck\r\nfuckin\r\nfucking\r\nfucktards\r\nfudgepacker\r\nfutanari\r\ngangbang\r\ngenitals\r\ngoatcx\r\ngoatse\r\ngokkun\r\ngoodpoop\r\ngoregasm\r\ngrope\r\nguro\r\nhandjob\r\nhardcore\r\nhentai\r\nhomoerotic\r\nhonkey\r\nhooker\r\nhorny\r\nhumping\r\nincest\r\nintercourse\r\njailbait\r\njigaboo\r\njiggaboo\r\njiggerboo\r\njizz\r\njuggs\r\nkike\r\nkinbaku\r\nkinkster\r\nkinky\r\nknobbing\r\nlivesex\r\nlolita\r\nlovemaking\r\nmasturbate\r\nmasturbating\r\nmasturbation\r\nmilf\r\nmong\r\nmotherfucker\r\nmuffdiving\r\nnambla\r\nnawashi\r\nnegro\r\nneonazi\r\nnigga\r\nnigger\r\nnimphomania\r\nnipple\r\nnipples\r\nnsfw\r\nnude\r\nnudity\r\nnutten\r\nnympho\r\nnymphomania\r\noctopussy\r\nomorashi\r\norgasm\r\norgy\r\npaedophile\r\npaki\r\npanties\r\npanty\r\npedobear\r\npedophile\r\npegging\r\npenis\r\npikey\r\npissing\r\npisspig\r\nplayboy\r\nponyplay\r\npoof\r\npoon\r\npoontang\r\npunany\r\npoopchute\r\nporn\r\nporno\r\npornography\r\npthc\r\npubes\r\npussy\r\nqueaf\r\nqueef\r\nquim\r\nraghead\r\nrape\r\nraping\r\nrapist\r\nrectum\r\nrimjob\r\nrimming\r\nsadism\r\nsantorum\r\nscat\r\nschlong\r\nscissoring\r\nsemen\r\nsex\r\nsexcam\r\nsexo\r\nsexy\r\nsexual\r\nsexually\r\nsexuality\r\nshemale\r\nshibari\r\nshit\r\nshitblimp\r\nshitty\r\nshota\r\nshrimping\r\nskeet\r\nslanteye\r\nslut\r\ns&amp;m\r\nsmut\r\nsnatch\r\nsnowballing\r\nsodomize\r\nsodomy\r\nspastic\r\nspic\r\nsplooge\r\nspooge\r\nspunk\r\nstrapon\r\nstrappado\r\nsuck\r\nsucks\r\nswastika\r\nswinger\r\nthreesome\r\nthroating\r\nthumbzilla\r\ntit\r\ntits\r\ntitties\r\ntitty\r\ntopless\r\ntosser\r\ntowelhead\r\ntranny\r\ntribadism\r\ntubgirl\r\ntushy\r\ntwat\r\ntwink\r\ntwinkie\r\nundressing\r\nupskirt\r\nurophilia\r\nvagina\r\nviagra\r\nvibrator\r\nvorarephilia\r\nvoyeur\r\nvoyeurweb\r\nvoyuer\r\nvulva\r\nwank\r\nwetback\r\nwhore\r\nworldsex\r\nxx\r\nxxx\r\nyaoi\r\nyiffy\r\nzoophilia\r\nbugren\r\nbugri\r\nbugru\r\nĉiesulino\r\nĉiesulo\r\ndiofek\r\ndiofeka\r\nfek\r\nfeken\r\nfekfikanto\r\nfeklekulo\r\nfekulo\r\nfik\r\nfikado\r\nfikema\r\nfikfek\r\nfiki\r\nfikiĝi\r\nfikiĝu\r\nfikilo\r\nfikklaŭno\r\nfikota\r\nfiku\r\nforfiki\r\nforfikiĝu\r\nforfiku\r\nforfurzu\r\nforpisi\r\nforpisu\r\nfurzulo\r\nkacen\r\nkaco\r\nkacsuĉulo\r\nkojono\r\npiĉen\r\npiĉo\r\nzamenfek\r\nAsesinato\r\nasno\r\nbastardo\r\nBollera\r\nCabrón\r\nCaca\r\nChupada\r\nChupapollas\r\nChupetón\r\nconcha\r\nCoño\r\nCoprofagía\r\nCulo\r\nDrogas\r\nEsperma\r\nFollador\r\nFollar\r\nGilipichis\r\nGilipollas\r\nHeroína\r\nHijaputa\r\nHijoputa\r\nIdiota\r\nImbécil\r\ninfierno\r\nJilipollas\r\nKapullo\r\nLameculos\r\nMaciza\r\nMacizorra\r\nmaldito\r\nMamada\r\nMarica\r\nMaricón\r\nMariconazo\r\nmartillo\r\nMierda\r\nNazi\r\nOrina\r\nPedo\r\nPendejo\r\nPervertido\r\nPezón\r\nPinche\r\nPis\r\nProstituta\r\nPuta\r\nRacista\r\nRamera\r\nSádico\r\nSemen\r\nSexo\r\nSoplagaitas\r\nSoplapollas\r\nTravesti\r\nTrio\r\nVerga\r\nVulva\r\nbylsiä\r\nhaahka\r\nhatullinen\r\nhelvetisti\r\nhevonkuusi\r\nhevonpaska\r\nhevonperse\r\nhevonvittu\r\nhevonvitunperse\r\nhitosti\r\nhitto\r\nhuorata\r\nhässiä\r\njutku\r\njutsku\r\njätkä\r\nkananpaska\r\nkoiranpaska\r\nkulli\r\nkullinluikaus\r\nkuppainen\r\nkusaista\r\nkuseksia\r\nkusettaa\r\nkusi\r\nkusipää\r\nkusta\r\nkyrpiintynyt\r\nkyrpiintyä\r\nkyrpiä\r\nkyrpä\r\nkyrpänaama\r\nkyrvitys\r\nlahtari\r\nlutka\r\nmolo\r\nmolopää\r\nmulkero\r\nmulkku\r\nmulkvisti\r\nmuna\r\nmunapää\r\nmunaton\r\nmutakuono\r\nmutiainen\r\nnaida\r\nnainti\r\nnarttu\r\nneekeri\r\nnekru\r\nnussia\r\nnussija\r\nnussinta\r\npaljaalla\r\npalli\r\npallit\r\npaneskella\r\npanettaa\r\npanna\r\npano\r\npantava\r\npaska\r\npaskainen\r\npaskamainen\r\npaskanmarjat\r\npaskantaa\r\npaskapuhe\r\npaskapää\r\npaskattaa\r\npaskiainen\r\npaskoa\r\npehko\r\npentele\r\nperkele\r\nperkeleesti\r\npersaukinen\r\nperse\r\nperseennuolija\r\npersereikä\r\nperseääliö\r\npersläpi\r\nperspano\r\npersvako\r\npilkunnussija\r\npillu\r\npillut\r\npipari\r\npiru\r\npistää\r\npyllyvako\r\nreikä\r\nreva\r\nripsipiirakka\r\nrunkata\r\nrunkkari\r\nrunkkaus\r\nrunkku\r\nryssä\r\nrättipää\r\nsaatanasti\r\nsuklaaosasto\r\ntavara\r\ntoosa\r\ntuhkaluukku\r\ntumputtaa\r\nturpasauna\r\ntussu\r\ntussukka\r\ntussut\r\nvakipano\r\nviiksi\r\nvittu\r\nvittuilla\r\nvittuilu\r\nvittumainen\r\nvittuuntua\r\nvittuuntunut\r\nvitun\r\nvitusti\r\nvituttaa\r\nvitutus\r\näpärä\r\ntangina\r\nburat\r\nbayag\r\nbobo\r\nnognog\r\ntanga\r\nulol\r\nkantot\r\nulol\r\njakol\r\nbaiser\r\nbander\r\nbigornette\r\nbite\r\nbitte\r\nbloblos\r\nbordel\r\nbourré\r\nbourrée\r\nbrackmard\r\nbranlage\r\nbranler\r\nbranlette\r\nbranleur\r\nbranleuse\r\ncaca\r\nchatte\r\nchiasse\r\nchier\r\nchiottes\r\nclito\r\nclitoris\r\ncon\r\nconnard\r\nconnasse\r\nconne\r\ncouilles\r\ncramouille\r\ncul\r\ndéconne\r\ndéconner\r\nemmerdant\r\nemmerder\r\nemmerdeur\r\nemmerdeuse\r\nenculé\r\nenculée\r\nenculeur\r\nenculeurs\r\nenfoiré\r\nenfoirée\r\nétron\r\nfolle\r\nfoutre\r\ngerbe\r\ngerber\r\ngouine\r\ngrogniasse\r\ngueule\r\njouir\r\nMALPT\r\nmerde\r\nmerdeuse\r\nmerdeux\r\nmeuf\r\nnègre\r\nnegro\r\npalucher\r\npédale\r\npédé\r\npéter\r\npipi\r\npisser\r\npouffiasse\r\nputain\r\npute\r\nramoner\r\nsalaud\r\nsalope\r\nsuce\r\ntapette\r\ntanche\r\nteuch\r\ntringler\r\ntrique\r\ntroncher\r\nturlute\r\nzigounette\r\nzizi\r\naand\r\naandu\r\nbalatkar\r\nbalatkari\r\nbhadva\r\nbhadve\r\nbhandve\r\nbhangi\r\nbhosad\r\nboobe\r\nchakke\r\nchinaal\r\nchinki\r\nchod\r\nchodu\r\nchooche\r\nchoochi\r\nchoope\r\nchoot\r\nchootia\r\nchootiya\r\nchuche\r\nchuchi\r\nchudaap\r\nchude\r\nchut\r\nchutad\r\nchutadd\r\nchutan\r\nchutia\r\nchutiya\r\ngaand\r\ngaandfat\r\ngaandmasti\r\ngaandufad\r\ngandfattu\r\ngandu\r\ngashti\r\ngasti\r\nghassa\r\nghasti\r\ngucchi\r\ngucchu\r\nharami\r\nharamzade\r\nhawas\r\nhijda\r\nhijra\r\njhant\r\njhantu\r\nkamine\r\nkaminey\r\nkanjar\r\nkutta\r\nkuttiya\r\nloda\r\nlodu\r\nlund\r\nlundtopi\r\nlundure\r\nmaal\r\nmadarchod\r\nmadhavchod\r\nmutth\r\nmutthal\r\nnajayaz\r\npaki\r\npataka\r\npatakha\r\nraand\r\nrandaap\r\nrandi\r\nsaala\r\nsuar\r\ntatte\r\ntatti\r\ntharak\r\ntharki\r\nbalfasz\r\nbalfaszok\r\nbalfaszokat\r\nbalfaszt\r\nbarmok\r\nbarmokat\r\nbarmot\r\nbarom\r\nbaszik\r\nbazmeg\r\nbuksza\r\nbukszák\r\nbukszákat\r\nbukszát\r\nbúr\r\nbúrok\r\ncsöcs\r\ncsöcsök\r\ncsöcsöket\r\ncsöcsöt\r\nfasz\r\nfaszfej\r\nfaszfejek\r\nfaszfejeket\r\nfaszfejet\r\nfaszok\r\nfaszokat\r\nfaszt\r\nfing\r\nfingok\r\nfingokat\r\nfingot\r\nfranc\r\nfrancok\r\nfrancokat\r\nfrancot\r\ngeci\r\ngecibb\r\ngecik\r\ngeciket\r\ngecit\r\nkibaszott\r\nkibaszottabb\r\nkúr\r\nkurafi\r\nkurafik\r\nkurafikat\r\nkurafit\r\nkurva\r\nkurvák\r\nkurvákat\r\nkurvát\r\nleggecibb\r\nlegkibaszottabb\r\nlegszarabb\r\nmarha\r\nmarhák\r\nmarhákat\r\nmarhát\r\nmegdöglik\r\npele\r\npelék\r\npicsa\r\npicsákat\r\npicsát\r\npina\r\npinák\r\npinákat\r\npinát\r\npofa\r\npofákat\r\npofát\r\npöcs\r\npöcsök\r\npöcsöket\r\npöcsöt\r\npunci\r\npuncik\r\nsegg\r\nseggek\r\nseggeket\r\nsegget\r\nseggfej\r\nseggfejek\r\nseggfejeket\r\nseggfejet\r\nszajha\r\nszajhák\r\nszajhákat\r\nszajhát\r\nszar\r\nszarabb\r\nszarik\r\nszarok\r\nszarokat\r\nszart\r\nallupato\r\nammucchiata\r\nanale\r\narrapato\r\narrusa\r\narruso\r\nassatanato\r\nbagascia\r\nbagassa\r\nbagnarsi\r\nbaldracca\r\nballe\r\nbattere\r\nbattona\r\nbelino\r\nbiga\r\nbocchinara\r\nbocchino\r\nbofilo\r\nboiata\r\nbordello\r\nbrinca\r\nbucaiolo\r\nbudiùlo\r\nbusone\r\ncacca\r\ncaciocappella\r\ncadavere\r\ncagare\r\ncagata\r\ncagna\r\ncasci\r\ncazzata\r\ncazzimma\r\ncazzo\r\ncesso\r\ncazzone\r\nchecca\r\nchiappa\r\nchiavare\r\nchiavata\r\nciospo\r\ncoglione\r\ncoglioni\r\ncornuto\r\ncozza\r\nculattina\r\nculattone\r\nculo\r\nditalino\r\nfava\r\nfemminuccia\r\nfica\r\nfiga\r\nfigone\r\nfinocchio\r\nfottere\r\nfottersi\r\nfracicone\r\nfregna\r\nfrocio\r\nfroscio\r\ngoldone\r\nguardone\r\nimbecille\r\nincazzarsi\r\nincoglionirsi\r\ningoio\r\nleccaculo\r\nlecchino\r\nlofare\r\nloffa\r\nloffare\r\nmannaggia\r\nmerda\r\nmerdata\r\nmerdoso\r\nmignotta\r\nminchia\r\nminchione\r\nmona\r\nmonta\r\nmontare\r\nmussa\r\nnerchia\r\npadulo\r\npalle\r\npalloso\r\npatacca\r\npatonza\r\npecorina\r\npesce\r\npicio\r\npincare\r\npippa\r\npinnolone\r\npipì\r\npippone\r\npirla\r\npisciare\r\npiscio\r\npisello\r\npistolotto\r\npomiciare\r\npompa\r\npompino\r\nporca\r\nporco\r\npotta\r\npuppami\r\nputtana\r\nquaglia\r\nrecchione\r\nregina\r\nrincoglionire\r\nrizzarsi\r\nrompiballe\r\nrompipalle\r\nruffiano\r\nsbattere\r\nsbattersi\r\nsborra\r\nsborrata\r\nsborrone\r\nsbrodolata\r\nscopare\r\nscopata\r\nscorreggiare\r\nsega\r\nslinguare\r\nslinguata\r\nsmandrappata\r\nsoccia\r\nsocmel\r\nsorca\r\nspagnola\r\nspompinare\r\nsticchio\r\nstronza\r\nstronzata\r\nstronzo\r\nsucchiami\r\nsucchione\r\nsveltina\r\nsverginare\r\ntarzanello\r\nterrone\r\ntette\r\ntirare\r\ntopa\r\ntroia\r\ntrombare\r\nvacca\r\nvaffanculo\r\nvangare\r\nzinne\r\nzoccola\r\nabbuc\r\naεeṭṭuḍ\r\naḥeččun\r\ntaḥeččunt\r\naxuzziḍ\r\nasxuẓeḍ\r\nqqu\r\nqquɣ\r\nqqiɣ\r\nqqan\r\nqqant\r\ntteqqun\r\ntteqqunt\r\ntteqqun\r\naqerqur\r\najeḥniḍ\r\nawellaq\r\niwellaqen\r\niḥeččan\r\niḥeččunen\r\nuqan\r\ntaxna\r\nafberen\r\naflebberen\r\nafrossen\r\nafrukken\r\naftrekken\r\nafwerkplaats\r\nafzeiken\r\nafzuigen\r\nanita\r\nasbak\r\naso\r\nbalen\r\nbedonderen\r\nbefborstel\r\nbeffen\r\nbekken\r\nbelazeren\r\nbesodemieteren\r\nbeurt\r\nboemelen\r\nboerelul\r\nboerenpummel\r\nbokkelul\r\nbotergeil\r\nbroekhoesten\r\nbrugpieper\r\nbuffelen\r\ndel\r\ndombo\r\ndraaikont\r\ndrol\r\ndrooggeiler\r\ndroogkloot\r\neikel\r\nengerd\r\nflamoes\r\nflikken\r\nflikker\r\ngadverdamme\r\ngalbak\r\ngat\r\ngedoogzone\r\ngeilneef\r\ngesodemieter\r\ngodverdomme\r\ngraftak\r\ngratenkut\r\ngreppeldel\r\ngriet\r\nhoempert\r\nhoer\r\nhoerenbuurt\r\nhoerenloper\r\nhoerig\r\nhol\r\nhufter\r\nhuisdealer\r\njohny\r\nkanen\r\nkettingzeug\r\nklaarkomen\r\nklerebeer\r\nklojo\r\nklooien\r\nklootjesvolk\r\nklootoog\r\nklootzak\r\nkloten\r\nknor\r\nkont\r\nkontneuken\r\nkrentekakker\r\nkut\r\nkuttelikkertje\r\nkwakkie\r\nliefdesgrot\r\nlul\r\nlulhannes\r\nlummel\r\nmafketel\r\nmatennaaier\r\nmatje\r\nmof\r\nmuts\r\nnaaien\r\nnaakt\r\nneuken\r\nneukstier\r\nnicht\r\noetlul\r\nopgeilen\r\nopkankeren\r\noprotten\r\nopsodemieteren\r\nopzouten\r\nouwehoer\r\nouwehoeren\r\npaal\r\npaardelul\r\npalen\r\npenoze\r\npiesen\r\npijpbekkieg\r\npijpen\r\npik\r\npleurislaaier\r\npoep\r\npoepen\r\npoot\r\nportiekslet\r\npot\r\npotverdorie\r\npubliciteitsgeil\r\nraaskallen\r\nreet\r\nreetridder\r\nremsporen\r\nreutelen\r\nrothoer\r\nrotzak\r\nrukhond\r\nrukken\r\nschatje\r\nschijt\r\nschijten\r\nschoft\r\nschuinsmarcheerder\r\nshit\r\nslempen\r\nslet\r\nsletterig\r\nsnol\r\nspuiten\r\nstandje\r\nstoephoer\r\nstootje\r\nstront\r\nsufferd\r\ntapijtnek\r\nteef\r\ntemeier\r\nteringlijer\r\ntoeter\r\ntongzoeng\r\ntriootjeg\r\ntrottoirteef\r\nvergallen\r\nverkloten\r\nverneuken\r\nviespeuk\r\nvingeren\r\nvleesroos\r\nwatje\r\nwelzijnsmafia\r\nwijf\r\nwippen\r\nwuftje\r\nzaadje\r\nzakkenwasser\r\nzeiken\r\nzeiker\r\nzuigen\r\nzuiplap\r\nasshole\r\ndritt\r\ndrittsekk\r\nfaen\r\nfan\r\nfanken\r\nfitte\r\nforbanna\r\nforbannet\r\nforjævlig\r\nfuck\r\nføkk\r\nføkka\r\nføkkings\r\njævla\r\njævlig\r\nhelvete\r\nhelvetet\r\nkuk\r\nkukene\r\nkuker\r\nmorraknuller\r\nmorrapuler\r\nnigger\r\npakkis\r\npikk\r\npokker\r\nræva\r\nræven\r\nsatan\r\nshit\r\nsinnsykt\r\nskitt\r\nsotrør\r\nståpikk\r\nståpikkene\r\nståpikker\r\nsvartheiteste\r\nburdel\r\nburdelmama\r\nchuj\r\nchujnia\r\nciota\r\ncipa\r\ncyc\r\ndebil\r\ndmuchać\r\ndupa\r\ndupek\r\nduperele\r\ndziwka\r\nfiut\r\ngówno\r\nhuj\r\njajco\r\njajko\r\njebać\r\njebany\r\nkurwa\r\nkurwy\r\nkutafon\r\nkutas\r\npieprzyć\r\npierdolec\r\npierdolić\r\npierdolnąć\r\npierdolnięty\r\npierdoła\r\npierdzieć\r\npizda\r\npojeb\r\npojebany\r\npopierdolony\r\nruchać\r\nrzygać\r\nskurwysyn\r\nsraczka\r\nsrać\r\nsuka\r\nsyf\r\nwkurwiać\r\nzajebisty\r\naborto\r\namador\r\nânus\r\naranha\r\nariano\r\nbalalao\r\nbastardo\r\nbicha\r\nbiscate\r\nbissexual\r\nboceta\r\nboob\r\nbosta\r\nbumbum\r\nburro\r\ncabrao\r\ncacete\r\ncagar\r\ncamisinha\r\ncaralho\r\ncerveja\r\nchochota\r\nchupar\r\nclitoris\r\ncocaína\r\ncoito\r\ncolhoes\r\ncomer\r\ncona\r\nconsolo\r\ncorno\r\ncu\r\nesporra\r\nfecal\r\nfoda\r\nfoder\r\ngozar\r\ngrelho\r\nheroína\r\nheterosexual\r\nhomoerótico\r\nhomosexual\r\ninferno\r\nlésbica\r\nlolita\r\nmama\r\nmerda\r\npaneleiro\r\npau\r\npeidar\r\npênis\r\npinto\r\nporra\r\nputa\r\nqueca\r\nsacanagem\r\nsaco\r\ntorneira\r\ntransar\r\nvadia\r\nveado\r\nvibrador\r\nxana\r\nxochota\r\nbychara\r\nbyk\r\nchernozhopyi\r\ndolboy&#039;eb\r\nebalnik\r\nebalo\r\ngol\r\nmudack\r\nopizdenet\r\nosto&#039;eblo\r\nostokhuitel&#039;no\r\not&#039;ebis\r\notmudohat\r\notpizdit\r\notsosi\r\npadlo\r\npedik\r\nperdet\r\npetuh\r\npizda\r\npizdato\r\npizdatyi\r\npiz&#039;det\r\npizdetc\r\npizd&#039;uk\r\npiz`dyulina\r\npoeben\r\nprissat\r\nproebat\r\npropezdoloch\r\nprosrat\r\nraspeezdeyi\r\nraspizdatyi\r\nraz&#039;yebuy\r\nraz&#039;yoba\r\ns&#039;ebat&#039;sya\r\nshalava\r\nstyervo\r\nsvoloch\r\ntrakhat&#039;sya\r\nubl&#039;yudok\r\nuboy\r\nu&#039;ebitsche\r\nvafl&#039;a\r\nvyperdysh\r\nvzdrochennyi\r\nza&#039;ebat\r\nzaebis\r\nzalupa\r\nzalupat\r\nzasranetc\r\nzassat\r\nzlo&#039;ebuchy\r\nбздёнок\r\nблядки\r\nблядовать\r\nблядство\r\nблядь\r\nбугор\r\nвыёбываться\r\nгандон\r\nговно\r\nговнюк\r\nголый\r\nдерьмо\r\nдрочить\r\nёбарь\r\nебать\r\nебло\r\nебнуть\r\nжопа\r\nжополиз\r\nизмудохать\r\nмалофья\r\nманда\r\nмандавошка\r\nмент\r\nмуда\r\nмудило\r\nмудозвон\r\nнаебать\r\nнаебениться\r\nнаебнуться\r\nнахуячиться\r\nневебенный\r\nобнаженный\r\nопесдол\r\nофигеть\r\nохуеть\r\nохуительно\r\nсекс\r\nсиськи\r\nспиздить\r\nсрать\r\nссать\r\nтраxать\r\nфига\r\nхапать\r\nхохол\r\nхрен\r\nхуёво\r\nхуёвый\r\nхуеплет\r\nхуило\r\nхуиня\r\nхуй\r\nхуйнуть\r\narsle\r\nbrutta\r\ndiscofitta\r\nfan\r\nfitta\r\nfittig\r\nhelvete\r\nhård\r\njävlar\r\nknulla\r\nkuk\r\nkuksås\r\nkötthuvud\r\nköttnacke\r\nmoona\r\nmoonade\r\nmoonar\r\nmoonat\r\nmutta\r\nnigger\r\nneger\r\nolla\r\npippa\r\npitt\r\nprutt\r\npök\r\nrunka\r\nröv\r\nrövhål\r\nrövknulla\r\nsatan\r\nskita\r\nskäggbiff\r\nsnedfitta\r\nsnefitta\r\nstake\r\nsubba\r\nsås\r\ntusan\r\namcıkta\r\namcıktan\r\namı\r\namlar\r\nçingene\r\nÇingenede\r\nÇingeneden\r\nÇingeneler\r\nÇingenelerde\r\nÇingenelerden\r\nÇingenelere\r\nÇingeneleri\r\nÇingenelerin\r\nÇingenenin\r\nÇingeneye\r\nÇingeneyi\r\ngöt\r\ngöte\r\ngötler\r\ngötlerde\r\ngötlerden\r\ngötlere\r\ngötleri\r\ngötlerin\r\ngötte\r\ngötten\r\ngötü\r\ngötün\r\ngötveren\r\ngötverende\r\ngötverenden\r\ngötverene\r\ngötvereni\r\ngötverenin\r\ngötverenler\r\ngötverenlerde\r\ngötverenlerden\r\ngötverenlere\r\ngötverenleri\r\ngötverenlerin\r\nkaltağa\r\nkaltağı\r\nkaltağın\r\nkaltak\r\nkaltaklar\r\nkaltaklara\r\nkaltaklarda\r\nkaltaklardan\r\nkaltakları\r\nkaltakların\r\nkaltakta\r\nkaltaktan\r\norospu\r\norospuda\r\norospudan\r\norospular\r\norospulara\r\norospularda\r\norospulardan\r\norospuları\r\norospuların\r\norospunun\r\norospuya\r\norospuyu\r\nsaksocu\r\nsaksocuda\r\nsaksocudan\r\nsaksocular\r\nsaksoculara\r\nsaksocularda\r\nsaksoculardan\r\nsaksocuları\r\nsaksocuların\r\nsaksocunun\r\nsaksocuya\r\nsaksocuyu\r\nsıçmak\r\nsik\r\nsike\r\nsiki\r\nsikin\r\nsikler\r\nsiklerde\r\nsiklerden\r\nsiklere\r\nsikleri\r\nsiklerin\r\nsikmek\r\nsikmemek\r\nsikte\r\nsikten\r\nsiktir\r\ntaşağa\r\ntaşağı\r\ntaşağın\r\ntaşak\r\ntaşaklar\r\ntaşaklara\r\ntaşaklarda\r\ntaşaklardan\r\ntaşakları\r\ntaşakların\r\ntaşakta\r\ntaşaktan\r\nyarağa\r\nyarağı\r\nyarağın\r\nyarak\r\nyaraklar\r\nyaraklara\r\nyaraklarda\r\nyaraklardan\r\nyarakları\r\nyarakların\r\nyarakta\r\nyaraktan', '0', '0', '0', '', '', NULL),
(18, 'default', 'guest_login', 'disable', '0', '0', '0', '', '', NULL),
(19, 'default', 'autodeletemsg', '7200', '0', '0', '0', '', '', NULL),
(20, 'default', 'email_verification', 'disable', '0', '0', '0', '', '', NULL),
(21, 'default', 'smtp_authentication', 'disable', '0', '0', '0', '', '', NULL),
(22, 'default', 'smtp_host', 'ssl://smtp.gmail.com', '0', '0', '0', '', '', NULL),
(23, 'default', 'smtp_user', 'alert.kfpj@gmail.com', '0', '0', '0', '', '', NULL),
(24, 'default', 'smtp_pass', 'j@nuari1993', '0', '0', '0', '', '', NULL),
(25, 'default', 'smtp_protocol', 'smtp', '0', '0', '0', '', '', NULL),
(26, 'default', 'smtp_port', '465', '0', '0', '0', '', '', NULL),
(27, 'default', 'alert', 'gem/ore/grupo/alerts/alert005.mp3', '0', '0', '0', '', '', NULL),
(28, 'default', 'maxmsgsperload', '25', '0', '0', '0', '', '', NULL),
(29, 'default', 'refreshrate', '1500', '0', '0', '0', '', '', NULL),
(30, 'default', 'max_login_attempts', '10', '0', '0', '0', '', '', NULL),
(31, 'default', 'google_analytics_id', '', '0', '0', '0', '', '', NULL),
(32, 'default', 'time_format', '24', '0', '0', '0', '0', '0', NULL),
(33, 'default', 'default_font', 'montserrat', '0', '0', '0', '0', '0', NULL),
(34, 'default', 'tenor_enable', 'enable', '0', '0', '0', '0', '0', NULL),
(35, 'default', 'tenor_api', '', '0', '0', '0', '0', '0', NULL),
(36, 'default', 'tenor_limit', '12', '0', '0', '0', '0', '0', NULL),
(37, 'default', 'aside_results_perload', '12', '0', '0', '0', '0', '0', NULL),
(38, 'default', 'min_msg_length', '1', '0', '0', '0', '0', '0', NULL),
(39, 'default', 'max_msg_length', 'Off', '0', '0', '0', '0', '0', NULL),
(40, 'default', 'add_readmore_after', '300', '0', '0', '0', '0', '0', NULL),
(41, 'default', 'sent_msg_align', 'right', '0', '0', '0', '0', '0', NULL),
(42, 'default', 'received_msg_align', 'left', '0', '0', '0', '0', '0', NULL),
(43, 'default', 'pagespeed_api', '', '0', '0', '0', '0', '0', NULL),
(44, 'default', 'unsplash_enable', 'disable', '0', '0', '0', '0', '0', NULL),
(45, 'default', 'unsplash_load', 'collection/17098/', '0', '0', '0', '0', '0', NULL),
(46, 'default', 'update_list_periodically', 'disable', '0', '0', '0', '0', '0', NULL),
(47, 'default', 'force_https', 'disable', '0', '0', '0', '0', '0', NULL),
(48, 'default', 'pingroup', '52', '0', '0', '0', '0', '0', NULL),
(49, 'default', 'send_btn_visible', 'enable', '0', '0', '0', '0', '0', NULL),
(50, 'default', 'non_latin_usernames', 'enable', '0', '0', '0', '0', '0', NULL),
(51, 'default', 'sending_limit', '15', '0', '0', '0', '0', '0', NULL),
(52, 'default', 'sysmessages', 'enable', '0', '0', '0', '0', '0', NULL),
(53, 'default', 'releaseguestuser', 'disable', '0', '0', '0', '0', '0', NULL),
(54, 'default', 'send_email_notification', '2', '0', '0', '0', '0', '0', NULL),
(55, 'default', 'ascii_smileys', 'enable', '0', '0', '0', '0', '0', NULL),
(56, 'default', 'use_enter_as_send', 'enable', '0', '0', '0', '0', '0', NULL),
(57, 'default', 'random_guest_username', 'disable', '0', '0', '0', '0', '0', NULL),
(58, 'default', 'login_cookie_validity', '30', '0', '0', '0', '0', '0', NULL),
(59, 'default', 'gravatar', 'disable', '0', '0', '0', '0', '0', NULL),
(60, 'default', 'show_sender_name', 'disable', '0', '0', '0', '0', '0', NULL),
(61, 'default', 'request_timeout', '5', '0', '0', '0', '0', '0', NULL),
(62, 'default', 'show_online_tab', 'disable', '0', '0', '0', '0', '0', NULL),
(63, 'default', 'default_skin_mode', 'light_mode', '0', '0', '0', '0', '0', NULL),
(64, 'default', 'mobile_page_transition', '4', '0', '0', '0', '0', '0', NULL),
(65, 'default', 'message_style', 'style2', '0', '0', '0', '0', '0', NULL),
(66, 'default', 'min_username_length', '4', '0', '0', '0', '0', '0', NULL),
(67, 'default', 'max_username_length', '30', '0', '0', '0', '0', '0', NULL),
(68, 'default', 'hide_grouptab', 'disable', '0', '0', '0', '0', '0', NULL),
(69, 'default', 'first_load_guestlogin', 'disable', '0', '0', '0', '0', '0', NULL),
(70, 'default', 'ad_delay', '180', '0', '0', '0', '0', '0', NULL),
(71, 'default', 'join_confirm', 'enable', '0', '0', '0', '0', '0', NULL),
(72, 'default', 'viewgroups_nologin', 'disable', '0', '0', '0', '0', '0', NULL),
(73, 'default', 'grconnect_secretkey', 'N1REfYfj5i', '0', '0', '0', '0', '0', NULL),
(74, 'default', 'dateformat', 'dmy', '0', '0', '0', '0', '0', NULL),
(75, 'default', 'autoplay_radio', 'disable', '0', '0', '0', '0', '0', NULL),
(76, 'default', 'cookie_consent', 'enable', '0', '0', '0', '0', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gr_logs`
--

CREATE TABLE `gr_logs` (
  `id` bigint(20) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v2` bigint(20) DEFAULT NULL,
  `v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xtra` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_logs`
--

INSERT INTO `gr_logs` (`id`, `type`, `v1`, `v2`, `v3`, `xtra`, `tms`) VALUES
(1, 'cache', '1606903987', 0, '0', '0', '2020-07-20 03:32:31'),
(2, 'browsing', '1', NULL, '0', 'group', '2022-02-06 13:27:47'),
(3, 'typing', '43', 1, '0', NULL, '2022-02-06 04:16:25'),
(4, 'browsing', '2', NULL, '43', 'group', '2022-02-06 13:18:07'),
(5, 'browsing', '4', NULL, '13', 'group', '2022-01-31 09:55:35'),
(6, 'typing', '13', 4, '0', NULL, '2022-01-31 09:55:25'),
(7, 'typing', '52', 2, '0', NULL, '2022-02-04 14:07:06'),
(8, 'browsing', '3', NULL, '0', 'group', '2022-02-06 04:30:26'),
(9, 'typing', '43', 3, '0', NULL, '2022-02-05 20:13:53'),
(10, 'browsing', '53', NULL, '43', 'group', '2022-02-06 13:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `gr_mails`
--

CREATE TABLE `gr_mails` (
  `id` bigint(20) NOT NULL,
  `uid` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valz` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent` int(11) NOT NULL DEFAULT '0',
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gr_msgs`
--

CREATE TABLE `gr_msgs` (
  `id` bigint(20) NOT NULL,
  `gid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'msg',
  `rtxt` text COLLATE utf8mb4_unicode_ci,
  `rid` bigint(20) DEFAULT NULL,
  `rmid` bigint(20) DEFAULT NULL,
  `rtype` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'msg',
  `cat` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'group',
  `lnurl` text COLLATE utf8mb4_unicode_ci,
  `lntitle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `lndesc` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `lnimg` text COLLATE utf8mb4_unicode_ci,
  `xtra` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_msgs`
--

INSERT INTO `gr_msgs` (`id`, `gid`, `uid`, `msg`, `type`, `rtxt`, `rid`, `rmid`, `rtype`, `cat`, `lnurl`, `lntitle`, `lndesc`, `lnimg`, `xtra`, `tms`) VALUES
(1, '1-2', 1, 'Tes', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-30 09:39:52'),
(2, '1-2', 1, 'tes', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-30 09:40:00'),
(3, '1-2', 1, 'tes', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-30 09:40:04'),
(4, '1-2', 1, 'apa', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-30 09:40:07'),
(10, '1-2', 1, 'tes', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-30 22:45:06'),
(28, '1-4', 1, 'Tes Azizah', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-31 10:06:58'),
(29, '1-2', 1, 'Oi sep', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-31 10:08:34'),
(30, '1-2', 1, ':slight_smile:', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-01-31 10:10:36'),
(51, '1-2', 1, 'OI', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-02 07:46:23'),
(52, '1-2', 1, 'sakit apa anak bini ?', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-02 07:46:30'),
(53, '1-2', 1, ':innocent:', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-02 07:46:47'),
(54, '1-2', 1, 'http://103.111.82.210:1101/spektachat/gem/ore/grupo/stickers/Simpsons/sticker-uqaykx.png|512|512', 'stickers', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', 'http://103.111.82.210:1101/spektachat/gem/ore/grupo/stickers/Simpsons/sticker-uqaykx.png', '2022-02-02 07:47:15'),
(61, '1-2', 1, 'dfsdfsd', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-02 10:15:21'),
(62, '1-2', 1, 'sfzdgsd', 'qrcode', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-02 10:15:28'),
(96, '1-2', 1, 'aah', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-02 22:21:05'),
(97, '1-2', 2, 'kenapa man ?', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-02 22:21:27'),
(130, '43', 2, 'Nais', 'msg', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', '0', '2022-02-04 14:06:54'),
(137, '43', 1, 'Ges', 'msg', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', '0', '2022-02-04 16:50:26'),
(139, '43', 1, 'utYAw6Fli-gr-Auslogics_Disk_Defrag_Pro_10.1.0.0.kuyhAa.7z', 'file', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', 'Auslogics_Disk_Defrag_Pro_10.1.0.0.kuyhAa.7z', '2022-02-04 17:09:11'),
(140, '1-2', 1, 'Sep', 'msg', '0', 0, 0, 'msg', 'user', '', NULL, NULL, '', '0', '2022-02-04 17:20:00'),
(141, '43', 3, 'joined_group', 'system', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', '0', '2022-02-04 17:24:43'),
(142, '43', 3, 'https://www.youtube.com/watch?v=tRPyWAqJ6Bc', 'msg', '0', 0, 0, 'msg', 'group', 'https://www.youtube.com/watch?v=tRPyWAqJ6Bc', 'DIY Toad mod Superheroes Hulk, Spider man, Captain America with clay 🧟 Polymer Clay Tutorial - Yo', 'DIY Toad mod Superheroes Hulk, Spider man, Captain America with clay 🧟 Polymer Clay Tutorial-----', 'https://i.ytimg.com/vi/tRPyWAqJ6Bc/maxresdefault.jpg', '0', '2022-02-04 17:32:09'),
(143, '43', 1, '142', 'like', NULL, NULL, NULL, 'msg', 'group', NULL, '0', '0', NULL, '3', NULL),
(144, '43', 1, '130', 'like', NULL, NULL, NULL, 'msg', 'group', NULL, '0', '0', NULL, '2', NULL),
(145, '43', 1, '103.111.82.210:1101', 'qrcode', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', '0', '2022-02-04 17:40:49'),
(146, '43', 1, 'http://103.111.82.210:1101/spektachat/gem/ore/grupo/stickers/Famous/897f8008-1de3-48df-9bed-416180cc4681.png|512|512', 'stickers', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', 'http://103.111.82.210:1101/spektachat/gem/ore/grupo/stickers/Famous/897f8008-1de3-48df-9bed-416180cc4681.png', '2022-02-04 17:42:53'),
(148, '43', 3, 'Ting', 'msg', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', '0', '2022-02-05 20:13:54'),
(149, '43', 1, 'Apa lau', 'msg', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', '0', '2022-02-06 04:16:28'),
(150, '43', 1, '148', 'like', NULL, NULL, NULL, 'msg', 'group', NULL, '0', '0', NULL, '3', NULL),
(253, '43', 53, 'joined_group', 'system', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', '0', '2022-02-06 04:51:14'),
(254, '43', 2, 'WkdPTY0QO-gr-gr_users.sql', 'file', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', 'gr_users.sql', '2022-02-06 13:18:07'),
(255, '43', 53, 'nwennbFMu-gr-gr_users_(1).sql', 'file', '0', 0, 0, 'msg', 'group', '', NULL, NULL, '', 'gr_users_(1).sql', '2022-02-06 13:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `gr_options`
--

CREATE TABLE `gr_options` (
  `id` bigint(20) NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `v4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `v5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `v6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `v7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_options`
--

INSERT INTO `gr_options` (`id`, `type`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`, `tms`) VALUES
(1, 'profile', 'name', 'ARMAN SEPTIAN', '1', 'superuser', '#007761', '', '', '2020-11-15 10:40:17'),
(4, 'usrole', '421aa90e079fa326b6494f812ad13e79', '9gfQKxvoHd', 'rzDFT', '0', '0', '0', '0', NULL),
(5, 'profile', 'status', 'offline', '1', '0', '0', '0', '0', '2022-02-06 13:27:47'),
(6, 'profile', 'autotmz', 'America/New_York', '1', '0', '0', '0', '0', '2022-02-06 13:27:38'),
(8, 'profile', 'name', 'ASEP DIKI ARIYANTO', '2', 'asep.diki', '#193C87', '0', '0', '2022-01-30 09:39:13'),
(9, 'profile', 'status', 'online', '2', '0', '0', '0', '0', '2022-02-06 13:22:58'),
(10, 'profile', 'autotmz', 'America/New_York', '2', '0', '0', '0', '0', '2022-02-06 13:17:56'),
(11, 'lview', '1-2', '1', '140', '0', '0', '0', '0', '2022-02-06 04:51:48'),
(12, 'lview', '1-2', '2', '140', '0', '0', '0', '0', '2022-02-06 13:16:32'),
(25, 'profile', 'alert', 'gem/ore/grupo/alerts/alert005.mp3', '2', '0', '0', '0', '0', '2022-02-06 04:28:59'),
(26, 'profile', 'skinmode', 'dark', '1', '0', '0', '0', '0', '2022-02-06 04:30:39'),
(29, 'profile', 'name', 'FIKRI AGIL ROYHAM MURTHADO', '3', 'fikri.agil', '#BC6A04', '0', '0', '2022-01-31 05:38:55'),
(31, 'clearchat', '2', '1', '62', '0', '0', '0', '0', '2022-02-02 11:59:39'),
(32, 'profile', 'status', 'offline', '3', '0', '0', '0', '0', '2022-02-06 04:30:26'),
(33, 'profile', 'autotmz', 'Asia/Jakarta', '3', '0', '0', '0', '0', '2022-02-06 04:29:44'),
(34, 'profile', 'alert', 'gem/ore/grupo/alerts/alert005.mp3', '3', '0', '0', '0', '0', '2022-02-06 04:29:43'),
(35, 'profile', 'name', 'azizah', '4', 'azizah', '#6A96CE', '0', '0', '2022-01-31 09:54:57'),
(37, 'profile', 'status', 'offline', '4', '0', '0', '0', '0', '2022-01-31 18:08:37'),
(38, 'profile', 'autotmz', 'America/New_York', '4', '0', '0', '0', '0', '2022-01-31 09:54:59'),
(40, 'profile', 'skinmode', 'light', '2', '0', '0', '0', '0', '2022-01-31 11:56:39'),
(41, 'lview', '1-4', '1', '76', '0', '0', '0', '0', '2022-02-02 11:59:00'),
(42, 'lview', '1-4', '4', '0', '0', '0', '0', '0', '2022-01-31 10:06:58'),
(43, 'group', 'H&amp;amp;N (Distorcy Team)', '172f58ab41c290e7da29bb93b514c834', '0', 'rtqFWn', '0', 'unleavable', '0', '2022-02-06 13:25:58'),
(44, 'groupslug', '43', 'hnn', '0', '0', '0', '0', '0', '2022-01-31 11:53:17'),
(45, 'gruser', '43', '1', '2', '0', '0', '0', '0', '2022-01-31 11:53:17'),
(46, 'lview', '43', '1', '255', '0', '0', '0', '0', '2022-02-06 13:27:39'),
(47, 'profile', 'alert', 'gem/ore/grupo/alerts/alert005.mp3', '1', '0', '0', '0', '0', '2022-02-06 04:22:52'),
(48, 'gruser', '43', '2', '0', '0', '0', '0', '0', '2022-02-01 00:30:25'),
(49, 'lview', '43', '2', '255', '0', '0', '0', '0', '2022-02-06 13:25:59'),
(50, 'clearchat', '1', '2', '62', '0', '0', '0', '0', '2022-02-02 11:58:46'),
(51, 'clearchat', '1', '4', '76', '0', '0', '0', '0', '2022-02-02 11:59:03'),
(52, 'group', 'KFUPJ', '282e9777d3b649e4f60c5e3f941b42b0', '0', 'VMoReo', '0', 'unleavable', '0', '2022-02-06 04:50:39'),
(53, 'groupslug', '52', 'kfupj', '0', '0', '0', '0', '0', '2022-02-02 21:31:05'),
(54, 'gruser', '52', '1', '2', '0', '0', '0', '0', '2022-02-02 21:31:05'),
(55, 'lview', '52', '1', NULL, '0', '0', '0', '0', '2022-02-06 13:11:56'),
(56, 'gruser', '52', '2', '0', '0', '0', '0', '0', '2022-02-02 22:12:23'),
(57, 'lview', '52', '2', '134', '0', '0', '0', '0', '2022-02-04 14:12:49'),
(58, 'gruser', '52', '3', '0', '0', '0', '0', '0', '2022-02-04 14:18:13'),
(59, 'lview', '52', '3', '183', '0', '0', '0', '0', '2022-02-06 04:30:13'),
(60, 'gruser', '43', '3', '0', '0', '0', '0', '0', '2022-02-04 17:24:43'),
(61, 'lview', '43', '3', '150', '0', '0', '0', '0', '2022-02-06 04:30:12'),
(62, 'profile', 'skinmode', 'dark', '3', '0', '0', '0', '0', NULL),
(63, 'profile', 'name', 'AFIFI HILMIYANTI', '5', 'afifihilmiyanti89@gmail.com', '#A10BA8', '0', '0', '2022-02-06 04:21:57'),
(64, 'gruser', '52', '5', '0', '0', '0', '0', '0', '2022-02-06 04:21:57'),
(65, 'profile', 'name', 'AGUNG GUSTIMAN', '6', 'agung.gustiman@kimiafarma.co.id', '#09BF19', '0', '0', '2022-02-06 04:23:49'),
(66, 'gruser', '52', '6', '0', '0', '0', '0', '0', '2022-02-06 04:23:50'),
(67, 'profile', 'name', 'AHMAD SARMALI', '7', 'ahmad.sarmali1003@kimiafarma.co.id', '#79D4C6', '0', '0', '2022-02-06 04:24:59'),
(68, 'gruser', '52', '7', '0', '0', '0', '0', '0', '2022-02-06 04:24:59'),
(69, 'profile', 'name', 'ANINDYA HANA IRADHATI', '8', 'anindya.hana@kimiafarma.co.id', '#7E0027', '0', '0', '2022-02-06 04:25:36'),
(70, 'gruser', '52', '8', '0', '0', '0', '0', '0', '2022-02-06 04:25:36'),
(71, 'profile', 'name', 'ANITA ELSYA UTARI', '9', 'anita.eu@kimiafarma.co.id', '#E0AF88', '0', '0', '2022-02-06 04:25:55'),
(72, 'gruser', '52', '9', '0', '0', '0', '0', '0', '2022-02-06 04:25:55'),
(73, 'profile', 'name', 'ARI GUNAWAN', '10', 'ari.gunawan@kimiafarma.co.id', '#784186', '0', '0', '2022-02-06 04:26:15'),
(74, 'gruser', '52', '10', '0', '0', '0', '0', '0', '2022-02-06 04:26:15'),
(75, 'profile', 'name', 'ASTRID PERMATASARI ISNAN', '11', 'astrid.permatasari@kimiafarma.co.id', '#AF263B', '0', '0', '2022-02-06 04:26:35'),
(76, 'gruser', '52', '11', '0', '0', '0', '0', '0', '2022-02-06 04:26:35'),
(77, 'profile', 'name', 'AWANDA MUSTIKA DEWI', '12', 'wanda.angel123@gmail.com', '#D99865', '0', '0', '2022-02-06 04:26:57'),
(78, 'gruser', '52', '12', '0', '0', '0', '0', '0', '2022-02-06 04:26:57'),
(79, 'profile', 'name', 'DENA FANANDRA ALSAKINA', '13', 'denafand@gmail.com', '#D10AA9', '0', '0', '2022-02-06 04:27:18'),
(80, 'gruser', '52', '13', '0', '0', '0', '0', '0', '2022-02-06 04:27:18'),
(81, 'profile', 'name', 'DESTRIA RAHMADINI', '14', 'destriarahmadini@gmail.com', '#101165', '0', '0', '2022-02-06 04:27:40'),
(82, 'gruser', '52', '14', '0', '0', '0', '0', '0', '2022-02-06 04:27:40'),
(83, 'profile', 'name', 'DEVISCAR TITO', '15', 'deviscar.tito@kimiafarma.co.id', '#567F1A', '0', '0', '2022-02-06 04:31:00'),
(84, 'gruser', '52', '15', '0', '0', '0', '0', '0', '2022-02-06 04:31:00'),
(85, 'profile', 'name', 'DIMAS PRASETYA KUSUMA', '16', 'dimas.p@kimiafarma.co.id', '#8253EE', '0', '0', '2022-02-06 04:31:22'),
(86, 'gruser', '52', '16', '0', '0', '0', '0', '0', '2022-02-06 04:31:22'),
(87, 'profile', 'name', 'DWI OKTARINI', '17', 'oktarini9052@gmail.com', '#34D054', '0', '0', '2022-02-06 04:31:47'),
(88, 'gruser', '52', '17', '0', '0', '0', '0', '0', '2022-02-06 04:31:47'),
(89, 'profile', 'name', 'EVENDY SIREGAR', '18', 'siregar.evendy@kimiafarma.co.id', '#60EF97', '0', '0', '2022-02-06 04:32:07'),
(90, 'gruser', '52', '18', '0', '0', '0', '0', '0', '2022-02-06 04:32:07'),
(91, 'profile', 'name', 'FAHRIADI', '19', 'fahririsi2873@gmail.com', '#0A4F1C', '0', '0', '2022-02-06 04:32:26'),
(92, 'gruser', '52', '19', '0', '0', '0', '0', '0', '2022-02-06 04:32:26'),
(93, 'profile', 'name', 'GETA SETYOWATI', '20', 'geta.setyowati@kimiafarma.co.id', '#5EFB93', '0', '0', '2022-02-06 04:32:44'),
(94, 'gruser', '52', '20', '0', '0', '0', '0', '0', '2022-02-06 04:32:44'),
(95, 'profile', 'name', 'GIAN SYAHFITRIA', '21', 'gian.syahfitria@kimiafarma.co.id', '#D83F30', '0', '0', '2022-02-06 04:33:03'),
(96, 'gruser', '52', '21', '0', '0', '0', '0', '0', '2022-02-06 04:33:03'),
(97, 'profile', 'name', 'GITA MAHDI TIARA', '22', 'gita.mt@kimiafarma.co.id', '#4FAA3A', '0', '0', '2022-02-06 04:33:22'),
(98, 'gruser', '52', '22', '0', '0', '0', '0', '0', '2022-02-06 04:33:22'),
(99, 'profile', 'name', 'IRVAN BASTIAN', '23', 'irvan.bastian@kimiafarma.co.id', '#BA538F', '0', '0', '2022-02-06 04:33:43'),
(100, 'gruser', '52', '23', '0', '0', '0', '0', '0', '2022-02-06 04:33:43'),
(101, 'profile', 'name', 'ISKANDAR', '24', 'iskandar@kimiafarma.co.id', '#28DF03', '0', '0', '2022-02-06 04:34:19'),
(102, 'gruser', '52', '24', '0', '0', '0', '0', '0', '2022-02-06 04:34:19'),
(103, 'profile', 'name', 'IVAN SANTOSO', '25', 'ivan.santosokimiafarma.co.id', '#A682C5', '0', '0', '2022-02-06 04:34:35'),
(104, 'gruser', '52', '25', '0', '0', '0', '0', '0', '2022-02-06 04:34:35'),
(105, 'profile', 'alert', 'gem/ore/grupo/alerts/alert005.mp3', '25', '0', '0', '0', '0', '2022-02-06 04:34:54'),
(106, 'profile', 'name', 'KATRIN DAYATRI', '26', 'katrin.dayatri20@gmail.com', '#09A5A9', '0', '0', '2022-02-06 04:35:33'),
(107, 'gruser', '52', '26', '0', '0', '0', '0', '0', '2022-02-06 04:35:33'),
(108, 'profile', 'name', 'KRESMA OKY KURNIAWAN', '27', 'kresma.oky@kimiafarma.co.id', '#F3F808', '0', '0', '2022-02-06 04:35:51'),
(109, 'gruser', '52', '27', '0', '0', '0', '0', '0', '2022-02-06 04:35:51'),
(110, 'profile', 'name', 'KURNIAWATI HIDAYAH', '28', 'kurniawati.hidayah@gmail.com', '#F93907', '0', '0', '2022-02-06 04:36:59'),
(111, 'gruser', '52', '28', '0', '0', '0', '0', '0', '2022-02-06 04:36:59'),
(112, 'profile', 'name', 'LUTFI RATNA WAHYUNINGTYAS', '29', 'lutfiratnaaw@gmail.com', '#A0C713', '0', '0', '2022-02-06 04:37:14'),
(113, 'gruser', '52', '29', '0', '0', '0', '0', '0', '2022-02-06 04:37:14'),
(114, 'profile', 'name', 'MUHAMAD ISAPUDIN JANUAR', '30', 'isapudin.januar@kimiafarma.co.id', '#30C4EC', '0', '0', '2022-02-06 04:37:30'),
(115, 'gruser', '52', '30', '0', '0', '0', '0', '0', '2022-02-06 04:37:30'),
(116, 'profile', 'name', 'MUHAMAD ZEFRI', '31', 'muhamad.zefri@kimiafarma.co.id', '#D87DC8', '0', '0', '2022-02-06 04:37:45'),
(117, 'gruser', '52', '31', '0', '0', '0', '0', '0', '2022-02-06 04:37:45'),
(118, 'profile', 'name', 'MUJI SULIATINI', '32', 'muji.s@kimiafarma.co.id', '#839A99', '0', '0', '2022-02-06 04:38:03'),
(119, 'gruser', '52', '32', '0', '0', '0', '0', '0', '2022-02-06 04:38:03'),
(120, 'profile', 'name', 'MUSLIM', '33', 'muslim.mz@kimiafarma.co.id', '#49A958', '0', '0', '2022-02-06 04:38:18'),
(121, 'gruser', '52', '33', '0', '0', '0', '0', '0', '2022-02-06 04:38:18'),
(122, 'profile', 'name', 'NURDIN SUGANDI', '34', 'sarananurdin@gmail.com', '#C6A17E', '0', '0', '2022-02-06 04:38:35'),
(123, 'gruser', '52', '34', '0', '0', '0', '0', '0', '2022-02-06 04:38:35'),
(124, 'profile', 'name', 'NURLELI', '35', 'nurleli@kimiafarma.co.id', '#49626C', '0', '0', '2022-02-06 04:38:51'),
(125, 'gruser', '52', '35', '0', '0', '0', '0', '0', '2022-02-06 04:38:51'),
(126, 'profile', 'name', 'NURUL IKHSANI LUAYA', '36', 'nurul.ikhsani@kimiafarma.co.id', '#550E9F', '0', '0', '2022-02-06 04:39:07'),
(127, 'gruser', '52', '36', '0', '0', '0', '0', '0', '2022-02-06 04:39:07'),
(128, 'profile', 'name', 'NURYESI', '37', 'nuryesi@kimiafarma.co.id', '#56BCA0', '0', '0', '2022-02-06 04:39:22'),
(129, 'gruser', '52', '37', '0', '0', '0', '0', '0', '2022-02-06 04:39:22'),
(130, 'profile', 'name', 'RIA HASANAH PUTRI', '38', 'ria.hasanah.putri@kimiafarma.co.id', '#583323', '0', '0', '2022-02-06 04:39:37'),
(131, 'gruser', '52', '38', '0', '0', '0', '0', '0', '2022-02-06 04:39:37'),
(132, 'profile', 'name', 'RIMA PRIMAGDA', '39', 'rima.primagda@kimiafarma.co.id', '#9D394E', '0', '0', '2022-02-06 04:39:50'),
(133, 'gruser', '52', '39', '0', '0', '0', '0', '0', '2022-02-06 04:39:50'),
(134, 'profile', 'name', 'RONI SOFYAR', '40', 'roni.sofyar@kimiafarma.co.id', '#083EC5', '0', '0', '2022-02-06 04:40:04'),
(135, 'gruser', '52', '40', '0', '0', '0', '0', '0', '2022-02-06 04:40:04'),
(136, 'profile', 'name', 'SANDY ARISKA ALI FANDI', '41', 'sandy.ariska@kimiafarma.co.id', '#C645D8', '0', '0', '2022-02-06 04:40:19'),
(137, 'gruser', '52', '41', '0', '0', '0', '0', '0', '2022-02-06 04:40:19'),
(138, 'profile', 'name', 'SITI ASMAWIYAH', '42', 'siti_as@kimiafarma.co.id', '#DE297B', '0', '0', '2022-02-06 04:40:34'),
(139, 'gruser', '52', '42', '0', '0', '0', '0', '0', '2022-02-06 04:40:34'),
(140, 'profile', 'name', 'SRI SUSILOWATI', '43', 'usilowatis@gmail.com', '#821084', '0', '0', '2022-02-06 04:40:48'),
(141, 'gruser', '52', '43', '0', '0', '0', '0', '0', '2022-02-06 04:40:49'),
(142, 'profile', 'name', 'SUDARMADI', '44', 'sudarmadi@kimiafarma.co.id', '#6FCCDD', '0', '0', '2022-02-06 04:41:03'),
(143, 'gruser', '52', '44', '0', '0', '0', '0', '0', '2022-02-06 04:41:03'),
(144, 'profile', 'name', 'THERESIA NINDYA PURBORINI', '45', 'theresia.nindya@kimiafarma.co.id', '#347B51', '0', '0', '2022-02-06 04:42:03'),
(145, 'gruser', '52', '45', '0', '0', '0', '0', '0', '2022-02-06 04:42:03'),
(146, 'profile', 'name', 'UDIN MUJAHIDIN', '46', 'mujahidin@kimiafarma.co.id', '#4E5ACC', '0', '0', '2022-02-06 04:42:19'),
(147, 'gruser', '52', '46', '0', '0', '0', '0', '0', '2022-02-06 04:42:19'),
(148, 'profile', 'name', 'WAHYUDIN', '47', 'wahyudin@kimiafarma.co.id', '#95DF66', '0', '0', '2022-02-06 04:42:36'),
(149, 'gruser', '52', '47', '0', '0', '0', '0', '0', '2022-02-06 04:42:36'),
(150, 'profile', 'name', 'WIEDITHA YUDHA RAMADHAN', '48', 'wieditha.yudha@kimiafarma.co.id', '#7D0EC9', '0', '0', '2022-02-06 04:42:51'),
(151, 'gruser', '52', '48', '0', '0', '0', '0', '0', '2022-02-06 04:42:51'),
(152, 'profile', 'name', 'WILDAN ANDIANA', '49', 'wildan.andiana@kimiafarma.co.id', '#5BC4A7', '0', '0', '2022-02-06 04:43:14'),
(153, 'gruser', '52', '49', '0', '0', '0', '0', '0', '2022-02-06 04:43:14'),
(154, 'profile', 'name', 'YUSTIKA SYAMSU', '50', 'yustika.syamsu@kimiafarma.co.id', '#04836E', '0', '0', '2022-02-06 04:43:29'),
(155, 'gruser', '52', '50', '0', '0', '0', '0', '0', '2022-02-06 04:43:29'),
(156, 'profile', 'name', 'BRAM HIK ANUGRAHA', '51', 'bramhik@kimiafarma.co.id', '#F0CEDD', '0', '0', '2022-02-06 04:45:09'),
(157, 'gruser', '52', '51', '0', '0', '0', '0', '0', '2022-02-06 04:45:09'),
(158, 'profile', 'name', 'EDFANO STIAWAN ARMAY', '52', 'armay.edfano@kimiafarma.co.id', '#6673BF', '0', '0', '2022-02-06 04:45:36'),
(159, 'gruser', '52', '52', '0', '0', '0', '0', '0', '2022-02-06 04:45:36'),
(160, 'profile', 'name', 'FAJAR FIRMANSYAH', '53', 'fajar.firmansyah', '#4BC2AA', '0', '0', '2022-02-06 04:45:59'),
(161, 'gruser', '52', '53', '0', '0', '0', '0', '0', '2022-02-06 04:45:59'),
(162, 'profile', 'name', 'FIKRIANTO', '54', 'fikrianto@kimiafarma.co.id', '#E54CFB', '0', '0', '2022-02-06 04:46:18'),
(163, 'gruser', '52', '54', '0', '0', '0', '0', '0', '2022-02-06 04:46:18'),
(164, 'profile', 'name', 'IRVING WIDYAWAN', '55', 'irving@kimiafarma.co.id', '#18127E', '0', '0', '2022-02-06 04:46:34'),
(165, 'gruser', '52', '55', '0', '0', '0', '0', '0', '2022-02-06 04:46:34'),
(166, 'profile', 'name', 'LARASTUTI JAMI MUKTI SABATANI', '56', 'larastuti@kimiafarma.co.id', '#EEED55', '0', '0', '2022-02-06 04:46:49'),
(167, 'gruser', '52', '56', '0', '0', '0', '0', '0', '2022-02-06 04:46:49'),
(168, 'profile', 'name', 'MUKHARIJ NUR ALAM', '57', 'nur.alam@kimiafarma.co.id', '#3F1FC5', '0', '0', '2022-02-06 04:47:04'),
(169, 'gruser', '52', '57', '0', '0', '0', '0', '0', '2022-02-06 04:47:04'),
(170, 'profile', 'name', 'SRI ASTUTI', '58', 'sri.astuti@kimiafarma.co.id', '#50CA2B', '0', '0', '2022-02-06 04:47:17'),
(171, 'gruser', '52', '58', '0', '0', '0', '0', '0', '2022-02-06 04:47:17'),
(172, 'profile', 'name', 'TIN RAHAYU SRI MULYAWATI', '59', 'tien@kimiafarma.co.id', '#3BCA0C', '0', '0', '2022-02-06 04:47:30'),
(173, 'gruser', '52', '59', '0', '0', '0', '0', '0', '2022-02-06 04:47:30'),
(174, 'profile', 'name', 'TITIS DANASTRI', '60', 'titis.danastri@kimiafarma.co.id', '#C04912', '0', '0', '2022-02-06 04:47:48'),
(175, 'gruser', '52', '60', '0', '0', '0', '0', '0', '2022-02-06 04:47:48'),
(176, 'profile', 'name', 'YANTI HARDIYANTI', '61', 'yanti.hardiyanti@kimiafarma.co.id', '#63C71B', '0', '0', '2022-02-06 04:48:02'),
(177, 'gruser', '52', '61', '0', '0', '0', '0', '0', '2022-02-06 04:48:02'),
(178, 'profile', 'name', 'ANGGA SAENAGRI', '62', 'angga.saenagri@kimiafarma.co.id', '#948ED9', '0', '0', '2022-02-06 04:48:41'),
(179, 'gruser', '52', '62', '0', '0', '0', '0', '0', '2022-02-06 04:48:41'),
(180, 'profile', 'name', 'YOGI SUGIANTO', '63', 'yogi.sugianto@kimiafarma.co.id', '#213CEE', '0', '0', '2022-02-06 04:49:43'),
(181, 'gruser', '52', '63', '0', '0', '0', '0', '0', '2022-02-06 04:49:43'),
(182, 'profile', 'name', 'YURISTA GILANG IKHTIARSYAH', '64', 'yurista.gilang@gmail.com', '#50F46F', '0', '0', '2022-02-06 04:50:38'),
(183, 'gruser', '52', '64', '0', '0', '0', '0', '0', '2022-02-06 04:50:38'),
(184, 'gruser', '43', '53', '0', '0', '0', '0', '0', '2022-02-06 04:51:14'),
(185, 'lview', '43', '53', '254', '0', '0', '0', '0', '2022-02-06 13:18:09'),
(186, 'profile', 'alert', 'gem/ore/grupo/alerts/alert005.mp3', '53', '0', '0', '0', '0', '2022-02-06 13:13:24'),
(187, 'profile', 'status', 'online', '53', '0', '0', '0', '0', '2022-02-06 13:24:50'),
(188, 'profile', 'autotmz', 'Asia/Jakarta', '53', '0', '0', '0', '0', '2022-02-06 13:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `gr_permissions`
--

CREATE TABLE `gr_permissions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privatemsg` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autodel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `autounjoin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `xtras` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_permissions`
--

INSERT INTO `gr_permissions` (`id`, `name`, `groups`, `features`, `files`, `users`, `languages`, `sys`, `roles`, `fields`, `privatemsg`, `autodel`, `autounjoin`, `xtras`) VALUES
(1, 'Unverified', '', '9', '', '', '', '', '', '', '', 'Off', 'Off', '{\"maxgroup\":\"100\",\"maxfileuploadsize\":\"10\"}'),
(2, 'Site Administrator', '1,13,14,15,2,3,4,5,12,6,11,8,9,10,7,16,18,17', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', '1,2,3,4,5', '1,2,3,4,7,9,5,6,8,10,11,12', '1,2,3,4', '1,2,3,4,5,6,7,8', '1,2,3', '1,2,3,4', '1,2,3,4', 'Off', 'Off', '{\"maxgroup\":\"999999\",\"maxfileuploadsize\":\"100000\"}'),
(3, 'Verified', '4,5,6,8,9,10,16,18', '1,3,4,5,6,7,8,9,10,11,12,15,17', '1,2,3,4,5', '5,10', '', '', '', '', '1,2,3,4', 'Off', 'Off', '{\"maxgroup\":\"100\",\"maxfileuploadsize\":\"1000\"}'),
(4, 'Banned', '', '', '', '', '', '', '', '', '', 'Off', 'Off', '{\"maxgroup\":0,\"maxfileuploadsize\":1000}'),
(5, 'Guest', '1,13,14,15,2,3,4,5,6,8,9,10,16,18,17', '1,2,3,4,5,6,7,8,10,11,12,15,17', '1,2,3,4,5', '5,10', '', '', '', '', '1,2,3,4', 'Off', 'Off', '{\"maxgroup\":\"100\",\"maxfileuploadsize\":\"10\"}');

-- --------------------------------------------------------

--
-- Table structure for table `gr_phrases`
--

CREATE TABLE `gr_phrases` (
  `id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'phrase',
  `short` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full` text COLLATE utf8mb4_unicode_ci,
  `lid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_phrases`
--

INSERT INTO `gr_phrases` (`id`, `type`, `short`, `full`, `lid`) VALUES
(1, 'lang', 'English', 'ltr', 0),
(2, 'phrase', 'edit_profile', 'Edit Profile', 1),
(3, 'phrase', 'users', 'Users', 1),
(4, 'phrase', 'roles', 'Site Roles', 1),
(5, 'phrase', 'languages', 'Languages', 1),
(6, 'phrase', 'appearance', 'Appearance', 1),
(7, 'phrase', 'header_footer', 'Header/Footer', 1),
(8, 'phrase', 'settings', 'Settings', 1),
(9, 'phrase', 'shortcodes', 'Shortcodes', 1),
(10, 'phrase', 'zero_users', 'Users Found', 1),
(11, 'phrase', 'zero_roles', 'Roles Found', 1),
(12, 'phrase', 'zero_languages', 'Languages Found', 1),
(13, 'phrase', 'zero_shortcodes', 'Shortcodes Found', 1),
(14, 'phrase', 'upload_file', 'Upload File', 1),
(15, 'phrase', 'create_group', 'Create Group', 1),
(16, 'phrase', 'create_user', 'Create User', 1),
(17, 'phrase', 'create_role', 'Create Role', 1),
(18, 'phrase', 'add_language', 'Add Language', 1),
(19, 'phrase', 'create', 'Create', 1),
(20, 'phrase', 'edit', 'Edit', 1),
(21, 'phrase', 'update', 'Update', 1),
(22, 'phrase', 'add', 'Add', 1),
(23, 'phrase', 'delete', 'Delete', 1),
(24, 'phrase', 'report', 'Report', 1),
(25, 'phrase', 'reply', 'Reply', 1),
(26, 'phrase', 'login', 'Login', 1),
(27, 'phrase', 'share', 'Share', 1),
(28, 'phrase', 'zip', 'Save', 1),
(29, 'phrase', 'download', 'Download', 1),
(30, 'phrase', 'view', 'View', 1),
(31, 'phrase', 'search_here', 'Search here', 1),
(32, 'phrase', 'zero_groups', 'Groups Found', 1),
(33, 'phrase', 'zero_online', 'No one is online', 1),
(34, 'phrase', 'zero_files', 'Empty File manager', 1),
(35, 'phrase', 'edit_group', 'Edit Group', 1),
(36, 'phrase', 'export_chat', 'Export Chat', 1),
(37, 'phrase', 'leave_group', 'Leave Group', 1),
(38, 'phrase', 'invite', 'Invite', 1),
(39, 'phrase', 'delete_group', 'Delete Group', 1),
(40, 'phrase', 'no_group_selected', 'Empty Inbox', 1),
(41, 'phrase', 'logout', 'Logout', 1),
(42, 'phrase', 'go_offline', 'Go Offline', 1),
(43, 'phrase', 'go_online', 'Go Online', 1),
(44, 'phrase', 'online', 'Online', 1),
(45, 'phrase', 'offline', 'Offline', 1),
(46, 'phrase', 'idle', 'Idle', 1),
(47, 'phrase', 'search_messages', 'Search messages', 1),
(48, 'phrase', 'alerts', 'Alerts', 1),
(49, 'phrase', 'crew', 'Members', 1),
(50, 'phrase', 'zero_crew', 'Members', 1),
(51, 'phrase', 'cancel', 'Cancel', 1),
(52, 'phrase', 'files', 'Files', 1),
(53, 'phrase', 'zero_alerts', 'Alerts', 1),
(54, 'phrase', 'groups', 'Groups', 1),
(55, 'phrase', 'deny_default_role', 'Permission Denied : Default Roles', 1),
(56, 'phrase', 'deleted', 'Deleted', 1),
(57, 'phrase', 'deny_system_msg', 'Permission Denied : System Message', 1),
(58, 'phrase', 'deny_file_deletion', 'Permission Denied : Allotted time Expired', 1),
(59, 'phrase', 'invalid_group_password', 'Invalid Group Password', 1),
(60, 'phrase', 'already_exists', 'Already Exists', 1),
(61, 'phrase', 'invalid_value', 'Invalid Input or Field Empty', 1),
(62, 'phrase', 'created', 'Created', 1),
(63, 'phrase', 'updated', 'Updated', 1),
(64, 'phrase', 'username_exists', 'Username Already Taken', 1),
(65, 'phrase', 'email_exists', 'Email Already Exists', 1),
(66, 'phrase', 'files_uploaded', 'Files Uploaded', 1),
(67, 'phrase', 'error_uploading', 'Error Uploading Files', 1),
(68, 'phrase', 'file_expired', 'File Expired', 1),
(69, 'phrase', 'select_group', 'Select a Group or Chat', 1),
(70, 'phrase', 'group_name', 'Group Name', 1),
(71, 'phrase', 'username', 'Username', 1),
(72, 'phrase', 'password', 'Password', 1),
(73, 'phrase', 'email_address', 'Email Address', 1),
(74, 'phrase', 'icon', 'Image', 1),
(75, 'phrase', 'language', 'Language', 1),
(76, 'phrase', 'role_name', 'Role Name', 1),
(77, 'phrase', 'system_variables', 'System Variables', 1),
(78, 'phrase', 'confirm_delete', 'Are you sure you Want to Delete?', 1),
(79, 'phrase', 'full_name', 'Full Name', 1),
(80, 'phrase', 'mail_login_info', 'Mail Login Info', 1),
(81, 'phrase', 'confirm_join', 'Do You Want to Join?', 1),
(82, 'phrase', 'confirm_leave', 'Do You Want to Leave?', 1),
(83, 'phrase', 'role', 'Role', 1),
(84, 'phrase', 'confirm_export', 'Do You Want to Export?', 1),
(85, 'phrase', 'email_username', 'Email/Username', 1),
(86, 'phrase', 'separate_commas', 'Separate with commas', 1),
(87, 'phrase', 'timezone', 'TimeZone', 1),
(88, 'phrase', 'custom_avatar', 'Custom Avatar', 1),
(89, 'phrase', 'custom_bg', 'Custom Bg', 1),
(90, 'phrase', 'options', 'options', 1),
(91, 'phrase', 'switch', 'Switch', 1),
(92, 'phrase', 'ban', 'Ban', 1),
(93, 'phrase', 'msgs', 'Msgs', 1),
(94, 'phrase', 'new', 'New', 1),
(95, 'phrase', 'members', 'Members', 1),
(96, 'phrase', 'join_group', 'Join Group', 1),
(97, 'phrase', 'join', 'Join', 1),
(98, 'phrase', 'member', 'Member', 1),
(99, 'phrase', 'admin', 'Admin', 1),
(100, 'phrase', 'moderator', 'Moderator', 1),
(101, 'phrase', 'blocked', 'Blocked', 1),
(102, 'phrase', 'confirm', 'Confirm', 1),
(103, 'phrase', 'edit_role', 'Edit Role', 1),
(104, 'phrase', 'device_blocked', 'Device Blocked. Reset Password to Unblock this device.', 1),
(105, 'phrase', 'invalid_login', 'Invalid Login Credentials', 1),
(106, 'phrase', 'denied', 'Permission Denied', 1),
(107, 'phrase', 'unknown', 'Unknown', 1),
(108, 'phrase', 'shared_file', 'Shared a File', 1),
(109, 'phrase', 'banned', 'Banned', 1),
(110, 'phrase', 'unban', 'Unban', 1),
(111, 'phrase', 'created_group', 'Created Group', 1),
(112, 'phrase', 'zero_complaints', 'Petitions', 1),
(113, 'phrase', 'complaints', 'Petitions', 1),
(114, 'phrase', 'report_message', 'Report Message', 1),
(115, 'phrase', 'reported', 'Reported', 1),
(116, 'phrase', 'spam', 'Spam', 1),
(117, 'phrase', 'abuse', 'Abuse', 1),
(118, 'phrase', 'inappropriate', 'Inappropriate', 1),
(119, 'phrase', 'other', 'Other', 1),
(120, 'phrase', 'under_investigation', 'Under Investigation', 1),
(121, 'phrase', 'rejected', 'Rejected', 1),
(122, 'phrase', 'action_taken', 'Action Taken', 1),
(123, 'phrase', 'view_complaint', 'View Grief', 1),
(124, 'phrase', 'proof', 'Proof', 1),
(125, 'phrase', 'timestamp', 'Timestamp', 1),
(126, 'phrase', 'report_group', 'Report Group', 1),
(127, 'phrase', 'invited', 'Invited', 1),
(128, 'phrase', 'alert_invitation', 'Invited you to Join', 1),
(129, 'phrase', 'alert_mentioned', 'Mentioned you', 1),
(130, 'phrase', 'open', 'Open', 1),
(131, 'phrase', 'view_message', 'View Message', 1),
(132, 'phrase', 'message', 'Message', 1),
(133, 'phrase', 'change_avatar', 'Change Avatar', 1),
(134, 'phrase', 'choose_avatar', 'Choose an Avatar', 1),
(135, 'phrase', 'left_group', 'Left the Group Chat', 1),
(136, 'phrase', 'joined_group', 'Joined the Group Chat', 1),
(137, 'phrase', 'alert_replied', 'Sent you a response', 1),
(138, 'phrase', 'datetime', 'Date &amp; Time', 1),
(139, 'phrase', 'sender', 'Sender', 1),
(140, 'phrase', 'you', 'You', 1),
(141, 'phrase', 'exporting', 'Exporting', 1),
(142, 'phrase', 'invalid_captcha', 'Invalid Captcha', 1),
(143, 'phrase', 'remember_me', 'Remember Me', 1),
(144, 'phrase', 'forgot_password', 'Forgot Password', 1),
(145, 'phrase', 'register', 'Register', 1),
(146, 'phrase', 'reset', 'Reset', 1),
(147, 'phrase', 'already_have_account', 'Already have an account?', 1),
(148, 'phrase', 'dont_have_account', 'Don&amp;#039;t have an account?', 1),
(149, 'phrase', 'tos', 'Terms of Service', 1),
(150, 'phrase', 'cookie_constent', 'Situs web ini menggunakan cookie untuk memastikan Anda mendapatkan pengalaman terbaik di situs web kami.', 1),
(151, 'phrase', 'got_it', 'Got It', 1),
(152, 'phrase', 'user_does_not_exist', 'User Does not Exist', 1),
(153, 'phrase', 'check_inbox', 'We have sent an email to your email address. Please check your Inbox.', 1),
(154, 'phrase', 'email_reset_title', 'Trouble signing in?', 1),
(155, 'phrase', 'email_reset_desc', 'Resetting your password is easy. Just press the button below and once logged in, you can change your password from edit profile tab.', 1),
(156, 'phrase', 'email_reset_btn', 'Auto Login', 1),
(157, 'phrase', 'email_replied_title', 'Awaiting your reply', 1),
(158, 'phrase', 'email_replied_desc', 'You received this email because someone has replied to your message', 1),
(159, 'phrase', 'email_replied_btn', 'View Reply', 1),
(160, 'phrase', 'email_invitation_title', 'You got an Invitation', 1),
(161, 'phrase', 'email_invitation_desc', 'You received this email because someone has invited you to join a group', 1),
(162, 'phrase', 'email_invitation_btn', 'View Message', 1),
(163, 'phrase', 'email_mentioned_title', 'Someone Mentioned You', 1),
(164, 'phrase', 'email_mentioned_desc', 'You received this email because someone has mentioned you in a group chat', 1),
(165, 'phrase', 'email_mentioned_btn', 'View Message', 1),
(166, 'phrase', 'email_signup_title', 'Profile Registered', 1),
(167, 'phrase', 'email_signup_desc', 'Congratulations! Your account has been created. Just press the button below and once logged in, you can change your password from edit profile tab.', 1),
(168, 'phrase', 'email_signup_btn', 'Auto Login', 1),
(169, 'phrase', 'email_reset_sub', 'Forgot Your Password', 1),
(170, 'phrase', 'email_replied_sub', 'You got a Reply', 1),
(171, 'phrase', 'email_invitation_sub', 'Group Invitation', 1),
(172, 'phrase', 'email_mentioned_sub', 'Mentioned you', 1),
(173, 'phrase', 'email_signup_sub', 'Account Created', 1),
(174, 'phrase', 'email_verify_title', 'You&#039;re almost there', 1),
(175, 'phrase', 'email_verify_desc', 'We have finished setting up your account. It is time to confirm your email address. Just click on the button below to get started', 1),
(176, 'phrase', 'email_verify_btn', 'Confirm Email', 1),
(177, 'phrase', 'email_footer', 'If you dont know why you got this email, please tell us straight away so we can fix this for you.', 1),
(178, 'phrase', 'email_complimentary_close', 'Best regards,', 1),
(179, 'phrase', 'email_verify_sub', 'Verify your email address', 1),
(180, 'phrase', 'email_copy_link', 'Or copy this link and paste in your web browser', 1),
(181, 'phrase', 'sitename', 'Site Name', 1),
(182, 'phrase', 'sitedesc', 'Description', 1),
(183, 'phrase', 'sysemail', 'Email Address', 1),
(184, 'phrase', 'sendername', 'Sender Name', 1),
(185, 'phrase', 'userreg', 'User Registration', 1),
(186, 'phrase', 'fileexpiry', 'Download Expires (Minutes)', 1),
(187, 'phrase', 'delmsgexpiry', 'Users can delete Messages Within (Minutes)', 1),
(188, 'phrase', 'recaptcha', 'Recaptcha', 1),
(189, 'phrase', 'rsecretkey', 'Recaptcha Secret Key', 1),
(190, 'phrase', 'rsitekey', 'Recaptcha Site Key', 1),
(191, 'phrase', 'autogroupjoin', 'Auto Group Join', 1),
(192, 'phrase', 'enable', 'Enable', 1),
(193, 'phrase', 'disable', 'Disable', 1),
(194, 'phrase', 'logo', 'Logo', 1),
(195, 'phrase', 'favicon', 'Favicon', 1),
(196, 'phrase', 'emaillogo', 'Logo (Email)', 1),
(197, 'phrase', 'defaultbg', 'Default Bg', 1),
(198, 'phrase', 'loginbg', 'Login Bg', 1),
(199, 'phrase', 'terms', '1. Terms\r\nBy accessing this website, you are agreeing to be bound by the Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this website. The content contained here are protected by applicable copyright and trade mark laws. Please take the time to review our privacy policy.\r\n\r\n2. Use License\r\nPermission is granted for the temporary use of the group chat, filemanager on web site for personal, non-commercial use only. This is the grant of the services, not a transfer of title, and under this license you may not: modify or copy the materials; use the materials for any commercial purpose, or for any public display (commercial or non-commercial); attempt to decompile or reverse engineer any software contained on the website; remove any copyright or other proprietary notations from the materials; or transfer the materials to another person or &quot;mirror&quot; the materials on any other website or server. This license shall automatically terminate if you violate any of these restrictions and may be terminated by the website at any time.\r\n\r\n3. Disclaimer\r\nThe content on the website are provided &quot;as is&quot;. We makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties, including without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights. Furthermore, We does not warrant or make any representations concerning the accuracy, likely results, or reliability of the use of the content on its website or otherwise relating to such content or on any sites linked to this site.\r\n\r\n4. Limitations\r\nIn no event shall we be liable for any damages (including, without limitation, damages for loss of data or profit, due to business interruption, or criminal charges filed against you) arising out of the use or inability to use the content on the website, even if we or a authorized representative has been notified orally or in writing of the possibility of such damage. This applies to the use of our chat rooms and filemanager. Because some jurisdictions do not allow limitations on implied warranties, or limitations of liability for consequential or incidental damages, these limitations may not apply to you.\r\n\r\n5. Revisions and Errata\r\nThe materials appearing on the website could include technical, typos, or image errors. We does not warrant that any of the content on its website are accurate, complete, or current. We may make changes to the content on its website at any time without any noticeWe does not, however, make any commitment to update the content.\r\n\r\n6. Links\r\nWe has not reviewed all of the sites linked from its website and is not responsible for the contents contained within. The inclusion of any link does not imply endorsement by us. Use of any such linked web site is at the user&#039;s own risk.\r\n\r\n7. Age Limitations\r\nIn general, the age minimum for this webs site is 13. This website will not be held responsible for users who do not comply with the given age range as this information is not verifiable.\r\n\r\n8. Hateful Content\r\nWe does not tolerate any form of hateful or violent content in our chat rooms or on our forums. This includes threats, promotion of violence or direct attacks towards other users based upon ethnicity, race, religion, sexual orientation, religion affiliation, age, disability, serious diseases and gender. Users also are prohibited from using hateful images for their profile pictures/avatars. This includes usernames. All such comment will be removed when noticed or reported to our staff.\r\n\r\n9. Illegal Content\r\nWe does not tolerate any form of illegal content in our chat rooms or on our forums. Users also are prohibited from using or uploading illegal images including child pornography or other illegal content. This includes, but not limited to, profile pictures/avatars and any image transfers or uploads. This includes usernames. If you do so, you will be subject to being kicked, banned and, in some cases, reported to law enforcement. We will, to its highest ability, remove all illegal content when it is discovered or reported to us. We will not be held responsible for such content unless it is noticed and reported to our staff.\r\n\r\n10. Terms of Use Changes\r\nWe may revise these terms of use for its web site at any time without notice. By using this web site you are agreeing to be bound by the then current version of these Terms and Conditions of Use. If you cannot agree to this, please do not use this website.', 1),
(200, 'phrase', '404_page_title', '404 - Page not found', 1),
(201, 'phrase', '404_page_oops', 'Oops!', 1),
(202, 'phrase', '404_page_heading', '404 - Page not found', 1),
(203, 'phrase', '404_page_desc', 'The page you are looking for might have been removed had its name changed or is temporarily unavailable.', 1),
(204, 'phrase', '404_page_go_to_btn', 'Go To Homepage', 1),
(205, 'phrase', 'reload', 'Reload', 1),
(206, 'phrase', 'reason', 'Reason', 1),
(207, 'phrase', 'comments', 'Comments', 1),
(208, 'phrase', 'category', 'Category', 1),
(209, 'phrase', 'group', 'Group', 1),
(210, 'phrase', 'view_visible', 'View all Visible Groups', 1),
(211, 'phrase', 'admin_controls', 'Full Control of all Groups', 1),
(212, 'phrase', 'upload', 'Upload', 1),
(213, 'phrase', 'attach', 'Share Files', 1),
(214, 'phrase', 'login_as_user', 'Login as User', 1),
(215, 'phrase', 'yes', 'Yes', 1),
(216, 'phrase', 'no', 'No', 1),
(217, 'phrase', 'remove_password', 'Remove Password', 1),
(218, 'phrase', 'edit_language', 'Edit Language', 1),
(219, 'phrase', 'siteslogan', 'Site Slogan', 1),
(220, 'phrase', 'boxed', 'Boxed Layout', 1),
(221, 'phrase', 'ip_blocked', 'Your IP has been blocked', 1),
(222, 'phrase', 'act', 'Act', 1),
(223, 'phrase', 'take_action', 'Take Action', 1),
(224, 'phrase', 'select_option', 'Select Option from Dropdown', 1),
(225, 'phrase', 'banip', 'Ban IP', 1),
(226, 'phrase', 'unbanip', 'Unban IP', 1),
(227, 'phrase', 'choosefiletxt', 'Choose a file', 1),
(228, 'phrase', 'private_chat', 'Private Chat', 1),
(229, 'phrase', 'pm', 'PM', 1),
(230, 'phrase', 'zero_pm', 'Empty Inbox', 1),
(231, 'phrase', 'cf_about_me', 'About Me', 1),
(232, 'phrase', 'cf_birth_date', 'Birth Date', 1),
(233, 'phrase', 'cf_gender', 'Gender', 1),
(234, 'phrase', 'cf_phone', 'Phone', 1),
(235, 'phrase', 'cf_location', 'Location', 1),
(236, 'phrase', 'alert_newmsg', 'Sent you a new msg', 1),
(237, 'phrase', 'refresh', 'Refresh', 1),
(238, 'phrase', 'hearts', 'Likes', 1),
(239, 'phrase', 'shares', 'Shares', 1),
(240, 'phrase', 'last_login', 'Last Login', 1),
(241, 'phrase', 'empty_profile', 'Empty Profile', 1),
(242, 'phrase', 'delete_account', 'Delete Account', 1),
(243, 'phrase', 'remove_user', 'Remove User', 1),
(244, 'phrase', 'login_as_guest', 'Login as Guest', 1),
(245, 'phrase', 'guest_login', 'Guest Login', 1),
(246, 'phrase', 'filterwords', 'Swear Filter', 1),
(247, 'phrase', 'fields', 'Fields', 1),
(248, 'phrase', 'stand_by', 'Stand By', 1),
(249, 'phrase', 'add_custom_field', 'Add Field', 1),
(250, 'phrase', 'banned_page_title', 'You Are Banned', 1),
(251, 'phrase', 'banned_page_ouch', 'ouch', 1),
(252, 'phrase', 'banned_page_heading', 'You are banned', 1),
(253, 'phrase', 'banned_page_desc', 'Access denied. Your IP address or Account is blacklisted. If you feel this is in error please contact website&#039;s administrator.', 1),
(254, 'phrase', 'banned_page_go_to_btn', 'Reach Us', 1),
(255, 'phrase', 'conversation_with', 'Conversation With', 1),
(256, 'phrase', 'email_newmsg_title', 'New Message', 1),
(257, 'phrase', 'email_newmsg_btn', 'View Message', 1),
(258, 'phrase', 'email_newmsg_desc', 'You have a new message. Your have received a message from Someone.', 1),
(259, 'phrase', 'account_reactivated', 'Account Reactivated. Welcome Back', 1),
(260, 'phrase', 'renamed_group', 'Changed the Group Name', 1),
(261, 'phrase', 'changed_group_pass', 'Changed the Group Password', 1),
(262, 'phrase', 'removed_group_pass', 'Removed the Group Password', 1),
(263, 'phrase', 'changed_group_icon', 'Changed the Group Icon', 1),
(264, 'phrase', 'blocked_group_user', 'Got Blocked', 1),
(265, 'phrase', 'unblocked_group_user', 'Got Unblocked', 1),
(266, 'phrase', 'removed_from_group', 'Got removed from Group', 1),
(267, 'phrase', 'deactivate_account', 'Deactivate Account', 1),
(268, 'phrase', 'longtext', 'Long Text', 1),
(269, 'phrase', 'datefield', 'Date Field', 1),
(270, 'phrase', 'shorttext', 'Short Text', 1),
(271, 'phrase', 'numfield', 'Numbers', 1),
(272, 'phrase', 'deactivated', 'Deactivated', 1),
(273, 'phrase', 'converse', 'Converse', 1),
(274, 'phrase', 'blacklist', 'Blacklisted', 1),
(275, 'phrase', 'block_user', 'Block User', 1),
(276, 'phrase', 'zero_fields', 'Fields', 1),
(277, 'phrase', 'fieldname', 'Field Name', 1),
(278, 'phrase', 'fieldtype', 'Field Type', 1),
(279, 'phrase', 'ban_user', 'Ban Users', 1),
(280, 'phrase', 'view_likes', 'View Likes', 1),
(281, 'phrase', 'like_msgs', 'Like Messages', 1),
(282, 'phrase', 'view_profile', 'View Profile', 1),
(283, 'phrase', 'privatemsg', 'Private Message', 1),
(284, 'phrase', 'autodeletemsg', 'Auto Delete Group Msgs (Minutes)', 1),
(285, 'phrase', 'chat', 'Chat', 1),
(286, 'phrase', 'sending', 'Sending', 1),
(287, 'phrase', 'uploading', 'Uploading', 1),
(288, 'phrase', 'read_more', 'Read More', 1),
(289, 'phrase', 'edit_custom_field', 'Edit Custom Field', 1),
(290, 'phrase', 'email_verification', 'Email Verification', 1),
(291, 'phrase', 'today', 'Today', 1),
(292, 'phrase', 'yesterday', 'Yesterday', 1),
(293, 'phrase', 'failed', 'Failed. Try again', 1),
(294, 'phrase', 'smtp_authentication', 'SMTP Authentication', 1),
(295, 'phrase', 'smtp_host', 'SMTP Host', 1),
(296, 'phrase', 'smtp_user', 'SMTP User', 1),
(297, 'phrase', 'smtp_pass', 'SMTP Password', 1),
(298, 'phrase', 'smtp_protocol', 'SMTP (SSL/TLS)', 1),
(299, 'phrase', 'smtp_port', 'SMTP Port', 1),
(300, 'phrase', 'view_hidden', 'View all Hidden Groups', 1),
(301, 'phrase', 'visible', 'Visible', 1),
(302, 'phrase', 'hidden', 'Hidden', 1),
(303, 'phrase', 'visibility', 'Visibility', 1),
(304, 'phrase', 'protected_group', 'Protected Group', 1),
(305, 'phrase', 'secret_group', 'Secret Group', 1),
(306, 'phrase', 'changed_group_visibility', 'Changed the Group Visibility ', 1),
(307, 'phrase', 'cover_pic', 'Cover Pic', 1),
(308, 'phrase', 'email_newmsg_sub', 'You have a new message.', 1),
(309, 'phrase', 'notification_tone', 'Notification Tone', 1),
(310, 'phrase', 'default_notification_tone', 'Default Notification Tone', 1),
(311, 'phrase', 'autodelusrs', 'Auto Delete Users (Minutes)', 1),
(312, 'phrase', 'maxmsgsperload', 'Messages Per Load', 1),
(313, 'phrase', 'confirm_unblock', 'Are you sure you want to unblock this user ?', 1),
(314, 'phrase', 'confirm_block', 'Are you sure you want to block this user from sending you messages?', 1),
(315, 'phrase', 'unblock_user', 'Unblock User', 1),
(316, 'phrase', 'unblock', 'Unblock', 1),
(317, 'phrase', 'refreshrate', 'Chat Refresh Rate (milliseconds)', 1),
(318, 'phrase', 'dropdownfield', 'Dropdown', 1),
(319, 'phrase', 'requiredfield', 'Required', 1),
(320, 'phrase', 'fieldoptions', 'Options', 1),
(321, 'phrase', 'newmsgalert', 'You have a new message!', 1),
(322, 'phrase', 'username_condition', 'Your username must contain at least one letter', 1),
(323, 'phrase', 'max_login_attempts', 'Max Login Attempts', 1),
(324, 'phrase', 'google_analytics_id', 'Google Analytics ID', 1),
(325, 'phrase', 'alert_liked', 'Liked your message', 1),
(326, 'phrase', 'invite_link', 'Invite Link', 1),
(327, 'phrase', 'email_invitenonmember_title', 'You got an Invitation', 1),
(328, 'phrase', 'email_invitenonmember_sub', 'Group Invitation', 1),
(329, 'phrase', 'email_invitenonmember_desc', 'You received this email because someone has invited you to join a group', 1),
(330, 'phrase', 'email_invitenonmember_btn', 'Accept', 1),
(331, 'phrase', 'time_format', 'Time Format', 1),
(332, 'phrase', 'default_font', 'Default Font', 1),
(333, 'phrase', 'profile_noexists', 'Invalid or Doesn&amp;#039;t exist', 1),
(334, 'phrase', 'joined_group_invitelink', 'Joined via the Invite Link', 1),
(335, 'phrase', 'already_deactivated', 'Already Deactivated', 1),
(336, 'phrase', 'name_color', 'Name Color', 1),
(337, 'phrase', 'search', 'Search', 1),
(338, 'phrase', 'zero_search', 'Search Results', 1),
(339, 'phrase', 'search_min', 'Type at least 3 characters', 1),
(340, 'phrase', 'search_gifs_tenor', 'Search GIFs via Tenor', 1),
(341, 'phrase', 'type_message', 'Type a Message', 1),
(342, 'phrase', 'shared_gif', 'Shared a GIF', 1),
(343, 'phrase', 'auto_deleted_after', 'Auto Deleted After', 1),
(344, 'phrase', 'download_file', 'Download File', 1),
(345, 'phrase', 'tenor_enable', 'Tenor GIFs', 1),
(346, 'phrase', 'tenor_api', 'Tenor API', 1),
(347, 'phrase', 'tenor_limit', 'Tenor Limit', 1),
(348, 'phrase', 'aside_results_perload', 'Results per load (Aside)', 1),
(349, 'phrase', 'max_msg_length', 'Maximum send msg length', 1),
(350, 'phrase', 'exceeded_max_msg_length', 'Exceeded Maximum Message Length', 1),
(351, 'phrase', 'min_msg_length', 'Minimum send msg length', 1),
(352, 'phrase', 'req_min_msg_length', 'Required Minimum number of characters', 1),
(353, 'phrase', 'add_readmore_after', 'Add Read More After', 1),
(354, 'phrase', 'set_default_language', 'Set as Default Language', 1),
(355, 'phrase', 'default', 'Default', 1),
(356, 'phrase', 'sent_msg_align', 'Sent Msg Align', 1),
(357, 'phrase', 'received_msg_align', 'Received Msg Align', 1),
(358, 'phrase', 'left', 'Left', 1),
(359, 'phrase', 'right', 'Right', 1),
(360, 'phrase', 'please_wait', 'Please Wait', 1),
(361, 'phrase', 'loading', 'Loading', 1),
(362, 'phrase', 'shared_qrcode', 'Shared a QR Code', 1),
(363, 'phrase', 'emojis', 'Emojis', 1),
(364, 'phrase', 'gifs', 'GIFs', 1),
(365, 'phrase', 'qrcode', 'QR Code', 1),
(366, 'phrase', 'voice_message', 'Voice Message', 1),
(367, 'phrase', 'confirm_msgdelete', 'Are you sure you Want to Delete this message? You have :', 1),
(368, 'phrase', 'confirm_download', 'Are you sure you want to continue downloading?', 1),
(369, 'phrase', 'welcome_user', 'Selamat datang di S.P.E.K.T.A Chat', 1),
(370, 'phrase', 'welcome_msg', 'S.P.E.K.T.A Chat adalah Aplikasi Chat PT.Kimia Farma Tbk. Plant Jakarta yang dapat kamu gunakan untuk keperluan kamu selama bekerja :) Enjoy!', 1),
(371, 'phrase', 'welcome_footer', 'Developed By Hardware &amp;amp; Network ©Copyright 2022', 1),
(372, 'phrase', 'welcomeimg', 'Welcome Image', 1),
(373, 'phrase', 'hide', 'Hide', 1),
(374, 'phrase', 'hide_language', 'Hide Language', 1),
(375, 'phrase', 'confirm_hide', 'Are you sure you want to make this hidden?', 1),
(376, 'phrase', 'done', 'Done', 1),
(377, 'phrase', 'show', 'Show', 1),
(378, 'phrase', 'show_language', 'Show Language', 1),
(379, 'phrase', 'confirm_show', 'Are you sure you want to make this visible?', 1),
(380, 'phrase', 'public_group', 'Public Group', 1),
(381, 'phrase', 'addgroupuser', 'Add Users', 1),
(382, 'phrase', 'adduser_noinvite', 'Add Users without Invite', 1),
(383, 'phrase', 'send_audiomsg', 'Send an Audio Msg', 1),
(384, 'phrase', 'send_messages', 'Send Messages', 1),
(385, 'phrase', 'group_members', 'Group Members', 1),
(386, 'phrase', 'admins_moderators', 'Admins &amp; Moderators', 1),
(387, 'phrase', 'changed_message_settings', 'Changed Message Settings', 1),
(388, 'phrase', 'seen_by', 'Seen By', 1),
(389, 'phrase', 'zero_seen', 'Users Seen', 1),
(390, 'phrase', 'play', 'Play', 1),
(391, 'phrase', 'visit', 'Visit', 1),
(392, 'phrase', 'pagespeed_api', 'PageSpeed Insights API', 1),
(393, 'phrase', 'autounjoin', 'Auto Leave Groups (Minutes)', 1),
(394, 'phrase', 'group_link', 'Group URL', 1),
(395, 'phrase', 'unblocked', 'Unblocked', 1),
(396, 'phrase', 'email_invitenonm_sub', 'You got an Invitation', 1),
(397, 'phrase', 'email_invitenonm_title', 'You got an Invitation', 1),
(398, 'phrase', 'email_invitenonm_desc', 'You received this email because someone has invited you to join a group', 1),
(399, 'phrase', 'email_invitenonm_btn', 'Accept', 1),
(400, 'phrase', 'cronjob', 'Cron Jobs', 1),
(401, 'phrase', 'sendgifs', 'Send GIFs', 1),
(402, 'phrase', 'sendaudiomsgs', 'Send Audio Message', 1),
(403, 'phrase', 'createqrcode', 'Create QR Code', 1),
(404, 'phrase', 'previewmsgs', 'Preview Attachments', 1),
(405, 'phrase', 'sharescreenshot', 'Share Screenshot', 1),
(406, 'phrase', 'sharelinks', 'Share Links', 1),
(407, 'phrase', 'whoistyping', 'Whos Typing', 1),
(408, 'phrase', 'features', 'Features', 1),
(409, 'phrase', 'sendtxtmsgs', 'Send Text Messages', 1),
(410, 'phrase', 'emailnotifications', 'Email Notifications', 1),
(411, 'phrase', 'notxtmsg', 'Sending disabled. You wont be able to send messages.', 1),
(412, 'phrase', 'nickname', 'Nickname', 1),
(413, 'phrase', 'unsplash_enable', 'UnSplash Slideshow', 1),
(414, 'phrase', 'unsplash_load', 'UnSplash Parameters', 1),
(415, 'phrase', 'signin_logo', 'Logo (Login)', 1),
(416, 'phrase', 'mobile_logo', 'Logo (Mobile)', 1),
(417, 'phrase', 'header', 'Header', 1),
(418, 'phrase', 'footer', 'Footer', 1),
(419, 'phrase', 'easycustomizer', 'Easy Customizer', 1),
(420, 'phrase', 'startcolor', 'Start Color', 1),
(421, 'phrase', 'endcolor', 'End Color', 1),
(422, 'phrase', 'ltr', 'Left to Right', 1),
(423, 'phrase', 'rtl', 'Right to Left', 1),
(424, 'phrase', 'txt_direction', 'Text direction', 1),
(425, 'phrase', 'cf_country', 'Country', 1),
(426, 'phrase', 'embed_code', 'Embed Code', 1),
(427, 'phrase', 'is_typing', 'is typing', 1),
(428, 'phrase', 'update_list_periodically', 'Real-time Individual Unread Count', 1),
(429, 'phrase', 'force_https', 'Force HTTPS', 1),
(430, 'phrase', 'pingroup', 'Pin Group', 1),
(431, 'phrase', 'pinned_group', 'Pinned', 1),
(432, 'phrase', 'unleavable', 'Unleavable', 1),
(433, 'phrase', 'unleavable_group', 'Unleavable Group', 1),
(434, 'phrase', 'changed_leavable_group', 'Changed to Leavable', 1),
(435, 'phrase', 'changed_unleavable_group', 'Changed to Unleavable', 1),
(436, 'phrase', 'send_btn_visible', 'Send Button', 1),
(437, 'phrase', 'non_latin_usernames', 'Non Latin Usernames', 1),
(438, 'phrase', 'sending_limit', 'Sending Limit (Per Minute)', 1),
(439, 'phrase', 'sending_limit_reached', 'Sending Limit Reached. Please wait : ', 1),
(440, 'phrase', 'seconds', 'Seconds', 1),
(441, 'phrase', 'addtosignup', 'Add to Sign Up Page', 1),
(444, 'phrase', 'sysmessages', 'System Messages', 1),
(445, 'phrase', 'after_body_open_tag', 'After Body Open Tag', 1),
(446, 'phrase', 'before_body_closing_tag', 'Before Body Closing Tag', 1),
(447, 'phrase', 'releaseguestuser', 'Release Guest Username', 1),
(448, 'phrase', 'send_email_notification', 'Send Email Notification', 1),
(449, 'phrase', 'someone_mentions', 'Someone Mentions', 1),
(450, 'phrase', 'on_group_invitation', 'Group Invitation', 1),
(451, 'phrase', 'receiving_new_message', 'Receiving new message', 1),
(452, 'phrase', 'message_replies', 'Message Replies', 1),
(453, 'phrase', 'ascii_smileys', 'ASCII Smileys', 1),
(454, 'phrase', 'use_enter_as_send', 'Use Enter as send', 1),
(455, 'phrase', 'random_guest_username', 'Generate Random Guest Username', 1),
(456, 'phrase', 'group_info', 'Group Info', 1),
(457, 'phrase', 'created_on', 'Created', 1),
(458, 'phrase', 'profile', 'Profile', 1),
(459, 'phrase', 'description', 'Description', 1),
(460, 'phrase', 'login_cookie_validity', 'Login Cookie Validity (Days)', 1),
(461, 'phrase', 'delete_only_offline_users', 'Delete Only Offline Users', 1),
(462, 'phrase', 'add_menu_item', 'Add Menu Item', 1),
(463, 'phrase', 'link_text', 'Link Text', 1),
(464, 'phrase', 'url', 'URL', 1),
(465, 'phrase', 'order', 'Order', 1),
(466, 'phrase', 'custom_menu', 'Menu', 1),
(467, 'phrase', 'zero_items', 'Items', 1),
(468, 'phrase', 'menu_item', 'Menu Item', 1),
(469, 'phrase', 'edit_menu_item', 'Edit Menu Item', 1),
(470, 'phrase', 'gravatar', 'Gravatar', 1),
(471, 'phrase', 'show_sender_name', 'Show Senders Name', 1),
(472, 'phrase', 'nav_about', 'About', 1),
(473, 'phrase', 'nav_terms', 'Terms', 1),
(474, 'phrase', 'nav_privacy', 'Privacy', 1),
(475, 'phrase', 'nav_contact', 'Contact', 1),
(476, 'phrase', 'pg_about', 'This is a simple and easy to use chatroom. Join us now and talk to people from all over the world. \r\n\r\nOur mission is to share and grow the world’s knowledge. A vast amount of the knowledge that would be valuable to many people is currently only available to a few — either locked in people’s heads, or only accessible to select groups. We want to connect the people who have knowledge to the people who need it, to bring together people with different perspectives so they can understand each other better, and to empower everyone to share their knowledge for the benefit of the rest of the world.\r\n\r\n\r\nTo modify this page - Menu &amp;gt; Languages &amp;gt; Options &amp;gt; Edit &amp;gt; Find pg_about &amp;gt; Replace with yours.', 1),
(477, 'phrase', 'pg_privacy', 'This Privacy Policy governs the manner in which we collects, uses, maintains and discloses information collected from users (each, a &quot;User&quot;) of our website (&quot;Site&quot;). This privacy policy applies to the Site and all products and services offered by us.\r\n\r\n1)  Personal identification information\r\nWe may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our site, subscribe to the newsletter, fill out a form, and in connection with other activities, services, features or resources we make available on our Site.. Users may visit our Site anonymously. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site related activities.\r\n\r\n2) Non-personal identification information\r\nWe may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about Users means of connection to our Site, such as the operating system and the Internet service providers utilized and other similar information.\r\n\r\n3) Chat Room Privacy\r\nAdministrators and Moderators of the Chat Rooms can see the I.P. of the Users who are chatting. We do not save I.P. addresses of the Users, neither do we share I.P addresses with others. As long as you do not provide (not recommended) your real name, address, Email ID and any other personal information in the chat room, you are completely anonymous to other users.\r\n\r\n4) How we use collected information\r\n\r\nWe may collect and use Users personal information for the following purposes:\r\n\r\n– To improve customer service Information you provide helps us respond to your customer service requests and support needs more efficiently. \r\n– To improve our Site We may use feedback you provide to improve our products and services. \r\n– To run a promotion, contest, survey or other Site feature. To send Users information they agreed to receive about topics we think will be of interest to them. \r\n– To send periodic emails We may use the email address to respond to their inquiries, questions, and/or other requests. \r\n\r\n5) How we protect your information\r\nWe adopt appropriate data collection, storage and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information and data stored on our Site.\r\n\r\n6) Sharing your personal information\r\nWe do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes outlined above.\r\n\r\n7) Third party websites\r\nUsers may find advertising or other content on our Site that link to the sites and services of our partners, suppliers, advertisers, sponsors, licensors and other third parties. We do not control the content or links that appear on these sites and are not responsible for the practices employed by websites linked to or from our Site. In addition, these sites or services, including their content and links, may be constantly changing. These sites and services may have their own privacy policies and customer service policies. Browsing and interaction on any other website, including websites which have a link to our Site, is subject to that website’s own terms and policies.\r\n\r\n8) Advertising\r\nAds appearing on our site may be delivered to Users by advertising partners, who may set cookies. These cookies allow the ad server to recognize your computer each time they send you an online advertisement to compile non personal identification information about you or others who use your computer. This information allows ad networks to, among other things, deliver targeted advertisements that they believe will be of most interest to you. This privacy policy does not cover the use of cookies by any advertisers.\r\n\r\n9) Log Files\r\nAs with most other websites, we collect and use the data contained in log files. The information in the log files include your IP (internet protocol) address, your ISP (internet service provider, such as AOL or Shaw Cable), the browser you used to visit our site (such as Internet Explorer or Firefox), the time you visited our site and which pages you visited throughout our site.\r\n\r\n10) Cookies and Web Beacons\r\nWe do use cookies to store information, such as your personal preferences when you visit our site. This could include only showing you a popup once in your visit, or the ability to login to some of our features, such as forums.\r\n\r\nWe also use third party advertisements to support our site. Some of these advertisers may use technology such as cookies and web beacons when they advertise on our site, which will also send these advertisers (such as Google through the Google AdSense program) information including your IP address, your ISP , the browser you used to visit our site, and in some cases, whether you have Flash installed. This is generally used for geotargeting purposes (showing New York real estate ads to someone in New York, for example) or showing certain ads based on specific sites visited (such as showing cooking ads to someone who frequents cooking sites).\r\n\r\n11) Compliance with children’s online privacy protection act\r\nProtecting the privacy of the very young is especially important. For that reason, we never collect or maintain information at our Site from those we actually know are under 13, and no part of our website is structured to attract anyone under 13.\r\n\r\n12) Changes to this privacy policy\r\nWe has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.\r\n\r\n13) Your acceptance of these terms\r\nBy using this Site, you signify your acceptance of this policy and terms of service. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes.', 1),
(478, 'phrase', 'pg_contact', 'To modify this page - Menu &amp;gt; Languages &amp;gt; Options &amp;gt; Edit &amp;gt; Find pg_contact &amp;gt; Replace with yours.', 1),
(479, 'phrase', 'all', 'All', 1),
(480, 'phrase', 'joined', 'Joined', 1),
(481, 'phrase', 'unjoined', 'Unjoined', 1),
(482, 'phrase', 'favorites', 'Favorites', 1),
(483, 'phrase', 'request_timeout', 'Timeout Seconds (Long Polling)', 1),
(484, 'phrase', 'show_online_tab', 'Show Online Tab', 1),
(486, 'phrase', 'offline_page_alas', 'alas!', 1),
(487, 'phrase', 'offline_page_title', 'You are Offline', 1),
(488, 'phrase', 'offline_page_heading', 'You Are Offline', 1),
(489, 'phrase', 'offline_page_desc', 'It looks like you have lost your internet connection. Perhaps you went into a tunnel or turned on airplane mode on your phone.', 1),
(490, 'phrase', 'offline_page_go_to_btn', 'Refresh', 1),
(491, 'phrase', 'dark_mode', 'Dark Mode', 1),
(492, 'phrase', 'light_mode', 'Light Mode', 1),
(493, 'phrase', 'default_skin_mode', 'Default Skin Mode', 1),
(494, 'phrase', 'defaultbgdark', 'Default Bg (Dark Mode)', 1),
(495, 'phrase', 'create_unleavable_group', 'Create Unleavable Group', 1),
(496, 'phrase', 'create_secret_group', 'Create Secret Group', 1),
(497, 'phrase', 'create_protected_group', 'Create Protected Group', 1),
(498, 'phrase', 'zero_results', 'Results', 1),
(499, 'phrase', 'ip_logs', 'Logs', 1),
(500, 'phrase', 'ip_log', 'IP Log', 1),
(501, 'phrase', 'pwa_icon', 'PWA icon', 1),
(502, 'phrase', 'mobile_page_transition', 'Mobile Page Transition', 1),
(503, 'phrase', 'is_now_admin', 'Is now Admin', 1),
(504, 'phrase', 'is_now_moderator', 'Is now Moderator', 1),
(505, 'phrase', 'is_no_longer_admin_moderator', 'Is no longer Admin or Moderator', 1),
(506, 'phrase', 'remove_custom_bg', 'Remove Custom BG', 1),
(507, 'phrase', 'delete_all', 'Delete All', 1),
(508, 'phrase', 'delete_all_messages', 'Delete All Messages', 1),
(509, 'phrase', 'confirm_deletemsgs', 'Are you sure you Want to Delete all Chat Messages?', 1),
(510, 'phrase', 'blocklist', 'Blocklist', 1),
(511, 'phrase', 'img_social_media', 'Default Image (Social Sharing)', 1),
(512, 'phrase', 'profile_link', 'Profile URL', 1),
(514, 'phrase', 'view_full_name', 'View Full Name', 1),
(515, 'phrase', 'deleteallmsgs', 'Delete All Msgs (One Click)', 1),
(516, 'phrase', 'viewmemberslist', 'View List of Members', 1),
(517, 'phrase', 'selectnamecolor', 'Select Name Color', 1),
(518, 'phrase', 'unbanned', 'Unbanned', 1),
(519, 'phrase', 'newest', 'Newest', 1),
(520, 'phrase', 'browsing', 'Browsing', 1),
(521, 'phrase', 'viewbrowsingmembers', 'View Currently Browsing', 1),
(522, 'phrase', 'clear_chat', 'Clear Chat', 1),
(523, 'phrase', 'confirm_clearchat', 'Are you sure you Want to Clear Chat History?', 1),
(524, 'phrase', 'cleared', 'Cleared', 1),
(525, 'phrase', 'export', 'Export', 1),
(526, 'phrase', 'import', 'Import', 1),
(527, 'phrase', 'select_an_option', 'Select an Option', 1),
(528, 'phrase', 'import_json', 'Select JSON File', 1),
(529, 'phrase', 'recent_images', 'Recent Images', 1),
(530, 'phrase', 'message_style', 'Message Style', 1),
(531, 'phrase', 'min_username_length', 'Minimum Username Length', 1),
(532, 'phrase', 'max_username_length', 'Maximum Username Length', 1),
(533, 'phrase', 'req_min_username_length', 'Required Minimum Username Length', 1),
(534, 'phrase', 'max_username_length_exceeds', 'Exceeds Maximum Username Length', 1),
(535, 'phrase', 'send_as_user', 'Send as another User', 1),
(536, 'phrase', 'users_chat', 'Users Chat', 1),
(537, 'phrase', 'view_users_chat', 'View all Users Chat', 1),
(538, 'phrase', 'stickers', 'Stickers', 1),
(539, 'phrase', 'zero_stickers', 'Stickers Found', 1),
(540, 'phrase', 'slug', 'Slug', 1),
(541, 'phrase', 'slug_already_exists', 'Slug Already Exists', 1),
(542, 'phrase', 'username_already_exists', 'Username Already Exists', 1),
(543, 'phrase', 'hide_grouptab', 'Hide Groups Tab When Accessing via Group Link', 1),
(544, 'phrase', 'maxgroupjoin', 'Maximum Number of Groups Users can Join', 1),
(545, 'phrase', 'exceeded_maxgroupjoin', 'Exceeded Maximum Number of Groups You can Join', 1),
(546, 'phrase', 'first_load_guestlogin', 'Open Guest Login Window on Load (Login Page)', 1),
(547, 'phrase', 'slug_condition', 'Slug must contain at least one letter', 1),
(548, 'phrase', 'add_radio_station', 'Add Radio Station', 1),
(549, 'phrase', 'station_name', 'Station Name', 1),
(550, 'phrase', 'stream_url', 'Stream URL', 1),
(551, 'phrase', 'radiostations', 'Stations', 1),
(552, 'phrase', 'zero_stations', 'Stations', 1),
(553, 'phrase', 'edit_radiostation', 'Edit Station', 1),
(554, 'phrase', 'manage_radiostations', 'Manage Radiostations', 1),
(555, 'phrase', 'listen_radio', 'Listen to Radio', 1),
(556, 'phrase', 'edit_grouprole', 'Edit Group Role', 1),
(557, 'phrase', 'manage_ads', 'Manage Ads', 1),
(558, 'phrase', 'create_ad', 'Create Ads', 1),
(559, 'phrase', 'ad_name', 'Ad Name', 1),
(560, 'phrase', 'adslot', 'Ad Slot', 1),
(561, 'phrase', 'chatmessage', 'Chat Message', 1),
(562, 'phrase', 'siginpagefooter', 'Login Page Footer', 1),
(563, 'phrase', 'siginpageheader', 'Login Page Header', 1),
(564, 'phrase', 'welcomewindow', 'Welcome Window', 1),
(565, 'phrase', 'rightside', 'Right Side', 1),
(566, 'phrase', 'leftside', 'Left Side', 1),
(567, 'phrase', 'adheight', 'Ad Height (px)', 1),
(568, 'phrase', 'adcontent', 'HTML Content', 1),
(569, 'phrase', 'invalid_htmlcontent', 'Invalid HTML Content', 1),
(570, 'phrase', 'zero_ads', 'Ads', 1),
(571, 'phrase', 'edit_ad', 'Edit Ad', 1),
(572, 'phrase', 'welcome', 'Welcome', 1),
(573, 'phrase', 'ad_delay', 'Chat Message Ad Delay (Seconds)', 1),
(574, 'phrase', 'manage_social_login', 'Manage Social Login', 1),
(575, 'phrase', 'add_provider', 'Add Provider', 1),
(576, 'phrase', 'identity_provider', 'Identity Provider', 1),
(577, 'phrase', 'appsecretkey', 'APP Secret/Client Secret Key', 1),
(578, 'phrase', 'appid', 'APP/Client ID', 1),
(579, 'phrase', 'providers', 'Providers', 1),
(580, 'phrase', 'zero_providers', 'Providers', 1),
(581, 'phrase', 'edit_provider', 'Edit Provider', 1),
(582, 'phrase', 'sendstickers', 'Send Stickers', 1),
(583, 'phrase', 'manage_stickers', 'Manage Stickers', 1),
(584, 'phrase', 'create_stickerpack', 'Create Sticker Pack', 1),
(585, 'phrase', 'pack_name', 'Pack Name', 1),
(586, 'phrase', 'upload_stickers', 'Upload Stickers', 1),
(587, 'phrase', 'edit_stickerpack', 'Edit Sticker Pack', 1),
(588, 'phrase', 'stickerpack', 'Sticker Pack', 1),
(589, 'phrase', 'shared_sticker', 'Shared a Sticker', 1),
(590, 'phrase', 'temporary_ban', 'Temporary Ban', 1),
(591, 'phrase', 'ban_till', 'Ban Till (Minutes)', 1),
(592, 'phrase', 'temp_ban_group_user', 'Got Temporarily Banned', 1),
(593, 'phrase', 'temp_banned', 'Temporarily Banned', 1),
(594, 'phrase', 'join_confirm', 'Join Confirmation Message', 1),
(595, 'phrase', 'maxfileuploadsize', 'Max File Upload Size (MB)', 1),
(596, 'phrase', 'exceeds_maxfilesizelimit', 'Exceeds Maximum File Upload Size Limit', 1),
(598, 'phrase', 'viewgroups_nologin', 'View Public Groups without Login', 1),
(599, 'phrase', 'login_register_msg', 'Login or Register to Join Chat', 1),
(600, 'phrase', 'gifs_stickers', 'Gifs &amp; Stickers', 1),
(601, 'phrase', 'temp_banned_for', 'Temporarily Banned for', 1),
(602, 'phrase', 'minutes', 'Minutes', 1),
(603, 'phrase', 'grconnect_secretkey', 'Grupo Connect Secret Key', 1),
(604, 'phrase', 'dateformat', 'Date Format', 1),
(605, 'phrase', 'callbackurl', 'Callback URL', 1),
(606, 'phrase', 'autoplay_radio', 'Auto Play Radio', 1),
(607, 'phrase', 'delete_users_chats', 'Delete Users Chats', 1),
(608, 'phrase', 'conversation', 'Conversation', 1),
(609, 'phrase', 'deleting', 'Deleting', 1),
(610, 'phrase', 'cookie_consent', 'Cookie Consent', 1),
(612, 'phrase', 'identifier', 'Identifier', 1),
(613, 'phrase', 'appkey', 'APP Key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gr_profiles`
--

CREATE TABLE `gr_profiles` (
  `id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v1` text COLLATE utf8mb4_unicode_ci,
  `v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `req` int(11) NOT NULL DEFAULT '0',
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_profiles`
--

INSERT INTO `gr_profiles` (`id`, `type`, `uid`, `name`, `cat`, `v1`, `v2`, `req`, `tms`) VALUES
(1, 'field', 0, 'cf_about_me', 'longtext', '0', NULL, 0, '2020-11-15 10:52:55'),
(2, 'field', 0, 'cf_birth_date', 'datefield', '0', NULL, 0, '2020-11-15 10:52:58'),
(3, 'field', 0, 'cf_gender', 'dropdownfield', 'Male,Female,Non-binary', NULL, 0, '2020-11-15 10:53:03'),
(4, 'field', 0, 'cf_phone', 'numfield', NULL, NULL, 0, '2020-11-15 10:53:06'),
(5, 'field', 0, 'cf_location', 'shorttext', '0', NULL, 0, '2020-11-15 10:53:09'),
(6, 'field', 0, 'cf_country', 'dropdownfield', 'Afghanistan,Albania,Algeria,Andorra,Angola,Antigua &amp;amp; Deps,Argentina,Armenia,Australia,Austria,Azerbaijan,Bahamas,Bahrain,Bangladesh,Barbados,Belarus,Belgium,Belize,Benin,Bhutan,Bolivia,Bosnia Herzegovina,Botswana,Brazil,Brunei,Bulgaria,Burkina,Burma,Burundi,Cambodia,Cameroon,Canada,Cape Verde,Central African Rep,Chad,Chile,People&amp;#039;s Republic of China,Republic of China,Colombia,Comoros,Democratic Republic of the Congo,Republic of the Congo,Costa Rica,Croatia,Cuba,Cyprus,Czech Republic,Danzig,Denmark,Djibouti,Dominica,Dominican Republic,East Timor,Ecuador,Egypt,El Salvador,Equatorial Guinea,Eritrea,Estonia,Ethiopia,Fiji,Finland,France,Gabon,Gaza Strip,The Gambia,Georgia,Germany,Ghana,Greece,Grenada,Guatemala,Guinea,Guinea-Bissau,Guyana,Haiti,Holy Roman Empire,Honduras,Hungary,Iceland,India,Indonesia,Iran,Iraq,Republic of Ireland,Israel,Italy,Ivory Coast,Jamaica,Japan,Jonathanland,Jordan,Kazakhstan,Kenya,Kiribati,North Korea,South Korea,Kosovo,Kuwait,Kyrgyzstan,Laos,Latvia,Lebanon,Lesotho,Liberia,Libya,Liechtenstein,Lithuania,Luxembourg,Macedonia,Madagascar,Malawi,Malaysia,Maldives,Mali,Malta,Marshall Islands,Mauritania,Mauritius,Mexico,Micronesia,Moldova,Monaco,Mongolia,Montenegro,Morocco,Mount Athos,Mozambique,Namibia,Nauru,Nepal,Newfoundland,Netherlands,New Zealand,Nicaragua,Niger,Nigeria,Norway,Oman,Ottoman Empire,Pakistan,Palau,Panama,Papua New Guinea,Paraguay,Peru,Philippines,Poland,Portugal,Prussia,Qatar,Romania,Rome,Russian Federation,Rwanda,St Kitts &amp;amp; Nevis,St Lucia,Saint Vincent &amp;amp; the,Grenadines,Samoa,San Marino,Sao Tome &amp;amp; Principe,Saudi Arabia,Senegal,Serbia,Seychelles,Sierra Leone,Singapore,Slovakia,Slovenia,Solomon Islands,Somalia,South Africa,Spain,Sri Lanka,Sudan,Suriname,Swaziland,Sweden,Switzerland,Syria,Tajikistan,Tanzania,Thailand,Togo,Tonga,Trinidad &amp;amp; Tobago,Tunisia,Turkey,Turkmenistan,Tuvalu,Uganda,Ukraine,United Arab Emirates,United Kingdom,United States of America,Uruguay,Uzbekistan,Vanuatu,Vatican City,Venezuela,Vietnam,Yemen,Zambia,Zimbabwe', NULL, 0, '2020-11-15 10:52:30'),
(8, 'group', 43, 'description', NULL, 'Slektakuler', NULL, 0, '2022-02-02 22:31:50'),
(9, 'group', 52, 'description', NULL, 'Go Fast To The Next Level', NULL, 0, '2022-02-02 22:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `gr_session`
--

CREATE TABLE `gr_session` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tms` datetime DEFAULT NULL,
  `try` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_session`
--

INSERT INTO `gr_session` (`id`, `uid`, `device`, `code`, `tms`, `try`) VALUES
(2, 1, '::1mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'otPE6IwfhpOqeQ', '2022-01-30 06:15:48', '0'),
(4, 1, '::1mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', '1L5oCtf96mJvKD', '2022-01-30 06:20:56', '0'),
(6, 1, '::1mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'JDMxzn4brlLSfx', '2022-01-30 06:25:23', '0'),
(9, 2, '::1mozilla5.0macintoshintelmacosx10157applewebkit605.1.15khtmllikegeckoversion15.2safari605.1.15', 'CYQuuHj6u7zZqR', '2022-01-30 09:39:13', '0'),
(19, 1, '::1mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 'iNwPxdmYG4JuYm', '2022-01-31 09:50:49', '0'),
(22, 4, '10.9.115.226mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 'O9dsGDY4OMerfq', '2022-01-31 09:54:57', '0'),
(24, 1, '10.9.113.86mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 'P9qSjczKfKCw6s', '2022-01-31 10:07:40', '0'),
(28, 2, '10.9.113.77mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'nDstldrU0KBfEH', '2022-01-31 11:56:30', '0'),
(32, 1, '10.9.113.77mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', '60v1nh60s9KU6l', '2022-01-31 13:45:22', '0'),
(34, 2, '10.9.113.77mozilla5.0macintoshintelmacosx10.15rv96.0gecko20100101firefox96.0', 'fOsv90cvsGh2TK', '2022-01-31 13:47:07', '0'),
(36, 2, '182.2.169.181mozilla5.0linuxandroid8.1.0redmi5plusapplewebkit537.36khtmllikegeckochrome97.0.4692.98mobilesafari537.36', 'vF6vrSSx8rr9F7', '2022-01-31 18:08:34', '0'),
(38, 2, '182.2.169.181mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 'MEtKEuMIJVg5qP', '2022-01-31 18:11:44', '0'),
(42, 1, '114.79.5.60mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'jkgpfQF4AEOAHO', '2022-02-01 00:34:35', '0'),
(44, 1, '10.9.113.77mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'LQFvstF8ftse2K', '2022-02-02 07:25:12', '0'),
(52, 1, '115.178.200.217mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome96.0.4664.93safari537.36', '7bLoFig7sCV9we', '2022-02-02 21:30:07', '0'),
(56, 1, '115.178.200.217mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'ryT7CLvjTRdNWm', '2022-02-02 22:22:33', '0'),
(60, 2, '10.9.115.65mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 'P6d5kh3FELMQVi', '2022-02-03 07:07:43', '0'),
(62, 1, '10.9.115.56mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 'GSq3qg0cp7nFDT', '2022-02-03 08:22:56', '0'),
(64, 1, '10.9.113.77mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'QGpp1yQoy8E8VA', '2022-02-03 11:35:36', '0'),
(68, 2, '10.9.113.77mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'cKN3ErIDM1rmGR', '2022-02-04 09:43:44', '0'),
(72, 2, '::1mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 'YQ4m2Kk7woWZwC', '2022-02-04 12:13:24', '0'),
(74, 1, '10.9.113.77mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'oYfTYfetQz5pKE', '2022-02-04 12:16:54', '0'),
(76, 3, '10.9.113.84mozilla5.0linuxandroid11sma515fapplewebkit537.36khtmllikegeckochrome97.0.4692.98mobilesafari537.36', 'JP1xgtf0zsPfRv', '2022-02-04 14:17:42', '0'),
(78, 3, '114.79.6.74mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 'nqoo4EAlftikOi', '2022-02-04 17:23:27', '0'),
(80, 1, '114.79.6.74mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', '5TYAp0pTQQB3kd', '2022-02-05 00:37:09', '0'),
(90, 53, '115.178.198.35mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 'wDLPE5tEaKBHcM', '2022-02-06 13:14:44', '0'),
(91, 0, '::1mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 'YjvzyaiHzCloT6', '2022-02-06 13:26:25', '0');

-- --------------------------------------------------------

--
-- Table structure for table `gr_users`
--

CREATE TABLE `gr_users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mask` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depict` int(11) NOT NULL DEFAULT '1',
  `role` bigint(20) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `altered` datetime NOT NULL,
  `extra` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_users`
--

INSERT INTO `gr_users` (`id`, `name`, `email`, `pass`, `mask`, `depict`, `role`, `created`, `altered`, `extra`) VALUES
(1, 'superuser', 'septian.arman009@gmail.com', 'a28ee80c037348e0a4da62ca645b5034', 'WQ4zWUTb', 8, 2, '2019-04-11 16:54:11', '2022-02-06 04:22:52', '0'),
(2, 'asep.diki', 'asep.siki@kimiafarma.co.id', 'ae4c2fac1c528dfa9e6060349d245850', 'PAQAg7XBOscUD', 2, 3, '2022-01-30 09:39:13', '2022-01-30 09:39:13', '0'),
(3, 'fikri.agil', 'hn.kfupj@gmail.com', 'b30e9fac30c89314586885bc57a0884d', 'Jpxs9o4gn19jF', 2, 3, '2022-01-31 05:38:55', '2022-01-31 05:38:55', '0'),
(4, 'azizah', 'snurazizah327@gmail.com', 'fcb56386c95d6fd2d039d5b9ee99ce0f', 'wbMz05YQv', 8, 3, '2022-01-31 09:54:57', '2022-01-31 09:54:57', '0'),
(5, 'afifihilmiyanti89', 'afifihilmiyanti89@gmail.com', '1dad84a5aa6d755beabf6415e4687ad0', 'dJ0NIGIfCBKKL', 4, 3, '2022-02-06 04:21:57', '2022-02-06 04:21:57', '0'),
(6, 'agung.gustiman', 'agung.gustiman@kimiafarma.co.id', '5e75ccb6061b44fdb52a4b09037def82', 'snTMLLnbKT2T', 4, 3, '2022-02-06 04:23:49', '2022-02-06 04:23:49', '0'),
(7, 'ahmad.sarmali1003', 'ahmad.sarmali1003@kimiafarma.co.id', '0c1df043283b7c43d1cdd3dd7ac12c94', 'zmrEMSHgmRlp', 7, 3, '2022-02-06 04:24:58', '2022-02-06 04:24:58', '0'),
(8, 'anindya.hana', 'anindya.hana@kimiafarma.co.id', '5bd506188779d4ec113678114a085d09', 'uExidGrRAukHM', 6, 3, '2022-02-06 04:25:36', '2022-02-06 04:25:36', '0'),
(9, 'anita.eu', 'anita.eu@kimiafarma.co.id', '4d40011ff5e62910c8eeb95345a8dfa4', 'J4nhmyEDNua', 8, 3, '2022-02-06 04:25:55', '2022-02-06 04:25:55', '0'),
(10, 'ari.gunawan', 'ari.gunawan@kimiafarma.co.id', '3b5284206aa938770a4ce06ed1e78dec', 'QfekFWy8XSXhwx', 8, 3, '2022-02-06 04:26:15', '2022-02-06 04:26:15', '0'),
(11, 'astrid.permatasari', 'astrid.permatasari@kimiafarma.co.id', 'fb0270d591edd232a9c35fab7869faee', 'FBPGuM8fN', 4, 3, '2022-02-06 04:26:34', '2022-02-06 04:26:34', '0'),
(12, 'wanda.angel123', 'wanda.angel123@gmail.com', 'd982f9e407e4edc961b560f6eab75e4c', 'FVs6OLwf', 10, 3, '2022-02-06 04:26:57', '2022-02-06 04:26:57', '0'),
(13, 'denafand', 'denafand@gmail.com', '814eacd953fe1495c932ac1114ebcaeb', 'rEsRtFSi', 10, 3, '2022-02-06 04:27:18', '2022-02-06 04:27:18', '0'),
(14, 'destriarahmadini', 'destriarahmadini@gmail.com', 'ba57f632fa30fdfbe38804113bf7c167', 'G1g8lU1wM5Tl', 1, 3, '2022-02-06 04:27:40', '2022-02-06 04:27:40', '0'),
(15, 'deviscar.tito', 'deviscar.tito@kimiafarma.co.id', '4b565b400b471008e973763f2aa19fe8', '2p7C33M1XQ3fqj', 7, 3, '2022-02-06 04:31:00', '2022-02-06 04:31:00', '0'),
(16, 'dimas.p', 'dimas.p@kimiafarma.co.id', 'd4bc7ab6d676d751ff185bf1e25245ac56faef2786920a960a495bf1985f49d6', 'bOby7Jh43c6', 3, 3, '2022-02-06 04:31:22', '2022-02-06 04:31:22', '0'),
(17, 'oktarini9052', 'oktarini9052@gmail.com', 'ee0e92f584197b5302ea76c405064a58', 'hCX3YUuPdsXWY7', 2, 3, '2022-02-06 04:31:47', '2022-02-06 04:31:47', '0'),
(18, 'siregar.evendy', 'siregar.evendy@kimiafarma.co.id', 'bad943553dcfe7f397685634cf0ef9d1', 'LKKB7MwT', 6, 3, '2022-02-06 04:32:07', '2022-02-06 04:32:07', '0'),
(19, 'fahririsi2873', 'fahririsi2873@gmail.com', '26cfafa09c5be52a065cef8c14704705', 'EfN1UKTIoZCAiBY', 4, 3, '2022-02-06 04:32:26', '2022-02-06 04:32:26', '0'),
(20, 'geta.setyowati', 'geta.setyowati@kimiafarma.co.id', '69dcd4e56b03d31ddfc2185334c490246147aece', '15LW25phFy', 9, 3, '2022-02-06 04:32:44', '2022-02-06 04:32:44', '0'),
(21, 'gian.syahfitria', 'gian.syahfitria@kimiafarma.co.id', '9152b9cf5cec729b798d999d6a5463f2', 'irZ8e3ky4K95L4i', 8, 3, '2022-02-06 04:33:03', '2022-02-06 04:33:03', '0'),
(22, 'gita.mt', 'gita.mt@kimiafarma.co.id', '9e666d7d4489e39531636f28489eec4a', 'Hg92Vp0JQFDP', 8, 3, '2022-02-06 04:33:22', '2022-02-06 04:33:22', '0'),
(23, 'irvan.bastian', 'irvan.bastian@kimiafarma.co.id', 'fbb817fc9ed03bc0704c99b9097aca0fdd3b10dfda7b82a18dc3f0dc946a4c7d', 'wzEBhi8bKTMWP', 3, 3, '2022-02-06 04:33:43', '2022-02-06 04:33:43', '0'),
(24, 'iskandar', 'iskandar@kimiafarma.co.id', '6327b063eacc35b24351a31fcdf5bd54', 'pRPECPOaU', 10, 3, '2022-02-06 04:34:19', '2022-02-06 04:34:19', '0'),
(25, 'ivan.santoso', 'ivan.santoso@kimiafarma.co.id', '7ecacf85d004f8617dd3d6c4638bbae5', 'PXt6xeYNsd', 1, 3, '2022-02-06 04:34:35', '2022-02-06 04:34:54', '0'),
(26, 'katrin.dayatri20', 'katrin.dayatri20@gmail.com', 'd2bb514b9b8ac2161196623e0c2ce15c', 'TheZjSe4wtGHtJ', 8, 3, '2022-02-06 04:35:33', '2022-02-06 04:35:33', '0'),
(27, 'kresma.oky', 'kresma.oky@kimiafarma.co.id', 'a5b083dcf7048cbb00a9e510df7ade1f', 'zzPArfTw', 8, 3, '2022-02-06 04:35:51', '2022-02-06 04:35:51', '0'),
(28, 'kurniawati.hidayah', 'kurniawati.hidayah@gmail.com', '237b63f3877a5a4e8a0a38efb2e1871d', 'UMrRanFPqtt38y0', 4, 3, '2022-02-06 04:36:59', '2022-02-06 04:36:59', '0'),
(29, 'lutfiratnaaw', 'lutfiratnaaw@gmail.com', 'da3c309bfd0b492e16c7901de88445f6', '1bXrbMyhdw3gpa8', 10, 3, '2022-02-06 04:37:14', '2022-02-06 04:37:14', '0'),
(30, 'isapudin.januar', 'isapudin.januar@kimiafarma.co.id', '4825ebd53646ec95c969e53ab3a817b52bf06950', 'CyebEzElM2fGR', 9, 3, '2022-02-06 04:37:30', '2022-02-06 04:37:30', '0'),
(31, 'muhamad.zefri', 'muhamad.zefri@kimiafarma.co.id', 'a88252893dd5ef74b00a88602f5079ce', 'jn2W1tFd7Pt', 5, 3, '2022-02-06 04:37:45', '2022-02-06 04:37:45', '0'),
(32, 'muji.s', 'muji.s@kimiafarma.co.id', '35a5c5df07d41ff1d5b2b1d19d421942', 'xdzrKA1pf', 1, 3, '2022-02-06 04:38:03', '2022-02-06 04:38:03', '0'),
(33, 'muslim.mz', 'muslim.mz@kimiafarma.co.id', 'c1ac22cdfc70631407684ce7d0f1ef5e', 'LpI1E3X8u', 6, 3, '2022-02-06 04:38:18', '2022-02-06 04:38:18', '0'),
(34, 'sarananurdin', 'sarananurdin@gmail.com', '2b26aece3ed095d586e434fc5a02b03b', '3HedzIsISaP45', 5, 3, '2022-02-06 04:38:35', '2022-02-06 04:38:35', '0'),
(35, 'nurleli', 'nurleli@kimiafarma.co.id', '167f8524b68991ad6b632d7233a1f903', 'unBTnDw5SeQLxY', 5, 3, '2022-02-06 04:38:50', '2022-02-06 04:38:50', '0'),
(36, 'nurul.ikhsani', 'nurul.ikhsani@kimiafarma.co.id', '1d6965baae964596fd7291dfaccd4d82', 'tJ57lUSbhD', 2, 3, '2022-02-06 04:39:07', '2022-02-06 04:39:07', '0'),
(37, 'nuryesi', 'nuryesi@kimiafarma.co.id', 'e066b7127d4b5d5bced625aeb7390cb2', 'uHrXz7hC3MG', 10, 3, '2022-02-06 04:39:22', '2022-02-06 04:39:22', '0'),
(38, 'ria.hasanah.putri', 'ria.hasanah.putri@kimiafarma.co.id', '1687e754731a9d371fcf0f3d4b96703e', 'J3aiN0sxDzj8Qr', 6, 3, '2022-02-06 04:39:37', '2022-02-06 04:39:37', '0'),
(39, 'rima.primagda', 'rima.primagda@kimiafarma.co.id', 'f49286e15b964c759cadf42792b43f66', 'BF5DtkGWd', 6, 3, '2022-02-06 04:39:50', '2022-02-06 04:39:50', '0'),
(40, 'roni.sofyar', 'roni.sofyar@kimiafarma.co.id', 'cb5b23d3bf8b7ffc166877300d6d3cdd', 'IxLaSEw8Pm', 10, 3, '2022-02-06 04:40:04', '2022-02-06 04:40:04', '0'),
(41, 'sandy.ariska', 'sandy.ariska@kimiafarma.co.id', '7d30518cb61d2b55dfdc4034de92013d', 'KQCiaqnFuTVKf', 10, 3, '2022-02-06 04:40:19', '2022-02-06 04:40:19', '0'),
(42, 'siti_as', 'siti_as@kimiafarma.co.id', '23750e4cae471d57ebc3615bf9733211', 'wWHfsFKALGeRpU', 7, 3, '2022-02-06 04:40:34', '2022-02-06 04:40:34', '0'),
(43, 'usilowatis', 'usilowatis@gmail.com', '0949b0dcdd2b692aa98c15ae877171a5', '39r51e8J5PSAz', 8, 3, '2022-02-06 04:40:48', '2022-02-06 04:40:48', '0'),
(44, 'sudarmadi', 'sudarmadi@kimiafarma.co.id', '762635b55aa565838314bec31e9ed56b1e1c64ce314f8485ad0025f999ca61e9', '83vksbLVS', 3, 3, '2022-02-06 04:41:03', '2022-02-06 04:41:03', '0'),
(45, 'theresia.nindya', 'theresia.nindya@kimiafarma.co.id', '83684ed124f992b7e7c674e1bb051ec7c73a5d80', 'pzGJmxER', 9, 3, '2022-02-06 04:42:03', '2022-02-06 04:42:03', '0'),
(46, 'mujahidin', 'mujahidin@kimiafarma.co.id', '3dc4d0b84437e5aab569a87d7d989cd0', 'fZpghYyMJPpQa2', 4, 3, '2022-02-06 04:42:19', '2022-02-06 04:42:19', '0'),
(47, 'wahyudin', 'wahyudin@kimiafarma.co.id', '791c10e8e374ca876cf28d298b7d7b3dd8b9f636', 'lCz2eIQiVPCtAT', 9, 3, '2022-02-06 04:42:36', '2022-02-06 04:42:36', '0'),
(48, 'wieditha.yudha', 'wieditha.yudha@kimiafarma.co.id', 'b16c1cc085973ea2051670042ff104953ea5f048', 'v2LNK1PzOlH0ma', 9, 3, '2022-02-06 04:42:51', '2022-02-06 04:42:51', '0'),
(49, 'wildan.andiana', 'wildan.andiana@kimiafarma.co.id', '0806d497e85251eae8c04f68eff75557', 'xvqFx9IC', 6, 3, '2022-02-06 04:43:14', '2022-02-06 04:43:14', '0'),
(50, 'yustika.syamsu', 'yustika.syamsu@kimiafarma.co.id', '30e387d4d8ed4d48ac687f73a33c9fa1', 'UApEEHN8oTR7', 5, 3, '2022-02-06 04:43:29', '2022-02-06 04:43:29', '0'),
(51, 'bramhik', 'bramhik@kimiafarma.co.id', '69aa7b4d9ef2fd3eb20b433b5c8b0596', 'AiHV1VDwm4Ndro8', 8, 3, '2022-02-06 04:45:09', '2022-02-06 04:45:09', '0'),
(52, 'armay.edfano', 'armay.edfano@kimiafarma.co.id', '89af9d2016d3a8663a6a865c1b52357b', 'bcNdcVfL', 10, 3, '2022-02-06 04:45:36', '2022-02-06 04:45:36', '0'),
(53, 'fajar.firmansyah', 'fajar.firmansyah@kimiafarma.co.id', '48b3d1552fc59af396ac2a3d6479a7a2', 'e30frlOu', 10, 3, '2022-02-06 04:45:59', '2022-02-06 13:13:24', '0'),
(54, 'fikrianto', 'fikrianto@kimiafarma.co.id', 'fa14000c490b3ea3a6acc73df9993719', 'WcZHvyzzW', 6, 3, '2022-02-06 04:46:17', '2022-02-06 04:46:17', '0'),
(55, 'irving', 'irving@kimiafarma.co.id', '786e88f665762856813bab451687afb2e6a67a92', 'xQn8hpdN', 9, 3, '2022-02-06 04:46:34', '2022-02-06 04:46:34', '0'),
(56, 'larastuti', 'larastuti@kimiafarma.co.id', '473259cfc6e9df71bb25d4593d7a4285', 'jpajQK2mvjI', 7, 3, '2022-02-06 04:46:49', '2022-02-06 04:46:49', '0'),
(57, 'nur.alam', 'nur.alam@kimiafarma.co.id', '0df9ae9823059e05905fe15e1a73f334', 'DI3Y98Ax9wRDnVN', 10, 3, '2022-02-06 04:47:04', '2022-02-06 04:47:04', '0'),
(58, 'sri.astuti', 'sri.astuti@kimiafarma.co.id', 'a917105e5769cffa6b351a6135ade49d', 'oGktSZuTxUYQ', 8, 3, '2022-02-06 04:47:17', '2022-02-06 04:47:17', '0'),
(59, 'tien', 'tien@kimiafarma.co.id', 'f8ef501fe06913e987ae3822afa9989d', 'xsaqET7pFjd', 1, 3, '2022-02-06 04:47:30', '2022-02-06 04:47:30', '0'),
(60, 'titis.danastri', 'titis.danastri@kimiafarma.co.id', '269b20ee9d3a87158958a4af7a94e657', 'KJSwcuOxMfSkMQ', 8, 3, '2022-02-06 04:47:48', '2022-02-06 04:47:48', '0'),
(61, 'yanti.hardiyanti', 'yanti.hardiyanti@kimiafarma.co.id', '417c3fca4408055b994020c6de8acd12', 'oHiLoa131Z', 1, 3, '2022-02-06 04:48:02', '2022-02-06 04:48:02', '0'),
(62, 'angga.saenagri', 'angga.saenagri@kimiafarma.co.id', '8dd6dde7d65fadad080c1af8c24f3687', '327mV4K1J', 5, 3, '2022-02-06 04:48:41', '2022-02-06 04:48:41', '0'),
(63, 'yogi.sugianto', 'yogi.sugianto@kimiafarma.co.id', '816601e5d9f3070955c974b81e260e00', 'SqAcfELF723HBWl', 1, 3, '2022-02-06 04:49:43', '2022-02-06 04:49:43', '0'),
(64, 'yurista.gilang', 'yurista.gilang@gmail.com', '40e6728bb76fcc9b5499f4f897c1c6df', 'VQZnayXuWQZN', 1, 3, '2022-02-06 04:50:38', '2022-02-06 04:50:38', '0');

-- --------------------------------------------------------

--
-- Table structure for table `gr_utrack`
--

CREATE TABLE `gr_utrack` (
  `id` bigint(20) NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dev` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `tms` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gr_utrack`
--

INSERT INTO `gr_utrack` (`id`, `ip`, `dev`, `uid`, `status`, `tms`) VALUES
(1, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 06:15:48'),
(2, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 06:20:56'),
(3, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 06:27:43'),
(4, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 06:32:59'),
(5, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 06:54:21'),
(6, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 07:32:02'),
(7, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 07:37:30'),
(8, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit605.1.15khtmllikegeckoversion15.2safari605.1.15', 2, 0, '2022-01-30 09:39:13'),
(9, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 13:02:51'),
(10, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 13:09:54'),
(11, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 13:15:08'),
(12, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 13:20:10'),
(13, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 13:25:51'),
(14, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 13:32:57'),
(15, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-01-30 13:33:46'),
(16, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-01-30 19:23:11'),
(17, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-01-30 22:42:09'),
(18, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 22:42:26'),
(19, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 22:47:40'),
(20, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 22:53:59'),
(21, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-30 22:59:27'),
(22, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-31 05:36:27'),
(23, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-01-31 05:40:02'),
(24, '::1', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 3, 0, '2022-01-31 05:40:46'),
(25, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-01-31 09:50:49'),
(26, '10.9.113.86', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 2, 0, '2022-01-31 09:52:20'),
(27, '10.9.115.226', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 4, 0, '2022-01-31 09:54:57'),
(28, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-01-31 09:59:22'),
(29, '10.9.113.86', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 2, 0, '2022-01-31 10:00:32'),
(30, '10.9.113.86', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 2, 0, '2022-01-31 10:05:35'),
(31, '10.9.113.86', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-01-31 10:07:40'),
(32, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-01-31 10:15:40'),
(33, '10.9.113.86', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-01-31 10:20:06'),
(34, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-01-31 10:22:36'),
(35, '127.0.0.1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-01-31 10:28:15'),
(36, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-01-31 10:31:57'),
(37, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-31 11:49:06'),
(38, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-31 11:56:03'),
(39, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-01-31 11:56:30'),
(40, '10.9.115.10', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-01-31 13:39:03'),
(41, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-01-31 13:44:39'),
(42, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-31 13:45:22'),
(43, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10.15rv96.0gecko20100101firefox96.0', 2, 0, '2022-01-31 13:47:07'),
(44, '182.2.169.181', 'mozilla5.0linuxandroid8.1.0redmi5plusapplewebkit537.36khtmllikegeckochrome97.0.4692.98mobilesafari537.36', 2, 0, '2022-01-31 18:08:35'),
(45, '182.2.169.181', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 2, 0, '2022-01-31 18:11:44'),
(46, '114.79.5.60', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-01-31 18:50:22'),
(47, '114.79.5.60', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-01-31 20:05:19'),
(48, '114.79.5.60', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-01-31 20:22:44'),
(49, '114.79.5.60', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-02-01 00:29:40'),
(50, '114.79.5.60', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-01 00:34:35'),
(51, '114.79.5.60', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-02-01 05:45:53'),
(52, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 07:25:13'),
(53, '114.124.214.230', 'mozilla5.0linuxandroid8.1.0redmi5plusapplewebkit537.36khtmllikegeckochrome97.0.4692.98mobilesafari537.36', 2, 0, '2022-02-02 07:44:37'),
(54, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-02 09:51:38'),
(55, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 09:59:12'),
(56, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 11:51:15'),
(57, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 11:56:57'),
(58, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-02-02 11:59:23'),
(59, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-02-02 12:46:12'),
(60, '115.178.200.196', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-02-02 12:47:01'),
(61, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 12:47:11'),
(62, '115.178.200.217', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome96.0.4664.93safari537.36', 1, 0, '2022-02-02 21:30:08'),
(63, '115.178.200.217', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 21:38:38'),
(64, '115.178.200.217', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-02-02 22:12:06'),
(65, '115.178.200.217', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome96.0.4664.93safari537.36', 1, 0, '2022-02-02 22:14:53'),
(66, '115.178.200.217', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome96.0.4664.93safari537.36', 1, 0, '2022-02-02 22:20:35'),
(67, '115.178.200.217', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 22:22:34'),
(68, '115.178.200.217', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 22:31:18'),
(69, '115.178.200.217', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-02 22:36:42'),
(70, '115.178.200.217', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-02 22:41:18'),
(71, '115.178.200.217', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-02-02 22:44:23'),
(72, '10.9.115.65', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-03 07:04:43'),
(73, '10.9.115.10', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-03 07:07:25'),
(74, '10.9.115.65', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 2, 0, '2022-02-03 07:07:44'),
(75, '10.9.115.10', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-03 07:13:24'),
(76, '10.9.115.65', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 2, 0, '2022-02-03 07:13:29'),
(77, '10.9.115.56', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-02-03 08:22:57'),
(78, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-03 11:33:49'),
(79, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-03 11:35:36'),
(80, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-03 13:54:54'),
(81, '10.9.115.57', 'mozilla5.0windowsnt6.1wow64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 2, 0, '2022-02-04 09:42:37'),
(82, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-02-04 09:43:44'),
(83, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-02-04 12:08:07'),
(84, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-04 12:12:51'),
(85, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 2, 0, '2022-02-04 12:13:25'),
(86, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-04 12:16:55'),
(87, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-04 12:28:21'),
(88, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 2, 0, '2022-02-04 12:38:44'),
(89, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-04 12:43:26'),
(90, '10.9.113.77', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-04 13:08:05'),
(91, '10.9.115.61', 'mozilla5.0linuxandroid8.1.0redmi5plusapplewebkit537.36khtmllikegeckochrome98.0.4758.87mobilesafari537.36', 2, 0, '2022-02-04 14:06:42'),
(92, '10.9.113.86', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-02-04 14:12:05'),
(93, '10.9.115.61', 'mozilla5.0linuxandroid8.1.0redmi5plusapplewebkit537.36khtmllikegeckochrome98.0.4758.87mobilesafari537.36', 2, 0, '2022-02-04 14:12:46'),
(94, '10.9.113.84', 'mozilla5.0linuxandroid11sma515fapplewebkit537.36khtmllikegeckochrome97.0.4692.98mobilesafari537.36', 3, 0, '2022-02-04 14:17:42'),
(95, '114.79.6.74', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-04 16:50:14'),
(96, '114.79.6.74', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-04 17:05:47'),
(97, '114.79.6.74', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-02-04 17:17:00'),
(98, '114.79.6.74', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-04 17:17:24'),
(99, '114.79.6.74', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 3, 0, '2022-02-04 17:23:28'),
(100, '114.79.6.74', 'mozilla5.0windowsnt10.0win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 3, 0, '2022-02-04 17:34:49'),
(101, '223.255.229.24', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-04 19:39:55'),
(102, '114.79.6.74', 'mozilla5.0linuxandroid7.1.2redmi4xapplewebkit537.36khtmllikegeckochrome96.0.4664.104mobilesafari537.36', 1, 0, '2022-02-04 20:16:52'),
(103, '223.255.229.24', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-04 20:20:21'),
(104, '114.79.6.74', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-05 00:37:09'),
(105, '114.79.6.74', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-05 04:51:40'),
(106, '114.5.250.13', 'mozilla5.0linuxandroid11sma515fapplewebkit537.36khtmllikegeckochrome97.0.4692.98mobilesafari537.36', 3, 0, '2022-02-05 20:10:38'),
(107, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 04:16:14'),
(108, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 04:22:52'),
(109, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 2, 0, '2022-02-06 04:28:40'),
(110, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 3, 0, '2022-02-06 04:29:12'),
(111, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 04:30:31'),
(112, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 04:36:27'),
(113, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 04:44:01'),
(114, '115.178.208.16', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 04:50:48'),
(115, '115.178.198.35', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 10:47:00'),
(116, '115.178.198.35', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 1, 0, '2022-02-06 13:08:11'),
(117, '115.178.198.35', 'mozilla5.0macintoshintelmacosx10157applewebkit537.36khtmllikegeckochrome95.0.4638.69safari537.36', 53, 0, '2022-02-06 13:14:45'),
(118, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 2, 0, '2022-02-06 13:17:56'),
(119, '::1', 'mozilla5.0windowsnt6.3win64x64applewebkit537.36khtmllikegeckochrome97.0.4692.99safari537.36', 1, 0, '2022-02-06 13:27:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gr_ads`
--
ALTER TABLE `gr_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__adslot` (`adslot`) USING BTREE;

--
-- Indexes for table `gr_alerts`
--
ALTER TABLE `gr_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__uid` (`uid`),
  ADD KEY `idx__uid_seen` (`uid`,`seen`);

--
-- Indexes for table `gr_complaints`
--
ALTER TABLE `gr_complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__gid_id` (`gid`,`id`),
  ADD KEY `idx__status_gid` (`status`,`gid`);

--
-- Indexes for table `gr_customize`
--
ALTER TABLE `gr_customize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gr_defaults`
--
ALTER TABLE `gr_defaults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gr_logs`
--
ALTER TABLE `gr_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__v1_type_v2` (`v1`,`type`,`v2`),
  ADD KEY `idx__v1_type_tms` (`v1`,`type`,`tms`);

--
-- Indexes for table `gr_mails`
--
ALTER TABLE `gr_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gr_msgs`
--
ALTER TABLE `gr_msgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__gid_id` (`gid`,`id`),
  ADD KEY `idx__gid_type` (`gid`,`type`),
  ADD KEY `idx__xtra_type` (`xtra`,`type`),
  ADD KEY `idx__uid_type` (`uid`,`type`),
  ADD KEY `idx__gid_cat_id` (`gid`,`cat`,`id`),
  ADD KEY `idx__id_gid_type` (`id`,`gid`,`type`),
  ADD KEY `idx__gid_cat_type_xtra` (`gid`,`cat`,`type`,`xtra`),
  ADD KEY `idx__msg_gid_uid_type` (`msg`(191),`gid`,`uid`,`type`);

--
-- Indexes for table `gr_options`
--
ALTER TABLE `gr_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__v3_v1_type` (`v3`,`v1`,`type`),
  ADD KEY `idx__v2_v1_type` (`v2`,`v1`,`type`),
  ADD KEY `idx__type_id_tms` (`type`,`id`,`tms`),
  ADD KEY `idx__v1_type` (`v1`,`type`),
  ADD KEY `idx__v2_type` (`v2`,`type`),
  ADD KEY `idx__v1_type_v3` (`v1`,`type`,`v3`),
  ADD KEY `idx__v1_type_v2` (`v1`,`type`,`v2`),
  ADD KEY `idx__v1_type_v2_id` (`v1`,`type`,`v2`,`id`),
  ADD KEY `idx__type_v3` (`type`,`v3`),
  ADD KEY `idx__v3_v1_v2_type` (`v3`,`v1`(50),`v2`(50),`type`);

--
-- Indexes for table `gr_permissions`
--
ALTER TABLE `gr_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__name` (`name`);

--
-- Indexes for table `gr_phrases`
--
ALTER TABLE `gr_phrases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__type_short` (`type`,`short`),
  ADD KEY `idx__lid_type` (`lid`,`type`);

--
-- Indexes for table `gr_profiles`
--
ALTER TABLE `gr_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__type_id` (`type`,`id`),
  ADD KEY `idx__uid_type` (`uid`,`type`);

--
-- Indexes for table `gr_session`
--
ALTER TABLE `gr_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__code_device` (`code`,`device`);

--
-- Indexes for table `gr_users`
--
ALTER TABLE `gr_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx__role` (`role`);

--
-- Indexes for table `gr_utrack`
--
ALTER TABLE `gr_utrack`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx__uid_ip` (`uid`,`ip`),
  ADD KEY `idx__uid_tms` (`uid`,`tms`),
  ADD KEY `idx__ip_dev_uid` (`ip`,`dev`,`uid`) USING BTREE,
  ADD KEY `idx__uid_ip_dev` (`uid`,`ip`,`dev`),
  ADD KEY `idx__uid_ip_dev_tms` (`uid`,`ip`,`dev`,`tms`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gr_ads`
--
ALTER TABLE `gr_ads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gr_alerts`
--
ALTER TABLE `gr_alerts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gr_complaints`
--
ALTER TABLE `gr_complaints`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gr_customize`
--
ALTER TABLE `gr_customize`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `gr_defaults`
--
ALTER TABLE `gr_defaults`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `gr_logs`
--
ALTER TABLE `gr_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gr_mails`
--
ALTER TABLE `gr_mails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gr_msgs`
--
ALTER TABLE `gr_msgs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `gr_options`
--
ALTER TABLE `gr_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `gr_permissions`
--
ALTER TABLE `gr_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gr_phrases`
--
ALTER TABLE `gr_phrases`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;

--
-- AUTO_INCREMENT for table `gr_profiles`
--
ALTER TABLE `gr_profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gr_session`
--
ALTER TABLE `gr_session`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `gr_users`
--
ALTER TABLE `gr_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `gr_utrack`
--
ALTER TABLE `gr_utrack`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;