-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB-1~trusty - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for forge
CREATE DATABASE IF NOT EXISTS `forge` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `forge`;


-- Dumping structure for table forge.facts
CREATE TABLE IF NOT EXISTS `facts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level_id` int(10) unsigned NOT NULL,
  `q` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_level_id_foreign` (`level_id`),
  CONSTRAINT `facts_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.facts: ~129 rows (approximately)
/*!40000 ALTER TABLE `facts` DISABLE KEYS */;
INSERT IGNORE INTO `facts` (`id`, `level_id`, `q`, `a`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Polar bears are the largest carnivore that lives on animals', 1, NULL, NULL),
	(2, 1, 'Polar bears mostly eat penguins', 0, NULL, NULL),
	(3, 1, 'Polar bears move faster in water than on land', 0, NULL, NULL),
	(4, 1, 'Female polar bears only weigh half as much as male polar bears', 1, NULL, NULL),
	(5, 1, 'Polar bears spend most of their time on land', 0, NULL, NULL),
	(6, 1, 'Polar bears have black skin under their white fur to better absorb the rays of the sun.', 1, NULL, NULL),
	(7, 1, 'Polar bears are known to eat their cubs', 1, NULL, NULL),
	(8, 1, 'Reindeer eyeballs turn blue in winter to help them see at lower light levels.', 1, NULL, NULL),
	(9, 1, 'Polar bears are left-handed', 1, NULL, NULL),
	(10, 2, 'The eyes of an ostrich is bigger than its brain', 1, NULL, NULL),
	(11, 2, 'A donkey can see all four of its feet at the same time', 1, NULL, NULL),
	(12, 2, 'If you lift a kangaroo’s tail off the ground it can’t hop – they use their tails for balance.', 1, NULL, NULL),
	(13, 2, 'The kick of an ostrich is used as a weapon and is capable of killing a lion — and yes, humans too.', 1, NULL, NULL),
	(14, 2, 'The largest bald eagle nest on record was 20 feet high and weighed two tons.', 1, NULL, NULL),
	(15, 2, 'Young goats pick up accents from each other.', 1, NULL, NULL),
	(16, 2, 'Goats know how to talk in both British and Scottish accents', 0, NULL, NULL),
	(17, 2, 'There are over 210 breeds of goats in the world.', 1, NULL, NULL),
	(18, 2, 'Kangaroos can\'t walk backwards', 1, NULL, NULL),
	(19, 2, 'Snakes can\'t wink', 1, NULL, NULL),
	(20, 2, 'A group of porcupines is called a pickle', 0, NULL, NULL),
	(21, 3, 'Goats and sheep have rectangular pupils which allow them to see nearly 360 degrees around themselves. ', 1, NULL, NULL),
	(22, 3, 'Owls don\'t have eyeballs. They have eye tubes.', 1, NULL, NULL),
	(23, 3, 'Chickens have over 200 distinct noises they can make for communicating.', 1, NULL, NULL),
	(24, 3, 'A duck\'s quack cannot echo', 1, NULL, NULL),
	(25, 3, 'Cows can\'t walk up and down stairs', 0, NULL, NULL),
	(26, 3, 'All domestic ducks are descended from either the mallard or the Muscovy duck.', 1, NULL, NULL),
	(27, 3, 'Mother pigs sing to their young while nursing', 1, NULL, NULL),
	(28, 3, 'Cows worry about the future', 1, NULL, NULL),
	(29, 3, 'There are over 9000 breeds of cows today', 1, NULL, NULL),
	(30, 3, 'Cows have tunnel vision', 0, NULL, NULL),
	(31, 3, 'A cow can recognize more than 100 members of its herd', 1, NULL, NULL),
	(32, 3, 'Cows enjoy an intellectual challenge', 1, NULL, NULL),
	(33, 3, 'Pigs don\'t sweat', 1, NULL, NULL),
	(34, 3, 'Pigs can run a mile in seven miinutes ', 1, NULL, NULL),
	(35, 3, 'Pigs are smarter than dogs and a 3-year-old human', 1, NULL, NULL),
	(36, 3, 'Pigs are very anti social and will try to avoid communicating with other pigs', 0, NULL, NULL),
	(37, 3, 'Sheep have a split in their upper lip', 1, NULL, NULL),
	(38, 3, 'Sheeps possess a sharp sense of individuality', 1, NULL, NULL),
	(39, 3, 'Sheeps are emotionless', 0, NULL, NULL),
	(40, 3, 'Hens start communicating with their chicks before they hatch', 1, NULL, NULL),
	(41, 3, 'Turkeys dislike music', 0, NULL, NULL),
	(42, 3, 'Cows have a memory of about three years.', 1, NULL, NULL),
	(43, 3, 'A chicken has flown before', 1, NULL, NULL),
	(44, 4, 'Deers have no gall bladders', 1, NULL, NULL),
	(45, 4, 'An adult panda typically spends 12 hours a day eating and must consume 28 pounds of bamboo daily to fulfill its dietary needs.', 1, NULL, NULL),
	(46, 4, 'Male koala’s have two vagina’s.', 0, NULL, NULL),
	(47, 4, 'Koalas are actually not bears — they’re marsupials — and they sleep for 18 hours a day.', 1, NULL, NULL),
	(48, 4, 'It is common for people to eat sashimi made from bear ', 0, NULL, NULL),
	(49, 4, 'The animal on the Firefox logo is not a fox, but a red panda.', 1, NULL, NULL),
	(50, 4, 'Squirrels can\'t burp or vomit.', 1, NULL, NULL),
	(51, 4, 'Snails can sleep for 5 years', 0, NULL, NULL),
	(52, 4, 'Wombats have cube-shaped poop', 1, NULL, NULL),
	(53, 4, 'A wolf can eat up to 20 pound of meat in one sitting ', 1, NULL, NULL),
	(54, 4, 'Anteaters eat 35,000 ants a day.', 1, NULL, NULL),
	(55, 4, 'A giraffe\'s tongue is white', 0, NULL, NULL),
	(56, 4, 'Squirrels accidentally plant millions of trees by pooping the nuts they\'ve eaten in random places', 0, NULL, NULL),
	(57, 4, 'Giraffes can\'t cough', 1, NULL, NULL),
	(58, 4, 'Giraffes sleep 10 hours a day', 0, NULL, NULL),
	(59, 5, 'A mole can dig a tunnel 295 feet long in one hour', 0, NULL, NULL),
	(60, 5, 'A hedgehog\'s heart beats an average of 300 times a minute', 1, NULL, NULL),
	(61, 5, 'A housefly hums in the key of V.', 0, NULL, NULL),
	(62, 5, 'Bloodhounds can follow a scent that is three days old', 1, NULL, NULL),
	(63, 5, 'Cats can hear ultrasound.', 1, NULL, NULL),
	(64, 5, 'A cat’s jaw cannot move sideways.', 1, NULL, NULL),
	(65, 5, 'Dogs, cats, and horses are resistant to black widow venom', 0, NULL, NULL),
	(66, 5, 'It costs approximately $10,000 to train a federally certified search and rescue dog.', 1, NULL, NULL),
	(67, 5, 'Cats have their own internet full of pictures of humans', 0, NULL, NULL),
	(68, 5, 'Cats never sleep more than 3 hours a day', 0, NULL, NULL),
	(69, 6, 'Pandas fall asleep whenever they are sleepy and don\'t have a specific sleeping spot', 1, NULL, NULL),
	(70, 6, 'Alpacas can die of loneliness', 1, NULL, NULL),
	(71, 6, 'The goat is among the cleanest of animals,', 1, NULL, NULL),
	(72, 6, 'There are over 200 breeds of alpacas', 0, NULL, NULL),
	(73, 6, 'Aplacas communicate with others in their group by humming', 1, NULL, NULL),
	(74, 6, 'Female goats are called nannies ', 1, NULL, NULL),
	(75, 6, 'There are only 2 breeds of alpacas', 1, NULL, NULL),
	(76, 7, 'A grasshopper can leap 50 times the length of its own body.', 0, NULL, NULL),
	(77, 7, 'All lynx are skilled hunters that make use of great hearing when hunting ', 1, NULL, NULL),
	(78, 7, 'Cayotes are adaptale animals that will eat almost anything ', 1, NULL, NULL),
	(79, 7, 'Bobcats are known to hunt and eat adult deers ', 0, NULL, NULL),
	(80, 7, 'No two tigers have the exact same stripes.', 1, NULL, NULL),
	(81, 7, 'Giraffes can clean their ears with their tongues', 1, NULL, NULL),
	(82, 7, 'Ants don\'t sleep', 1, NULL, NULL),
	(83, 7, 'Tarantulas secrete digestive enzymes so they can liquefy their pray and drink up their remains. Yum!', 1, NULL, NULL),
	(84, 7, 'Toads do not have teeth', 1, NULL, NULL),
	(85, 7, 'Alligators cannot live up to 100 years.', 0, NULL, NULL),
	(86, 7, 'Slugs have four noses', 1, NULL, NULL),
	(87, 7, 'Slugs have four eyes', 0, NULL, NULL),
	(88, 7, 'The beaver alters the landscape more than any other animal except for humans', 1, NULL, NULL),
	(89, 7, 'Hippos attract mates by urinating and defecating.', 1, NULL, NULL),
	(90, 7, 'The milk of a hippopotamus is light blue', 0, NULL, NULL),
	(91, 7, 'A bat can eat up to 1,000 insects per hour.', 1, NULL, NULL),
	(92, 7, 'There is a butterfly in Africa with enough poison in its body to kill six cats!', 1, NULL, NULL),
	(93, 7, 'Only 3 percent of mammals are socially monogomous ', 1, NULL, NULL),
	(94, 8, 'Elephants can smell predators from several miles away. ', 0, NULL, NULL),
	(95, 8, 'The king cobra has enough venom to kill an elephant. ', 1, NULL, NULL),
	(96, 8, 'Crocodiles can\'t stick their tongues out', 1, NULL, NULL),
	(97, 8, 'Elephants can jump up to 2 feet', 0, NULL, NULL),
	(98, 8, 'A chameleon’s tongue can be as long as its body.', 1, NULL, NULL),
	(99, 8, 'Most elephants weigh more than the tongue of a blue whale.', 0, NULL, NULL),
	(100, 8, 'African elephants have the longest pregnancy of any mammal — nearly two years long. ', 1, NULL, NULL),
	(101, 9, 'The blue whale’s tongue weighs as much as an adult elephant. ', 1, NULL, NULL),
	(102, 9, 'Oysters can change gender multiple times during their life. ', 1, NULL, NULL),
	(103, 9, 'Seahorses are also the only animal on earth where the male bears the unborn young. ', 1, NULL, NULL),
	(104, 9, 'The largest giant squid on record was 59 feet long, and the creature’s eyes are as big as beach balls. ', 1, NULL, NULL),
	(105, 9, 'Once a giant clam picks a spot to live on a reef, it does not move for the rest of its life.', 1, NULL, NULL),
	(106, 9, 'Sharks are immune to cancer ', 1, NULL, NULL),
	(107, 9, 'Alligators have been around for 150 million years. ', 0, NULL, NULL),
	(108, 9, 'Octopuses have three hearts.', 1, NULL, NULL),
	(109, 9, 'Wild dolphins call each other by name.', 1, NULL, NULL),
	(110, 9, 'Ducks have been domesticated as pets and farm animals for more than 500 years', 1, NULL, NULL),
	(111, 9, 'There are more than 100 breeds of domestic duck.', 0, NULL, NULL),
	(112, 9, 'A sea lion is the first nonhuman mammal with a proven ability to keep a beat.', 1, NULL, NULL),
	(113, 9, 'Warmer weather causes more turtles to be born female than male.', 1, NULL, NULL),
	(114, 9, 'Dolphins sleep with one eye open', 1, NULL, NULL),
	(115, 9, 'Sharks don\'t have bones', 1, NULL, NULL),
	(116, 9, 'Starfish have 16 eyes – two at the end of each leg.', 0, NULL, NULL),
	(117, 9, 'Platypi swim with their eyes closed ', 1, NULL, NULL),
	(118, 9, 'Giant Pacific octopuses have no bones', 1, NULL, NULL),
	(119, 9, 'Blue whales are the loudest mammals', 1, NULL, NULL),
	(120, 9, 'Once a giant clam picks a spot to live on a reef, it does not move for the rest of its life. ', 1, NULL, NULL),
	(121, 9, 'Fish are the oldest living vertebrate ', 1, NULL, NULL),
	(122, 9, 'Fish eavesdrop on one another to get information', 1, NULL, NULL),
	(123, 9, 'Fish use their mouths to make nests for their babies', 1, NULL, NULL),
	(124, 9, 'Some fish are farmers', 1, NULL, NULL),
	(125, 9, 'Fish tend algae gardens', 1, NULL, NULL),
	(126, 9, 'A blue whale’s heart is the size of a small car.', 1, NULL, NULL),
	(127, 9, 'Starfish do not have brains', 1, NULL, NULL),
	(128, 9, 'Fish can get seasick.', 1, NULL, NULL),
	(129, 9, 'A catfish’s skin is covered in over a quarter of a million taste buds.', 1, NULL, NULL);
/*!40000 ALTER TABLE `facts` ENABLE KEYS */;


-- Dumping structure for table forge.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level_id` int(10) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_level_id_foreign` (`level_id`),
  CONSTRAINT `images_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.images: ~27 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT IGNORE INTO `images` (`id`, `level_id`, `score`, `url`, `created_at`, `updated_at`) VALUES
	(1, 1, 7, 'https://s-media-cache-ak0.pinimg.com/236x/4e/a3/2c/4ea32cec9df2359d49a926887e17b9dc.jpg', NULL, NULL),
	(2, 1, 4, 'http://loomus.ee/wp-content/uploads/2014/09/Screen-shot-2013-04-14-at-15.53.011.png', NULL, NULL),
	(3, 1, 2, 'http://www.cutenessoverflow.com/wp-content/uploads/2014/07/l-enough-arctic-foxes.jpg', NULL, NULL),
	(4, 2, 11, 'http://www.cutestpaw.com/wp-content/uploads/2014/07/Fictional-Animals-004.jpg', NULL, NULL),
	(5, 2, 9, 'http://41.media.tumblr.com/0116a7e9cda1bb588107b66c9b6f41a7/tumblr_n10lyiW9z71tr9xmwo1_1280.jpg', NULL, NULL),
	(6, 2, 7, 'https://i.rmbl.ws/z1/K/8/M/e/a.daa-small-Fused-Animals.jpg', NULL, NULL),
	(7, 2, 5, 'https://nefalcar.files.wordpress.com/2009/10/cheetah-hawk2.jpg?w=300&h=225', NULL, NULL),
	(8, 3, 20, 'https://s-media-cache-ak0.pinimg.com/236x/66/df/14/66df14e70b2d9c29761070bfdc0e8e48.jpg', NULL, NULL),
	(9, 3, 10, 'http://www.hdwallpapersact.com/wp-content/uploads/2013/09/baby-duck-hd-wallpapers1.jpg', NULL, NULL),
	(10, 3, 5, 'https://img0.etsystatic.com/005/0/6220876/il_570xN.373873960_2exh.jpg', NULL, NULL),
	(11, 4, 12, 'https://s-media-cache-ak0.pinimg.com/736x/a5/04/9c/a5049ceff33de56559d96aa533b98bea.jpg', NULL, NULL),
	(12, 4, 6, 'http://i.imgur.com/qn5JiZ9.jpg', NULL, NULL),
	(13, 5, 8, 'http://bloganimal.com.br/wp-content/uploads/2014/04/Conhe%C3%A7a-Marutaro-o-ouri%C3%A7o-mais-descolado-do-mundo-61.jpg?7a0f18', NULL, NULL),
	(14, 5, 5, 'https://d1w116sruyx1mf.cloudfront.net/ee-assets/gsd/funnies/141218Hedgehog.jpg', NULL, NULL),
	(15, 5, 3, 'https://s-media-cache-ak0.pinimg.com/564x/db/22/08/db2208f9403af15c21ef4d11a8d233a2.jpg', NULL, NULL),
	(16, 6, 7, 'http://www.vetlocator.com/dailypaws/wp-content/uploads/2012/05/cute-pandas.jpg', NULL, NULL),
	(17, 6, 3, 'https://s-media-cache-ak0.pinimg.com/236x/c2/26/2f/c2262fe2e60678fb14bc75673bd51338.jpg', NULL, NULL),
	(18, 7, 16, 'https://metrouk2.files.wordpress.com/2015/04/animal-comp.png', NULL, NULL),
	(19, 7, 10, 'http://cdn.emgn.com/wp-content/uploads/2014/01/b0l4U3Y.jpg', NULL, NULL),
	(20, 7, 5, 'http://holdinholden.com/wp-content/uploads/2015/01/beaver.jpg', NULL, NULL),
	(21, 8, 7, 'http://a2.files.blazepress.com/image/upload/c_fit,cs_srgb,dpr_1.0,q_80,w_620/MTI4OTg3OTQ1MjM0MzcxODU4.jpg', NULL, NULL),
	(22, 8, 3, 'http://photos.mongabay.com/j/_Julie-Larsen-Maher-6346-Red-Panda-Biru-CPZ-08-05-11.568.jpg', NULL, NULL),
	(23, 8, 1, 'http://media.mnn.com/assets/images/2013/06/sand-cat-kitten.jpg.560x0_q80_crop-smart.jpg', NULL, NULL),
	(24, 9, 25, 'http://cdn2.list25.com/wp-content/uploads/2014/01/sharklegs.jpg', NULL, NULL),
	(25, 9, 15, 'https://camicusdotorg.files.wordpress.com/2013/06/favim-com-7114.jpg', NULL, NULL),
	(26, 9, 10, 'https://s-media-cache-ak0.pinimg.com/236x/42/96/d9/4296d9e402ad2888aad8e43e574b8942.jpg', NULL, NULL),
	(27, 9, 5, 'http://www.worldfortravel.com/wp-content/uploads/2013/07/Cute-Dolphins-at-Dolphin-Reef.jpg', NULL, NULL);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


-- Dumping structure for table forge.levels
CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.levels: ~9 rows (approximately)
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT IGNORE INTO `levels` (`id`, `name`, `background`, `created_at`, `updated_at`) VALUES
	(1, 'Arctic', 'http://i.imgur.com/5DcrWDh.jpg', NULL, NULL),
	(2, 'Desert', 'http://i.imgur.com/TkRn8X0.jpg', NULL, NULL),
	(3, 'Farm', 'http://i.imgur.com/sjd7zto.jpg', NULL, NULL),
	(4, 'Forest', 'http://i.imgur.com/TbciNNE.jpg', NULL, NULL),
	(5, 'House', 'http://i.imgur.com/R9s0YNa.jpg', NULL, NULL),
	(6, 'Mountain', 'http://i.imgur.com/FQLOnRS.jpg', NULL, NULL),
	(7, 'Random', 'http://i.imgur.com/rOjSNkm.jpg', NULL, NULL),
	(8, 'Tropical', 'http://i.imgur.com/2GOesW5.jpg', NULL, NULL),
	(9, 'Underwater', 'http://i.imgur.com/iibQ229.jpg', NULL, NULL);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;


-- Dumping structure for table forge.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.migrations: ~7 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT IGNORE INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1),
	('2016_04_03_052728_create_levels_table', 1),
	('2016_04_03_052739_create_facts_table', 1),
	('2016_04_03_052751_create_scores_table', 1),
	('2016_04_03_053410_create_images_table', 1),
	('2016_04_03_053718_create_submissions_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table forge.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table forge.scores
CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level_id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scores_level_id_foreign` (`level_id`),
  CONSTRAINT `scores_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.scores: ~51 rows (approximately)
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT IGNORE INTO `scores` (`id`, `level_id`, `username`, `score`, `created_at`, `updated_at`) VALUES
	(1, 3, 'steve', 7, '2016-04-03 20:26:27', '2016-04-03 20:26:27'),
	(2, 1, 'asdfasdf', -1, '2016-04-03 20:26:52', '2016-04-03 20:26:52'),
	(3, 1, 'bob', 3, '2016-04-03 20:27:04', '2016-04-03 20:27:04'),
	(4, 4, 'im', 3, '2016-04-03 20:28:03', '2016-04-03 20:28:03'),
	(5, 5, 'jim', -2, '2016-04-03 20:28:14', '2016-04-03 20:28:14'),
	(6, 6, 'frank', 3, '2016-04-03 20:29:06', '2016-04-03 20:29:06'),
	(7, 1, 'asdfasdf', -3, '2016-04-03 20:32:45', '2016-04-03 20:32:45'),
	(8, 1, 'oscarpan', 3, '2016-04-03 20:33:11', '2016-04-03 20:33:11'),
	(9, 2, 'meow', 12, '2016-04-03 20:33:45', '2016-04-03 20:33:45'),
	(10, 1, 'oscarpan', 3, '2016-04-03 20:34:06', '2016-04-03 20:34:06'),
	(11, 1, 'test', 3, '2016-04-03 20:34:23', '2016-04-03 20:34:23'),
	(12, 1, 'test', -3, '2016-04-03 20:34:53', '2016-04-03 20:34:53'),
	(13, 3, 'test', 13, '2016-04-03 20:35:21', '2016-04-03 20:35:21'),
	(14, 8, 'test', -1, '2016-04-03 20:35:46', '2016-04-03 20:35:46'),
	(15, 1, 'oscar', -6, '2016-04-03 20:38:57', '2016-04-03 20:38:57'),
	(16, 9, 'oscar', 6, '2016-04-03 20:39:33', '2016-04-03 20:39:33'),
	(17, 1, 'oscar', 3, '2016-04-03 20:43:33', '2016-04-03 20:43:33'),
	(18, 8, 'oscar', 7, '2016-04-03 20:44:29', '2016-04-03 20:44:29'),
	(19, 1, 'oscar', -1, '2016-04-03 20:58:55', '2016-04-03 20:58:55'),
	(20, 1, 'Mamaruga', 2, '2016-04-03 23:17:55', '2016-04-03 23:17:55'),
	(21, 8, 'Mamaruga', 3, '2016-04-03 23:20:08', '2016-04-03 23:20:08'),
	(22, 1, 'test', 3, '2016-04-03 23:21:54', '2016-04-03 23:21:54'),
	(23, 2, 'test', 2, '2016-04-03 23:22:50', '2016-04-03 23:22:50'),
	(24, 6, 'Mamaruga', 6, '2016-04-03 23:24:14', '2016-04-03 23:24:14'),
	(25, 2, 'Mamaruga', 2, '2016-04-03 23:44:18', '2016-04-03 23:44:18'),
	(26, 7, 'Mamaruga', 8, '2016-04-03 23:47:45', '2016-04-03 23:47:45'),
	(27, 7, 'oscar', 9, '2016-04-04 00:00:16', '2016-04-04 00:00:16'),
	(28, 7, 'Mamaruga', 10, '2016-04-04 02:18:11', '2016-04-04 02:18:11'),
	(29, 2, 'swaggy', 9, '2016-04-04 04:41:45', '2016-04-04 04:41:45'),
	(30, 6, 'swaggy', 3, '2016-04-04 04:42:32', '2016-04-04 04:42:32'),
	(31, 7, 'swaggy', 7, '2016-04-04 04:46:08', '2016-04-04 04:46:08'),
	(32, 1, 'Mamaruga', 3, '2016-04-04 06:16:12', '2016-04-04 06:16:12'),
	(33, 2, 'Mamaruga', 1, '2016-04-04 06:17:04', '2016-04-04 06:17:04'),
	(34, 3, 'Mamaruga', 12, '2016-04-04 06:18:51', '2016-04-04 06:18:51'),
	(35, 4, 'Mamaruga', 2, '2016-04-04 06:20:51', '2016-04-04 06:20:51'),
	(36, 5, 'Mamaruga', 8, '2016-04-04 06:21:50', '2016-04-04 06:21:50'),
	(37, 7, 'Mamaruga', 12, '2016-04-04 06:24:07', '2016-04-04 06:24:07'),
	(38, 9, 'Mamaruga', 3, '2016-04-04 19:25:26', '2016-04-04 19:25:26'),
	(39, 1, 'Mamaruga', -7, '2016-04-04 19:28:17', '2016-04-04 19:28:17'),
	(40, 5, 'Mamaruga', 4, '2016-04-04 19:29:44', '2016-04-04 19:29:44'),
	(41, 3, 'oscar', 2, '2016-04-05 00:52:31', '2016-04-05 00:52:31'),
	(42, 5, 'oscar', 0, '2016-04-05 00:54:27', '2016-04-05 00:54:27'),
	(43, 9, 'Mamaruga', 12, '2016-04-06 00:04:15', '2016-04-06 00:04:15'),
	(44, 1, 'oscar', 3, '2016-04-08 19:07:51', '2016-04-08 19:07:51'),
	(45, 1, 'oscar', 3, '2016-04-20 21:45:56', '2016-04-20 21:45:56'),
	(46, 3, 'oscar', 9, '2016-04-23 01:15:33', '2016-04-23 01:15:33'),
	(47, 9, 'oscar', 21, '2016-04-23 07:56:36', '2016-04-23 07:56:36'),
	(48, 3, 'Mamaruga', 8, '2016-05-30 02:39:25', '2016-05-30 02:39:25'),
	(49, 5, 'Mamaruga', 8, '2016-05-30 02:40:14', '2016-05-30 02:40:14'),
	(50, 1, 'oscar', 5, '2016-06-06 03:49:41', '2016-06-06 03:49:41'),
	(51, 5, 'Mamaruga', -7, '2016-10-15 03:32:58', '2016-10-15 03:32:58');
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;


-- Dumping structure for table forge.submissions
CREATE TABLE IF NOT EXISTS `submissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `q` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a` tinyint(1) NOT NULL,
  `added` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.submissions: ~4 rows (approximately)
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT IGNORE INTO `submissions` (`id`, `username`, `q`, `a`, `added`, `created_at`, `updated_at`) VALUES
	(1, 'Mamaruga', 'Armadillo can postpone their own pregnancies.', 1, 0, '2016-04-03 23:21:17', '2016-04-03 23:21:17'),
	(2, 'Mamaruga', 'Armadillo can postpone their own pregnancies.', 1, 0, '2016-04-03 23:21:21', '2016-04-03 23:21:21'),
	(3, 'Mamaruga', 'Armadillo can postpone their own pregnancies.', 1, 0, '2016-04-03 23:21:26', '2016-04-03 23:21:26'),
	(4, 'Mamaruga', 'Armadillo can postpone their own pregnancies.', 1, 0, '2016-04-03 23:21:34', '2016-04-03 23:21:34');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;


-- Dumping structure for table forge.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table forge.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
