-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 52.79.134.74    Database: iot
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` char(255) NOT NULL,
  `password` char(255) NOT NULL,
  `hashid` char(255) DEFAULT NULL,
  `userid` int NOT NULL AUTO_INCREMENT,
  `map` char(10) DEFAULT '1',
  `route1` varchar(50) DEFAULT NULL,
  `route2` varchar(50) DEFAULT NULL,
  `route3` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `turtlebot` varchar(20) DEFAULT NULL,
  `patrol` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1yh1ygKtRJq8go8akcKfOgnLez8e+KWqpWDJSI7N815oSKju40vKK0g7DQRbGPnTd66ZSQfFR8ybNq/cpJQa5w==','e5670efd6ccedb7953348d1d90cb2c0e3ec65d8b79bb197fb0e5','HJ6bRV/66OTMS3Uqbzde3mOMPLa2brKzz38=',1,'1',NULL,NULL,NULL,NULL,NULL,NULL),('2dCHPiviniE2Dxo2hcYPJ/uKA4QOXMfL7yQTt/+6flnuoQbTOwSETBgoKVPmXIsV+JJkxRPPQDIh3WcgNeTA0g==','fdc552d1ea59c80b294d7b771c12e5e36ca0639ecf8803c14511','IDAV8nhTdkV0XKh9Ltn4711YkU/wquxNLOQ=',2,'1',NULL,NULL,NULL,'??????','?????????',NULL),('5y7axTJ7d0E9G5+VRVvf/bD1P2r5etRk2JHVgjh/kTI4a9D4JpeYYgHJVpXpFwMkA4j/n6LmZfW0HAGjMgqYfA==','8948461aff4bd04f7d4e55f942477482caa4a6a7e7f967520b7b','ua5A9+okzx5CHETc0LQtEL0Ez9UympguKXM=',3,'1',NULL,NULL,NULL,NULL,NULL,NULL),('DrMPRPVaQsavbf2R/TUGx+TVy2ZPpunlMKgySYokLUWswFm4c4A8XJIr1IwgwK6CwbSLl6ijnY/prEyvNtyg0Q==','d0f3d69309654855cf39fb76c6e1cd778f02eea0651cbbc8082b','jQa+V8OIu84zZM1scjjYhaYQ5d5G3wF4PnE=',4,'1',NULL,NULL,NULL,NULL,NULL,NULL),('faach2u3ZWxgZPCIYgn6a+vIHGp2RiPINM6Z+0w0DpgT+NUQ2kz8sggGeipHUVEKZnFSBqmDejLTDptEN8yGfA==','d128e54c4e5e3531ade0ac9538ff7dbc4f47b546577c86a62cce','VWLEyDiu3L3yLD1huMaEiUHVB9iYdC6zaFY=',5,'1',NULL,NULL,NULL,NULL,NULL,NULL),('Jb7xPn3cs+KnAgy7D5JZA9Vlfp2YBln0aiqpeEGjn7+mgnFBFmArl9rxWaOJ03TGSycHIvWjWWfh46TEyqI27g==','b4afabbd49ac7b0dfe04c5be84b77ace0882161d55190b9085ee','ACdNyzX7FwYBajm3HY/DIfDtXW4xOE8DLxk=',6,'1',NULL,NULL,NULL,NULL,NULL,NULL),('MwQKI70kzuJDIQJej4To8GndLOCc83Pmp9Y3O6qqCiWY1cCJCsZOtmsTebvb6NlcXmLX8AnkpdkDVcvAUJ4XwQ==','6c199c432a084a849e323898daf28edecfd9311816e9b0967c04','o9E12cJo2vt8caFuZSvQT1r6vr23ICwp7ms=',7,'1',NULL,NULL,NULL,NULL,NULL,NULL),('Ntxq36xNSpt9H23NlHy7asRnw0viWdJOfaLzP0+HCaMOqh5dfYo9XxybCvzILwkf6FM/cbCSpJcraWBVxcJinA==','8ecfd3ed3c98b3ff484803c30837d78bf40a43ca2c5ed487d9a6','Ta5sWpfdCCiHUfXo/iQyQoNsvIN3I8H0wus=',8,'1',NULL,NULL,NULL,NULL,NULL,NULL),('Q1ACKJCwkrcWt2u9MUBQFS1FStg0fPvO7+Xn/L41aUjkK0UUoedrL7+presw68qBg1gxndYfjqMvtwePQZAPXA==','4817aa83867d570ad03e968e05ba3fac5b84636d38a8ceddd764','7yO1i96zWeFPBvAdX/8dcKRZDPo9XEKegUo=',9,'1',NULL,NULL,NULL,NULL,NULL,NULL),('rKR5U3iJRpZjgooNOJrz/5KinmTnoFn+gI//yJaIQvOzLD5g+31Bk8mjVyBpRPMM8ZBGCaPOU9Af60o/v8bwBQ==','19bde27b742ab51f18965f935e2f1130b5d4e86cbc7bb39f135f','3AWg35Tddtt7oP1Xkit4yk4/nWMqrgvdNZg=',10,'1',NULL,NULL,NULL,NULL,NULL,NULL),('sxQXDAJ7hSZOeq5ZEWHpZ3WfPMong5eVUOLFiogq2RasxDGHq6yx2cY3acVmUqPh87YruY/bqH6IXElVTXDH4Q==','14d1d6fec4c54aba881f18c32a1be063405b0f5f94a906d6f8e3','9iQI96+zD9r8pwkAByu/iXhHRIsY/m0M43s=',11,'1',NULL,NULL,NULL,NULL,NULL,NULL),('WNMrxg6hTpRXv5+JkKv4Twu+KGUucNVFS8qtQTOahlVnLIwn89Ft7JkkDMkVPA+ZFdYPkmwxIUl0DC+6HqcpBA==','64b250913ca7300c5b34e54cde217dec5fbeaaec6bf6c091e9a5','e98/G7hOr1jygaiArbMy02f8jOiXKR7Xyks=',12,'1',NULL,NULL,NULL,NULL,NULL,NULL),('x6ZDpWazqHrVZhhomXKvwrXbr6kzcfpKEbGsEV1eCKjgg7n8iiznmGbcPV0cp08hAff5pRvq6Zk2Xem2n+Mzyw==','b8ed6da3a8b75dbab89f041b840e5270eaebfedf1eec6ad112e9','sNeWlOBEZrWOH/Qfue+mGfvVLnSa+KP0tm4=',13,'1',NULL,NULL,NULL,NULL,NULL,NULL),('XLNfwQ6G7B9O+aTG0pNhzGsMnZBCZMr7utZE9cSxJLrzlYYHi0Ye1nGP5gMxVjH9wkqgUfgSoI0StjNutF5dTg==','168bb661dea072e1af0ecc4fc3a040cd50af98a4d23c321665c7','+QliRo5LH/DLFCOdWu88MZdZCgLmQnzAZsc=',14,'1',NULL,NULL,NULL,NULL,NULL,NULL),('zblQl2HkW80aDHV1SZ1Cx99YMELF8qwDAZMVxFv7+ZcHLJRnoPYIIyTdaJJ3AhirgKP2Q8kHDBGiC0bPf7Z4hw==','523fa7cffe7f350ea5d3bdf0b701e8b7cccccd0ab2d3dc718127','vf1QUfM7LJzZoNpG+u2iCq8OC91nrSCFv7s=',17,'1',NULL,NULL,NULL,NULL,NULL,NULL),('0FACqZIYmbE7wpjeiN4tkjqMPJek0lt0GQq52gR3MwbECrVD3U+qT0u3r0tFNrziV2LWDwDQMZyeNHQ832tIjw==','bb25fcc93467f5deaeee2c0e7ac5dec2a9b67f2c66f4ce8028c3','MyKLSO0o+7Mot27IhQbH6R6uFvXcjAvVefI=',18,'1',NULL,NULL,NULL,NULL,NULL,NULL),('0xxrZ2q9KP7XsDuqEN09DfTz8+uWdGMNAU4JUqimeGcGcKCirWI2Dcq8l12iUUL0dQCvs3f/aBjE2X58nPTSZg==','b97b5682ed2c0048e14b0dab22d44af026866561fe6f03469692','lnYxdr41cHK3MEzlRlMvPCZicrDkQboHLQ8=',19,'1',NULL,NULL,NULL,NULL,NULL,NULL),('S0B989jD0QvI44xotPQLtnqu4CMStKPITMUdN9XPd2IJgUyJg9YJUN2QlsmsKJydYFGNKfROV7XNF1oxYIGeSw==','6e72bda946d231d454491d74a36c60e7263eede07b4093b239ae','VjhiBdLX14fholvgQE4Bz+2E+qJM55l7q04=',20,'1',NULL,NULL,NULL,NULL,NULL,NULL),('p6M2gozznTOgFLxB4nPpk1u4e5ltjU2YDW4q5vRdNeo7cSYoCk84SEg1sBBCLWvNHhRWUfyJKji9P+DxfK52EA==','8ac9e84395366ef6e1e73fffa6f57cc05c62615b0d8c05b72346','dmnwN89QrucBkpW5rDA1EPHBAuBtIc1crbk=',21,'1',NULL,NULL,NULL,NULL,NULL,NULL),('vWZrv2sa9bvtNK/c5s2LfGAhKSxPdtH+stzz1VpEE1U6sUmGdWINM0FMs0qteLQ8P/wToOl+3kHDKO+lOlvuJw==','425b4b2df95611db9c704551b0ff1975820aea18a4e967171ad7','wSAIbnoN0kgq1kewNBAUTXM7/xLyCMdk/Sw=',22,'1',NULL,NULL,NULL,NULL,NULL,NULL),('NjwRiqtTuNbkvbXq9IC18wDSJv8Pb5Fi6syhreTWtSLkv/Fulluc4dQEUCJjggVJ20OsiX9cJ7WmnLZ8I1pr1g==','a540191b3756220b701a5109ab7d79a3be5e0d87aaac96a97c35','m5fK9HhQq6Ro7ZrklOT+Oh8Ci5sF2grTlb8=',23,'1',NULL,NULL,NULL,NULL,NULL,NULL),('uur9c+u09mpQocdn9NTU5GGBJlDT1z+t8DM7ts9TS16Rv0NMgnb61J3T37eC8YnETEwEE7vKlF0ksAVdpTIGWQ==','7e28b0f0e5c8fdd19a30c0712b2ee2e5d49c230c8cc4bca61941','EjmhRfC0/P5DKeuUi+ZDZ1fs3c3Z44d3Wx0=',24,'1',NULL,NULL,NULL,NULL,NULL,NULL),('kYUN9K0yZ4mZxFdGOFEDAszAgW2pnAxR2LwxRefJD50eCtzRWCpZm5WtpJh3Tj6ciIJqNmX/kNG63p6SAziNRg==','452dcc30df15c5b8b26072734dd76ff0a7940a58168a29fe4394','K9p2tRMLIVJDoztrzp9yVSl926qzK2uhnzk=',25,'1',NULL,NULL,NULL,NULL,NULL,NULL),('8QjL+GR12oBa4t2fTK4h6lgFhv1ZWtDle4MmkvmkhtaqaZxRp6ysll73KDvAeDtu6Rco6GUUNDTgVp8qjE/p5w==','f173b0e14b8031078954dac3f382aaf1bd3f1002a9820ff61174','HaC11Fj2JWgkgkXCjOZnkc7BKp4O/FmUFPM=',26,'1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-08  5:48:05
