/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : powerd

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 24/08/2023 17:16:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` enum('user','admin') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT '',
  `country_id` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 1, 'test11', 'adminL', 'admin@admin.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ed6edb7e62cb1eed434c3f0b544e49f7c875b6efd86976177ca545b71e9eeb1f', 'admin', '', '', 0);
INSERT INTO `users` VALUES (66, 1, 'hhhhhhhhhhhhhhhhh', 'dfgfdg', 'test@test.com1', '$2b$04$acfll5gigrbc/XhaRB6o4.AHB52Jr379il0h6q314tCaA6/JqVSku', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjYsImVtYWlsIjoidGVzdEB0ZXN0LmNvbTEiLCJmaXJzdE5hbWUiOiJoaGhoaGhoaGhoaGhoaGhoaCIsImlhdCI6MTY5Mjg4MTc1MywiZXhwIjoxNjk0MTc3NzUzfQ.h4TzutzbqLEgPfvbeVpgCMz8QZztV8zv-QzUlUjPCeY', 'user', 'sdfsdf', '', 0);
INSERT INTO `users` VALUES (67, 1, 'Name', 'Last name ', 'test@te11st.com', '$2b$04$IjNVglbyE6hBQqaQD.CdgOkPtqhSGX2qvyxKFI1/JMoGwrlFEzJVO', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjcsImVtYWlsIjoidGVzdEB0ZTExc3QuY29tIiwiZmlyc3ROYW1lIjoiTmFtZSIsImlhdCI6MTY5MTczOTg0MywiZXhwIjoxNjk0MzMxODQzfQ.dKubRy5Iv0bm31276DSnOvIYOoenxcmz4dhDSNSV98E', 'user', '', '', 0);
INSERT INTO `users` VALUES (68, 1, 'Name', 'Last name ', 'test@te1hh1st.com', '$2b$04$wtYBJYzBEOGVnj325yaH8Ojbu7oED28tigf3ikD4vncYeS5PnSFIe', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjgsImVtYWlsIjoidGVzdEB0ZTFoaDFzdC5jb20iLCJmaXJzdE5hbWUiOiJOYW1lIiwiaWF0IjoxNjkyMTg1Mzc0LCJleHAiOjE2OTQ3NzczNzR9.ya50jsAD_AKbqMz28WGF0D74K6l1yCydvoa5H-IMiag', 'user', '', '', 0);
INSERT INTO `users` VALUES (69, 1, 'Name', 'Last name ', 'tesgggt@te1hh1st.com', '$2b$04$glhesiWQoGDB1vfyuyqDmuzWuZdHx/3Lcd3.rX7HlLCXCXste5uwa', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjksImVtYWlsIjoidGVzZ2dndEB0ZTFoaDFzdC5jb20iLCJmaXJzdE5hbWUiOiJOYW1lIiwiaWF0IjoxNjkyMTkwNzQyLCJleHAiOjE2OTQ3ODI3NDJ9.Qyyd1P25PWBHB6JlG9NsoCRBPFMVmRuYa06gqdDlkY4', 'user', '', '', 0);
INSERT INTO `users` VALUES (70, 1, 'user', 'user', 'user@gmail.com', '$2b$04$umsQhBp0g7kcmS8kr//dWOdqnmXExBP0mBxvuQ9N1a3D30BcVeRpG', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzAsImVtYWlsIjoidXNlckBnbWFpbC5jb20iLCJmaXJzdE5hbWUiOiJ1c2VyIiwiaWF0IjoxNjkyNzAyNjkwLCJleHAiOjE2OTUyOTQ2OTB9.2rkOlhnEv1jocxb6Rbpx-8CGGD8AWBUKVzE6Vinr9mU', 'user', 'company', 'address', 5);
INSERT INTO `users` VALUES (71, 1, 'user', 'user', 'user1@gmail.com', '$2b$04$97G6scvu6MnGUBrG6rUC3.XQuNMR79xp/pkgVyXLsMi/4LgWfUG1.', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzEsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwiZmlyc3ROYW1lIjoidXNlciIsImlhdCI6MTY5MjE5MTI0MCwiZXhwIjoxNjk0NzgzMjQwfQ.rl9ya6E-UPiwcVkyWv_57xCAVy6MsWXxw2K5NI3Aijg', 'user', 'company', 'address', 5);
INSERT INTO `users` VALUES (72, 1, 'user', 'user', 'user2@gmail.com', '$2b$04$nJEn67D8MrwcMpP5AolOz.PzC20Ihq6Q3DwFh71.1HlBcEZJwaH5G', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzIsImVtYWlsIjoidXNlcjJAZ21haWwuY29tIiwiZmlyc3ROYW1lIjoidXNlciIsImlhdCI6MTY5MjE5NDY3NSwiZXhwIjoxNjk0Nzg2Njc1fQ.vtWJUkWbZSv5SBfijoTqFmxTyP0odoGsbGMEI-V-Byk', 'user', 'com', 'address', 6);

SET FOREIGN_KEY_CHECKS = 1;
