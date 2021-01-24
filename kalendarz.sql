SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `events` (
  `id` int(100) NOT NULL,
  `dzien` int(100) NOT NULL,
  `miesiac` int(100) NOT NULL,
  `rok` int(100) NOT NULL DEFAULT '2020',
  `godzina` time(1) NOT NULL,
  `tytul` varchar(255) NOT NULL,
  `opis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `events` (`id`, `dzien`, `miesiac`, `rok`, `godzina`, `tytul`, `opis`) VALUES

(1, 21, 1, 2021, '21:21:00.0', 'ciekawostka', 'Dzi jest 21 stycznia 21 roku 21 wieku'),
(2, 9, 1, 2021, '13:05:00.0', 'ferie', 'wyceiczka do Świeradowa'),
(3, 3, 1, 2021, '16:18:00.0', 'ferie', 'wycieczka do Karpacza'),
(4, 25, 12, 2020, '19:53:00.0', 'Wrocław', 'Boże Narodzenie'),
(5, 19, 12, 2020, '11:20:00.0', 'wojsko', 'szkółka wojskowa'),
(6, 18, 12, 2020, '23:17:00.0', 'straż', 'pożar domu w Biedrzychowicach'),
(7, 9, 11, 2020, '19:38:00.0', 'góry', 'zdobycie Śnieżki'),
(8, 30, 9, 2020, '17:17:00.0', 'Niemcy', 'ostani dzień pracy'),
(9, 26, 9, 2020, '13:45:00.0', 'mecz piłki nożnej', 'zalana murawa w Olszynie'),
(10, 21, 8, 2021, '20:23:00.0', 'wakacje', 'przedostatni dzień w Mielnie');

ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `events`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

