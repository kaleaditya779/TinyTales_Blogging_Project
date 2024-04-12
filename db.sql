-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `complete-blog-php`
--
-- --------------------------------------------------------
--
-- Table structure for table `posts`
--
CREATE TABLE `posts` (
    `id` int(11) NOT NULL,
    `user_id` int(11) DEFAULT NULL,
    `title` varchar(255) NOT NULL,
    `slug` varchar(255) NOT NULL,
    `views` int(11) NOT NULL DEFAULT 0,
    `image` varchar(255) NOT NULL,
    `body` text NOT NULL,
    `published` tinyint(1) NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;
--
-- Dumping data for table `posts`
--
INSERT INTO `posts` (
        `id`,
        `user_id`,
        `title`,
        `slug`,
        `views`,
        `image`,
        `body`,
        `published`,
        `created_at`,
        `updated_at`
    )
VALUES (
        3,
        2,
        'Superpowers',
        'superpowers',
        0,
        'superpowers.jpeg',
        '<p>The nature of every superpower is to further their own interest all over the world. The only difference between normal countries and superpower is that superpower country has a large number of tools to do that.</p>\r\n',
        1,
        '2024-04-12 07:08:30',
        '2024-04-12 06:57:54'
    ),
    (
        4,
        1,
        'The Tech Layoffs',
        'the-tech-layoffs',
        0,
        'tech_layoffs.jpg',
        '&lt;p&gt;More than 191,000 workers at U.S.-based tech companies were laid off in mass job cuts in 2023, according to our tally, and the cuts continue into 2024. Follow along here with our comprehensive tech layoffs tracker, updated weekly, of U.S. tech employers cutting jobs &amp;mdash; whether that&amp;#39;s at companies as large as Google&amp;nbsp;and Microsoft, or smaller startups.&lt;/p&gt;\r\n',
        1,
        '2024-04-12 06:59:07',
        '2024-04-12 06:36:32'
    ),
    (
        5,
        1,
        'The Data Science',
        'the-data-science',
        0,
        'data_science.jpeg',
        '&lt;p&gt;Data science is&amp;nbsp;&lt;strong&gt;the study of data to extract meaningful insights for business&lt;/strong&gt;. It is a multidisciplinary approach that combines principles and practices from the fields of mathematics, statistics, artificial intelligence, and computer engineering to analyze large amounts of data.&lt;/p&gt;\r\n',
        1,
        '2024-04-12 07:03:41',
        '2024-04-12 07:02:54'
    ),
    (
        6,
        2,
        'The winner',
        'the-winner',
        0,
        'champion.jpeg',
        '&lt;h3&gt;1. Stop punishing yourself for mistakes&lt;/h3&gt;\r\n\r\n&lt;p&gt;Failures litter the road to success for everyone. The difference for those who go on to greater things is often that they don&amp;rsquo;t let those failures hold them back. Mistakes offer a great learning experience if you view them as just that. So, if you make a mistake or something goes wrong, identify how you can learn from what&amp;rsquo;s happened and then pick yourself back up and move on. Don&amp;rsquo;t waste time wallowing in, or punishing yourself for, mistakes &amp;ndash; it&amp;rsquo;s the way that you handle these more difficult moments that will end up defining how successful you can be.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3&gt;2. Be open to adjustments&lt;/h3&gt;\r\n\r\n&lt;p&gt;You might have a concrete plan in place and enough determination to make it happen. However, life often has other ideas and there is plenty that can change or go wrong along the way. The most successful people are flexible when it comes to achieving goals and moving in the right direction according to their ideal timeline. The ability to adjust and adapt as situations change will make you more versatile and able to succeed.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3&gt;3. Dedicate yourself to daily inspiration&lt;/h3&gt;\r\n\r\n&lt;p&gt;Staying motivated is one of the most important elements of success and this takes effort on a daily basis. Make a list of all the things you can do, read or experience that will trigger inspiration and gratitude. That could be watching a TED talk, reading the blog of someone who inspires you, listening to a motivational podcast or giving something back to the community. Set aside time to do these things on a daily basis to make sure you stay focused and on track.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3&gt;4. Don&amp;rsquo;t forget the stepping stones&lt;/h3&gt;\r\n\r\n&lt;p&gt;It&amp;rsquo;s important to set those big goals and to stay focused on reaching them. However, a successful mindset also recognises that there may be a myriad of smaller stepping stones involved in reaching the bigger goals and it&amp;rsquo;s important not to forget these. When you reach a smaller objective take the time to celebrate and reflect on the achievement. That way you&amp;rsquo;ll feel like you&amp;rsquo;re constantly progressing and you won&amp;rsquo;t lose motivation because the larger goals feel out of reach.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3&gt;5. Be your own coach&lt;/h3&gt;\r\n\r\n&lt;p&gt;There is no substitute for positive self talk when it comes to boosting your mindset for success. An optimistic outlook can help you to do more and that starts with the right thoughts. Encourage yourself and look for the positives and not the negatives in any situation. Stay realistic and grounded but take the road of opportunity and not doubt.&lt;/p&gt;\r\n',
        1,
        '2024-04-12 07:14:50',
        '2024-04-12 07:14:13'
    );
-- --------------------------------------------------------
--
-- Table structure for table `post_topic`
--
CREATE TABLE `post_topic` (
    `id` int(11) NOT NULL,
    `post_id` int(11) NOT NULL,
    `topic_id` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;
--
-- Dumping data for table `post_topic`
--
INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`)
VALUES (7, 3, 4),
    (10, 4, 6),
    (12, 5, 10),
    (13, 6, 1);
-- --------------------------------------------------------
--
-- Table structure for table `topics`
--
CREATE TABLE `topics` (
    `id` int(11) NOT NULL,
    `name` varchar(255) DEFAULT NULL,
    `slug` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;
--
-- Dumping data for table `topics`
--
INSERT INTO `topics` (`id`, `name`, `slug`)
VALUES (1, 'Inspiration', 'inspiration'),
    (3, 'Diary', 'diary'),
    (4, 'Geopolitics', 'geopolitics'),
    (6, 'News', 'news'),
    (10, 'Tech', 'tech');
-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
    `id` int(11) NOT NULL,
    `username` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `role` enum('Author', 'Admin') DEFAULT NULL,
    `password` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT current_timestamp(),
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;
--
-- Dumping data for table `users`
--
INSERT INTO `users` (
        `id`,
        `username`,
        `email`,
        `role`,
        `password`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'Nishtha',
        'nishtha@gmail.com',
        'Author',
        '81dc9bdb52d04dc20036dbd8313ed055',
        '2018-01-08 07:22:58',
        '2018-01-08 07:22:58'
    ),
    (
        2,
        'Aditya',
        'aditya@gmail.com',
        'Author',
        '81dc9bdb52d04dc20036dbd8313ed055',
        '2024-04-10 17:34:08',
        '2024-04-10 17:34:08'
    ),
    (
        3,
        'admin1',
        'admin1@gmail.com',
        'Admin',
        '25d55ad283aa400af464c76d713c07ad',
        '2024-04-11 05:32:24',
        '2024-04-11 05:32:24'
    );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `slug` (`slug`),
    ADD KEY `user_id` (`user_id`);
--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `post_id` (`post_id`),
    ADD KEY `topic_id` (`topic_id`);
--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `slug` (`slug`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT for table `post_topic`
--
ALTER TABLE `post_topic`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 14;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 4;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
    ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;