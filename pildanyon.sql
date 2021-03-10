/*
SQLyog Enterprise v10.42 
MySQL - 5.5.5-10.1.16-MariaDB : Database - pildanyon
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id_admin` tinyint(1) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `t_admin` */

insert  into `t_admin`(`id_admin`,`username`,`fullname`,`password`) values (1,'admin','administrator','$2y$10$5ok3rcIOv/yNIlPIGo49a.cXRAiA5ZsnxbpijFoyy5EuuYyVrZetu');

/*Table structure for table `t_kandidat` */

DROP TABLE IF EXISTS `t_kandidat`;

CREATE TABLE `t_kandidat` (
  `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT,
  `nama_calon` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(255) NOT NULL,
  `suara` smallint(4) NOT NULL DEFAULT '0',
  `periode` varchar(9) NOT NULL,
  PRIMARY KEY (`id_kandidat`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `t_kandidat` */

insert  into `t_kandidat`(`id_kandidat`,`nama_calon`,`foto`,`visi`,`misi`,`suara`,`periode`) values (7,'Laras','1(5).jpg','Halio is a powerful WordPress plugin for any business that provides transport as a service. It facilitates the price estimation, booking and payment of journeys. Halio has been professionally designed to provide a high quality user experience both for cus','Halio is a powerful WordPress plugin for any business that provides transport as a service. It facilitates the price estimation, booking and payment of journeys. Halio has been professionally designed to provide a high quality user experience both for cus',1,'2019/2020'),(8,'Susan','2(3).jpg','Halio is a powerful WordPress plugin for any business that provides transport as a service. It facilitates the price estimation, booking and payment of journeys. Halio has been professionally designed to provide a high quality user experience both for cus','Halio is a powerful WordPress plugin for any business that provides transport as a service. It facilitates the price estimation, booking and payment of journeys. Halio has been professionally designed to provide a high quality user experience both for cus',2,'2019/2020'),(9,'Fatimah','0.60835500 1572070953.jpg','Namun sesungguhnya memiliki perbedaan yang cukup detail. Nah, untuk memudahkan Anda dalam memahami apa itu visi misi, berikut ini akan diulas mengenai persamaan dan perbedaan visi misi sekaligus contohnya untuk meningkatkan pemahaman Anda. ','Namun sesungguhnya memiliki perbedaan yang cukup detail. Nah, untuk memudahkan Anda dalam memahami apa itu visi misi, berikut ini akan diulas mengenai persamaan dan perbedaan visi misi sekaligus contohnya untuk meningkatkan pemahaman Anda. ',0,'2019/2020'),(10,'Siska alias Siswanto','0.21062200 1572070994.jpg','Namun sesungguhnya memiliki perbedaan yang cukup detail. Nah, untuk memudahkan Anda dalam memahami apa itu visi misi, berikut ini akan diulas mengenai persamaan dan perbedaan visi misi sekaligus contohnya untuk meningkatkan pemahaman Anda. ','Namun sesungguhnya memiliki perbedaan yang cukup detail. Nah, untuk memudahkan Anda dalam memahami apa itu visi misi, berikut ini akan diulas mengenai persamaan dan perbedaan visi misi sekaligus contohnya untuk meningkatkan pemahaman Anda. ',1,'2019/2020');

/*Table structure for table `t_kelas` */

DROP TABLE IF EXISTS `t_kelas`;

CREATE TABLE `t_kelas` (
  `id_kelas` varchar(3) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_kelas` */

insert  into `t_kelas`(`id_kelas`,`nama_kelas`) values ('K01','XA - ATP'),('K02','XB - ATP');

/*Table structure for table `t_pemilih` */

DROP TABLE IF EXISTS `t_pemilih`;

CREATE TABLE `t_pemilih` (
  `nis` varchar(10) NOT NULL,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_pemilih` */

insert  into `t_pemilih`(`nis`,`periode`) values ('2155','2016/2017'),('2156','2019/2020'),('2155','2019/2020'),('2152','2019/2020'),('2151','2019/2020');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id_user` varchar(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `id_kelas` varchar(3) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pemilih` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_user` */

insert  into `t_user`(`id_user`,`fullname`,`id_kelas`,`jk`,`pemilih`) values ('2151','Bayu','K01','L','Y'),('2152','Zaky','K01','L','Y'),('2155','A. Jazuli Utsman','K01','L','Y'),('2156','Zuli','K01','P','Y'),('2510','Nurul Fitriani','K02','P','Y');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
