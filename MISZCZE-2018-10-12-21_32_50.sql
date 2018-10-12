-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Paź 2018, 21:32
-- Wersja serwera: 10.1.34-MariaDB
-- Wersja PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `miszcze`
--
CREATE DATABASE IF NOT EXISTS `miszcze` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `miszcze`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `const`
--

DROP TABLE IF EXISTS `const`;
CREATE TABLE `const` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `const`
--

INSERT INTO `const` (`id`, `name`, `value`) VALUES
(1, 'salt', 'UDF2SDERCZ8184Q5'),
(2, 'hash', 'sha512'),
(3, 'technical_break', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `godz_lek`
--

DROP TABLE IF EXISTS `godz_lek`;
CREATE TABLE `godz_lek` (
  `id` int(11) NOT NULL,
  `poczatek` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `godz_lek`
--

INSERT INTO `godz_lek` (`id`, `poczatek`) VALUES
(1, '08:00:00'),
(2, '08:55:00'),
(3, '09:40:00'),
(4, '10:35:00'),
(5, '11:30:00'),
(6, '12:25:00'),
(7, '13:20:00'),
(8, '14:15:00'),
(9, '15:10:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hasla`
--

DROP TABLE IF EXISTS `hasla`;
CREATE TABLE `hasla` (
  `id` int(11) NOT NULL,
  `uzytkownik` int(11) NOT NULL,
  `haslo` varchar(200) NOT NULL,
  `sol` varchar(10) NOT NULL,
  `data` datetime NOT NULL,
  `proby` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `hasla`
--

INSERT INTO `hasla` (`id`, `uzytkownik`, `haslo`, `sol`, `data`, `proby`) VALUES
(2, 2, '070e37aafded7e6c9ceb73bf3fffc454b32e7f0f9f321f00f8b53e56b54df1f7ada32a0a66702c2cbdc61c3a78246e4cf0d8928baee75fb25c8e79011e920b09', '9VG', '2018-08-25 18:57:24', 0),
(8, 8, 'ce37ec9644d22ad2810c3b69fce3f3cce356bb2468fb730d306b89c11dae702b71902710f8d6ff5e1349c6a1ec315731c9dbe2c2ee7f2b381704b9c971efa52b', 'NAB', '2018-08-26 06:36:37', 0),
(9, 9, '730500ea748785a1a5b148303b99572edc48573d21d279419d945708c62f38f3a0d3c305c03bab6b01c5110ab2ac6a7bd2ca9b85a7cdb0044bb9218a577b9bd8', 'DIX', '2018-08-26 06:55:06', 0),
(10, 10, 'ffd826a83a2e5121e54ad1fbf5474a754ff4f238015ccac7faaf136df3e2ecce457a62d5ed7ee891d747a61ecd5c4f84555bbdc268efad17c2a31afab15571d8', 'KD7', '2018-08-26 06:55:33', 0),
(11, 11, '3676629dd178e9d77bebefdf44b321ab91e1e54b6b97f2bfc1ffccde29afed7e375a01a678792bd994c08157a0bbe7a93a64c5d7725cb8587aec7e5c8634307e', '0NX', '2018-08-26 06:55:47', 0),
(12, 12, 'bfa6d55a5d61135acdaaaebf475348044ae3b2c97d75904db79222b154d4e372d0dcfa22729769dad3d8f148b7c58168bb7861e093ba7c4db15309e129a32943', 'G3U', '2018-08-26 06:56:03', 0),
(13, 13, 'ca2cb641084d728b3e6f0cf97fd575b2a42937e71c71f6911725c5b8697e39ceb24e7c8c8cf9730d3a92f8049823c3d60cee24bc2b0b32a403ab31384a162a08', 'NEO', '2018-08-26 06:56:42', 0),
(14, 14, 'b36bd39f7f805895f09bde4904c03441639f022a57010c6bcd80010b9f3f52b44bef099d46071c52d42c5073bda19e606907af95fa7c5b8b7330c6d7103b99bd', 'CD6', '2018-08-26 06:57:06', 0),
(15, 15, '2c0961f704e1b768f6e91c22214a80a3c736844ebe9153999f063feee6b3b3d777be6ed045aa5fbb2d3aac4dc69875e5089edd8550941cb4697cd79484e91130', '9R4', '2018-08-26 09:57:06', 0),
(16, 16, '454a1431dda3cf1819a537258add3c5757a479d116db7ab29084b25ea9fd8b312ba48690a075541efdbeb6c8b8f948859d5049cc00dfb8d2b868497304144106', 'H38', '2018-09-23 22:23:53', 0),
(18, 18, 'f7e40d082cd71d1b577a22315b97aa0baf742a8a3b17414bf6d42b430189a02e5546ba7b1e24126def272fc8b5fbb3a0b3da592f5c3dac2a4594373798a0bc88', '1YU', '2018-10-12 14:28:57', 0),
(19, 19, '4f3724bc5fb4fd4f1070ac777cce11504939759b774b03e8f744fee118beb36ecf19ad9a441eafbffecb84f9d1858e676e1bcd7449943982f7a544f2dd2e97bd', 'EHK', '2018-10-12 14:35:20', 0),
(20, 20, '650d2f84121ffd87baf1b22f3f4ffe827213cac687ac39fde0e783b960ca00e65d79fc4860a78fa385755a315bda444b424971599a56cba6dbb84f43b5df0666', 'WLY', '2018-10-12 14:38:30', 0),
(21, 21, 'eb5e091839cb5b8540a897c496c08f9fd932855f6e7c3684cf17e94b7d53005bb6a20111b74daddbe29eaabe636cc3f98f40d8639f8b4467216ca5616edbbfe1', '7FT', '2018-10-12 14:41:30', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

DROP TABLE IF EXISTS `klasy`;
CREATE TABLE `klasy` (
  `id` int(11) NOT NULL,
  `poziom` int(11) NOT NULL,
  `klasa` varchar(1) DEFAULT NULL,
  `rocznik` varchar(4) NOT NULL,
  `wychowawca` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `klasy`
--

INSERT INTO `klasy` (`id`, `poziom`, `klasa`, `rocznik`, `wychowawca`, `status`) VALUES
(1, 1, 'a', '2001', 12, 0),
(2, 2, 'a', '2002', 7, 0),
(3, 3, 'a', '2003', 8, 0),
(4, 1, 'b', '2001', 11, 0),
(5, 2, 'b', '2002', 9, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obecnosci`
--

DROP TABLE IF EXISTS `obecnosci`;
CREATE TABLE `obecnosci` (
  `id` int(11) NOT NULL,
  `kiedy` datetime NOT NULL,
  `obecny` int(2) NOT NULL,
  `uczen` int(11) NOT NULL,
  `termin` int(11) NOT NULL,
  `komentarz` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ocenianie`
--

DROP TABLE IF EXISTS `ocenianie`;
CREATE TABLE `ocenianie` (
  `id` int(11) NOT NULL,
  `przedmiot` int(11) NOT NULL,
  `uczen` int(11) NOT NULL,
  `semestr` varchar(10) DEFAULT NULL,
  `terminowosc` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wiedza` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `kulturalnosc` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

DROP TABLE IF EXISTS `oceny`;
CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `ocena` int(11) NOT NULL,
  `waga` int(11) DEFAULT NULL,
  `kiedy` datetime NOT NULL,
  `uczen` int(11) NOT NULL,
  `przedmiot` int(11) NOT NULL,
  `typ` varchar(10) NOT NULL,
  `uwagi` text,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opiekunowie`
--

DROP TABLE IF EXISTS `opiekunowie`;
CREATE TABLE `opiekunowie` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `kontakt` text NOT NULL,
  `uzytkownik` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `kontakt` text,
  `role` set('nauczyciel','dyrektor','sekretariat','wychowawca') NOT NULL,
  `uzytkownik` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `kontakt`, `role`, `uzytkownik`, `status`) VALUES
(6, 'Arnold', 'Wróbel', 'Pok. 218\r\nPoniedziałki od 10:45 do 10:50', 'dyrektor', 8, 0),
(7, 'Grzegorz', 'Adamczuk', '536 777 385', 'sekretariat,wychowawca', 9, 0),
(8, 'Stanisława', 'Kowalska', 'Stanislawa.K@wp.pl', 'nauczyciel,wychowawca', 10, 0),
(9, 'Anna', 'Mucha', '449 356 877', 'nauczyciel,wychowawca', 11, 0),
(10, 'Lech', 'Wałęsa', 'kom. 246 465 555\r\ndom. (77) 65 63 334\r\npraca (34) 56 99 101', 'nauczyciel', 12, 0),
(11, 'Hieronim', 'Misztal', 'wew. 112', 'nauczyciel,wychowawca', 13, 0),
(12, 'Mariola', 'Nowosad', 'Wew 115', 'nauczyciel,wychowawca', 14, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

DROP TABLE IF EXISTS `przedmioty`;
CREATE TABLE `przedmioty` (
  `id` int(11) NOT NULL,
  `prowadzacy` int(11) NOT NULL,
  `przedmiot` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `przedmioty`
--

INSERT INTO `przedmioty` (`id`, `prowadzacy`, `przedmiot`, `status`) VALUES
(1, 7, 1, 0),
(2, 8, 2, 0),
(3, 9, 4, 0),
(4, 12, 5, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `nr_sali` varchar(4) NOT NULL,
  `opis` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `sale`
--

INSERT INTO `sale` (`id`, `nr_sali`, `opis`) VALUES
(1, '1', ''),
(2, '2', ''),
(3, '3', ''),
(4, '4', ''),
(5, '5', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slownik_przedmiotow`
--

DROP TABLE IF EXISTS `slownik_przedmiotow`;
CREATE TABLE `slownik_przedmiotow` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) NOT NULL,
  `opis` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `slownik_przedmiotow`
--

INSERT INTO `slownik_przedmiotow` (`id`, `nazwa`, `opis`) VALUES
(1, 'Matematyka', 'Trudne'),
(2, 'Polski', ''),
(3, 'Angielski', 'Mój ulubiony'),
(4, 'Informatyka', ''),
(5, 'Niemiecki', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `terminarz`
--

DROP TABLE IF EXISTS `terminarz`;
CREATE TABLE `terminarz` (
  `id` int(11) NOT NULL,
  `sala` int(11) NOT NULL,
  `godzina` int(11) NOT NULL,
  `dzien_tygodnia` varchar(13) NOT NULL,
  `kto_co` int(11) NOT NULL,
  `klasa` int(11) NOT NULL,
  `typ` varchar(10) DEFAULT NULL,
  `poczatek` date DEFAULT NULL,
  `koniec` date DEFAULT NULL,
  `opis` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `terminarz`
--

INSERT INTO `terminarz` (`id`, `sala`, `godzina`, `dzien_tygodnia`, `kto_co`, `klasa`, `typ`, `poczatek`, `koniec`, `opis`) VALUES
(1, 1, 1, 'poniedzialek', 1, 1, 'plan', '2018-08-01', '2018-08-02', ''),
(2, 1, 2, 'poniedzialek', 2, 1, 'plan', '1906-06-05', '1907-07-07', '2'),
(3, 1, 3, 'poniedzialek', 3, 1, 'plan', '1906-06-05', '1907-07-07', '2'),
(4, 3, 6, 'poniedzialek', 4, 1, 'plan', '2018-08-27', '2018-08-29', ''),
(5, 1, 4, 'piatek', 1, 1, 'plan', '1907-07-06', '1907-07-07', ''),
(6, 1, 1, 'poniedzialek', 1, 2, 'plan', '1906-06-05', '1906-06-05', ''),
(7, 1, 1, 'poniedzialek', 2, 2, 'plan', '1907-07-07', '1907-07-07', ''),
(8, 1, 1, 'poniedzialek', 1, 1, 'plan', '2018-08-01', '2018-08-02', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

DROP TABLE IF EXISTS `uczniowie`;
CREATE TABLE `uczniowie` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) NOT NULL,
  `imie_2` varchar(15) DEFAULT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `pesel` varchar(11) NOT NULL,
  `miejscowosc` varchar(45) NOT NULL,
  `ulica` varchar(45) DEFAULT NULL,
  `nr_domu` varchar(10) NOT NULL,
  `kod_pocztowy` varchar(6) NOT NULL,
  `poczta` varchar(45) NOT NULL,
  `kontakt` text,
  `klasa` int(11) DEFAULT NULL,
  `opiekun` int(11) DEFAULT NULL,
  `uzytkownik` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`id`, `imie`, `imie_2`, `nazwisko`, `data_urodzenia`, `pesel`, `miejscowosc`, `ulica`, `nr_domu`, `kod_pocztowy`, `poczta`, `kontakt`, `klasa`, `opiekun`, `uzytkownik`, `status`) VALUES
(2, 'Henryk', '', 'Szust', '2001-02-11', '01021187243', 'Uhanie', 'brak', '2', '22-300', 'Uhanie', 'GG: 12345678\r\nTlen: Henio', 2, 0, 2, 0),
(3, 'Zbigniew', '', 'Krupa', '2001-09-11', '01091132956', 'Kalinowice', 'brak', '199', '22-400', 'Zamość', 'tel. 654 499 601', 1, 0, 15, 0),
(4, 'Bogusław', 'Adam', 'Tracz', '2001-11-05', '01110599223', 'Zamość', 'Kalinowice', '1', '22-400', 'Zamość', 'Tel. 987654345', NULL, NULL, 16, 0),
(5, 'Krzysztof', NULL, 'Borewicz', '2001-12-30', '1123056744', 'Lublin', 'Prosta', '11', '22-600', 'Lublin', '459 789 566', NULL, NULL, 18, 0),
(6, 'Malgorzata', NULL, 'Mróz', '2002-09-01', '2090148777', 'Wólka Panieska', 'brak', '2', '22-400', 'Zamość', '775 884 993', NULL, NULL, 19, 0),
(7, 'Robert', NULL, 'Paszuk', '2002-10-11', '2101193384', 'Szopinek', 'brak', '10', '22-400', 'Zamść', 'brak', NULL, NULL, 20, 0),
(8, 'Joanna', 'Anna', 'Niemira', '2002-05-05', '2050510899', 'Nowa Wieś', 'brak', '100', '33-500', 'Jasionka', '657 234 867', NULL, NULL, 21, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uwagi`
--

DROP TABLE IF EXISTS `uwagi`;
CREATE TABLE `uwagi` (
  `id` int(11) NOT NULL,
  `uczen` int(11) NOT NULL,
  `nauczyciel` int(11) NOT NULL,
  `tresc` text NOT NULL,
  `odczytane` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

DROP TABLE IF EXISTS `uzytkownicy`;
CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `sol` varchar(10) NOT NULL,
  `typ` varchar(20) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `sol`, `typ`, `mail`, `status`) VALUES
(2, 'U01hesz', 'DTRI8', 'uczen', 'heszu@gmail.com', 0),
(8, 'admin', 'N4M5N', 'pracownik', 'admin@onet.pl', 0),
(9, 'GrzAda', '98JTU', 'pracownik', 'grzech@wp.pl', 0),
(10, 'StaKow', '8ZRBQ', 'pracownik', 'Stanislawa.K@wp.pl', 0),
(11, 'AnnMuc', '93ZC3', 'pracownik', 'Muszka@interia.pl', 0),
(12, 'LecWal', '4BZON', 'pracownik', 'bolek.to.ja@gmail.com', 0),
(13, 'HieMis', 'KFJ37', 'pracownik', 'Misztal.H@pl', 0),
(14, 'MarNow', 'D4BAF', 'pracownik', 'Nowoczesna@onet.pl', 0),
(15, 'U01zbkr', '87514', 'uczen', 'zbych@poczta.pl', 0),
(16, 'U01botr', 'B6YQB', 'uczen', 'tralala@op.pl', 0),
(18, 'U01KrBo', 'T2C7I', 'uczen', 'Borewicz.Krzysztof@wp.pl', 0),
(19, 'U02MaMr', '7L0MT', 'uczen', 'Mrozna@gmail.com', 0),
(20, 'U02ropa', 'MTP82', 'uczen', 'Rpaszu@o2.pl', 0),
(21, 'U02', 'PEW38', 'uczen', 'Asia06@wp.pl', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiadomosci`
--

DROP TABLE IF EXISTS `wiadomosci`;
CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `nadawca` int(11) NOT NULL,
  `odbiorca` int(11) NOT NULL,
  `tytul` varchar(100) DEFAULT NULL,
  `tresc` text NOT NULL,
  `zalacznik` varchar(45) DEFAULT NULL,
  `status_nadawcy` tinyint(1) DEFAULT NULL,
  `status_odbiorcy` tinyint(1) DEFAULT NULL,
  `odczytana` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `nadawca`, `odbiorca`, `tytul`, `tresc`, `zalacznik`, `status_nadawcy`, `status_odbiorcy`, `odczytana`) VALUES
(1, 2, 2, 'test', 'test', '', 0, 0, 0),
(2, 8, 2, 'test', 'test', '', 0, 0, 0),
(3, 8, 2, 'test 8', 'łorlololo', '', 0, 0, 1),
(4, 8, 2, 'test 7', 'test', '', 1, 0, 1),
(5, 8, 8, 'pisanie do siebie', 'pisanie do siebie', '', 0, 0, 1),
(6, 8, 8, 'pisanie do siebie', 'pisanie do siebie', '', 0, 0, 1),
(7, 8, 8, 'halo', 'halo', '', 0, 0, 1),
(8, 2, 8, 'henio2000', 'henio2000', '', 0, 1, 1),
(9, 2, 8, 'henio2000', 'henio2000', '', 0, 0, 1),
(10, 8, 2, 'upload', 'upload', 'file1.png', 0, 0, 0),
(11, 8, 2, 'upload', 'upload', 'file1.png', 0, 0, 0),
(12, 8, 2, '$file', '$file', 'file1.png', 1, 0, 0),
(13, 8, 2, 'test', 'test', 'file1.png', 0, 0, 0),
(14, 8, 2, 'test', 'test', 'file1.png', 0, 0, 0),
(15, 8, 2, 'test', 'test', 'file2.png', 0, 0, 0),
(16, 8, 2, 'test', 'test', 'file1.jpeg', 0, 0, 0),
(17, 8, 8, 'test', 'test', '', 0, 0, 1),
(18, 8, 8, 'test', 'test', 'file1.txt', 0, 0, 1),
(19, 8, 8, 'test', 'test', '', 0, 0, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `const`
--
ALTER TABLE `const`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `godz_lek`
--
ALTER TABLE `godz_lek`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `hasla`
--
ALTER TABLE `hasla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_hasla_uzytkownicy_idx` (`uzytkownik`);

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_KlasyUczniow_pracownicy_idx` (`wychowawca`);

--
-- Indeksy dla tabeli `obecnosci`
--
ALTER TABLE `obecnosci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uczniowe_has_zajecia_uczniowe1_idx` (`uczen`),
  ADD KEY `fk_uczniowe_has_zajecia_zajecia1_idx` (`termin`);

--
-- Indeksy dla tabeli `ocenianie`
--
ALTER TABLE `ocenianie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ocenianie_uczniowie_idx` (`uczen`),
  ADD KEY `FK_ocenianie_przedmioty_idx` (`przedmiot`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uczniowe_has_pracownik_na_przedmiot_pracownik_na_przedmi_idx` (`przedmiot`),
  ADD KEY `fk_uczniowe_has_pracownik_na_przedmiot_uczniowe1_idx` (`uczen`);

--
-- Indeksy dla tabeli `opiekunowie`
--
ALTER TABLE `opiekunowie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_opiekunowie_users_idx` (`uzytkownik`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pracownicy_uzytkownicy_idx` (`uzytkownik`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pracownicy_przedmioty_idx` (`prowadzacy`),
  ADD KEY `FK_przedmioty_[pracownicy_idx` (`przedmiot`);

--
-- Indeksy dla tabeli `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nr_sali_UNIQUE` (`nr_sali`);

--
-- Indeksy dla tabeli `slownik_przedmiotow`
--
ALTER TABLE `slownik_przedmiotow`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `terminarz`
--
ALTER TABLE `terminarz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_godz_lek_rezerwacje_idx` (`godzina`),
  ADD KEY `FK_sale_rezerwacje_idx` (`sala`),
  ADD KEY `FK_terminarz_przedmioty_idx` (`kto_co`),
  ADD KEY `FK_terminarz_klasy_idx` (`klasa`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesel_UNIQUE` (`pesel`),
  ADD KEY `opiekun_idx` (`opiekun`),
  ADD KEY `FK_uczniowe_users_idx` (`uzytkownik`),
  ADD KEY `FK_uczniowie_klasy_idx` (`klasa`);

--
-- Indeksy dla tabeli `uwagi`
--
ALTER TABLE `uwagi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uwagi_uczniowie_idx` (`uczen`),
  ADD KEY `FK_uwagi_pracownicy_idx` (`nauczyciel`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indeksy dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_wiadomosci_uzytkownicy_nadawca_idx` (`nadawca`),
  ADD KEY `FK_wiadomosci_uzytkownicy_odbiorca_idx` (`odbiorca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `const`
--
ALTER TABLE `const`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `godz_lek`
--
ALTER TABLE `godz_lek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `hasla`
--
ALTER TABLE `hasla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `klasy`
--
ALTER TABLE `klasy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `obecnosci`
--
ALTER TABLE `obecnosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ocenianie`
--
ALTER TABLE `ocenianie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `opiekunowie`
--
ALTER TABLE `opiekunowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `slownik_przedmiotow`
--
ALTER TABLE `slownik_przedmiotow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `terminarz`
--
ALTER TABLE `terminarz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `uwagi`
--
ALTER TABLE `uwagi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `hasla`
--
ALTER TABLE `hasla`
  ADD CONSTRAINT `FK_hasla_uzytkownicy` FOREIGN KEY (`uzytkownik`) REFERENCES `uzytkownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD CONSTRAINT `FK_Klasy_pracownicy` FOREIGN KEY (`wychowawca`) REFERENCES `pracownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `obecnosci`
--
ALTER TABLE `obecnosci`
  ADD CONSTRAINT `fk_uczniowe_has_zajecia_uczniowe1` FOREIGN KEY (`uczen`) REFERENCES `uczniowie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uczniowe_has_zajecia_zajecia1` FOREIGN KEY (`termin`) REFERENCES `terminarz` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `ocenianie`
--
ALTER TABLE `ocenianie`
  ADD CONSTRAINT `FK_ocenianie_przedmioty` FOREIGN KEY (`przedmiot`) REFERENCES `przedmioty` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ocenianie_uczniowie` FOREIGN KEY (`uczen`) REFERENCES `uczniowie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `fk_uczniowe_has_pracownik_na_przedmiot_pracownik_na_przedmiot1` FOREIGN KEY (`przedmiot`) REFERENCES `przedmioty` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uczniowe_has_pracownik_na_przedmiot_uczniowe1` FOREIGN KEY (`uczen`) REFERENCES `uczniowie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `opiekunowie`
--
ALTER TABLE `opiekunowie`
  ADD CONSTRAINT `FK_opiekunowie_users` FOREIGN KEY (`uzytkownik`) REFERENCES `uzytkownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD CONSTRAINT `FK_pracownicy_uzytkownicy` FOREIGN KEY (`uzytkownik`) REFERENCES `uzytkownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD CONSTRAINT `FK_pracownicy_przedmioty` FOREIGN KEY (`prowadzacy`) REFERENCES `pracownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_przedmioty_[pracownicy` FOREIGN KEY (`przedmiot`) REFERENCES `slownik_przedmiotow` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `terminarz`
--
ALTER TABLE `terminarz`
  ADD CONSTRAINT `FK_godz_lek_rezerwacje` FOREIGN KEY (`godzina`) REFERENCES `godz_lek` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_sale_rezerwacje` FOREIGN KEY (`sala`) REFERENCES `sale` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_terminarz_klasy` FOREIGN KEY (`klasa`) REFERENCES `klasy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_terminarz_przedmioty` FOREIGN KEY (`kto_co`) REFERENCES `przedmioty` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD CONSTRAINT `FK_uczniowe_users` FOREIGN KEY (`uzytkownik`) REFERENCES `uzytkownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_uczniowie_klasy` FOREIGN KEY (`klasa`) REFERENCES `klasy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_uczniowie_opiekunowie` FOREIGN KEY (`opiekun`) REFERENCES `opiekunowie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `uwagi`
--
ALTER TABLE `uwagi`
  ADD CONSTRAINT `FK_uwagi_pracownicy` FOREIGN KEY (`nauczyciel`) REFERENCES `pracownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_uwagi_uczniowie` FOREIGN KEY (`uczen`) REFERENCES `uczniowie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD CONSTRAINT `FK_wiadomosci_uzytkownicy_nadawca` FOREIGN KEY (`nadawca`) REFERENCES `uzytkownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_wiadomosci_uzytkownicy_odbiorca` FOREIGN KEY (`odbiorca`) REFERENCES `uzytkownicy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
