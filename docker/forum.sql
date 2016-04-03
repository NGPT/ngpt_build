-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2016 at 10:21 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zhxs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ngpt_forum_forum`
--

CREATE TABLE IF NOT EXISTS `ngpt_forum_forum` (
  `fid` mediumint(8) UNSIGNED NOT NULL,
  `fup` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('group','forum','sub') NOT NULL DEFAULT 'forum',
  `name` char(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `styleid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `threads` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `todayposts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `yesterdayposts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `oldrank` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` text NOT NULL,
  `domain` char(15) NOT NULL DEFAULT '',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowmediacode` tinyint(1) NOT NULL DEFAULT '0',
  `allowanonymous` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostspecial` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `allowspecialonly` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowappend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `alloweditrules` tinyint(1) NOT NULL DEFAULT '0',
  `allowfeed` tinyint(1) NOT NULL DEFAULT '1',
  `allowside` tinyint(1) NOT NULL DEFAULT '0',
  `recyclebin` tinyint(1) NOT NULL DEFAULT '0',
  `modnewposts` tinyint(1) NOT NULL DEFAULT '0',
  `jammer` tinyint(1) NOT NULL DEFAULT '0',
  `disablewatermark` tinyint(1) NOT NULL DEFAULT '0',
  `inheritedmod` tinyint(1) NOT NULL DEFAULT '0',
  `autoclose` smallint(6) NOT NULL DEFAULT '0',
  `forumcolumns` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `catforumcolumns` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `threadcaches` tinyint(1) NOT NULL DEFAULT '0',
  `alloweditpost` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `simple` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `modworks` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowglobalstick` tinyint(1) NOT NULL DEFAULT '1',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `commoncredits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `recommend` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `favtimes` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `disablethumb` tinyint(1) NOT NULL DEFAULT '0',
  `disablecollect` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DELETE FROM `ngpt_forum_forum`;

--
-- Dumping data for table `ngpt_forum_forum`
--

INSERT INTO `ngpt_forum_forum` (`fid`, `fup`, `type`, `name`, `status`, `displayorder`, `styleid`, `threads`, `posts`, `todayposts`, `yesterdayposts`, `rank`, `oldrank`, `lastpost`, `domain`, `allowsmilies`, `allowhtml`, `allowbbcode`, `allowimgcode`, `allowmediacode`, `allowanonymous`, `allowpostspecial`, `allowspecialonly`, `allowappend`, `alloweditrules`, `allowfeed`, `allowside`, `recyclebin`, `modnewposts`, `jammer`, `disablewatermark`, `inheritedmod`, `autoclose`, `forumcolumns`, `catforumcolumns`, `threadcaches`, `alloweditpost`, `simple`, `modworks`, `allowglobalstick`, `level`, `commoncredits`, `archive`, `recommend`, `favtimes`, `sharetimes`, `disablethumb`, `disablecollect`) VALUES
(1, 0, 'group', '资源/讨论区', 1, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 'forum', '电影', 1, 0, 0, 62, 313, 0, 1, 10, 6, '7142	[大陆][中国合伙人][American.Dreams.in.China.2013.HDTV.SUBBED.MiniSD-TLF][剧情][国语][英文字幕]	1459677747	13151146', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 15, 0, 0, 0),
(3, 0, 'group', '影音', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 'group', '情感', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 'group', '生活', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 'group', '休闲', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 'group', '游戏', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 'group', '体育', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 3, 'forum', '电影', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 3, 'forum', '音乐', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 3, 'forum', '视频', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 3, 'forum', '电视', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 4, 'forum', '交友', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 4, 'forum', '单身', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 4, 'forum', '诉说', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 4, 'forum', '婚恋', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 5, 'forum', '美食', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 5, 'forum', '购物', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 5, 'forum', '美容', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 5, 'forum', '健康', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 5, 'forum', '汽车', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 6, 'forum', '时尚', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 6, 'forum', '星座', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 6, 'forum', '摄影', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 6, 'forum', '宠物', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 6, 'forum', '动漫', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(27, 6, 'forum', '旅游', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 6, 'forum', '设计', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 8, 'forum', '足球', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 8, 'forum', '篮球', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 8, 'forum', '羽毛球', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 8, 'forum', '乒乓球', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 7, 'forum', '网游', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 7, 'forum', '单机', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 0, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 1, 'forum', '动漫', 1, 1, 0, 56, 491, 0, 0, 23, 15, '7135	[日本][PC][是谁杀了知更鸟][谁が杀したコマドリ][AVG][简体中文][萌你妹][压缩包]	1459608062	记录12138', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0),
(38, 1, 'forum', '游戏', 1, 2, 0, 50, 206, 0, 0, 24, 31, '4067	[Windows][SPG][NBA 2K16 3DM破解免安装版][NBA.2K16.Michael.Jordan.Edition.Multi8.Cracked-3DM][简中][压缩包]	1459576580	vinimini324', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0),
(39, 1, 'forum', '音乐', 1, 3, 0, 8, 18, 0, 0, 25, 30, '7094	[欧美][2013-10-16][Taylor Swift][Trouble - Victoria\'s Secret][720p][MP4]	1459253747	simon', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 1, 'forum', '剧集', 1, 4, 0, 15, 48, 0, 0, 26, 7, '7140	[日韩][太阳的后裔][Descendants.Of.The.Sun.][2016.EP12][HD720P.X264.AAC.Korean.CHS.DYTT][韩语][中文字幕]	1459612546	Markbuaa', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 1),
(41, 1, 'forum', '软件', 1, 5, 0, 18, 68, 0, 0, 27, 29, '6587	[Win][ANSYS17.0][ANSYS17.0][英文][行业软件][ISO][X64][破解版]	1459673678	想要飞翔的龙', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 1),
(42, 1, 'forum', '体育', 1, 6, 0, 4, 17, 0, 0, 28, 27, '4701	[篮球][2014-06-16][NBA总决赛][2014NBA总决赛G1~G5][NBA 2014 The Finals][马刺-热火][英文][无][1280*720]	1458382295	13021183', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
(43, 1, 'forum', '纪录', 1, 7, 0, 6, 15, 0, 0, 29, 26, '5510	[2015][BBC][巴黎私厨][Paris Kitchen][720p][国语][中英字幕][MP4][录制]	1459597425	sawyerlg', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 1),
(44, 1, 'forum', '综艺', 1, 8, 0, 13, 19, 0, 0, 30, 25, '7137	[大陆][20160401][湖南卫视 我是歌手 第四季][第12期：张信哲串烧TFBOYS神曲 突围赛歌王争夺白热化][720p]	1459593792	chenjiemin0417', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0),
(45, 1, 'forum', '学习', 1, 9, 0, 12, 40, 0, 0, 31, 10, '6881	[计算机][ANSYS ICEM CFD 网格划分教程][无][汉语][AVI]	1459616820	唐中富', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0),
(46, 1, 'forum', '其他', 1, 10, 0, 7, 15, 0, 0, 32, 24, '7092	[日本][进击的巨人真人版：后篇][进击的巨人真人版：后篇.Attack.On.Titan.Part.2.End.Of.The.World.2015.HD1080P.X264.AAC.Japanese.CHS.Mp4Ba][惊悚/恐怖/冒险][日语][中文字幕]	1459493053	BUAAhyp', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 2, 'sub', '电影资源区', 1, 0, 0, 1548, 3668, 3, 15, 1, 1, '7142	[大陆][中国合伙人][American.Dreams.in.China.2013.HDTV.SUBBED.MiniSD-TLF][剧情][国语][英文字幕]	1459677747	13151146', '', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 164, 0, 0, 0),
(60, 37, 'sub', '动漫资源区', 1, 0, 0, 1127, 2280, 0, 1, 9, 9, '7138	[日本][TVA][食灵-零-/喰霊-零-][Ga-Rei-Zero][01-12Fin][天空树][BDRip][H264]	1459595314	abu', '', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0),
(62, 38, 'sub', '游戏资源区', 1, 0, 0, 311, 1278, 0, 1, 8, 5, '4067	[Windows][SPG][NBA 2K16 3DM破解免安装版][NBA.2K16.Michael.Jordan.Edition.Multi8.Cracked-3DM][简中][压缩包]	1459576580	vinimini324', '', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0),
(64, 39, 'sub', '音乐资源区', 1, 0, 0, 140, 278, 0, 0, 33, 28, '7094	[欧美][2013-10-16][Taylor Swift][Trouble - Victoria\'s Secret][720p][MP4]	1459253747	simon', '', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0),
(66, 40, 'sub', '剧集资源区', 1, 0, 0, 973, 2172, 0, 4, 2, 2, '7140	[日韩][太阳的后裔][Descendants.Of.The.Sun.][2016.EP12][HD720P.X264.AAC.Korean.CHS.DYTT][韩语][中文字幕]	1459612546	Markbuaa', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0),
(68, 41, 'sub', '软件资源区', 1, 0, 0, 323, 993, 1, 2, 6, 3, '6587	[Win][ANSYS17.0][ANSYS17.0][英文][行业软件][ISO][X64][破解版]	1459673678	想要飞翔的龙', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0),
(70, 42, 'sub', '体育资源区', 1, 0, 0, 110, 215, 0, 0, 22, 34, '4701	[篮球][2014-06-16][NBA总决赛][2014NBA总决赛G1~G5][NBA 2014 The Finals][马刺-热火][英文][无][1280*720]	1458382295	13021183', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0),
(72, 43, 'sub', '纪录资源区', 1, 0, 0, 225, 410, 0, 2, 5, 32, '5510	[2015][BBC][巴黎私厨][Paris Kitchen][720p][国语][中英字幕][MP4][录制]	1459597425	sawyerlg', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0),
(74, 44, 'sub', '综艺资源区', 1, 0, 0, 265, 487, 0, 3, 4, 33, '7137	[大陆][20160401][湖南卫视 我是歌手 第四季][第12期：张信哲串烧TFBOYS神曲 突围赛歌王争夺白热化][720p]	1459593792	chenjiemin0417', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0),
(76, 45, 'sub', '学习资源区', 1, 0, 0, 261, 722, 1, 1, 11, 23, '6881	[计算机][ANSYS ICEM CFD 网格划分教程][无][汉语][AVI]	1459616820	唐中富', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0),
(78, 46, 'sub', '文件分享区', 0, 1, 0, 0, 0, 0, 0, 15, 22, '			', '', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 0, 'group', '站务管理', 1, 2, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 80, 'forum', '公告', 1, 0, 0, 6, 7, 0, 0, 18, 21, '3824	新学期的网站发展	1442571017	admin', '', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 80, 'forum', '申请', 0, 1, 0, 0, 0, 0, 0, 21, 11, '			', '', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 46, 'sub', '其他资源区', 0, 0, 0, 0, 0, 0, 0, 12, 12, '			', '', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 80, 'forum', '测试', 1, 2, 0, 42, 307, 0, 0, 20, 13, '5320	被队友坑了	1448111536	shoko', '', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1),
(86, 38, 'sub', '游戏视频区', 1, 1, 0, 92, 147, 0, 0, 19, 14, '7031	[MOBA][DOTA][09DOTA高分局 中单幻刺影魔_超清][2009][MP4][无需字幕][1104*828]	1458810869	zyl', '', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0),
(87, 0, 'group', '绝对领域', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 87, 'forum', '新手帮助', 1, 0, 0, 109, 737, 0, 2, 7, 4, '7115	为什么不能做种？	1459602637	孙悟空', '', 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1),
(89, 87, 'forum', '泄洪区', 1, 1, 0, 291, 3121, 0, 0, 17, 16, '3912	笑话大杂烩——给枯燥的科研生活带来一丝快乐【长期更新】	1459410453	呼吸的机器', '', 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 11, 0, 0, 1),
(90, 1, 'forum', '悬赏区', 0, 11, 0, 0, 0, 0, 0, 16, 17, '			', '', 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 64, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 37, 'sub', '动漫版自留地', 1, 1, 0, 80, 325, 0, 3, 3, 18, '7135	[日本][PC][是谁杀了知更鸟][谁が杀したコマドリ][AVG][简体中文][萌你妹][压缩包]	1459608062	记录12138', '', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0),
(92, 80, 'forum', '反馈', 1, 3, 0, 120, 610, 0, 0, 14, 19, '7090	发的种子无法显示出来，也无法编辑	1459300201	xingtiange', '', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 46, 'sub', '普清剧集区', 1, 0, 0, 0, 0, 0, 0, 13, 20, '', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 46, 'sub', '普清电影区', 1, 0, 0, 33, 132, 0, 0, 34, 8, '7127	[美国][猎杀u-571][u-571][动作/剧情/战争][英文][中英字幕]	1459614218	xingtiange', '', 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ngpt_forum_forum`
--
ALTER TABLE `ngpt_forum_forum`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `forum` (`status`,`type`,`displayorder`),
  ADD KEY `fup_type` (`fup`,`type`,`displayorder`),
  ADD KEY `fup` (`fup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ngpt_forum_forum`
--
ALTER TABLE `ngpt_forum_forum`
  MODIFY `fid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2016 at 10:39 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zhxs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ngpt_forum_forumfield`
--

CREATE TABLE IF NOT EXISTS `ngpt_forum_forumfield` (
  `fid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `password` varchar(12) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `attachextensions` varchar(255) NOT NULL DEFAULT '',
  `creditspolicy` mediumtext NOT NULL,
  `formulaperm` text NOT NULL,
  `moderators` text NOT NULL,
  `rules` text NOT NULL,
  `threadtypes` text NOT NULL,
  `threadsorts` text NOT NULL,
  `viewperm` text NOT NULL,
  `postperm` text NOT NULL,
  `replyperm` text NOT NULL,
  `getattachperm` text NOT NULL,
  `postattachperm` text NOT NULL,
  `postimageperm` text NOT NULL,
  `spviewperm` text NOT NULL,
  `seotitle` text NOT NULL,
  `keywords` text NOT NULL,
  `seodescription` text NOT NULL,
  `supe_pushsetting` text NOT NULL,
  `modrecommend` text NOT NULL,
  `threadplugin` text NOT NULL,
  `replybg` text NOT NULL,
  `extra` text NOT NULL,
  `jointype` tinyint(1) NOT NULL DEFAULT '0',
  `gviewperm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `membernum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastupdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `founderuid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `foundername` varchar(255) NOT NULL DEFAULT '',
  `banner` varchar(255) NOT NULL DEFAULT '',
  `groupnum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `commentitem` text NOT NULL,
  `relatedgroup` text NOT NULL,
  `picstyle` tinyint(1) NOT NULL DEFAULT '0',
  `widthauto` tinyint(1) NOT NULL DEFAULT '0',
  `noantitheft` tinyint(1) NOT NULL DEFAULT '0',
  `noforumhidewater` tinyint(1) NOT NULL DEFAULT '0',
  `noforumrecommend` tinyint(1) NOT NULL DEFAULT '0',
  `livetid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DELETE FROM `ngpt_forum_forumfield`;

--
-- Dumping data for table `ngpt_forum_forumfield`
--

INSERT INTO `ngpt_forum_forumfield` (`fid`, `description`, `password`, `icon`, `redirect`, `attachextensions`, `creditspolicy`, `formulaperm`, `moderators`, `rules`, `threadtypes`, `threadsorts`, `viewperm`, `postperm`, `replyperm`, `getattachperm`, `postattachperm`, `postimageperm`, `spviewperm`, `seotitle`, `keywords`, `seodescription`, `supe_pushsetting`, `modrecommend`, `threadplugin`, `replybg`, `extra`, `jointype`, `gviewperm`, `membernum`, `dateline`, `lastupdate`, `activity`, `founderuid`, `foundername`, `banner`, `groupnum`, `commentitem`, `relatedgroup`, `picstyle`, `widthauto`, `noantitheft`, `noforumhidewater`, `noforumrecommend`, `livetid`, `price`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(2, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '别致的思绪	daidai', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(27, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(29, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(30, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(31, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(32, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(33, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(34, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(35, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(37, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', 'pigeon	水萤灯	西木野真姬', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', 'http://10.254.36.2:81/source/plugin/ngpt/template/headers/header-acgn.htm', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(38, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', 'lonelyzerg	轩轩醉了	落叶', '<div align="center"><strong>发帖前请先阅读<a href="http://www.bevip.xyz/forum.php?mod=viewthread&amp;tid=471" target="_blank"><font color="Red">版规</font></a>！&nbsp; &nbsp; 无主题的游戏闲聊群 284803315</strong></div>', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(39, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', 'morpho13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(40, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', 'daidai', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(41, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', 'Dht', '<img id="aimg_OHHhO"  class="zoom" src="http://10.254.36.2:81/data/attachment/forum/201507/21/191131qt25ggo9ty21pded.jpg"   border="0" alt="" /><br />\r\n<a href="http://www.bevip.xyz/forum.php?mod=viewthread&amp;tid=466&amp;extra=page%3D1" target="_blank"><font color="DarkOrange">发帖前请仔细阅读</font><font color="Red">版规</font></a>', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(42, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '506999	wuxinsce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(43, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', 'metesa	CFan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(44, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '小叮当', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(45, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '林路', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(46, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(59, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(60, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', 'a:6:{s:8:"required";b:1;s:8:"listable";b:1;s:6:"prefix";s:1:"1";s:5:"types";a:8:{i:9;s:6:"动画";i:10;s:6:"音乐";i:11;s:6:"漫画";i:12;s:9:"设定集";i:13;s:6:"画集";i:14;s:4:"LIVE";i:15;s:3:"AMV";i:16;s:12:"相关视频";}s:5:"icons";a:8:{i:9;s:0:"";i:10;s:0:"";i:11;s:0:"";i:12;s:0:"";i:13;s:0:"";i:14;s:0:"";i:15;s:0:"";i:16;s:0:"";}s:10:"moderators";a:8:{i:9;s:1:"0";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";i:13;s:1:"0";i:14;s:1:"0";i:15;s:1:"0";i:16;s:1:"0";}}', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(62, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', 'a:6:{s:8:"required";b:1;s:8:"listable";b:1;s:6:"prefix";s:1:"1";s:5:"types";a:4:{i:21;s:6:"单机";i:22;s:6:"网游";i:23;s:6:"补丁";i:24;s:6:"其他";}s:5:"icons";a:4:{i:21;s:0:"";i:22;s:0:"";i:23;s:0:"";i:24;s:0:"";}s:10:"moderators";a:4:{i:21;N;i:22;N;i:23;N;i:24;N;}}', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(64, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', 'a:6:{s:8:"required";b:1;s:8:"listable";b:1;s:6:"prefix";s:1:"1";s:5:"types";a:4:{i:17;s:6:"单曲";i:18;s:6:"专辑";i:19;s:9:"演唱会";i:20;s:2:"MV";}s:5:"icons";a:4:{i:17;s:0:"";i:18;s:0:"";i:19;s:0:"";i:20;s:0:"";}s:10:"moderators";a:4:{i:17;s:1:"0";i:18;s:1:"0";i:19;s:1:"0";i:20;s:1:"0";}}', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(66, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(68, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', 'a:6:{s:8:"required";b:1;s:8:"listable";b:1;s:6:"prefix";s:1:"1";s:5:"types";a:5:{i:25;s:12:"专属软件";i:26;s:12:"自由软件";i:27;s:12:"共享软件";i:28;s:12:"免费软件";i:29;s:12:"公共软件";}s:5:"icons";a:5:{i:25;s:0:"";i:26;s:0:"";i:27;s:0:"";i:28;s:0:"";i:29;s:0:"";}s:10:"moderators";a:5:{i:25;s:1:"0";i:26;s:1:"0";i:27;s:1:"0";i:28;s:1:"0";i:29;s:1:"0";}}', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(70, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(72, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(74, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(76, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(78, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(80, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(82, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '	16	1	2	3	', '	16	1	2	3	', '	16	1	2	3	', '	16	1	2	3	', '	16	1	2	3	', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(83, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(84, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(85, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:42:"该板块不开放，仅供测试使用。";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '	29	1	2	3	', '	29	1	2	3	', '	29	1	2	3	', '	29	1	2	3	', '	29	1	2	3	', '	29	1	2	3	', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(86, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(87, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(88, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(89, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '紫晓暮雾', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(90, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '	1	', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(91, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '	11	12	13	14	15	21	22	23	24	25	26	27	28	20	29	16	1	2	3	', '	11	12	13	14	15	21	22	23	24	25	26	27	28	20	29	16	1	2	3	', '	11	12	13	14	15	21	22	23	24	25	26	27	28	20	29	16	1	2	3	', '	11	12	13	14	15	21	22	23	24	25	26	27	28	20	29	16	1	2	3	', '	11	12	13	14	15	21	22	23	24	25	26	27	28	20	29	16	1	2	3	', '	11	12	13	14	15	21	22	23	24	25	26	27	28	20	29	16	1	2	3	', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(92, '', '', '', '', '', 'a:0:{}', 'a:5:{i:0;s:0:"";i:1;s:0:"";s:7:"message";s:0:"";s:5:"medal";N;s:5:"users";s:0:"";}', '', '', 'a:6:{s:8:"required";b:1;s:8:"listable";b:1;s:6:"prefix";s:1:"1";s:5:"types";a:3:{i:30;s:9:"Bug反馈";i:32;s:12:"功能建议";i:31;s:12:"站务投诉";}s:5:"icons";a:3:{i:30;s:0:"";i:32;s:0:"";i:31;s:0:"";}s:10:"moderators";a:3:{i:30;N;i:32;s:1:"0";i:31;N;}}', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'N;', '', 'a:2:{s:9:"namecolor";s:0:"";s:9:"iconwidth";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(93, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0),
(94, '', '', '', '', '', '', 'a:2:{s:5:"medal";N;s:5:"users";s:0:"";}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a:8:{s:4:"open";s:1:"0";s:3:"num";i:10;s:8:"imagenum";i:0;s:10:"imagewidth";i:300;s:11:"imageheight";i:250;s:9:"maxlength";i:0;s:9:"cachelife";i:0;s:8:"dateline";i:0;}', 'a:1:{i:0;s:4:"ngpt";}', '', 'a:1:{s:9:"namecolor";s:0:"";}', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ngpt_forum_forumfield`
--
ALTER TABLE `ngpt_forum_forumfield`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `membernum` (`membernum`),
  ADD KEY `dateline` (`dateline`),
  ADD KEY `lastupdate` (`lastupdate`),
  ADD KEY `activity` (`activity`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
