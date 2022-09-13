-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 12. 22:02
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `books`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(12) NOT NULL,
  `author` varchar(47) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(55) CHARACTER SET utf8 DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `category` varchar(21) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `year`, `category`) VALUES
(1, 'Fajth Tibor', 'Svájc', 1980, 'útikönyv'),
(10, 'Fajth Tibor', 'Itália', 1969, 'útikönyv'),
(11, 'Pálfy József', 'Franciaország', 1974, 'útikönyv'),
(12, 'Szíj Enikő', 'Finnország', 1979, 'útikönyv'),
(13, 'Forgács András - Szabó Miklós', 'Görögország', 1976, 'útikönyv'),
(14, 'Kis Csaba', 'Európai miniállamok', 1985, 'útikönyv'),
(15, 'Szabó R. Jenő', 'Egyiptom', 1979, 'útikönyv'),
(16, 'Lindner László', 'Dánia', 1985, 'útikönyv'),
(100, 'Brontë, Charlotte', 'A különös tanítvány', 1989, 'szépirodalom'),
(101, 'Brontë, Emily', 'Üvöltő szelek', 1967, 'szépirodalom'),
(102, 'Solohov, Mihail', 'Emberi sors', 1964, 'szépirodalom'),
(103, 'Solohov, Mihail', 'Csendes Don I-IV.', 1982, 'szépirodalom'),
(104, 'Sienkiewicz, Henryk', 'Quo Vadis', 1979, 'szépirodalom'),
(105, 'Sienkiewicz, Henryk', 'Kereszteslovagok I-II.', 1968, 'szépirodalom'),
(106, 'Steinbeck, John', 'Édentől keletre I-II.', 1979, 'szépirodalom'),
(107, 'Stendhal', 'Vanina vanini', 1966, 'szépirodalom'),
(108, 'Stendhal', 'Vörös és fekete', 1959, 'szépirodalom'),
(109, 'Stendhal', 'Vörös és fehér', 1960, 'szépirodalom'),
(110, 'Shakespeare, William', 'Hamlet. Szentivánéji álom', 1958, 'szépirodalom'),
(111, 'Shakespeare, William', 'Lear király', 1957, 'szépirodalom'),
(112, 'Shakespeare, William', 'Sok hűhó semmiért', 1960, 'szépirodalom'),
(113, 'Shakespeare, William', 'Tragédiák', 1902, 'szépirodalom'),
(114, 'Semprum, Jorge', 'A nagy utazás', 1986, 'szépirodalom'),
(115, 'Segal, Erich', 'Szerelmi történet', 1982, 'szórakoztató irodalom'),
(116, 'Segal, Erich', 'Oliver története', 1989, 'szórakoztató irodalom'),
(117, 'Sütő András', 'A szuzai menyegző', 1981, 'szépirodalom'),
(118, 'Sütő András', 'Színművek', 1989, 'szépirodalom'),
(119, 'Sütő András', 'Káin és Ábel. Anyám könnyű álmot ígér', 1978, 'szépirodalom'),
(120, 'Sütő András', 'Omló egek alatt', 1990, 'szépirodalom'),
(121, 'Sütő András', 'Síkaszói fenyőforgácsok', 1987, 'szépirodalom'),
(122, 'Sütő András', 'Advent a Hargitán', 1987, 'szépirodalom'),
(123, 'Sütő András', 'Az Idő markában', 1984, 'szépirodalom'),
(124, 'Sütő András', 'A lőtt lábú madár nyomában', 1988, 'szépirodalom'),
(125, 'Sütő András', 'Kék álhalál', 1997, 'szépirodalom'),
(126, 'Sütő András', 'Anyám könnyű álmot ígér', 1981, 'szépirodalom'),
(127, 'Probáld Ferenc - Szegedi Nándor', 'A világ fővárosai', 1986, 'földrajz'),
(128, 'Darvas Gábor', 'Évezredek hangszerei', 1961, 'zene'),
(129, 'Mittelstadt, Kuno', 'Vincent van Gogh', 1976, 'képzőművészet'),
(130, 'Bergerhoff, Renate', 'Tiziano', 1975, 'képzőművészet'),
(131, 'Füstös János', 'World Wide Web', 1996, 'informatika'),
(132, 'Butzen, Fred - Hilton, Christopher', 'Linux hálózatok', 1999, 'informatika'),
(133, 'Bartók Nagy János - Laufer Judit', 'UNIX felhasználói ismeretek', 1995, 'informatika'),
(134, 'Szabó Bálint', 'Linux az otthoni PC-n', 2000, 'informatika'),
(135, 'Kernighan, Brian - Ritchie, Dennis', 'A C programozási nyelv', 1993, 'informatika'),
(136, 'Zsakó László', 'Programozási feladatok I-II.', 1997, 'informatika'),
(137, 'Jamsa, Kris - Lalani, Suleiman - Weakley, Steve', 'A WEB programozása I-II.', 1997, 'informatika'),
(138, 'Szelezsán János', 'Adatbázisok', 1995, 'informatika'),
(139, 'Jakab Zsolt', 'Adobe Photoshop', 1998, 'informatika'),
(140, 'Törőcsik Attila', 'Hangszerek kislexikona', 2003, 'zene'),
(141, 'Brockhaus-Riemann', 'Zenei lexikon I-III.', 1984, 'zene'),
(142, 'Révész Dorrit', 'A zene könyve', 1981, 'zene'),
(143, 'Szántó Péter', 'És ilyen a boksz?', 1985, 'zene'),
(144, 'Gonda János', 'Jazz', 1965, 'zene'),
(145, 'Molnár Imre - Molnár Gábor', 'Halhatatlan Beatles', 2001, 'zene'),
(146, 'Simonyi Károly', 'A fizika kultúrtörténete', 1986, 'fizika'),
(147, 'Öveges József', 'Kis fizika I-II.', 1998, 'fizika'),
(148, 'Öveges József', 'Sugárözönben élünk', 1995, 'fizika'),
(149, 'Öveges József', 'Klasszikus fizika', 2000, 'fizika'),
(150, 'Veresné Horváth Éva', 'Miért piros a tilos?', 1988, 'fizika'),
(151, 'Rókáné Kalydi Bea', '300 kérdés és válasz a fizika köréből', 2000, 'fizika'),
(152, 'Rókáné Kalydi Bea', '150 kérdés és válasz a fizika köréből', 1999, 'fizika'),
(153, 'Sas Elemér, dr.', 'Mindenki fizikája', 2004, 'fizika'),
(154, 'Szalay Béla, dr.', 'Fizika', 1982, 'fizika'),
(155, 'Holics László', 'Fizika I-II.', 1986, 'fizika'),
(156, 'Lennon - McCartney', 'Yesterday', 1990, 'zene'),
(157, 'Larkin, Colin', 'Jazz-zenészek lexikona', 1993, 'zene'),
(158, 'Menuhin, Yehudi - Davis, Curtis', 'Az ember zenéje', 1981, 'zene'),
(159, 'Németh Amadé', 'Hangszerek és zenekarok kézikönyve', 2000, 'zene'),
(160, 'Balassa Imre - Gál György Sándor', 'Operák könyve', 1957, 'zene'),
(161, 'Gál György Sándor', 'Operák könyve', 1961, 'zene'),
(162, 'dfbdgs', 'fsfsdf', 55, '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
