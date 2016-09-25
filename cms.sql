-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2016 at 04:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'PHP'),
(2, 'JavaScript'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'Bootstrap');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`comment_id` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_status` varchar(50) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_content`, `comment_email`, `comment_status`, `comment_date`) VALUES
(1, 2, 'Helo', 'Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.\r\n', 'hello@mail.com', 'approved', '2016-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`post_id` int(11) NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_user` varchar(50) NOT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_content` text NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_status` varchar(50) NOT NULL,
  `post_image` text NOT NULL,
  `post_tags` text NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_author`, `post_user`, `post_title`, `post_content`, `post_category_id`, `post_status`, `post_image`, `post_tags`, `post_comment_count`, `post_date`, `post_views_count`) VALUES
(1, '', 'edwindiaz', 'Random', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 3, 'published', 'image_4.jpg', '', 0, '2016-01-08', 0),
(2, '', 'edwindiaz', 'Edwin Diaz', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>', 1, 'published', 'image_2.jpg', 'edwin, diaz', 0, '2016-01-08', 5),
(3, '', 'edwindiaz', 'CMS Project', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 5, 'published', 'image_1.jpg', 'cms, project', 0, '2016-01-08', 1),
(4, '', 'edwindiaz', 'Bootstrap', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 5, 'published', 'image_3.jpg', 'bootstrap', 0, '2016-01-08', 0),
(5, '', 'rico', 'Bacon', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 4, 'published', 'Wallpaper-018.jpg', 'bacon', 0, '2016-01-08', 0),
(6, '', 'edwindiaz', 'Bacon4', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 1, 'published', 'image_1.jpg', 'bacon', 0, '2016-01-08', 0),
(10, '', 'edwindiaz', 'Bacon3', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 1, 'published', 'image_3.jpg', 'bacon', 0, '2016-01-08', 0),
(11, '', 'edwindiaz', 'Bacon4', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 1, 'published', 'image_1.jpg', 'bacon', 0, '2016-01-08', 0),
(12, '', 'rico', 'Bacon', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 1, 'published', 'Wallpaper-018.jpg', 'bacon', 0, '2016-01-08', 0),
(13, '', 'edwindiaz', 'Bootstrap', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 1, 'published', 'image_3.jpg', 'bootstrap', 0, '2016-01-08', 0),
(14, '', 'edwindiaz', 'CMS Project', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>\r\n<p>&nbsp;</p>', 1, 'published', 'image_1.jpg', 'cms, project', 0, '2016-01-08', 0),
(15, '', 'rico', 'Edwin Diaz', '<p>Bacon ipsum dolor amet bresaola beef ribs leberkas ribeye tail tongue chicken, filet mignon strip steak pastrami andouille swine ground round cupim pig. Short ribs tenderloin bacon filet mignon pork leberkas, alcatra pancetta chuck cow prosciutto sirloin pork chop flank bresaola. Corned beef doner andouille ribeye, spare ribs meatball filet mignon cow shoulder shank turducken ground round pig. Filet mignon short loin biltong ball tip. Ground round jerky hamburger sausage shoulder short ribs. Pancetta shank chuck bresaola flank hamburger cupim pork loin fatback brisket landjaeger venison pastrami.</p>', 1, 'published', 'image_2.jpg', 'edwin, diaz', 0, '2016-01-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`) VALUES
(1, 'edwindiaz', '$2y$12$n3/wmksVNMI.nJXnZF0bdOj6CSfhd1wRJLsPfj5hhR1dzP2HVjVui', 'Edwin', 'Diaz', 'edwin@mail.com', '', 'admin'),
(2, 'rico', '$2y$10$d2wSxvjKP8FKqgU8O21E5O0jtX36UiaKszESPXithjbHt7B4BDnva', 'Rico', 'Suave', 'rico@mail.com', '', 'subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `session` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`session`, `time`) VALUES
(0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
