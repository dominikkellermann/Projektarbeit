-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `elk1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `accesslogs`
--

CREATE TABLE `accesslogs` (
  `msec` varchar(400) NOT NULL,
  `connection` varchar(400) NOT NULL,
  `connection_requests` varchar(400) NOT NULL,
  `pid` varchar(400) NOT NULL,
  `request_id` varchar(128) NOT NULL,
  `request_length` varchar(128) NOT NULL,
  `remote_addr` varchar(400) NOT NULL,
  `remote_user` varchar(400) NOT NULL,
  `remote_port` varchar(400) NOT NULL,
  `time_local` varchar(400) NOT NULL,
  `time_iso8601` varchar(400) NOT NULL,
  `request` varchar(400) NOT NULL,
  `request_uri` varchar(400) NOT NULL,
  `args` varchar(400) NOT NULL,
  `status` varchar(400) NOT NULL,
  `body_bytes_sent` varchar(400) NOT NULL,
  `bytes_sent` int(10) UNSIGNED NOT NULL,
  `http_referer` varchar(400) NOT NULL,
  `http_user_agent` varchar(400) NOT NULL,
  `http_x_forwarded_for` varchar(400) NOT NULL,
  `http_host` varchar(400) NOT NULL,
  `server_name` varchar(400) NOT NULL,
  `request_time` double(8,4) UNSIGNED NOT NULL,
  `upstream` varchar(400) NOT NULL,
  `upstream_connect_time` double(8,4) UNSIGNED DEFAULT NULL,
  `upstream_header_time` double(8,4) UNSIGNED DEFAULT NULL,
  `upstream_response_time` double(8,4) UNSIGNED DEFAULT NULL,
  `upstream_response_length` int(10) UNSIGNED DEFAULT NULL,
  `upstream_cache_status` varchar(400) NOT NULL,
  `ssl_protocol` varchar(400) NOT NULL,
  `ssl_cipher` varchar(400) NOT NULL,
  `scheme` varchar(400) NOT NULL,
  `request_method` varchar(400) NOT NULL,
  `server_protocol` varchar(400) NOT NULL,
  `pipe` varchar(400) NOT NULL,
  `gzip_ratio` varchar(400) NOT NULL,
  `http_cf_ray` varchar(400) NOT NULL,
  `geoip_city_name` varchar(400) NOT NULL,
  `geoip_country_code` varchar(400) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `accesslogs`
--
ALTER TABLE `accesslogs`
  ADD UNIQUE KEY `request_id` (`request_id`),
  ADD KEY `http_host` (`http_host`(250)),
  ADD KEY `msec` (`msec`(250)),
  ADD KEY `remote_addr` (`remote_addr`(250));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
