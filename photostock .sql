-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2017 at 08:18 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photostock`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `commenter_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `image_id`, `commenter_id`, `comment`) VALUES
(25, 36, 20, 'Nice Pic Keep it up.'),
(26, 36, 20, 'good color nice shot.'),
(27, 36, 21, 'nice dude.'),
(28, 39, 20, 'jjeheehes'),
(29, 52, 20, 'Nice Shot Dude Keep itup. :) :) \r\n'),
(31, 52, 21, 'Thanks Dulanjan'),
(32, 46, 20, 'Nice Capture!.'),
(33, 46, 22, 'Nice :) '),
(34, 57, 23, 'wow that is a wonderful picture dulanjan :)');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `profile_pic_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `description`, `category`, `uploader_id`, `profile_pic_link`) VALUES
(24, 'Women', 'Beauty of Sri Lanka', 'B&W', 20, 'uploads/59bbefb04524f1.94086380.jpg'),
(25, 'Old Women ', 'Waiting For a Hope', 'B&W', 20, 'uploads/59bbf0657cc7c4.10663050.jpg'),
(26, 'Dawn ', 'The beautiest moment of the day.fresh to start everything ', 'Nature', 20, 'uploads/59bbf1b1b64198.68162164.jpg'),
(27, 'Dawn Forrest ', 'A road to heaven.Captured ', 'Nature', 20, 'uploads/59bbf217ebc0f3.33019477.jpg'),
(28, 'Coconut ', 'Drink these you will feel something but capture these u feel everything.', 'Other', 20, 'uploads/59bbf2ac33f4a2.55361938.jpg'),
(29, 'Dawn Road', 'The best moment to feel the freshness, #people made at Sri Jayawardanapura. ', 'Other', 20, 'uploads/59bbf31e4185f4.01308139.jpg'),
(30, 'One Road ', 'Life is just like a road, Never end until you reach your destination. ', 'Places', 20, 'uploads/59bbf3ba6cf448.64549277.jpg'),
(31, 'Feel The Nature ', 'No place Feel Like This.', 'Places', 20, 'uploads/59bbf418cc1cb0.56687700.jpg'),
(32, 'Dawn ', 'Loneliness without You.', 'Places', 20, 'uploads/59bbf49e1ccf86.49661794.jpg'),
(33, 'Sigiriya', 'Pride of Sri Lanka ', 'Places', 20, 'uploads/59bbf4c7be95d2.43418437.jpg'),
(34, 'Moon', 'Full Moon Captured with Nikon ', 'Other', 20, 'uploads/59bbf50f52bfe5.26926917.jpg'),
(35, 'Waiting ', 'Master, I\'m Waiting For You. :) :) :) ', 'Other', 20, 'uploads/59bbf5508235f9.75284281.jpg'),
(36, 'Love', 'Love Has No Color.', 'B&W', 20, 'uploads/59bbf581c23888.76925612.jpg'),
(37, 'Culture ', 'Beauty and Culture meet at one place.', 'B&W', 20, 'uploads/59bbf5c5e356b4.55560019.jpg'),
(38, 'Rail Road ', 'Walk with Hope.', 'B&W', 20, 'uploads/59bbf6038c1901.42080464.jpg'),
(39, 'Lion ', 'Reach the target.', 'Nature', 20, 'uploads/59bbf6749bcbd3.33574299.jpg'),
(40, 'Heaven ', 'One Way to Heaven :) :)', 'Nature', 20, 'uploads/59bbf698f15612.20210743.jpg'),
(41, 'Working', 'Working on purpose ', 'People', 20, 'uploads/59bbf9bce1f1f7.96941672.jpg'),
(42, 'Rocket ', ':) :) Talented People', 'People', 21, 'uploads/59bccce30a5d55.84248524.jpg'),
(43, 'Moosie', 'Wild Life Beauty.', 'Nature', 20, 'uploads/59bea279484645.05041658.jpg'),
(44, 'Light', 'Bulb Without a light.', 'Other', 21, 'uploads/59bea9d8e4ce65.11094702.jpg'),
(45, 'Little House', 'Middle of Nature', 'Places', 21, 'uploads/59beaa1acb6b79.52494975.jpg'),
(46, 'Waiting', 'il Wait For you Master.', 'Other', 21, 'uploads/59beaa412a76b2.81073126.jpg'),
(47, 'Work', 'Hard Work ', 'People', 21, 'uploads/59beaa7e472328.76086509.jpg'),
(48, 'Peace ', 'Deliverer of peace', 'People', 21, 'uploads/59beaae1c3bb34.01957993.jpg'),
(49, 'Working', 'Not For you bird.', 'People', 21, 'uploads/59beab29888f15.76842916.jpg'),
(50, 'Green', 'Beauty of Nature ', 'Nature', 21, 'uploads/59beab544428b6.74976942.jpg'),
(51, 'Peace', 'Peace of Mind ', 'Places', 21, 'uploads/59beab8f8e7160.84798008.jpg'),
(52, 'Alone', 'End of Life', 'People', 21, 'uploads/59beaba6a72cc4.47572338.jpg'),
(53, 'Train', 'Whoof whoof!', 'Other', 21, 'uploads/59beabde8bb7d4.05759654.jpg'),
(54, 'Water Drops', 'More Like Life', 'Other', 21, 'uploads/59beac048e8a46.01419794.jpg'),
(55, 'Work', 'Target !!', 'People', 21, 'uploads/59beac291e7f44.48924873.jpg'),
(56, 'Fog', 'Fog', 'Nature', 20, 'uploads/59bf51c040c624.15661210.jpg'),
(57, 'children', 'random students ', 'People', 20, 'uploads/59bf832e96a286.77464617.jpg'),
(58, 'fish seller', 'a random click at the fish market', 'Nature', 23, 'uploads/59bf851d75d4c4.29719134.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_bio` text NOT NULL,
  `location` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birth_day` text NOT NULL,
  `profile_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_bio`, `location`, `gender`, `birth_day`, `profile_pic`) VALUES
(20, 'dm@gmail.com', '$2y$11$zB4fBaRraHK.2gdjk2EaD.ghfuq9ocgfDgmZbxSA4k7CJ/3a0r0YK', 'Dulanjan', 'Madusanka', 'tell me more', 'Afganistan', 'Male', '1998-11-13', 'profiles/59bcf6ee5ac171.87171135.jpg'),
(21, 'sadun@gmail.com', '$2y$11$SQqh63YVY.EbN4S8wiGasem.vCCiZtI4Qiwi4Siv0Xo.m1tpJaFCu', 'Sadun', 'perera', 'tell me more', 'Anguilla', 'Male', '1996-01-01', 'profiles/59bcf89a06ce48.03966328.jpg'),
(22, 'Nirmal@gmail.com', '$2y$11$ObJg6OzAgUA8yutRANPb7ugm3isIdzAD84c4FWsrt1ro.sVOjs8YO', 'Nirmal', 'Mendis', '', '', '', '', ''),
(23, 'amilaperera323@gmail.com', '$2y$11$PbIgqW9TGEGKmciipPAuO.f7uFcYttFZgRjGwaq5kSXQSImvOaA/y', 'amila', 'perera', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
