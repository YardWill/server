-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-04-15 20:12:43
-- 服务器版本： 5.5.42-log
-- PHP Version: 5.4.41

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `deve`
--
CREATE DATABASE IF NOT EXISTS `deve` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `deve`;

-- --------------------------------------------------------

--
-- 表的结构 `Contacts`
--

DROP TABLE IF EXISTS `Contacts`;
CREATE TABLE IF NOT EXISTS `Contacts` (
  `contacts_id` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `contacts_name` text NOT NULL,
  `contacts_phone` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Contacts`
--

INSERT INTO `Contacts` (`contacts_id`, `user_ID`, `contacts_name`, `contacts_phone`) VALUES
(1, 1, '这是用户1的联系人1的名字', '15700083880');

-- --------------------------------------------------------

--
-- 表的结构 `daily`
--

DROP TABLE IF EXISTS `daily`;
CREATE TABLE IF NOT EXISTS `daily` (
  `daily_id` int(11) NOT NULL,
  `staff_name` text NOT NULL,
  `daily_date` text NOT NULL,
  `daily_content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `daily`
--

INSERT INTO `daily` (`daily_id`, `staff_name`, `daily_date`, `daily_content`) VALUES
(19, '\n                                                高起帆                                                ', '2016-03-09', '@3.9\r\n终于完成了工作日志第一版'),
(20, '\r\n                                                高起帆                                                ', '2025-02-04', '这是模版\r\n@3.5\r\n完成了xxxxx\r\n@3.6\r\n完成了。。。。\r\n'),
(21, '\r\n                                                严铭                                                ', '2016-03-09', '今天构思了PC端的界面，\r\n明天完成用户登录、注册、找回密码'),
(22, '\r\n                                                戴鑫业                                                ', '2016-03-09', '- 完成了首页文字部分<br>- 姚老师那领取了微信申请的任务<br>- 协助完成url加密和工作日志<br>- 完成《安全开发备忘录》<br>\r\n>准备接下来的招人<br> >完善后台机制'),
(23, '\r\n                                                陈家乐                                                ', '2016-03-09', '完成了通知查看界面URL的加解密函数编写工作'),
(24, '\r\n                                                陈家乐                                                ', '2016-03-10', '将加密函数与通知查看相结合\r\n完成了微信平台申请的部分工作\r\n讨论完成了User数据库表的设计'),
(25, '\r\n                                                戴鑫业                                                ', '2016-03-10', '完成短信api类扩展，修复前端缺陷，协助bug排查。'),
(26, '\r\n                                                高起帆                                                ', '2016-03-12', '-3.11 完成了短信验证功能的后台\r\n@下一步完成验证成功后的插入数据库操作'),
(27, '\r\n                                                戴鑫业                                                ', '2016-03-12', '- 完成了手机通知页面的已阅按钮效果及post传值<br>\r\n> 学习配色和简单设计<br>\r\n> 研究电脑端添加通知功能的实现'),
(30, '\r\n                                                戴鑫业                                                ', '2016-03-13', '- 实现通知编辑页面<br>\r\n> 继续完善通知编辑页面'),
(32, '\r\n                                                戴鑫业                                                ', '2016-03-14', '- 讨论分工了pc端页面<br>\r\n> 入门react\r\n> 做pc - 发布通知部分'),
(33, '\r\n                                                戴鑫业                                                ', '2016-03-15', '- 完成了React添加子组件的功能\r\n- 明确了团队分工\r\n> 完成React删除子组件的功能'),
(34, '\r\n                                                戴鑫业                                                ', '2016-03-17', '- 放弃坑爹的React<br>\r\n- 完成 编辑通知 的前台页面<br>\r\n> 完善编辑通知'),
(35, '\r\n                                                陈家乐                                                ', '2016-03-17', '完成了通知发送界面前端的编写'),
(36, '\r\n                                                高起帆                                                ', '2016-03-17', '—完成了短信验证码model和controller的修缮工作\r\n—第一次尝试web上传图片并保存在数据库失败\r\n—组织数据库表格建立'),
(37, '\r\n                                                高起帆                                                ', '2016-03-19', '-完善了org的model里面的函数'),
(38, '\r\n                                                戴鑫业                                                ', '2016-03-22', '- 完成 创建组织<br>\r\n- 完成 编辑通知前端部分<br>\r\n> 整理代码'),
(39, '\r\n                                                严铭                                                ', '2016-03-25', '今天戴鑫业没来、搞基打撸、瘟疫约妹。'),
(40, '测试', 'test', 'Array');

-- --------------------------------------------------------

--
-- 表的结构 `join`
--

DROP TABLE IF EXISTS `join`;
CREATE TABLE IF NOT EXISTS `join` (
  `jname` text,
  `college` text,
  `intention` text,
  `phone` text,
  `email` text,
  `internship` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `join`
--

INSERT INTO `join` (`jname`, `college`, `intention`, `phone`, `email`, `internship`) VALUES
('121', 'a', 'wewe', '17816876428', '644169721@qq.com', '121'),
('121', 'a', 'wewe', '17816876428', '644169721@qq.com', '121'),
('121', 'a', 'wewe', '17816876428', '644169721@qq.com', '121'),
('121', 'a', 'wewe', '17816876428', '644169721@qq.com', '121'),
('121', 'a', 'wewe', '17816876428', '644169721@qq.com', '121'),
(NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL),
('''', NULL, NULL, NULL, NULL, NULL),
('''''', NULL, NULL, NULL, NULL, NULL),
('"', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `MessagePage`
--

DROP TABLE IF EXISTS `MessagePage`;
CREATE TABLE IF NOT EXISTS `MessagePage` (
  `mp_ID` int(11) NOT NULL COMMENT '通知的ID',
  `user_ID` int(11) NOT NULL,
  `mp_sum` text NOT NULL COMMENT '通知的总人数',
  `mp_time` text NOT NULL,
  `rv_sum` int(11) NOT NULL COMMENT '已经全体回复的消息数',
  `ms_sum` int(11) NOT NULL COMMENT '通知中总的消息数',
  `mp_orglist` text NOT NULL COMMENT '在考虑是否要丢弃此列中',
  `mp_person` text NOT NULL COMMENT ' Json格式的通知对象列表'
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `MessagePage`
--

INSERT INTO `MessagePage` (`mp_ID`, `user_ID`, `mp_sum`, `mp_time`, `rv_sum`, `ms_sum`, `mp_orglist`, `mp_person`) VALUES
(1, 1, '50', '0', 0, 0, '', ''),
(2, 4, '10', '0', 0, 0, '', ''),
(3, -1, '1', '2016-03-23 19:40:36', 0, 0, '', '{"15700083880":"''\\u6234\\u946b\\u4e1a''"}'),
(4, -1, '3', '2016-03-23 19:58:17', 0, 0, '', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(5, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(6, -1, '3', '2016-03-23 20:01:46', 0, 0, '', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","17816876428":"''\\u4e25\\u50bb\\u903c''","15700082622":"''\\u9ad8\\u8d77\\u5e06''"}'),
(7, -1, '1', '2016-03-24 14:25:30', 0, 0, '', '{"15700083880":"''\\u6234\\u946b\\u4e1a''"}'),
(8, -1, '1', '2016-03-24 15:14:42', 0, 0, '', '{"15700083880":"''\\u6234\\u946b\\u4e1a''"}'),
(9, 10, '1', '2016-03-27 19:33:01', 0, 0, 'a', '{"15700083880":"dxy"}'),
(10, 10, '1', '2016-03-27 21:12:15', 0, 0, 'dxy测试', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(11, 10, '3', '2016-03-28 16:39:44', 0, 0, '慕鱼测试', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06","15700084751":"\\u9648\\u5bb6\\u4e50"}'),
(12, 12, '0', '2016-03-30 16:10:09', 0, 0, '', 'null'),
(13, 10, '1', '2016-04-05 23:53:08', 0, 2, '我比较帅', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(14, 10, '2', '2016-04-06 04:53:29', 0, 1, '我比较帅', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700084751":"\\u9648\\u5bb6\\u4e50"}'),
(15, 10, '4', '2016-04-06 05:04:39', 0, 0, '我比较帅', '{"17816876428":"\\u4e25\\u94ed","15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06","15700084751":"\\u9648\\u5bb6\\u4e50"}'),
(16, 10, '5', '2016-04-07 03:39:39', 0, 1, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06","15700084751":"\\u9648\\u5bb6\\u4e50","15700084187":"\\u7fc1\\u76ca\\u680b","17816876428":"\\u4e25\\u94ed"}'),
(17, 13, '5', '2016-04-07 03:52:01', 0, 2, '慕鱼科技', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06","15700084751":"\\u9648\\u5bb6\\u4e50","15700084187":"\\u7fc1\\u76ca\\u680b","17816876428":"\\u4e25\\u94ed"}'),
(18, 14, '2', '2016-04-09 23:00:02', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06","15700083880":"\\u6234\\u946b\\u4e1a"}'),
(19, 10, '1', '2016-04-11 00:44:04', 0, 0, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(20, 10, '1', '2016-04-11 00:50:02', 0, 1, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(21, 14, '1', '2016-04-11 01:03:37', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(22, 14, '1', '2016-04-11 01:05:16', 0, 2, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(23, 14, '1', '2016-04-10 17:14:06', 0, 2, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(24, 10, '1', '2016-04-12 14:02:01', 0, 1, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(25, 10, '5', '2016-04-12 14:04:08', 0, 1, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06","15700084751":"\\u9648\\u5bb6\\u4e50","15700084187":"\\u7fc1\\u76ca\\u680b","17816876428":"\\u4e25\\u94ed"}'),
(26, 10, '1', '2016-04-12 14:08:42', 0, 2, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(27, 14, '1', '2016-04-12 16:25:22', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(28, 14, '1', '2016-04-12 16:37:10', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(29, 14, '1', '2016-04-12 16:41:07', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(30, 14, '1', '2016-04-12 16:44:50', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(31, 14, '1', '2016-04-12 16:45:19', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(32, 14, '1', '2016-04-12 16:46:25', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(33, 10, '2', '2016-04-12 20:10:00', 0, 2, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(34, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(35, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(36, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(37, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(38, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(39, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(40, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(41, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(42, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(43, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(44, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(45, -1, '3', '2016-03-23 19:59:13', 3, 5, '学科部', '{"15700083880":"''\\u6234\\u946b\\u4e1a''","15700082622":"''\\u9ad8\\u8d77\\u5e06''","15700084751":"''\\u9648\\u5bb6\\u4e50''"}'),
(46, 12, '1', '2016-04-13 18:31:07', 0, 1, 'qq', '{"15700084187":"qq"}'),
(47, 10, '1', '2016-04-15 13:28:02', 0, 2, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(48, 10, '1', '2016-04-15 15:27:21', 0, 1, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(49, 14, '1', '2016-04-15 15:40:23', 0, 1, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(50, 14, '1', '2016-04-15 15:40:38', 0, 2, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(51, 14, '1', '2016-04-15 15:40:54', 0, 2, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(52, 14, '1', '2016-04-15 16:08:03', 0, 2, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(53, 10, '1', '2016-04-15 16:09:40', 0, 1, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a"}'),
(54, 14, '1', '2016-04-15 16:11:36', 0, 2, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}'),
(57, 10, '3', '2016-04-15 19:54:48', 0, 2, 'muyu', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700084751":"\\u9648\\u5bb6\\u4e50","17816876428":"\\u4e25\\u94ed"}'),
(58, 14, '1', '2016-04-15 20:00:26', 0, 2, '测试一号', '{"15700082622":"\\u9ad8\\u8d77\\u5e06"}');

-- --------------------------------------------------------

--
-- 表的结构 `Messages`
--

DROP TABLE IF EXISTS `Messages`;
CREATE TABLE IF NOT EXISTS `Messages` (
  `ms_ID` int(11) NOT NULL COMMENT '消息的ID',
  `mp_ID` int(11) NOT NULL COMMENT '通知的ID',
  `ms_type` text NOT NULL COMMENT '消息的类型',
  `ms_fb_sum` int(11) NOT NULL COMMENT '已反馈了该消息的人数',
  `ms_state` tinyint(1) NOT NULL COMMENT '消息的状态',
  `ms_title` text NOT NULL COMMENT '消息的标题',
  `ms_content` text NOT NULL COMMENT '消息的内容',
  `ms_form` text NOT NULL COMMENT 'Json格式的表单数据',
  `ms_person` text NOT NULL COMMENT 'Json格式回复人员手机号码＋反馈内容'
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Messages`
--

INSERT INTO `Messages` (`ms_ID`, `mp_ID`, `ms_type`, `ms_fb_sum`, `ms_state`, `ms_title`, `ms_content`, `ms_form`, `ms_person`) VALUES
(1, 2, '', 0, 0, '这是测试通知的标题', '这是测试通知的正文', '', ''),
(2, 1, '', 3, 0, '测试通知的标题2', '测试通知的内容2', '', ''),
(3, 1, '', 0, 0, '这是需要上传文件的通知标题', '这是需要上传文件的通知内容', '', ''),
(4, 1, '', 0, 0, '这是一条表单通知的标题', '这是一条表单通知的内容', '', ''),
(5, 5, 'normal', 0, 0, 'title1', 'content1', '', ''),
(6, 5, 'normal', 0, 0, '我是你爸爸！', '对你是我爸爸！', '', ''),
(7, 5, 'normal', 0, 0, '这一次绝对没有问题！', '我是你爸爸！', '', ''),
(8, 6, 'normal', 0, 0, '我是你爸爸！', '22222', '', ''),
(9, 7, 'form', 0, 0, '表单测试', '表单测试内容', '["''\\u59d3\\u540d''","''\\u5b66\\u53f7''"]', ''),
(10, 7, 'normal', 0, 0, '你看过通知了吗', '看过了就点下面的按钮吧', '', '{"15700083880":["1"]}'),
(11, 8, 'form', 0, 0, 'title', 'content', '["\\u59d3\\u540d","\\u5b66\\u53f7"]', '{"15700083880":["",""]}'),
(12, 8, 'normal', 0, 0, '啊日', '啊西', '', '{"15700083880":["1"]}'),
(13, 0, 'normal', 0, 0, 'dwqd', 'dwqdw', '', ''),
(14, 9, 'normal', 0, 0, 'hello', 'world!', '', ''),
(15, 10, 'normal', 1, 1, '911', '测试', '', '{"15700083880":["1"]}'),
(16, 11, 'normal', 3, 1, '开饭了！', '吃饭了！写什么代码回家种田了！', '', '{"15700082622":["1"],"15700083880":["1"],"15700084751":["1"]}'),
(17, 13, 'normal', 1, 1, '通知标题', '通知内容', '', '{"15700083880":["1"]}'),
(18, 13, 'form', 0, 0, '表单标题', '表单聂荣', '["\\u59d3\\u540d","\\u5b66\\u53f7"]', ''),
(19, 14, 'form', 2, 1, '测试标题', '下面输一下你的学号和姓名', '["\\u59d3\\u540d","\\u5b66\\u53f7"]', '{"15700083880":["\\u6234\\u946b\\u4e1a\\u6211\\u7238\\u7238","201326810906"],"15700084751":["\\u9648\\u5bb6\\u4e50","201326810702"]}'),
(20, 14, 'normal', 2, 1, '你如果看到这个', '就点一下你已知晓吧', '', '{"15700084751":["1"],"15700083880":["1"]}'),
(21, 15, 'normal', 4, 1, '阅读通知的逻辑已经写好了', '以后我们就用这个来发布每天的任务好了哈哈哈哈哈', '', '{"17816876428":["1"],"15700082622":["1"],"15700084751":["1"],"15700083880":["1"]}'),
(22, 16, 'form', 5, 1, '表单标题', '请各位帅哥填一下你们的学号和姓名~', '["\\u59d3\\u540d","\\u5b66\\u53f7"]', '{"15700083880":["\\u9648\\u5bb6\\u4e50\\u662f\\u6211\\u5b59\\u5b50\\u9648\\u5bb6\\u4e50\\u662f\\u6211\\u5b59\\u5b50\\u9648\\u5bb6\\u4e50\\u662f\\u6211\\u5b59\\u5b50\\u9648\\u5bb6\\u4e50\\u662f\\u6211\\u5b59\\u5b50","123"],"17816876428":["\\u94ed\\u94ed","201426810525"],"15700084751":["\\u6234\\u946b\\u4e1a\\u662f\\u6211\\u513f\\u5b50","201326810702"],"15700084187":["\\u7fc1\\u76ca\\u680b","201326811017"],"15700082622":["\\u9ad8\\u8d77\\u5e06","201326810908"]}'),
(23, 16, 'normal', 5, 1, '如果你看到了这条通知', '请点下面的知晓！', '', '{"17816876428":["1"],"15700084751":["1"],"15700083880":["1"],"15700084187":["1"],"15700082622":["1"]}'),
(24, 17, 'form', 2, 0, '表单标题', '请填写你的银行卡号和密码', '["\\u5361\\u53f7","\\u5bc6\\u7801"]', '{"15700083880":["\\u6ca1\\u5361",""],"15700084187":["",""]}'),
(25, 17, 'form', 2, 0, '表单标题二', '哈哈哈哈哈', '["\\u5566\\u5566\\u5566\\u5566\\u5566","\\u54c8\\u54c8\\u54c8\\u54c8\\u54c8"]', '{"15700084187":["",""],"17816876428":["",""]}'),
(26, 17, 'normal', 3, 0, '戴鑫业', '是我儿子', '', '{"17816876428":["1"],"15700083880":["1"],"15700084187":["1"]}'),
(27, 18, 'form', 2, 1, '真的可以用吗', '试试看', '["\\u4eca\\u665a\\u7ea6\\u4e0d\\u7ea6"]', '{"15700082622":["\\u7ea6"],"15700083880":["\\u7ea6"]}'),
(28, 18, 'normal', 2, 1, '这个呢', '哈哈哈哈哈', '', '{"15700083880":["1"],"15700082622":["1"]}'),
(29, 19, 'normal', 1, 1, 'aa', 'b', '', '{"15700083880":["1"]}'),
(30, 20, 'form', 0, 0, 'a', 'b', '["c"]', ''),
(31, 20, 'normal', 0, 0, 'd', 'e', '', ''),
(32, 21, 'form', 0, 0, '11111', '11111111content', '["1111"]', ''),
(33, 21, 'normal', 0, 0, '1111', '11111', '', ''),
(34, 22, 'form', 1, 1, '22312222', '22222', '', '{"15700082622":null}'),
(35, 22, 'normal', 0, 0, '2222', '222', '', ''),
(36, 23, 'form', 0, 0, '3333', '333', '', ''),
(37, 23, 'normal', 0, 0, '3333', '33', '', ''),
(38, 24, 'normal', 1, 1, '2.01', '2', '', '{"15700083880":["1"]}'),
(39, 25, 'form', 4, 0, '下午有人过来吗', '没人过来我去打球了', '', '{"15700082622":null,"15700084187":null,"15700083880":null,"17816876428":null}'),
(40, 26, 'form', 0, 0, 'a', 'b', '', ''),
(41, 26, 'normal', 0, 0, 'd', 'e', '', ''),
(42, 27, 'form', 0, 0, '22222', '2222', '', ''),
(43, 28, 'form', 1, 1, '22233', '3333', '', '{"15700082622":null}'),
(44, 29, 'form', 0, 0, '444', '4444', '', ''),
(45, 30, 'form', 0, 0, '45', '555', '', ''),
(46, 31, 'form', 0, 0, '66', '66', '', ''),
(47, 32, 'form', 0, 0, '7', '77', '', ''),
(48, 33, 'form', 1, 0, 'a', 'b', '["c"]', '{"15700082622":["\\u6d3b\\u751f\\u751f"]}'),
(49, 33, 'normal', 2, 1, 'd', 'e', '', '{"15700083880":["1"],"15700082622":["1"]}'),
(50, 46, 'normal', 0, 0, 'd', 'dd', '', ''),
(51, 47, 'form', 1, 1, '测试', '啊啊', '["\\u6211\\u7684\\u8868\\u5355\\u6807\\u7b7e1","\\u6807\\u7b7e2"]', '{"15700083880":["\\u6211\\u4eec","\\u5662"]}'),
(52, 47, 'normal', 1, 1, '啊咧咧', '嘻嘻嘻', '', '{"15700083880":["1"]}'),
(53, 48, 'normal', 1, 1, '测试内容', '12345', '', '{"15700083880":["\\u5df2\\u77e5\\u6653"]}'),
(54, 49, 'form', 0, 0, '2', '2', '["22"]', ''),
(55, 50, 'form', 0, 0, '3', '3', '["3"]', ''),
(56, 50, 'normal', 0, 0, '3', '3', '', ''),
(57, 51, 'form', 0, 0, '4', '4', '["4"]', ''),
(58, 51, 'normal', 0, 0, '4', '4', '', ''),
(59, 7003, 'form', 0, 0, '5', '5', '["5"]', ''),
(60, 7003, 'normal', 0, 0, '5', '5', '', ''),
(61, 52, 'form', 0, 0, '324234', '2323432423', '["24234"]', ''),
(62, 52, 'normal', 0, 0, '23423', '23423432', '', ''),
(63, 53, 'normal', 0, 0, 'a', 'b', '', ''),
(64, 54, 'form', 0, 0, 'wqeqwe', 'ewq', '["wqeq"]', ''),
(65, 54, 'normal', 0, 0, 'weqweqw', 'eqweqw', '', ''),
(66, 55, 'form', 0, 0, '423', 'ewqeqwe324', '["jwo bskksal"]', ''),
(67, 55, 'normal', 0, 0, 'kdj o', 'ajdlip', '', ''),
(68, 56, 'normal', 0, 0, 'a', 'a', '', ''),
(69, 57, 'form', 0, 0, '严铭是傻逼吗', '是啊', '["\\u554a","\\u54e6"]', ''),
(70, 57, 'normal', 0, 0, '我啊', '我', '', ''),
(71, 58, 'form', 0, 0, '2131233', '12123312312', '["12323"]', ''),
(72, 58, 'normal', 0, 0, '23131232', '1312', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `Org`
--

DROP TABLE IF EXISTS `Org`;
CREATE TABLE IF NOT EXISTS `Org` (
  `org_ID` int(11) NOT NULL,
  `org_name` text NOT NULL,
  `user_ID` int(11) NOT NULL COMMENT '创建者',
  `org_rev_sum` int(11) NOT NULL COMMENT '接受者总人数',
  `org_info` text NOT NULL COMMENT '简介',
  `org_member` text NOT NULL COMMENT 'JSON格式存储组织成员'
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Org`
--

INSERT INTO `Org` (`org_ID`, `org_name`, `user_ID`, `org_rev_sum`, `org_info`, `org_member`) VALUES
(1, '测试组织_组织名1', 6, 2, '测试组织', '{"17700001111":"\\u7238\\u7238","\\u7ec4\\u7ec7\\u6210\\u54582":"15700081235"}'),
(2, 'ddwdwq', 6, 1, '', '{"17700001111":"\\u7238\\u7238"}'),
(36, '23额', -1, 0, '', '{"15700083880":"\\u6234\\u946b\\u4e1a","17816823729":"\\u4e25\\u94ed"}'),
(54, '爱上', 12, 1, '', '["\\u963f\\u65af\\u8fbe\\u8bf4\\u7684 "]'),
(55, 'muyu', 10, 5, '', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06","15700084751":"\\u9648\\u5bb6\\u4e50","15700084187":"\\u7fc1\\u76ca\\u680b","17816876428":"\\u4e25\\u94ed"}'),
(56, '慕鱼科技', 13, 5, '慕鱼科技', '{"15700083880":"\\u6234\\u946b\\u4e1a","15700082622":"\\u9ad8\\u8d77\\u5e06","15700084751":"\\u9648\\u5bb6\\u4e50","15700084187":"\\u7fc1\\u76ca\\u680b","17816876428":"\\u4e25\\u94ed"}'),
(57, '测试一号', 14, 4, '木有描述', '{"15355472503":"hahaha","15700082622":"\\u9ad8\\u8d77\\u5e06","15700083880":"\\u6234\\u946b\\u4e1a","15355473502":"\\u9ad8\\u8d77\\u5e06\\u4e8c\\u53f7"}'),
(58, 's', 12, 1, 's', '{"sdsdcs":"sdc"}'),
(59, 'qq', 12, 1, 'qq', '{"15700084187":"qq"}'),
(60, '上限测试组', 14, 9, '', '{"15700080009":"9","15700080001":"1","15700080002":"2","15700080003":"3","15700080004":"4","15700080005":"5","15700080006":"6","15700080007":"7","15700080008":"8"}'),
(61, 'wenyi', 12, 1, '', '{"15700084187":"wenyi"}'),
(62, '3213', 14, 36, '', '{"15700080055":"eewqe","15700000001":"1","15700000002":"2","15700000003":"3","15700000004":"4","15700000005":"5","15700000006":"6","15700000007":"7","15700000008":"8","15700000009":"9","15700000010":"10","15700000011":"11","15700000012":"12","15700000013":"13","15700000014":"14","15700000015":"15","15700000016":"16","15700000017":"17","15700000018":"18","15700000019":"19","15700000020":"20","15700000021":"21","15700000022":"22","15700000023":"23","15700000024":"24","15700000025":"25","15700000026":"26","15700000027":"27","15700000028":"28","15700000029":"29","15700000030":"30","15700000031":"31","15700000032":"32","15700000033":"33","15700000034":"34","15700000035":"35"}');

-- --------------------------------------------------------

--
-- 表的结构 `Reply`
--

DROP TABLE IF EXISTS `Reply`;
CREATE TABLE IF NOT EXISTS `Reply` (
  `rp_ID` int(11) NOT NULL COMMENT '回复的ID',
  `ms_ID` int(11) NOT NULL COMMENT '回复所对应的消息的ID',
  `contact_ID` int(11) NOT NULL COMMENT '标识接收方',
  `rp_content` text NOT NULL COMMENT '回复的内容'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Reply`
--

INSERT INTO `Reply` (`rp_ID`, `ms_ID`, `contact_ID`, `rp_content`) VALUES
(1, 2, 2, 'dfsffs'),
(29, 2, 1, 'test');

-- --------------------------------------------------------

--
-- 表的结构 `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` text NOT NULL,
  `staff_password` text
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_password`) VALUES
(1, '戴鑫业', ''),
(2, '陈家乐', ''),
(3, '高起帆', ''),
(4, '严铭', ''),
(5, '郑维杰', ''),
(6, '翁益栋', '');

-- --------------------------------------------------------

--
-- 表的结构 `Token`
--

DROP TABLE IF EXISTS `Token`;
CREATE TABLE IF NOT EXISTS `Token` (
  `tk_id` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `tk_token` text NOT NULL,
  `tk_time` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `Token`
--

INSERT INTO `Token` (`tk_id`, `user_ID`, `tk_token`, `tk_time`) VALUES
(1, 1, 'ddxds', '2016-03-27 18:11:09'),
(2, 2, '3213123123', '2016-03-27 18:12:14'),
(3, 3, 'ddx', '2016-03-27 18:10:51'),
(4, 10, 'e1b3943544fe1948d75047819afa90e613660a568a3425a4bd00a0188110eac0', '1460727859'),
(5, 11, 'c1866946ad6fd97a23bdac380d5cfe238607bc7eba9de3d7624fa90ca5ea2bf4', '1460643353'),
(6, 12, '42f70e651beb5ea8a6e003c1e63dae2732e3424cd218df24f55d680ceba9f77f', '1460727943'),
(7, -1, 'deve', '1459454660'),
(8, 13, 'adc591db857107507e1baed0ad7e44ec07b600d752c8a14cda48522a7c45e956', '1459975669'),
(9, 14, '6baaa7fe6fc595164d9c3dd79ba7b0937beefc56e19626f7704a9833435626d5', '1460728182');

-- --------------------------------------------------------

--
-- 表的结构 `User`
--

DROP TABLE IF EXISTS `User`;
CREATE TABLE IF NOT EXISTS `User` (
  `user_ID` int(11) NOT NULL,
  `user_phone` text NOT NULL,
  `user_password` text NOT NULL,
  `user_name` text NOT NULL,
  `user_image` text,
  `user_limit` int(11) NOT NULL COMMENT '用户每日最大mp条数',
  `user_reg_date` text NOT NULL,
  `user_last_login` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `User`
--

INSERT INTO `User` (`user_ID`, `user_phone`, `user_password`, `user_name`, `user_image`, `user_limit`, `user_reg_date`, `user_last_login`) VALUES
(-1, '0', '0', 'muyuTest', NULL, 100, '', NULL),
(10, '15700083880', 'f4e29d3cc711abfc14fc', '', NULL, 3, '2016-03-27 15:14:37', NULL),
(11, '17816876428', 'f4e29d3cc711abfc14fc', '', NULL, 0, '2016-03-27 15:18:04', NULL),
(12, '15700084187', 'f4e29d3cc711abfc14fc', '', NULL, 0, '2016-03-27 20:22:41', NULL),
(13, '15700084751', 'f4e29d3cc711abfc14fc', '', NULL, 0, '2016-04-07 03:49:24', NULL),
(14, '15700082622', 'f4e29d3cc711abfc14fc', '', NULL, 5, '2016-04-09 22:55:03', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `UserCheck`
--

DROP TABLE IF EXISTS `UserCheck`;
CREATE TABLE IF NOT EXISTS `UserCheck` (
  `id` int(11) NOT NULL,
  `UserID` text NOT NULL COMMENT '用户id',
  `CheckCode` text NOT NULL COMMENT '验证码',
  `Time` text NOT NULL COMMENT '时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `UserCheck`
--

INSERT INTO `UserCheck` (`id`, `UserID`, `CheckCode`, `Time`) VALUES
(1, '1', '001234', '20130101');

-- --------------------------------------------------------

--
-- 表的结构 `Verify`
--

DROP TABLE IF EXISTS `Verify`;
CREATE TABLE IF NOT EXISTS `Verify` (
  `verify_id` int(11) NOT NULL,
  `verify_number` int(11) NOT NULL,
  `verify_phone` text NOT NULL,
  `verify_time` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Contacts`
--
ALTER TABLE `Contacts`
  ADD PRIMARY KEY (`contacts_id`);

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`daily_id`);

--
-- Indexes for table `MessagePage`
--
ALTER TABLE `MessagePage`
  ADD PRIMARY KEY (`mp_ID`);

--
-- Indexes for table `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`ms_ID`);

--
-- Indexes for table `Org`
--
ALTER TABLE `Org`
  ADD PRIMARY KEY (`org_ID`);

--
-- Indexes for table `Reply`
--
ALTER TABLE `Reply`
  ADD PRIMARY KEY (`rp_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `Token`
--
ALTER TABLE `Token`
  ADD PRIMARY KEY (`tk_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `UserCheck`
--
ALTER TABLE `UserCheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Verify`
--
ALTER TABLE `Verify`
  ADD PRIMARY KEY (`verify_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Contacts`
--
ALTER TABLE `Contacts`
  MODIFY `contacts_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `daily_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `MessagePage`
--
ALTER TABLE `MessagePage`
  MODIFY `mp_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '通知的ID',AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `Messages`
--
ALTER TABLE `Messages`
  MODIFY `ms_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息的ID',AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `Org`
--
ALTER TABLE `Org`
  MODIFY `org_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `Reply`
--
ALTER TABLE `Reply`
  MODIFY `rp_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复的ID',AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Token`
--
ALTER TABLE `Token`
  MODIFY `tk_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `UserCheck`
--
ALTER TABLE `UserCheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Verify`
--
ALTER TABLE `Verify`
  MODIFY `verify_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
