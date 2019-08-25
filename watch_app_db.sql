-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия на сървъра:            10.1.16-MariaDB - mariadb.org binary distribution
-- ОС на сървъра:                Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for watch_app
DROP DATABASE IF EXISTS `watch_app`;
CREATE DATABASE IF NOT EXISTS `watch_app` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `watch_app`;

-- Дъмп структура за таблица watch_app.bezel_material
DROP TABLE IF EXISTS `bezel_material`;
CREATE TABLE IF NOT EXISTS `bezel_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.bezel_material: ~17 rows (approximately)
DELETE FROM `bezel_material`;
/*!40000 ALTER TABLE `bezel_material` DISABLE KEYS */;
INSERT INTO `bezel_material` (`id`, `name`) VALUES
	(1, 'Aluminum'),
	(2, 'Bronze'),
	(3, 'Carbon'),
	(4, 'Ceramic'),
	(5, 'Gold/Steel'),
	(6, 'Palladium'),
	(7, 'Plastic'),
	(8, 'Platinum'),
	(9, 'Red gold'),
	(10, 'Rose gold'),
	(11, 'Silver'),
	(12, 'Steel'),
	(13, 'Tantalum'),
	(14, 'Titanium'),
	(15, 'Tungsten'),
	(16, 'White gold'),
	(17, 'Yellow gold');
/*!40000 ALTER TABLE `bezel_material` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.bracelet_color
DROP TABLE IF EXISTS `bracelet_color`;
CREATE TABLE IF NOT EXISTS `bracelet_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.bracelet_color: ~17 rows (approximately)
DELETE FROM `bracelet_color`;
/*!40000 ALTER TABLE `bracelet_color` DISABLE KEYS */;
INSERT INTO `bracelet_color` (`id`, `name`) VALUES
	(1, 'Beige'),
	(2, 'Black'),
	(3, 'Blue'),
	(4, 'Bordeaux'),
	(5, 'Bronze'),
	(6, 'Brown'),
	(7, 'Gold'),
	(8, 'Gold/Steel'),
	(9, 'Green'),
	(10, 'Grey'),
	(11, 'Orange'),
	(12, 'Pink'),
	(13, 'Red'),
	(14, 'Silver'),
	(15, 'Steel'),
	(16, 'White'),
	(17, 'Yellow');
/*!40000 ALTER TABLE `bracelet_color` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.bracelet_material
DROP TABLE IF EXISTS `bracelet_material`;
CREATE TABLE IF NOT EXISTS `bracelet_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.bracelet_material: ~23 rows (approximately)
DELETE FROM `bracelet_material`;
/*!40000 ALTER TABLE `bracelet_material` DISABLE KEYS */;
INSERT INTO `bracelet_material` (`id`, `name`) VALUES
	(1, 'Aluminium'),
	(2, 'Calf skin'),
	(3, 'Ceramic'),
	(4, 'Crocodile skin'),
	(5, 'Gold/Steel'),
	(6, 'Leather'),
	(7, 'Lizard skin'),
	(8, 'Ostrich skin'),
	(9, 'Pink gold'),
	(10, 'Plastic'),
	(11, 'Platinum'),
	(12, 'Rose gold'),
	(13, 'Rubber'),
	(14, 'Satin'),
	(15, 'Shark skin'),
	(16, 'Silicon'),
	(17, 'Silver'),
	(18, 'Snake skin'),
	(19, 'Steel'),
	(20, 'Textile'),
	(21, 'Titanium'),
	(22, 'White gold'),
	(23, 'Yellow gold');
/*!40000 ALTER TABLE `bracelet_material` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.brands
DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=583 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.brands: ~582 rows (approximately)
DELETE FROM `brands`;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`) VALUES
	(1, 'Audemars Piguet'),
	(2, 'Breitling'),
	(3, 'IWC'),
	(4, 'Jaeger-LeCoultre'),
	(5, 'Omega'),
	(6, 'Panerai'),
	(7, 'Patek Philippe'),
	(8, 'Rolex'),
	(9, 'A. Lange & Söhne'),
	(10, 'ABP Paris'),
	(11, 'AD-Chronographen'),
	(12, 'Adidas'),
	(13, 'Aerowatch'),
	(14, 'Aigle'),
	(15, 'Aigner'),
	(16, 'Alain Silberstein'),
	(17, 'lessandro Baldieri'),
	(18, 'Alexander Shorokhoff'),
	(19, 'Alfred Dunhill'),
	(20, 'Alfred Rochat & Fils'),
	(21, 'Almanus'),
	(22, 'Alpina'),
	(23, 'Altanus'),
	(24, 'Andersen Genève'),
	(25, 'Andreas Strehler'),
	(26, 'Angelus'),
	(27, 'Angular Momentum'),
	(28, 'Anonimo'),
	(29, 'Apple'),
	(30, 'Aquanautic'),
	(31, 'Aquastar'),
	(32, 'Aristo'),
	(33, 'Armand Nicolet'),
	(34, 'Armani'),
	(35, 'Armin Strom'),
	(36, 'Arnold & Son'),
	(37, 'Artisanal'),
	(38, 'Artya'),
	(39, 'Askania'),
	(40, 'Ateliers deMonaco'),
	(41, 'Atlantic'),
	(42, 'Auguste Reymond'),
	(43, 'Auricoste'),
	(44, 'Avier'),
	(45, 'Azimuth'),
	(46, 'Azzaro'),
	(47, 'B.R.M'),
	(48, 'Ball'),
	(49, 'Balmain'),
	(50, 'Barington'),
	(51, 'Barthelay'),
	(52, 'Basilika'),
	(53, 'Baume & Mercier'),
	(54, 'Bedat & Co'),
	(55, 'Bell & Ross'),
	(56, 'Beltonn'),
	(57, 'Benrus'),
	(58, 'Benzinger'),
	(59, 'Berne'),
	(60, 'Bertolucci'),
	(61, 'Beuchat'),
	(62, 'Bifora'),
	(63, 'Birkenstock'),
	(64, 'Black-Out Concept'),
	(65, 'Blacksand'),
	(66, 'Blancier'),
	(67, 'Blancpain'),
	(68, 'Boegli'),
	(69, 'Bogner Time'),
	(70, 'Bombardier'),
	(71, 'Bomberg'),
	(72, 'Borgeaud'),
	(73, 'Boucheron'),
	(74, 'Bovet'),
	(75, 'Breguet'),
	(76, 'Breil'),
	(77, 'Bremont'),
	(78, 'Brior'),
	(79, 'Bruno Söhnle'),
	(80, 'Buben & Zörweg'),
	(81, 'Bulgari'),
	(82, 'Bulova'),
	(83, 'Bunz'),
	(84, 'Burberry'),
	(85, 'BWC-Swiss'),
	(86, 'C.H. Wolf'),
	(87, 'Cabestan'),
	(88, 'Cadet Chronostar'),
	(89, 'Camel Active'),
	(90, 'Camille Fournet'),
	(91, 'Candino'),
	(92, 'Carl F. Bucherer'),
	(93, 'Carlo Ferrara'),
	(94, 'Carlo Maroni'),
	(95, 'Carrera'),
	(96, 'Cartier'),
	(97, 'Casio'),
	(98, 'Catamaran'),
	(99, 'Catena'),
	(100, 'Catorex'),
	(101, 'Cattin'),
	(102, 'Cedric Johner'),
	(103, 'Century'),
	(104, 'Cerruti'),
	(105, 'Certina'),
	(106, 'Chanel'),
	(107, 'Charmex'),
	(108, 'Charriol'),
	(109, 'Chase-Durer'),
	(110, 'Chaumet'),
	(111, 'Chopard'),
	(112, 'Chris Benz'),
	(113, 'Christiaan v.d. Klaauw'),
	(114, 'Christofle'),
	(115, 'Christophe Claret'),
	(116, 'Chronographe Suisse Cie'),
	(117, 'Chronosport'),
	(118, 'Chronoswiss'),
	(119, 'Churpfälzische Uhrenmanufaktur'),
	(120, 'Citizen'),
	(121, 'Calvin Klein'),
	(122, 'Classic Watch Construction'),
	(123, 'Claude Meylan'),
	(124, 'Clerc'),
	(125, 'Concord'),
	(126, 'Condor'),
	(127, 'Converse'),
	(128, 'Cornehl'),
	(129, 'Cornelius & Cie'),
	(130, 'Cortébert'),
	(131, 'Corum'),
	(132, 'Creo'),
	(133, 'Crockett & Jones'),
	(134, 'Cronus'),
	(135, 'Cuervo y Sobrinos'),
	(136, 'Cvstos'),
	(137, 'CWC'),
	(138, 'Cyclos'),
	(139, 'Cyma'),
	(140, 'Cyrus'),
	(141, 'D.Dornblüth & Sohn'),
	(142, 'Damasko'),
	(143, 'Daniel Roth'),
	(144, 'Dark Rush'),
	(145, 'Davidoff'),
	(146, 'David Yurman'),
	(147, 'Davosa'),
	(148, 'De Bethune'),
	(149, 'Decade'),
	(150, 'Deep Blue'),
	(151, 'De Grisogono'),
	(152, 'DeLaCour'),
	(153, 'Delance'),
	(154, 'DeLaneau'),
	(155, 'Delma'),
	(156, 'Devon'),
	(157, 'Dewitt'),
	(158, 'Diesel'),
	(159, 'Dietrich'),
	(160, 'Di Lenardo & Co'),
	(161, 'Dior'),
	(162, 'DKNY'),
	(163, 'Dodane'),
	(164, 'Dolce & Gabbana'),
	(165, 'Dom Baiz International'),
	(166, 'Doxa'),
	(167, 'Dubey & Schaldenbrand'),
	(168, 'DuBois 1785'),
	(169, 'DuBois et fils'),
	(170, 'Dufeau'),
	(171, 'Dugena'),
	(172, 'Dürmeister'),
	(173, 'Dwiss'),
	(174, 'Ebel'),
	(175, 'Eberhard & Co.'),
	(176, 'EDC'),
	(177, 'Ed Hardy'),
	(178, 'Edox'),
	(179, 'Egotempo'),
	(180, 'Eichmüller'),
	(181, 'El Charro'),
	(182, 'Election'),
	(183, 'Elgin'),
	(184, 'Elysee'),
	(185, 'Engelhardt'),
	(186, 'Enicar'),
	(187, 'Enigma'),
	(188, 'Ennebi'),
	(189, 'Epos'),
	(190, 'Ernest Borel'),
	(191, 'Ernst Benz'),
	(192, 'Erwin Sattler'),
	(193, 'Esprit'),
	(194, 'Eterna'),
	(195, 'Eulit'),
	(196, 'Eulux'),
	(197, 'F.P.Journe'),
	(198, 'Fabergé'),
	(199, 'Favre-Leuba'),
	(200, 'Feldo'),
	(201, 'Fendi'),
	(202, 'Festina'),
	(203, 'Fiorucci'),
	(204, 'Flik Flak'),
	(205, 'Fluco'),
	(206, 'Fludo'),
	(207, 'Formex'),
	(208, 'Fortis'),
	(209, 'Forum'),
	(210, 'Fossil'),
	(211, 'Francesco Basile'),
	(212, 'Franchi Menotti'),
	(213, 'Franck Dubarry'),
	(214, 'Franck Muller'),
	(215, 'Franc Vila'),
	(216, 'Frederique Constant'),
	(217, 'Gaga Milano'),
	(218, 'Gallet'),
	(219, 'Gant'),
	(220, 'Gardé'),
	(221, 'Garmin'),
	(222, 'George J von Burg'),
	(223, 'Georges V'),
	(224, 'Gérald Genta'),
	(225, 'Germano & Walter'),
	(226, 'Gevril'),
	(227, 'Girard Perregaux'),
	(228, 'Giuliano Mazzuoli'),
	(229, 'Glashütte Original'),
	(230, 'Glycine'),
	(231, 'Golana'),
	(232, 'Graf'),
	(233, 'Graham'),
	(234, 'Greubel Forsey'),
	(235, 'Grönefeld'),
	(236, 'Grovana'),
	(237, 'Gruen'),
	(238, 'Gübelin'),
	(239, 'GUB Glashütte'),
	(240, 'Gucci'),
	(241, 'Guess'),
	(242, 'Guillermin Mollet'),
	(243, 'Gul Watches'),
	(244, 'Gustafsson & Sjögren'),
	(245, 'Guy Laroche'),
	(246, 'H.I.D. Watch'),
	(247, 'H.Moser & Cie'),
	(248, 'Habring'),
	(249, 'Hacher'),
	(250, 'Haemmer'),
	(251, 'Hagal'),
	(252, 'Hamilton'),
	(253, 'Handwerk'),
	(254, 'Hanhart'),
	(255, 'Harry Winston'),
	(256, 'Harwood'),
	(257, 'Haurex'),
	(258, 'Hautlence'),
	(259, 'HD3'),
	(260, 'Hebdomas'),
	(261, 'Hebe'),
	(262, 'Hentschel Hamburg'),
	(263, 'Hermès'),
	(264, 'Herzog'),
	(265, 'Heuer'),
	(266, 'Hirsch'),
	(267, 'Howard'),
	(268, 'Huber'),
	(269, 'Hublot'),
	(270, 'Hugo Boss'),
	(271, 'HYT'),
	(272, 'Ice Watch'),
	(273, 'Ikepod'),
	(274, 'Illinois'),
	(275, 'Ingersoll'),
	(276, 'Invicta'),
	(277, 'Issey Miyake'),
	(278, 'Itay Noy'),
	(279, 'J. Chevalier'),
	(280, 'Jacob & Co.'),
	(281, 'Jacob Jensen'),
	(282, 'Jacques Etoile'),
	(283, 'Jacques Lemans'),
	(284, 'Jaermann & Stübi'),
	(285, 'Japy'),
	(286, 'Jaquet-Droz'),
	(287, 'JB Gioacchino'),
	(288, 'Jean d\'Eve'),
	(289, 'Jean Lassale'),
	(290, 'Jean-Mairet & Gillman'),
	(291, 'Jean Marcel'),
	(292, 'Jean Perret'),
	(293, 'JeanRichard'),
	(294, 'John Isaac GenèveJoop'),
	(295, 'Jorg Hysek'),
	(296, 'Jörg Schauer'),
	(297, 'Jules Jürgensen'),
	(298, 'Junghans'),
	(299, 'Junkers'),
	(300, 'Justex'),
	(301, 'Juvenia'),
	(302, 'Kadloo'),
	(303, 'Kelek'),
	(304, 'KHS'),
	(305, 'KHS-Watch'),
	(306, 'Kienzle'),
	(307, 'Kleber Uhrenatelier'),
	(308, 'Kobold'),
	(309, 'Konstantin Chaykin'),
	(310, 'Korloff'),
	(311, 'Krieger'),
	(312, 'Kronsegler'),
	(313, 'Kudoke'),
	(314, 'Kurt Schaffo'),
	(315, 'L.Leroy'),
	(316, 'L\'Epée'),
	(317, 'Laco'),
	(318, 'Lacoste'),
	(319, 'Lancaster'),
	(320, 'Lang & Heyne'),
	(321, 'Laurent Ferrier'),
	(322, 'Lebeau-Courally'),
	(323, 'Leinfelder'),
	(324, 'Lemania'),
	(325, 'Leonidas'),
	(326, 'Limes'),
	(327, 'Lindburgh + Benson'),
	(328, 'Linde Werdelin'),
	(329, 'Lip'),
	(330, 'Liv Watches'),
	(331, 'Locman'),
	(332, 'Longines'),
	(333, 'Longio'),
	(334, 'Lorenz'),
	(335, 'Lorus'),
	(336, 'Louis Moinet'),
	(337, 'Louis Vuitton'),
	(338, 'Louis XVI'),
	(339, 'Lucien Rochat'),
	(340, 'Ludovic Ballouard'),
	(341, 'Luminox'),
	(342, 'Lüm-Tec'),
	(343, 'M&M Swiss Watch'),
	(344, 'Magellan'),
	(345, 'Marburger'),
	(346, 'Marcello C.'),
	(347, 'Marc O Polo'),
	(348, 'Margi'),
	(349, 'Marlboro'),
	(350, 'Martin Braun'),
	(351, 'Marvin'),
	(352, 'Maserati'),
	(353, 'Mathey-Tissot'),
	(354, 'Matthew Norman'),
	(355, 'Mauboussin'),
	(356, 'Maurice Blum'),
	(357, 'Maurice de Mauriac'),
	(358, 'Maurice Lacroix'),
	(359, 'Mb&f'),
	(360, 'Meccaniche Veloci'),
	(361, 'Meistersinger'),
	(362, 'Mercure'),
	(363, 'Meva'),
	(364, 'MEXX Time'),
	(365, 'Meyers'),
	(366, 'Michael Bittel'),
	(367, 'Michael Kors'),
	(368, 'Michele'),
	(369, 'Michel Herbelin'),
	(370, 'Michel Jordi'),
	(371, 'Mido'),
	(372, 'Milleret'),
	(373, 'Milus'),
	(374, 'Minerva'),
	(375, 'Momentum'),
	(376, 'Momo Design'),
	(377, 'Mondaine'),
	(378, 'Mondia'),
	(379, 'Montano'),
	(380, 'Montblanc'),
	(381, 'Montega'),
	(382, 'Morellato'),
	(383, 'Moritz Grossmann'),
	(384, 'Movado'),
	(385, 'Mühle Glashütte'),
	(386, 'N.B. Yäeger'),
	(387, 'N.O.A'),
	(388, 'Naj-Oleari'),
	(389, 'Nautica'),
	(390, 'Nauticfish'),
	(391, 'Nike'),
	(392, 'Nina Ricci'),
	(393, 'Nivada'),
	(394, 'Nivrel'),
	(395, 'Nixon'),
	(396, 'NOMOS'),
	(397, 'Nouvelle Horlogerie Calabrese (NHC)'),
	(398, 'ODM'),
	(399, 'Officina del Tempo'),
	(400, 'Offshore Limited'),
	(401, 'Ollech & Wajs'),
	(402, 'Ora'),
	(403, 'Orator'),
	(404, 'Orbita'),
	(405, 'Orfina'),
	(406, 'Orient'),
	(407, 'Oris'),
	(408, 'Otium'),
	(409, 'Otumm'),
	(410, 'Pacardt'),
	(411, 'Parmigiani Fleurier'),
	(412, 'Paul Gerber'),
	(413, 'Paul Picot'),
	(414, 'Pellikaan'),
	(415, 'Pequignet'),
	(416, 'Perigáum'),
	(417, 'Perrelet'),
	(418, 'Perseo'),
	(419, 'Phantoms'),
	(420, 'Philip Stein'),
	(421, 'Philip Watch'),
	(422, 'Piaget'),
	(423, 'Pierre Balmain'),
	(424, 'Pierre Cardin'),
	(425, 'Pierre DeRoche'),
	(426, 'Pierre Kunz'),
	(427, 'Police'),
	(428, 'Poljot'),
	(429, 'Pomellato'),
	(430, 'Porsche Design'),
	(431, 'Preisig Schaffhausen'),
	(432, 'Prim'),
	(433, 'Pro-Hunter'),
	(434, 'Pryngeps'),
	(435, 'Pulsar'),
	(436, 'Puma'),
	(437, 'Quinting'),
	(438, 'Rado'),
	(439, 'Raidillon'),
	(440, 'Rainer Brand'),
	(441, 'Rainer Nienaber'),
	(442, 'Ralf Tech'),
	(443, 'Ralph Lauren'),
	(444, 'Raymond Weil'),
	(445, 'Rebellion'),
	(446, 'René Mouris'),
	(447, 'Ressence'),
	(448, 'Revue Thommen'),
	(449, 'RGM'),
	(450, 'Richard Mille'),
	(451, 'Rios1931'),
	(452, 'Roamer'),
	(453, 'Roberge'),
	(454, 'Roger Dubuis'),
	(455, 'Rolf Lang'),
	(456, 'Romain Jerome'),
	(457, 'Rothenschild'),
	(458, 'ROWI'),
	(459, 'RSW'),
	(460, 'Ryser Kentfield'),
	(461, 'S.Oliver'),
	(462, 'S.T. Dupont'),
	(463, 'Salvatore Ferragamo'),
	(464, 'Sarcar'),
	(465, 'Sarpaneva'),
	(466, 'Scalfaro'),
	(467, 'Schäuble & Söhne'),
	(468, 'Schaumburg'),
	(469, 'Schwarz Etienne'),
	(470, 'Schwedler'),
	(471, 'Sea-God'),
	(472, 'Sea-Gull'),
	(473, 'Sector'),
	(474, 'Seiko'),
	(475, 'Sekford'),
	(476, 'Sevenfriday'),
	(477, 'Shellman'),
	(478, 'Shinola'),
	(479, 'Sinn'),
	(480, 'Sjöö Sandström'),
	(481, 'Skagen'),
	(482, 'Snyper'),
	(483, 'Solvil'),
	(484, 'Sothis'),
	(485, 'Speake-Marin'),
	(486, 'Squale'),
	(487, 'St. Gallen'),
	(488, 'Starkiin'),
	(489, 'Steelcraft'),
	(490, 'Steiner Limited'),
	(491, 'Steinhart'),
	(492, 'Stowa'),
	(493, 'Strom'),
	(494, 'Stuhrling'),
	(495, 'Swatch'),
	(496, 'Swiss Military'),
	(497, 'Swiss Timer'),
	(498, 'TAG Heuer'),
	(499, 'Tavannes'),
	(500, 'TB Buti'),
	(501, 'Technomarine'),
	(502, 'Technos'),
	(503, 'Tellus'),
	(504, 'Temption'),
	(505, 'Tempvs Compvtare'),
	(506, 'Tendence'),
	(507, 'Terra Cielo Mare'),
	(508, 'The One Binary'),
	(509, 'Theorein'),
	(510, 'The Royal Diamonds'),
	(511, 'Thomas Ninchritz'),
	(512, 'Thorr'),
	(513, 'Tiffany'),
	(514, 'Timberland Watches'),
	(515, 'Timex'),
	(516, 'Tissot'),
	(517, 'Tokyo Flash'),
	(518, 'Tommy Hilfiger'),
	(519, 'Tom Tailor'),
	(520, 'Tonino Lamborghini'),
	(521, 'Torrini'),
	(522, 'Tourby'),
	(523, 'Tourneau'),
	(524, 'Traser'),
	(525, 'Tudor'),
	(526, 'Tutima'),
	(527, 'TW Steel'),
	(528, 'U-Boat'),
	(529, 'Ulysse Nardin'),
	(530, 'Unikatuhren'),
	(531, 'Union Glashütte'),
	(532, 'Universal Genève'),
	(533, 'Urban Jürgensen'),
	(534, 'Urwerk'),
	(535, 'UTS-München'),
	(536, 'V.I.P. Time'),
	(537, 'Vacheron Constantin'),
	(538, 'Valbray'),
	(539, 'Valentino'),
	(540, 'Van Cleef & Arpels'),
	(541, 'Van Der Bauwede'),
	(542, 'Vangarde'),
	(543, 'Ventura'),
	(544, 'Versace'),
	(545, 'Vianney Halter'),
	(546, 'Viceroy'),
	(547, 'Victorinox Swiss Army'),
	(548, 'Vigoria Miletto'),
	(549, 'Villemont'),
	(550, 'Vincent Calabrese'),
	(551, 'Vixa'),
	(552, 'Vogard'),
	(553, 'Vollmer'),
	(554, 'Volna'),
	(555, 'Von Wangenheim'),
	(556, 'Vostok'),
	(557, 'Voutilainen'),
	(558, 'Vulcain'),
	(559, 'Wakmann'),
	(560, 'Waldan International'),
	(561, 'Waltham'),
	(562, 'Welder'),
	(563, 'Wempe'),
	(564, 'Wenger'),
	(565, 'Werenbach'),
	(566, 'West End Watch Co.'),
	(567, 'Wittnauer'),
	(568, 'Wyler'),
	(569, 'Wyler Vetta'),
	(570, 'Xemex'),
	(571, 'Xetum'),
	(572, 'Yantar'),
	(573, 'Yes Watch'),
	(574, 'York'),
	(575, 'Yves Saint Laurent'),
	(576, 'Zannetti'),
	(577, 'Zeitwinkel'),
	(578, 'Zenith'),
	(579, 'Zeno-Watch Basel'),
	(580, 'ZentRa'),
	(581, 'Zeppelin'),
	(582, 'Zodiac');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.case_materials
DROP TABLE IF EXISTS `case_materials`;
CREATE TABLE IF NOT EXISTS `case_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.case_materials: ~17 rows (approximately)
DELETE FROM `case_materials`;
/*!40000 ALTER TABLE `case_materials` DISABLE KEYS */;
INSERT INTO `case_materials` (`id`, `name`) VALUES
	(1, 'Aluminum'),
	(2, 'Bronze'),
	(3, 'Carbon'),
	(4, 'Ceramic'),
	(5, 'Gold/Steel'),
	(6, 'Palladium'),
	(7, 'Plastic'),
	(8, 'Platinum'),
	(9, 'Red gold'),
	(10, 'Rose gold'),
	(11, 'Silver'),
	(12, 'Steel'),
	(13, 'Tantalum'),
	(14, 'Titanium'),
	(15, 'Tungsten'),
	(16, 'White gold'),
	(17, 'Yellow gold');
/*!40000 ALTER TABLE `case_materials` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.clasp
DROP TABLE IF EXISTS `clasp`;
CREATE TABLE IF NOT EXISTS `clasp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.clasp: ~4 rows (approximately)
DELETE FROM `clasp`;
/*!40000 ALTER TABLE `clasp` DISABLE KEYS */;
INSERT INTO `clasp` (`id`, `name`) VALUES
	(1, 'Buckle'),
	(2, 'Double-fold clasp'),
	(3, 'Fold clasp'),
	(4, 'Fold clasp, hidden'),
	(5, 'Jewelry clasp');
/*!40000 ALTER TABLE `clasp` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.clasp_material
DROP TABLE IF EXISTS `clasp_material`;
CREATE TABLE IF NOT EXISTS `clasp_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.clasp_material: ~12 rows (approximately)
DELETE FROM `clasp_material`;
/*!40000 ALTER TABLE `clasp_material` DISABLE KEYS */;
INSERT INTO `clasp_material` (`id`, `name`) VALUES
	(1, 'Aluminum'),
	(2, 'Bronze'),
	(3, 'Gold/Steel'),
	(4, 'Plastic'),
	(5, 'Platinum'),
	(6, 'Red gold'),
	(7, 'Rose Gold'),
	(8, 'Silver'),
	(9, 'Steel'),
	(10, 'Titanium'),
	(11, 'White Gold'),
	(12, 'Yellow gold');
/*!40000 ALTER TABLE `clasp_material` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.dial
DROP TABLE IF EXISTS `dial`;
CREATE TABLE IF NOT EXISTS `dial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.dial: ~20 rows (approximately)
DELETE FROM `dial`;
/*!40000 ALTER TABLE `dial` DISABLE KEYS */;
INSERT INTO `dial` (`id`, `name`) VALUES
	(1, 'Black'),
	(2, 'Blue'),
	(3, 'Bordeaux'),
	(4, 'Bronze'),
	(5, 'Brown'),
	(6, 'Champagne'),
	(7, 'Gold'),
	(8, 'Gold (solid)'),
	(9, 'Green'),
	(10, 'Grey'),
	(11, 'Mother of pearl'),
	(12, 'Orange'),
	(13, 'Pink'),
	(14, 'Purple'),
	(15, 'Red'),
	(16, 'Silver'),
	(17, 'Silver (solid)'),
	(18, 'Transparent'),
	(19, 'White'),
	(20, 'Yellow');
/*!40000 ALTER TABLE `dial` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.dial_numerals
DROP TABLE IF EXISTS `dial_numerals`;
CREATE TABLE IF NOT EXISTS `dial_numerals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.dial_numerals: ~2 rows (approximately)
DELETE FROM `dial_numerals`;
/*!40000 ALTER TABLE `dial_numerals` DISABLE KEYS */;
INSERT INTO `dial_numerals` (`id`, `name`) VALUES
	(1, 'Arabic numerals'),
	(2, 'No numerals'),
	(3, 'Roman numerals');
/*!40000 ALTER TABLE `dial_numerals` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.genders
DROP TABLE IF EXISTS `genders`;
CREATE TABLE IF NOT EXISTS `genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.genders: ~2 rows (approximately)
DELETE FROM `genders`;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` (`id`, `name`) VALUES
	(1, 'Men\'s watch/Unisex'),
	(2, 'Women\'s watch');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.glass
DROP TABLE IF EXISTS `glass`;
CREATE TABLE IF NOT EXISTS `glass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.glass: ~4 rows (approximately)
DELETE FROM `glass`;
/*!40000 ALTER TABLE `glass` DISABLE KEYS */;
INSERT INTO `glass` (`id`, `name`) VALUES
	(1, 'Glass'),
	(2, 'Mineral Glass'),
	(3, 'Plastic'),
	(4, 'Plexiglass'),
	(5, 'Sapphire Glass');
/*!40000 ALTER TABLE `glass` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.movements
DROP TABLE IF EXISTS `movements`;
CREATE TABLE IF NOT EXISTS `movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.movements: ~2 rows (approximately)
DELETE FROM `movements`;
/*!40000 ALTER TABLE `movements` DISABLE KEYS */;
INSERT INTO `movements` (`id`, `name`) VALUES
	(1, 'Automatic'),
	(2, 'Manual winding'),
	(3, 'Quartz');
/*!40000 ALTER TABLE `movements` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.upload_picture
DROP TABLE IF EXISTS `upload_picture`;
CREATE TABLE IF NOT EXISTS `upload_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_upload_picture_users` (`user_id`),
  CONSTRAINT `FK_upload_picture_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.upload_picture: ~59 rows (approximately)
DELETE FROM `upload_picture`;
/*!40000 ALTER TABLE `upload_picture` DISABLE KEYS */;
INSERT INTO `upload_picture` (`id`, `path`, `user_id`, `is_active`) VALUES
	(5, '/watch_app/api/uploades/5ce53febdad9f_Capture1.PNG', 9, 1),
	(6, '/watch_app/api/uploades/5ce543d657e66_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(7, '/watch_app/api/uploades/5ce54413977b5_Capture1.PNG', 9, 1),
	(8, '/watch_app/api/uploades/5ce54413979f7_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(9, '/watch_app/api/uploades/5ce5445f1f84c_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(10, '/watch_app/api/uploades/5ce5445f1fa82_Capture1.PNG', 9, 1),
	(11, '/watch_app/api/uploades/5ce54578a473c_Capture1.PNG', 9, 1),
	(12, '/watch_app/api/uploades/5ce54578a499a_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(13, '/watch_app/api/uploades/5ce545e7cf37f_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(14, '/watch_app/api/uploades/5ce546073ac6d_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(15, '/watch_app/api/uploades/5ce5462b37913_Capture1.PNG', 9, 1),
	(16, '/watch_app/api/uploades/5ce54631c2f6e_Capture1.PNG', 9, 1),
	(17, '/watch_app/api/uploades/5ce54631c318a_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(18, '/watch_app/api/uploades/5ce56830ab1b7_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(19, '/watch_app/api/uploades/5ce56830ab640_Capture1.PNG', 9, 1),
	(20, '/watch_app/api/uploades/5ce56aa4a1b42_Capture1.PNG', 9, 1),
	(21, '/watch_app/api/uploades/5ce56aa4a1d7e_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(22, '/watch_app/api/uploades/5ce56abc74b50_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 1),
	(23, '/watch_app/api/uploades/5ce56abc74d6b_Capture1.PNG', 9, 1),
	(24, '/watch_app/api/uploades/5ce5700106366_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 0),
	(25, '/watch_app/api/uploades/5ce57001066cd_Capture1.PNG', 9, 0),
	(26, '/watch_app/api/uploades/5ce5761a94b24_Capture1.PNG', 9, 0),
	(27, '/watch_app/api/uploades/5ce5772ebf8e7_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 0),
	(28, '/watch_app/api/uploades/5ce6f34e2dcbe_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 0),
	(29, '/watch_app/api/uploades/5ce6f35a61529_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 0),
	(30, '/watch_app/api/uploades/5ce6f35a6194f_Capture1.PNG', 9, 0),
	(31, '/watch_app/api/uploades/5ce6f69b80b45_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 0),
	(32, '/watch_app/api/uploades/5ce6f69b80e69_Capture1.PNG', 9, 0),
	(33, '/watch_app/api/uploades/5ce700ce38595_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 0),
	(34, '/watch_app/api/uploades/5ce700ce387e6_Capture1.PNG', 9, 0),
	(35, '/watch_app/api/uploades/5ce702f749e01_Product11.png', 9, 0),
	(36, '/watch_app/api/uploades/5ce702f74a00d_Capture1.PNG', 9, 0),
	(37, '/watch_app/api/uploades/5ce702f74a1f4_d4e7aa60eb6a782d5d25340debaa1ad6.jpg', 9, 0),
	(38, '/watch_app/api/uploades/5ce7fb01740c1_Capture1.PNG', 9, 0),
	(39, '/watch_app/api/uploades/5ce7fc63912aa_download (1).jpg', 22, 0),
	(40, '/watch_app/api/uploades/5ce7fc842fd5e_download (2).jpg', 22, 0),
	(41, '/watch_app/api/uploades/5ce7fca33386f_SeikoEC1.jpg', 22, 0),
	(42, '/watch_app/api/uploades/5ce7fcfb9f291_c32504cbf6a9cbd16cc3e53a45780e6e.jpg', 22, 0),
	(43, '/watch_app/api/uploades/5ce8084d0a342_fbnzersekf6xhmcsrcpy.jpg', 22, 1),
	(44, '/watch_app/api/uploades/5ce808a3182c2_download (1).jpg', 22, 1),
	(45, '/watch_app/api/uploades/5ce808ead9eb8_download (2).jpg', 22, 1),
	(46, '/watch_app/api/uploades/5ce8099d5f8b6_c32504cbf6a9cbd16cc3e53a45780e6e.jpg', 23, 1),
	(47, '/watch_app/api/uploades/5ce830a43ff80_c32504cbf6a9cbd16cc3e53a45780e6e.jpg', 22, 1),
	(48, '/watch_app/api/uploades/5ce830a4401e0_download (1).jpg', 22, 0),
	(49, '/watch_app/api/uploades/5ce830a4403af_download (2).jpg', 22, 0),
	(50, '/watch_app/api/uploades/5ce830a440595_SeikoEC1.jpg', 22, 0),
	(51, '/watch_app/api/uploades/5ce830a44075e_fbnzersekf6xhmcsrcpy.jpg', 22, 0),
	(52, '/watch_app/api/uploades/5ce944ef08073_c32504cbf6a9cbd16cc3e53a45780e6e.jpg', 22, 1),
	(53, '/watch_app/api/uploades/5ce944ef085fe_SeikoEC1.jpg', 22, 1),
	(54, '/watch_app/api/uploades/5cead8474272f_SeikoEC1.jpg', 22, 1),
	(55, '/watch_app/api/uploades/5cead851396fa_SeikoEC1.jpg', 22, 1),
	(56, '/watch_app/api/uploades/5ced503c25c78_fbnzersekf6xhmcsrcpy.jpg', 22, 0),
	(57, '/watch_app/api/uploades/5ced50e0f2369_fbnzersekf6xhmcsrcpy.jpg', 22, 0),
	(58, '/watch_app/api/uploades/5ced50e9974c5_fbnzersekf6xhmcsrcpy.jpg', 22, 0),
	(59, '/watch_app/api/uploades/5ced50fc35ef1_fbnzersekf6xhmcsrcpy.jpg', 22, 0),
	(60, '/watch_app/api/uploades/5ced519927a3f_fbnzersekf6xhmcsrcpy.jpg', 22, 0),
	(61, '/watch_app/api/uploades/5ced51ab9094f_fbnzersekf6xhmcsrcpy.jpg', 22, 0),
	(62, '/watch_app/api/uploades/5ced52b0d76d8_fbnzersekf6xhmcsrcpy.jpg', 22, 1),
	(63, '/watch_app/api/uploades/5ced55a810f0c_download (2).jpg', 22, 1),
	(64, '/watch_app/api/uploades/5ced55a9b7858_Product11.png', 22, 1),
	(65, '/watch_app/api/uploades/5ced5b07c357a_download (1).jpg', 22, 1),
	(66, '/watch_app/api/uploades/5ced5b13b1f5a_download (1).jpg', 22, 1),
	(67, '/watch_app/api/uploades/5ced5b2338b44_SeikoEC1.jpg', 22, 0);
/*!40000 ALTER TABLE `upload_picture` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.upload_picture_watches
DROP TABLE IF EXISTS `upload_picture_watches`;
CREATE TABLE IF NOT EXISTS `upload_picture_watches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watch_fk` int(11) NOT NULL,
  `upload_picture_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_upload_picture_watches_watches` (`watch_fk`),
  KEY `FK_upload_picture_watches_upload_picture` (`upload_picture_fk`),
  CONSTRAINT `FK_upload_picture_watches_upload_picture` FOREIGN KEY (`upload_picture_fk`) REFERENCES `upload_picture` (`id`),
  CONSTRAINT `FK_upload_picture_watches_watches` FOREIGN KEY (`watch_fk`) REFERENCES `watches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.upload_picture_watches: ~27 rows (approximately)
DELETE FROM `upload_picture_watches`;
/*!40000 ALTER TABLE `upload_picture_watches` DISABLE KEYS */;
INSERT INTO `upload_picture_watches` (`id`, `watch_fk`, `upload_picture_fk`) VALUES
	(1, 14, 31),
	(2, 14, 32),
	(3, 17, 33),
	(4, 17, 34),
	(5, 18, 35),
	(6, 18, 36),
	(7, 18, 37),
	(8, 19, 38),
	(9, 20, 39),
	(10, 21, 40),
	(11, 22, 41),
	(12, 23, 42),
	(13, 24, 43),
	(14, 25, 44),
	(15, 26, 45),
	(16, 27, 46),
	(17, 28, 47),
	(18, 28, 48),
	(19, 28, 49),
	(20, 28, 50),
	(21, 28, 51),
	(22, 29, 52),
	(23, 29, 53),
	(24, 30, 57),
	(25, 30, 59),
	(26, 30, 62),
	(27, 23, 64),
	(28, 31, 65),
	(29, 32, 66),
	(30, 33, 67);
/*!40000 ALTER TABLE `upload_picture_watches` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.users: ~44 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `username`, `is_active`) VALUES
	(1, 'test12@avv.bg', NULL, NULL, '$2y$10$rhLjSH03r1vZbJfU6xlsXexXP23o3uIATgOQN3hxGn8yzVtFs3bJy', NULL, 1),
	(2, 'test121@avv.bg', NULL, NULL, '$2y$10$YP0.HHMZhdyfSYjhte4/yO/CgzWbYbd2O4de3ddUMwDzCe1Z7J9Ya', NULL, 1),
	(3, 'test@avv.bg', NULL, NULL, '$2y$10$M4z8U5JRoKMROba7oluFMOMVwzgPCnWiKvPWwYxW.5dkeNdp4S0ry', NULL, 1),
	(4, 'test1234@avv.bg', NULL, NULL, '$2y$10$bQTlXWbFBiMgO4zEqgiE.u6h45cepxV1/8B6fhGfd/6/RvlYVEgZu', NULL, 1),
	(5, 'te@avv.bg', NULL, NULL, '$2y$10$K3IAEi/yVd.HebgywpNEf.Wxqf5OjJoIU5jIKfOHLNLkKRU8Gi20K', NULL, 1),
	(6, 'tes@avv.bg', NULL, NULL, '$2y$10$sNLk3heZHl0vn16anwaA9OanqNofJkTBzPoEODq.ZOIV65k5fVgHG', NULL, 1),
	(7, 'tes1@avv.bg', NULL, NULL, '$2y$10$gmtNZXwmd0EZy7RGdEeuNuI/8In5T37d49e6gdh1//n/oLpqSpITe', NULL, 1),
	(8, 'te2@ab.bg', NULL, NULL, '$2y$10$ILVVDyOAA651nyT4Xn.52.0VM2kFAAidnRaBTjnDankF4Y17nyyIa', NULL, 1),
	(9, 'filip_laptop@avv.bg', NULL, NULL, '$2y$10$.Efpwr0FWhXEn3JEx0Jr2.gP18b97S0hA3yIBNew/zesAZ1WyPik6', NULL, 1),
	(10, 'filip_laptop1@avv.bg', NULL, NULL, '$2y$10$tdnmOTJwyuKhR/ZWwKMYpeQXFQqrYdujBEbpDZebj3yFCmj4FhsJi', NULL, 1),
	(11, 'filip_laptop2@avv.bg', NULL, NULL, '$2y$10$O7HHt6L.z1BY9g5QXJeUQ.onLxmqb0Fzag2jjnKD9IVeoa3fVlCkO', NULL, 1),
	(12, 'filip_laptop3@avv.bg', NULL, NULL, '$2y$10$73tU9QgVsThJQBkmZbcrmehoOP8wIdoXVpjOSsP6v51FNZLnysSxe', NULL, 1),
	(13, 'filip_laptop6@avv.bg', NULL, NULL, '$2y$10$z0nrg6KFaBfQ9MdSpManT.EKqaNoLPCgbIj61chSn287DzVNN3ZxS', NULL, 1),
	(14, 'filip_laptop10@avv.bg', NULL, NULL, '$2y$10$J6nN3bWOnksQ6I17kA/a4OQKiKygafkr6qufRYjTBwsl7LrfjT1lC', NULL, 1),
	(15, 'filip_laptop12@avv.bg', NULL, NULL, '$2y$10$bgYXjao0RUxaRyGP14DhZOwwQxkx.Am8qFl0nmfVsgFuhwKzTX19W', NULL, 1),
	(16, 'filip_laptop15@avv.bg', NULL, NULL, '$2y$10$CTGmZX0fzaBalrewJw3WNOfwbFLM.CxoMY1WeZS2AgFcy6VwUCVUu', NULL, 1),
	(17, 'filip_laptop23@avv.bg', NULL, NULL, '$2y$10$CDnz3Zk/8CwTI.J8Gg7VrecMKJtEckFcjJnC8ZMYW9p1zxJ3ZrxHy', NULL, 1),
	(18, 'ne2form@avv.bg', NULL, NULL, '$2y$10$J62B3G07iz5rrFOLvtb2Fei2YTQ9Nh5oG0IL0toaoYNi9YhFUU6K.', NULL, 1),
	(19, 'filip_laptop5@avv.bg', NULL, NULL, '$2y$10$sPhBgga32mNxM9EZEqto9.L53jmvCPJxIEkTe4FgJ/BdE2wf9/abu', NULL, 1),
	(20, 'elena@avv.bg', NULL, NULL, '$2y$10$2RlD74vTahINO4T6U0uEoOZZjZLS3ze5XVy/W6EQHWb1Gn.G6AFkK', NULL, 1),
	(21, 'elene@avv.bg', NULL, NULL, '$2y$10$L7scKzFkQ0JPyIj6pvAd.uA5XMoA2ZOeWms.Io4emIoQ4hiB0637W', NULL, 1),
	(22, 'filip_popov@avv.bg', NULL, NULL, '$2y$10$GRR/UV7U3BuAN8rr8ZJ.TOwz6/606jvktpqrEhFwPjLKjtZgErnNG', NULL, 1),
	(23, 'elena_test@avv.bg', NULL, NULL, '$2y$10$5Xngl0RPY/UdDmsgynqOfu7zgWZZibEB60bGnKInajdDQyFxyS3Bi', NULL, 1),
	(24, 'test100@avv.bg', NULL, NULL, '$2y$10$lp2Ziuc62jromWOoGIq1yuysB09qn80S4LZn2XNXTJ4DOROwtpcrC', NULL, 1),
	(25, 'offf@avv.bg', NULL, NULL, '$2y$10$8pfC9Xu3hkbcEP1/CijEzeqiwRpabrFjLJLaXYU4pcFW9Ms7CW9Qq', NULL, 1),
	(26, 'test1211@avv.bg', NULL, NULL, '$2y$10$o4o27Rku3.QLiJHQheR5HOxG.cgFDSqxGiVywneG8kA3YQ9KKAMcq', NULL, 1),
	(27, 'test_test@avv.bg', NULL, NULL, '$2y$10$6s.wSgp1EgyQPYVh/YKTf.Hs/snBF8xkub5iCFT3X6eYRXxJu3dry', NULL, 1),
	(28, 'test_test5@avv.bg', NULL, NULL, '$2y$10$dJysjLkrMVUOoqQJhHr9oOeR851zL6lOKM.xRQaiw37yzFpvHz0Wu', NULL, 1),
	(29, 'tets_te@avv.bg', NULL, NULL, '$2y$10$Jf.8RzuZj4bXwr/Uqizqve7zQdTKz1GJod.SXUYm31iLx7q1NY73K', NULL, 1),
	(30, 'test12_te@avv.bg', NULL, NULL, '$2y$10$9Pro6doEymKyDbWqfhVSzOWaiH3z7w53.LQIyTKOwk6M47iTiul.W', NULL, 1),
	(31, 'tes_tes@avv.bg', NULL, NULL, '$2y$10$AcvV9lsUa0gmwYky2t/39uJozyDXQnJDyZO86j.fV.BbxMzbaCxYq', NULL, 1),
	(32, 'tes_te@avv.bg', NULL, NULL, '$2y$10$qPvwJX/Wg0d4lsnpv31Sc./5qiPSARJn4UkRhunMeJVveH6XBGRf6', NULL, 1),
	(33, 'te_te@avv.bg', NULL, NULL, '$2y$10$OuYMMgwUIVkeGT33YLdE/ubBAtKkY.yrDCh.U9AAXrP1rsmKn0LP.', NULL, 1),
	(34, 'te_ttt@avv.bg', NULL, NULL, '$2y$10$cD7yFJSq/9f0Ho9FhX.IFOi7VMQ7O9ml62TwTcGilZaVL830f1MtC', NULL, 1),
	(35, 'tt_tt@avv.bg', NULL, NULL, '$2y$10$wKwu.x3cfAPceXZl4RpPJ.gwAh.0pZUjd8H1oNgL22aVr0NiXTzDm', NULL, 1),
	(36, 'ty_ty@avv.bg', NULL, NULL, '$2y$10$jwHJcoaAruoJOAeiM8TTiOmKIt5.5F/Lgykw3iqeQOIt.Vfx5j5q.', NULL, 1),
	(37, 'yy_yy@avv.bg', NULL, NULL, '$2y$10$f6j/URB43RuL7kSaI6lY6OKEysiEkXkHWC971j3U1xWut7eHUq.PK', NULL, 1),
	(38, 'uu_uu@avv.bg', NULL, NULL, '$2y$10$aq4OSrJ/afdaESee8s0oVeULlzUgJcSc3o6biGpZkRP8DuyDDtMfG', NULL, 1),
	(39, 'vv_vv@avv.bg', NULL, NULL, '$2y$10$k6ESq9X1lkajhOCBhMrV/uRGS6Y7ecqR21otEmjm3MYl9S4f/tQZ6', NULL, 1),
	(40, 'pp_pp@avv.bg', NULL, NULL, '$2y$10$eNuTTxA.J11efOyMd9P8FeqyiS7zPCgyVAuLZAZXqMEQB0ZBRhi5S', NULL, 1),
	(41, 'nn_nn@avv.bg', NULL, NULL, '$2y$10$iEDUF8/woegTM1PZ/s9H2uHHbgTgW4PsOwd9u7GxeNq7.MVEGRFNu', NULL, 1),
	(42, 'test_t@avv.bg', NULL, NULL, '$2y$10$FsYIVJxj0e06spLBMWNkWeKRI4/xc3UK2w4H9szQQ4MricG79cET6', NULL, 1),
	(43, 'kk_kk@avv.bg', NULL, NULL, '$2y$10$1WPUq4IGPjAjtgyNv7f0NeGsZFAArU2zCVTeVj.M42BAKUivJdliy', NULL, 1),
	(44, 'cc@avv.bg', NULL, NULL, '$2y$10$YiWP/z.qJZ7eqRCX/Xzi7.E9m36ONom4Ec9PRHAaOM0jki9APDSZC', NULL, 1),
	(45, 'test12ll@avv.bg', NULL, NULL, '$2y$10$pLGmM52x1bpWsvBddoegk.9XMaE7xtNxRexOCvll6qpbMbspGMEhG', NULL, 1),
	(46, 'yy_v@avv.bg', NULL, NULL, '$2y$10$/C9.mBiwO37zUrRwCegp3OITyISpODnVsNQjtB3yLxHd/N5GGpFDe', NULL, 1),
	(47, 'fewf@avv.bg', NULL, NULL, '$2y$10$ZTAThCA9RiCFeHE3bjctyeTWgZnY.YAo5ubst7aq7klB38JYMsmAG', NULL, 1),
	(48, 'bb@avv.bg', NULL, NULL, '$2y$10$Q3JGOKeukB2QlHBvmTDoBOVWbKohFudSSPcfMqk/fcNvgZvKxkVme', NULL, 1),
	(49, 'ss@avv.bg', NULL, NULL, '$2y$10$1FzI5P52ynswu8x12ZKL8OEknv4w/5aHE8ostC14.JUFwdJ2uxvVi', NULL, 1),
	(50, 'l@avv.bg', NULL, NULL, '$2y$10$x7dmNHAgdQA1erDeoLNGG.b9uLIvO22.JLCCcamILHIc/XcFsMN5O', NULL, 1),
	(51, 'zz@avv.bg', NULL, NULL, '$2y$10$jPhA9RZ861P6tqoYgzvJkukBs13gom1b7uClW39c5ZkMK4A0v88HS', NULL, 1),
	(52, 'tetst12@avv.bg', NULL, NULL, '$2y$10$lPvp460rcHfv.gfExRNS/.javrcdxTfx6cUTpfhhae/Lz8P7rk8a2', NULL, 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.watches
DROP TABLE IF EXISTS `watches`;
CREATE TABLE IF NOT EXISTS `watches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_fk` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `caliber` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `case_diameter` double DEFAULT NULL,
  `thickness` double DEFAULT NULL,
  `bezel_material_fk` int(11) DEFAULT NULL,
  `bracelet_color_fk` int(11) DEFAULT NULL,
  `bracelet_material_fk` int(11) DEFAULT NULL,
  `case_material_fk` int(11) DEFAULT NULL,
  `clasp_fk` int(11) DEFAULT NULL,
  `clasp_material_fk` int(11) DEFAULT NULL,
  `dial_fk` int(11) DEFAULT NULL,
  `dial_numerals_fk` int(11) DEFAULT NULL,
  `gender_fk` int(11) DEFAULT NULL,
  `glass_fk` int(11) DEFAULT NULL,
  `movement_fk` int(11) DEFAULT NULL,
  `water_resistance_fk` int(11) DEFAULT NULL,
  `user_id` int(11),
  `base_caliber` varchar(255) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `power_reserve` int(11) DEFAULT NULL,
  `number_of_jewels` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_watches_brands` (`brand_fk`),
  KEY `FK_watches_bezel_material` (`bezel_material_fk`),
  KEY `FK_watches_bracelet_color` (`bracelet_color_fk`),
  KEY `FK_watches_bracelet_material` (`bracelet_material_fk`),
  KEY `FK_watches_case_materials` (`case_material_fk`),
  KEY `FK_watches_clasp` (`clasp_fk`),
  KEY `FK_watches_clasp_material` (`clasp_material_fk`),
  KEY `FK_watches_dial` (`dial_fk`),
  KEY `FK_watches_dial_numerals` (`dial_numerals_fk`),
  KEY `FK_watches_genders` (`gender_fk`),
  KEY `FK_watches_glass` (`glass_fk`),
  KEY `FK_watches_movements` (`movement_fk`),
  KEY `FK_watches_water_resistance` (`water_resistance_fk`),
  KEY `FK_watches_users` (`user_id`),
  CONSTRAINT `FK_watches_bezel_material` FOREIGN KEY (`bezel_material_fk`) REFERENCES `bezel_material` (`id`),
  CONSTRAINT `FK_watches_bracelet_color` FOREIGN KEY (`bracelet_color_fk`) REFERENCES `bracelet_color` (`id`),
  CONSTRAINT `FK_watches_bracelet_material` FOREIGN KEY (`bracelet_material_fk`) REFERENCES `bracelet_material` (`id`),
  CONSTRAINT `FK_watches_brands` FOREIGN KEY (`brand_fk`) REFERENCES `brands` (`id`),
  CONSTRAINT `FK_watches_case_materials` FOREIGN KEY (`case_material_fk`) REFERENCES `case_materials` (`id`),
  CONSTRAINT `FK_watches_clasp` FOREIGN KEY (`clasp_fk`) REFERENCES `clasp` (`id`),
  CONSTRAINT `FK_watches_clasp_material` FOREIGN KEY (`clasp_material_fk`) REFERENCES `clasp_material` (`id`),
  CONSTRAINT `FK_watches_dial` FOREIGN KEY (`dial_fk`) REFERENCES `dial` (`id`),
  CONSTRAINT `FK_watches_dial_numerals` FOREIGN KEY (`dial_numerals_fk`) REFERENCES `dial_numerals` (`id`),
  CONSTRAINT `FK_watches_genders` FOREIGN KEY (`gender_fk`) REFERENCES `genders` (`id`),
  CONSTRAINT `FK_watches_glass` FOREIGN KEY (`glass_fk`) REFERENCES `glass` (`id`),
  CONSTRAINT `FK_watches_movements` FOREIGN KEY (`movement_fk`) REFERENCES `movements` (`id`),
  CONSTRAINT `FK_watches_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_watches_water_resistance` FOREIGN KEY (`water_resistance_fk`) REFERENCES `water_resistance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.watches: ~34 rows (approximately)
DELETE FROM `watches`;
/*!40000 ALTER TABLE `watches` DISABLE KEYS */;
INSERT INTO `watches` (`id`, `brand_fk`, `model`, `caliber`, `reference_number`, `price`, `year`, `serial_number`, `case_diameter`, `thickness`, `bezel_material_fk`, `bracelet_color_fk`, `bracelet_material_fk`, `case_material_fk`, `clasp_fk`, `clasp_material_fk`, `dial_fk`, `dial_numerals_fk`, `gender_fk`, `glass_fk`, `movement_fk`, `water_resistance_fk`, `user_id`, `base_caliber`, `frequency`, `power_reserve`, `number_of_jewels`, `is_active`) VALUES
	(1, 4, '4te4t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0),
	(3, 4, '4te4t', NULL, 'SARB017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(5, 1, 'test', 'test', '0', NULL, NULL, NULL, 12, 12, 2, 2, 3, 3, 2, 3, 2, 1, 1, 2, 1, 3, 9, 'test', 12, 12, 12, 1),
	(6, 1, 'test', 'test', 'test', NULL, NULL, NULL, 12, 12, 2, 2, 3, 3, 4, 3, 2, 1, 1, 2, 1, 3, 9, 'test', 12, 12, 12, 0),
	(7, 5, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(8, 5, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(9, 1, '4te4t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(10, 2, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(11, 4, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(12, 4, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(13, 4, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(14, 4, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(15, 2, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(16, 4, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(17, 4, 'test', 'weew', 'fefewf', NULL, NULL, NULL, 12, 12, 3, 2, 4, 5, 5, 2, 5, 2, 1, 4, 1, 4, 9, 'fewfe', 12, 10, 12, 1),
	(18, 14, 'hytrhtrh', 'fewf', 'fewfgewfewf', NULL, NULL, NULL, 123, 12, 3, 3, 9, 10, 3, 2, 3, 1, 1, 3, 2, 2, 9, 'wefewf', 12, 12, 12, 1),
	(19, 4, 'test image', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 1),
	(20, 1, 'SARB)##', NULL, 'fwefewf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0),
	(21, 474, 'SARB017', NULL, 'SARB017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(22, 474, 'SKX009K2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(23, 474, 'SKX009K2', NULL, 'SARB017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(24, 1, 'Royal Oak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(25, 8, 'Explorer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(26, 8, 'Explorer 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(27, 474, 'SKX009K2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 1),
	(28, 474, 'Collection', NULL, 'Collection', NULL, NULL, NULL, 12, 12, 3, 4, 5, 4, 2, 3, 3, 2, 2, 3, 2, 22, 22, NULL, 2100, 40, 23, 1),
	(29, 474, 'SKX', '7S26', 'SKX', NULL, NULL, NULL, 42, 15, 12, 14, 19, 12, 2, 8, 2, 2, 1, 2, 1, 14, 22, '7S26', 2100, 40, 21, 1),
	(30, 1, 'Royal Oak123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(31, 1, 'fewf', NULL, 'ewfewf', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 3, 2, 3, NULL, NULL, NULL, NULL, 2, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(32, 1, 'SKX009K2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(33, 1, 'hytrhtrh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(34, 1, 'hytrhtrh', NULL, 'wefwef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(35, 54, 'testdf', NULL, 'wefwef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 1),
	(36, 7, 'Patek Maika', NULL, 'Patek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `watches` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.watch_characteristics
DROP TABLE IF EXISTS `watch_characteristics`;
CREATE TABLE IF NOT EXISTS `watch_characteristics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.watch_characteristics: ~25 rows (approximately)
DELETE FROM `watch_characteristics`;
/*!40000 ALTER TABLE `watch_characteristics` DISABLE KEYS */;
INSERT INTO `watch_characteristics` (`id`, `name`) VALUES
	(1, 'Skeletonized'),
	(2, 'Center Seconds'),
	(3, 'Guilloche Dial'),
	(4, 'Gemstone'),
	(5, 'Luminescent Hands'),
	(6, 'Genevian Seal'),
	(7, 'Power Reserve Display'),
	(8, 'Screw-Down Crown'),
	(9, 'Quick Set'),
	(10, 'Only Original Parts'),
	(11, 'PVD/DLC coating'),
	(12, 'Master Chronogrraph'),
	(13, 'Solar watch'),
	(14, 'Display Back'),
	(15, 'Small Seconds'),
	(16, 'Guilloche Dial (handwork)'),
	(17, 'Luminescent Numerals'),
	(18, 'Blue Steel Hands'),
	(19, 'Chronometer'),
	(20, 'Rotating Bezel'),
	(21, 'Crown Left'),
	(22, 'Helium Valve'),
	(23, 'Screw-Down Push-Buttons'),
	(24, 'Luminous indexes'),
	(25, 'World time watch'),
	(26, 'Smartwatch'),
	(27, 'One-hand watches');
/*!40000 ALTER TABLE `watch_characteristics` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.watch_characteristic_watch
DROP TABLE IF EXISTS `watch_characteristic_watch`;
CREATE TABLE IF NOT EXISTS `watch_characteristic_watch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watch_fk` int(11) NOT NULL,
  `watch_characteristic_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_watch_characteristic_watch_watches` (`watch_fk`),
  KEY `FK_watch_characteristic_watch_watch_characteristics` (`watch_characteristic_fk`),
  CONSTRAINT `FK_watch_characteristic_watch_watch_characteristics` FOREIGN KEY (`watch_characteristic_fk`) REFERENCES `watch_characteristics` (`id`),
  CONSTRAINT `FK_watch_characteristic_watch_watches` FOREIGN KEY (`watch_fk`) REFERENCES `watches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.watch_characteristic_watch: ~46 rows (approximately)
DELETE FROM `watch_characteristic_watch`;
/*!40000 ALTER TABLE `watch_characteristic_watch` DISABLE KEYS */;
INSERT INTO `watch_characteristic_watch` (`id`, `watch_fk`, `watch_characteristic_fk`) VALUES
	(1, 17, 18),
	(2, 17, 20),
	(3, 17, 22),
	(4, 17, 23),
	(5, 18, 18),
	(6, 18, 20),
	(7, 18, 24),
	(8, 18, 15),
	(9, 18, 19),
	(10, 18, 21),
	(11, 29, 2),
	(12, 29, 4),
	(13, 29, 6),
	(14, 29, 8),
	(15, 29, 10),
	(16, 29, 12),
	(17, 29, 14),
	(18, 29, 16),
	(19, 29, 18),
	(20, 29, 20),
	(21, 29, 22),
	(22, 29, 24),
	(23, 29, 26),
	(24, 29, 1),
	(25, 29, 3),
	(26, 29, 5),
	(27, 29, 7),
	(28, 29, 9),
	(29, 29, 11),
	(30, 29, 13),
	(31, 29, 15),
	(32, 29, 17),
	(33, 29, 19),
	(34, 29, 21),
	(35, 29, 23),
	(36, 29, 25),
	(37, 29, 27),
	(48, 30, 4),
	(49, 30, 3),
	(57, 31, 8),
	(58, 31, 14),
	(59, 31, 16),
	(60, 31, 7),
	(61, 31, 9),
	(62, 31, 11),
	(63, 31, 15);
/*!40000 ALTER TABLE `watch_characteristic_watch` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.watch_functions
DROP TABLE IF EXISTS `watch_functions`;
CREATE TABLE IF NOT EXISTS `watch_functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.watch_functions: ~20 rows (approximately)
DELETE FROM `watch_functions`;
/*!40000 ALTER TABLE `watch_functions` DISABLE KEYS */;
INSERT INTO `watch_functions` (`id`, `name`) VALUES
	(1, 'Moon phase'),
	(2, 'Chronograph'),
	(3, 'Flyback'),
	(4, 'Chiming clock'),
	(5, 'Tourbillon'),
	(6, 'Weekday'),
	(7, 'Year'),
	(8, '4-year calendar'),
	(9, 'Alarm'),
	(10, 'Equation of time'),
	(11, 'Tachymeter'),
	(12, 'Minute Repeater'),
	(13, 'Double chronograph'),
	(14, 'Panorama date'),
	(15, 'Repeater'),
	(16, 'Date'),
	(17, 'Annual calender'),
	(18, 'Perpetual calendar'),
	(19, 'GMT'),
	(20, 'Jumping hour');
/*!40000 ALTER TABLE `watch_functions` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.watch_function_watch
DROP TABLE IF EXISTS `watch_function_watch`;
CREATE TABLE IF NOT EXISTS `watch_function_watch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watch_fk` int(11) NOT NULL,
  `watch_function_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_watch_function_watch_watches` (`watch_fk`),
  KEY `FK_watch_function_watch_watch_functions` (`watch_function_fk`),
  CONSTRAINT `FK_watch_function_watch_watch_functions` FOREIGN KEY (`watch_function_fk`) REFERENCES `watch_functions` (`id`),
  CONSTRAINT `FK_watch_function_watch_watches` FOREIGN KEY (`watch_fk`) REFERENCES `watches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.watch_function_watch: ~40 rows (approximately)
DELETE FROM `watch_function_watch`;
/*!40000 ALTER TABLE `watch_function_watch` DISABLE KEYS */;
INSERT INTO `watch_function_watch` (`id`, `watch_fk`, `watch_function_fk`) VALUES
	(1, 17, 8),
	(2, 17, 12),
	(3, 17, 14),
	(4, 17, 16),
	(5, 17, 19),
	(6, 18, 12),
	(7, 18, 14),
	(8, 18, 16),
	(9, 18, 9),
	(10, 18, 13),
	(11, 18, 17),
	(12, 29, 2),
	(13, 29, 4),
	(14, 29, 6),
	(15, 29, 8),
	(16, 29, 10),
	(17, 29, 12),
	(18, 29, 14),
	(19, 29, 16),
	(20, 29, 18),
	(21, 29, 20),
	(22, 29, 1),
	(23, 29, 3),
	(24, 29, 5),
	(25, 29, 7),
	(26, 29, 9),
	(27, 29, 11),
	(28, 29, 13),
	(29, 29, 15),
	(30, 29, 17),
	(31, 29, 19),
	(41, 30, 8),
	(42, 30, 10),
	(43, 30, 19),
	(50, 31, 8),
	(51, 31, 10),
	(52, 31, 14),
	(53, 31, 7),
	(54, 31, 9),
	(55, 31, 13);
/*!40000 ALTER TABLE `watch_function_watch` ENABLE KEYS */;

-- Дъмп структура за таблица watch_app.water_resistance
DROP TABLE IF EXISTS `water_resistance`;
CREATE TABLE IF NOT EXISTS `water_resistance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Дъмп данни за таблица watch_app.water_resistance: ~25 rows (approximately)
DELETE FROM `water_resistance`;
/*!40000 ALTER TABLE `water_resistance` DISABLE KEYS */;
INSERT INTO `water_resistance` (`id`, `name`) VALUES
	(1, 'Not water resistant'),
	(2, '1 ATM'),
	(3, '2 ATM'),
	(4, '2.5 ATM'),
	(5, '3 ATM'),
	(6, '4 ATM'),
	(7, '5 ATM'),
	(8, '6 ATM'),
	(9, '7 ATM'),
	(10, '8 ATM'),
	(11, '9 ATM'),
	(12, '10 ATM'),
	(13, '15 ATM'),
	(14, '20 ATM'),
	(15, '30 ATM'),
	(16, '40 ATM'),
	(17, '50 ATM'),
	(18, '60 ATM'),
	(19, '70 ATM'),
	(20, '80 ATM'),
	(21, '90 ATM'),
	(22, '100 ATM'),
	(23, '110 ATM'),
	(24, '120 ATM'),
	(25, 'Over 120 ATM');
/*!40000 ALTER TABLE `water_resistance` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
