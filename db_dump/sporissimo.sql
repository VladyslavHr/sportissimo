-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.4.20-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп структуры для таблица nette-sportissimo.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы nette-sportissimo.brands: ~54 rows (приблизительно)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Adidas', 'Adidas je německá mezinárodní korporace, která se specializuje na výrobu sportovní obuvi, oděvů a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(2, 'Nike', 'Nike je americká nadnárodní korporace, která se specializuje na výrobu sportovní obuvi, oděvů a dalšího sportovního vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(3, 'Puma', 'Puma je německá nadnárodní společnost, která vyrábí sportovní obuv, oděvy a různé doplňky pro sportovce.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(4, 'Reebok', 'Reebok je anglická obuvnická a oděvní společnost, která se specializuje na sportovní obuv a oblečení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(5, 'Under Armour', 'Under Armour je americká společnost, která vyrábí sportovní oblečení, obuv a doplňky.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(6, 'The North Face', 'The North Face je americká společnost, která se specializuje na outdoorové oblečení, obuv a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(7, 'Columbia', 'Columbia je americká společnost, která se specializuje na outdoorové oblečení, obuv a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(8, 'Oakley', 'Oakley je americká společnost, která vyrábí sportovní brýle, oděvy a další příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(9, 'Wilson', 'Wilson Sporting Goods Company je americká společnost, která se specializuje na sportovní vybavení, včetně různých míčů.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(10, 'Marmot', 'Marmot je americká společnost, která se zaměřuje na výrobu outdoorového oblečení, spacích pytlů a stanů.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(11, 'Skechers', 'Skechers USA, Inc. je americká společnost, která se specializuje na výrobu obuvi, včetně sportovní obuvi.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(12, 'Quiksilver', 'Quiksilver je australská společnost, která se specializuje na výrobu surfařského a skateboardového oblečení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(13, 'Roxy', 'Roxy je dceřiná společnost značky Quiksilver, která se zaměřuje na výrobu dámského surfařského oblečení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(14, 'Venum', 'Venum je francouzská společnost, která se specializuje na výrobu sportovního oblečení a výstroje pro bojové sporty.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(15, 'Everlast', 'Everlast je americká společnost, která se specializuje na výrobu boxerského vybavení a fitness oblečení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(16, 'New Balance', 'New Balance Corporation je americká obuvnická společnost, která vyrábí sportovní obuv a oděvy pro různé sporty.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(17, 'Asics', 'Asics Corporation je japonská mezinárodní společnost, která se specializuje na výrobu sportovní obuvi a oděvů.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(18, 'Fila', 'Fila je italská značka sportovní obuvi a oděvů, založená v Itálii v roce 1911.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(19, 'Converse', 'Converse Inc. je americká společnost, která vyrábí obuv a oděvy.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(20, 'Vans', 'Vans Inc. je americká společnost, která se specializuje na výrobu obuvi, oděvů a příslušenství pro extrémní sporty.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(21, 'Timberland', 'Timberland je americká společnost, která se specializuje na outdoorovou obuv, oděvy a doplňky.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(22, 'Fjällräven', 'Fjällräven je švédská společnost, která vyrábí outdoorové oblečení, batohy a další vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(23, 'Salomon', 'Salomon S.A. je francouzská společnost, která se specializuje na výrobu sportovní obuvi, oblečení a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(24, 'Helly Hansen', 'Helly Hansen je norská společnost, která se specializuje na outdoorové oblečení, obuv a vybavení pro extrémní podmínky.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(25, 'DC Shoes', 'DC Shoes je americká společnost, která vyrábí skateboardovou obuv, oblečení a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(26, 'Burton', 'Burton Snowboards je americká společnost, která se specializuje na výrobu snowboardů, oblečení a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(27, 'Spyder', 'Spyder je americká společnost, která se specializuje na výrobu lyžařského oblečení, obuvi a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(28, 'Rossignol', 'Rossignol Group je francouzská společnost, která se specializuje na výrobu lyží, snowboardů a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(29, 'Patagonia', 'Patagonia je americká společnost, která se zaměřuje na výrobu outdoorového oblečení, obuvi a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(30, 'Kappa', 'Kappa je italská značka, která se specializuje na výrobu sportovního oblečení, obuvi a doplňků.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(31, 'Lacoste', 'Lacoste je francouzská značka, která se specializuje na výrobu oděvů, obuvi, brýlí, parfémů, koženého zboží, hodinek a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(32, 'Umbro', 'Umbro je britská společnost, která se specializuje na výrobu sportovního oblečení, obuvi a dalšího zboží pro fotbal.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(33, 'Salomon', 'Salomon S.A. je francouzská společnost, která se specializuje na výrobu sportovní obuvi, oděvů a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(34, 'Mizuno', 'Mizuno Corporation je japonská společnost, která se specializuje na výrobu sportovní obuvi, oděvů a dalšího sportovního zboží.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(35, 'Champion', 'Champion je americká společnost, která se specializuje na výrobu sportovního oblečení, obuvi a doplňků.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(36, 'Diadora', 'Diadora je italská společnost, která se zaměřuje na výrobu sportovní obuvi, oděvů a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(37, 'Ellesse', 'Ellesse je italská společnost, která se specializuje na výrobu sportovního oblečení, obuvi a doplňků.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(38, 'Hummel', 'Hummel International je dánská společnost, která se specializuje na výrobu sportovního oblečení, obuvi a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(39, 'Le Coq Sportif', 'Le Coq Sportif je francouzská společnost, která se specializuje na výrobu sportovního oblečení, obuvi a doplňků.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(40, 'Mizuno', 'Mizuno Corporation je japonská společnost, která se specializuje na výrobu sportovní obuvi, oděvů a dalšího sportovního vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(41, 'Saucony', 'Saucony je americká společnost, která se specializuje na výrobu běžecké obuvi, oděvů a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(42, 'Umbro', 'Umbro je britská společnost, která se specializuje na výrobu sportovního oblečení, obuvi a dalšího sportovního vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(43, 'K-Swiss', 'K-Swiss je americká společnost, která se specializuje na výrobu sportovní obuvi, oděvů a příslušenství.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(44, 'Onitsuka Tiger', 'Onitsuka Tiger je japonská značka, která se specializuje na výrobu sportovní obuvi a oděvů.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(45, 'Joma', 'Joma Sport S.A. je španělská společnost, která se specializuje na výrobu sportovního oblečení, obuvi a doplňků.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(46, 'Lotto', 'Lotto Sport Italia je italská společnost, která se zaměřuje na výrobu sportovního oblečení, obuvi a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(47, 'Millet', 'Millet Mountain Group je francouzská společnost, která se specializuje na výrobu outdoorového oblečení, obuvi a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(48, 'Russell Athletic', 'Russell Athletic je americká společnost, která se zaměřuje na výrobu sportovního oblečení a vybavení.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(49, 'Sergio Tacchini', 'Sergio Tacchini je italská značka, která se specializuje na výrobu sportovního oblečení, obuvi a doplňků.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(50, 'Uhlsport', 'Uhlsport GmbH je německá společnost, která se zaměřuje na výrobu sportovního oblečení a vybavení pro fotbal.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(51, 'Wilson', 'Wilson Sporting Goods Company je americká společnost, která se specializuje na výrobu sportovního vybavení, včetně různých míčů.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(52, 'Yonex', 'Yonex Corporation je japonská společnost, která se zaměřuje na výrobu sportovního vybavení, včetně raket a dalších doplňků.', '2023-10-13 14:58:35', '2023-10-13 14:58:35'),
	(53, 'Zoot', 'Zoot Sports je americká společnost, která se specializuje na výrobu sportovního oblečení, obuvi a vybavení pro triatlon.', '2023-10-13 14:58:35', '2023-10-13 14:58:35');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
