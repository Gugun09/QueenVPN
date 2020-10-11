SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";
CREATE TABLE IF NOT EXISTS `server` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `servername` varchar(255) NOT NULL,
  `server_owner` varchar(255) NOT NULL,
  `country` varchar(30) NOT NULL,
  `host` varchar(255) NOT NULL,
  `openssh` varchar(255) NOT NULL,
  `dropbear` varchar(255) NOT NULL,
  `stunnel` varchar(255) NOT NULL,
  `proxy` varchar(255) NOT NULL,
  `openvpn_port` varchar(255) NOT NULL,
  `openvpn_link` varchar(255) NOT NULL,
  `limitacc` varchar(255) NOT NULL,
  `torrent` varchar(20) NOT NULL,  
  `price` int(10) NOT NULL,
  `root_pass` varchar(500) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `saldo` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;