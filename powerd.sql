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

 Date: 23/08/2023 11:35:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 247 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, 'AF', 'Afghanistan');
INSERT INTO `countries` VALUES (2, 'AL', 'Albania');
INSERT INTO `countries` VALUES (3, 'DZ', 'Algeria');
INSERT INTO `countries` VALUES (4, 'AS', 'American Samoa');
INSERT INTO `countries` VALUES (5, 'AD', 'Andorra');
INSERT INTO `countries` VALUES (6, 'AO', 'Angola');
INSERT INTO `countries` VALUES (7, 'AI', 'Anguilla');
INSERT INTO `countries` VALUES (8, 'AQ', 'Antarctica');
INSERT INTO `countries` VALUES (9, 'AG', 'Antigua and Barbuda');
INSERT INTO `countries` VALUES (10, 'AR', 'Argentina');
INSERT INTO `countries` VALUES (11, 'AM', 'Armenia');
INSERT INTO `countries` VALUES (12, 'AW', 'Aruba');
INSERT INTO `countries` VALUES (13, 'AU', 'Australia');
INSERT INTO `countries` VALUES (14, 'AT', 'Austria');
INSERT INTO `countries` VALUES (15, 'AZ', 'Azerbaijan');
INSERT INTO `countries` VALUES (16, 'BS', 'Bahamas');
INSERT INTO `countries` VALUES (17, 'BH', 'Bahrain');
INSERT INTO `countries` VALUES (18, 'BD', 'Bangladesh');
INSERT INTO `countries` VALUES (19, 'BB', 'Barbados');
INSERT INTO `countries` VALUES (20, 'BY', 'Belarus');
INSERT INTO `countries` VALUES (21, 'BE', 'Belgium');
INSERT INTO `countries` VALUES (22, 'BZ', 'Belize');
INSERT INTO `countries` VALUES (23, 'BJ', 'Benin');
INSERT INTO `countries` VALUES (24, 'BM', 'Bermuda');
INSERT INTO `countries` VALUES (25, 'BT', 'Bhutan');
INSERT INTO `countries` VALUES (26, 'BO', 'Bolivia');
INSERT INTO `countries` VALUES (27, 'BA', 'Bosnia and Herzegovina');
INSERT INTO `countries` VALUES (28, 'BW', 'Botswana');
INSERT INTO `countries` VALUES (29, 'BV', 'Bouvet Island');
INSERT INTO `countries` VALUES (30, 'BR', 'Brazil');
INSERT INTO `countries` VALUES (31, 'IO', 'British Indian Ocean Territory');
INSERT INTO `countries` VALUES (32, 'BN', 'Brunei Darussalam');
INSERT INTO `countries` VALUES (33, 'BG', 'Bulgaria');
INSERT INTO `countries` VALUES (34, 'BF', 'Burkina Faso');
INSERT INTO `countries` VALUES (35, 'BI', 'Burundi');
INSERT INTO `countries` VALUES (36, 'KH', 'Cambodia');
INSERT INTO `countries` VALUES (37, 'CM', 'Cameroon');
INSERT INTO `countries` VALUES (38, 'CA', 'Canada');
INSERT INTO `countries` VALUES (39, 'CV', 'Cape Verde');
INSERT INTO `countries` VALUES (40, 'KY', 'Cayman Islands');
INSERT INTO `countries` VALUES (41, 'CF', 'Central African Republic');
INSERT INTO `countries` VALUES (42, 'TD', 'Chad');
INSERT INTO `countries` VALUES (43, 'CL', 'Chile');
INSERT INTO `countries` VALUES (44, 'CN', 'China');
INSERT INTO `countries` VALUES (45, 'CX', 'Christmas Island');
INSERT INTO `countries` VALUES (46, 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `countries` VALUES (47, 'CO', 'Colombia');
INSERT INTO `countries` VALUES (48, 'KM', 'Comoros');
INSERT INTO `countries` VALUES (49, 'CD', 'Democratic Republic of the Congo');
INSERT INTO `countries` VALUES (50, 'CG', 'Republic of Congo');
INSERT INTO `countries` VALUES (51, 'CK', 'Cook Islands');
INSERT INTO `countries` VALUES (52, 'CR', 'Costa Rica');
INSERT INTO `countries` VALUES (53, 'HR', 'Croatia (Hrvatska)');
INSERT INTO `countries` VALUES (54, 'CU', 'Cuba');
INSERT INTO `countries` VALUES (55, 'CY', 'Cyprus');
INSERT INTO `countries` VALUES (56, 'CZ', 'Czech Republic');
INSERT INTO `countries` VALUES (57, 'DK', 'Denmark');
INSERT INTO `countries` VALUES (58, 'DJ', 'Djibouti');
INSERT INTO `countries` VALUES (59, 'DM', 'Dominica');
INSERT INTO `countries` VALUES (60, 'DO', 'Dominican Republic');
INSERT INTO `countries` VALUES (61, 'TL', 'East Timor');
INSERT INTO `countries` VALUES (62, 'EC', 'Ecuador');
INSERT INTO `countries` VALUES (63, 'EG', 'Egypt');
INSERT INTO `countries` VALUES (64, 'SV', 'El Salvador');
INSERT INTO `countries` VALUES (65, 'GQ', 'Equatorial Guinea');
INSERT INTO `countries` VALUES (66, 'ER', 'Eritrea');
INSERT INTO `countries` VALUES (67, 'EE', 'Estonia');
INSERT INTO `countries` VALUES (68, 'ET', 'Ethiopia');
INSERT INTO `countries` VALUES (69, 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO `countries` VALUES (70, 'FO', 'Faroe Islands');
INSERT INTO `countries` VALUES (71, 'FJ', 'Fiji');
INSERT INTO `countries` VALUES (72, 'FI', 'Finland');
INSERT INTO `countries` VALUES (73, 'FR', 'France');
INSERT INTO `countries` VALUES (74, 'FX', 'France, Metropolitan');
INSERT INTO `countries` VALUES (75, 'GF', 'French Guiana');
INSERT INTO `countries` VALUES (76, 'PF', 'French Polynesia');
INSERT INTO `countries` VALUES (77, 'TF', 'French Southern Territories');
INSERT INTO `countries` VALUES (78, 'GA', 'Gabon');
INSERT INTO `countries` VALUES (79, 'GM', 'Gambia');
INSERT INTO `countries` VALUES (80, 'GE', 'Georgia');
INSERT INTO `countries` VALUES (81, 'DE', 'Germany');
INSERT INTO `countries` VALUES (82, 'GH', 'Ghana');
INSERT INTO `countries` VALUES (83, 'GI', 'Gibraltar');
INSERT INTO `countries` VALUES (84, 'GG', 'Guernsey');
INSERT INTO `countries` VALUES (85, 'GR', 'Greece');
INSERT INTO `countries` VALUES (86, 'GL', 'Greenland');
INSERT INTO `countries` VALUES (87, 'GD', 'Grenada');
INSERT INTO `countries` VALUES (88, 'GP', 'Guadeloupe');
INSERT INTO `countries` VALUES (89, 'GU', 'Guam');
INSERT INTO `countries` VALUES (90, 'GT', 'Guatemala');
INSERT INTO `countries` VALUES (91, 'GN', 'Guinea');
INSERT INTO `countries` VALUES (92, 'GW', 'Guinea-Bissau');
INSERT INTO `countries` VALUES (93, 'GY', 'Guyana');
INSERT INTO `countries` VALUES (94, 'HT', 'Haiti');
INSERT INTO `countries` VALUES (95, 'HM', 'Heard and Mc Donald Islands');
INSERT INTO `countries` VALUES (96, 'HN', 'Honduras');
INSERT INTO `countries` VALUES (97, 'HK', 'Hong Kong');
INSERT INTO `countries` VALUES (98, 'HU', 'Hungary');
INSERT INTO `countries` VALUES (99, 'IS', 'Iceland');
INSERT INTO `countries` VALUES (100, 'IN', 'India');
INSERT INTO `countries` VALUES (101, 'IM', 'Isle of Man');
INSERT INTO `countries` VALUES (102, 'ID', 'Indonesia');
INSERT INTO `countries` VALUES (103, 'IR', 'Iran (Islamic Republic of)');
INSERT INTO `countries` VALUES (104, 'IQ', 'Iraq');
INSERT INTO `countries` VALUES (105, 'IE', 'Ireland');
INSERT INTO `countries` VALUES (106, 'IL', 'Israel');
INSERT INTO `countries` VALUES (107, 'IT', 'Italy');
INSERT INTO `countries` VALUES (108, 'CI', 'Ivory Coast');
INSERT INTO `countries` VALUES (109, 'JE', 'Jersey');
INSERT INTO `countries` VALUES (110, 'JM', 'Jamaica');
INSERT INTO `countries` VALUES (111, 'JP', 'Japan');
INSERT INTO `countries` VALUES (112, 'JO', 'Jordan');
INSERT INTO `countries` VALUES (113, 'KZ', 'Kazakhstan');
INSERT INTO `countries` VALUES (114, 'KE', 'Kenya');
INSERT INTO `countries` VALUES (115, 'KI', 'Kiribati');
INSERT INTO `countries` VALUES (116, 'KP', 'Korea, Democratic People\'s Republic of');
INSERT INTO `countries` VALUES (117, 'KR', 'Korea, Republic of');
INSERT INTO `countries` VALUES (118, 'XK', 'Kosovo');
INSERT INTO `countries` VALUES (119, 'KW', 'Kuwait');
INSERT INTO `countries` VALUES (120, 'KG', 'Kyrgyzstan');
INSERT INTO `countries` VALUES (121, 'LA', 'Lao People\'s Democratic Republic');
INSERT INTO `countries` VALUES (122, 'LV', 'Latvia');
INSERT INTO `countries` VALUES (123, 'LB', 'Lebanon');
INSERT INTO `countries` VALUES (124, 'LS', 'Lesotho');
INSERT INTO `countries` VALUES (125, 'LR', 'Liberia');
INSERT INTO `countries` VALUES (126, 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO `countries` VALUES (127, 'LI', 'Liechtenstein');
INSERT INTO `countries` VALUES (128, 'LT', 'Lithuania');
INSERT INTO `countries` VALUES (129, 'LU', 'Luxembourg');
INSERT INTO `countries` VALUES (130, 'MO', 'Macau');
INSERT INTO `countries` VALUES (131, 'MK', 'North Macedonia');
INSERT INTO `countries` VALUES (132, 'MG', 'Madagascar');
INSERT INTO `countries` VALUES (133, 'MW', 'Malawi');
INSERT INTO `countries` VALUES (134, 'MY', 'Malaysia');
INSERT INTO `countries` VALUES (135, 'MV', 'Maldives');
INSERT INTO `countries` VALUES (136, 'ML', 'Mali');
INSERT INTO `countries` VALUES (137, 'MT', 'Malta');
INSERT INTO `countries` VALUES (138, 'MH', 'Marshall Islands');
INSERT INTO `countries` VALUES (139, 'MQ', 'Martinique');
INSERT INTO `countries` VALUES (140, 'MR', 'Mauritania');
INSERT INTO `countries` VALUES (141, 'MU', 'Mauritius');
INSERT INTO `countries` VALUES (142, 'YT', 'Mayotte');
INSERT INTO `countries` VALUES (143, 'MX', 'Mexico');
INSERT INTO `countries` VALUES (144, 'FM', 'Micronesia, Federated States of');
INSERT INTO `countries` VALUES (145, 'MD', 'Moldova, Republic of');
INSERT INTO `countries` VALUES (146, 'MC', 'Monaco');
INSERT INTO `countries` VALUES (147, 'MN', 'Mongolia');
INSERT INTO `countries` VALUES (148, 'ME', 'Montenegro');
INSERT INTO `countries` VALUES (149, 'MS', 'Montserrat');
INSERT INTO `countries` VALUES (150, 'MA', 'Morocco');
INSERT INTO `countries` VALUES (151, 'MZ', 'Mozambique');
INSERT INTO `countries` VALUES (152, 'MM', 'Myanmar');
INSERT INTO `countries` VALUES (153, 'NA', 'Namibia');
INSERT INTO `countries` VALUES (154, 'NR', 'Nauru');
INSERT INTO `countries` VALUES (155, 'NP', 'Nepal');
INSERT INTO `countries` VALUES (156, 'NL', 'Netherlands');
INSERT INTO `countries` VALUES (157, 'AN', 'Netherlands Antilles');
INSERT INTO `countries` VALUES (158, 'NC', 'New Caledonia');
INSERT INTO `countries` VALUES (159, 'NZ', 'New Zealand');
INSERT INTO `countries` VALUES (160, 'NI', 'Nicaragua');
INSERT INTO `countries` VALUES (161, 'NE', 'Niger');
INSERT INTO `countries` VALUES (162, 'NG', 'Nigeria');
INSERT INTO `countries` VALUES (163, 'NU', 'Niue');
INSERT INTO `countries` VALUES (164, 'NF', 'Norfolk Island');
INSERT INTO `countries` VALUES (165, 'MP', 'Northern Mariana Islands');
INSERT INTO `countries` VALUES (166, 'NO', 'Norway');
INSERT INTO `countries` VALUES (167, 'OM', 'Oman');
INSERT INTO `countries` VALUES (168, 'PK', 'Pakistan');
INSERT INTO `countries` VALUES (169, 'PW', 'Palau');
INSERT INTO `countries` VALUES (170, 'PS', 'Palestine');
INSERT INTO `countries` VALUES (171, 'PA', 'Panama');
INSERT INTO `countries` VALUES (172, 'PG', 'Papua New Guinea');
INSERT INTO `countries` VALUES (173, 'PY', 'Paraguay');
INSERT INTO `countries` VALUES (174, 'PE', 'Peru');
INSERT INTO `countries` VALUES (175, 'PH', 'Philippines');
INSERT INTO `countries` VALUES (176, 'PN', 'Pitcairn');
INSERT INTO `countries` VALUES (177, 'PL', 'Poland');
INSERT INTO `countries` VALUES (178, 'PT', 'Portugal');
INSERT INTO `countries` VALUES (179, 'PR', 'Puerto Rico');
INSERT INTO `countries` VALUES (180, 'QA', 'Qatar');
INSERT INTO `countries` VALUES (181, 'RE', 'Reunion');
INSERT INTO `countries` VALUES (182, 'RO', 'Romania');
INSERT INTO `countries` VALUES (183, 'RU', 'Russian Federation');
INSERT INTO `countries` VALUES (184, 'RW', 'Rwanda');
INSERT INTO `countries` VALUES (185, 'KN', 'Saint Kitts and Nevis');
INSERT INTO `countries` VALUES (186, 'LC', 'Saint Lucia');
INSERT INTO `countries` VALUES (187, 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `countries` VALUES (188, 'WS', 'Samoa');
INSERT INTO `countries` VALUES (189, 'SM', 'San Marino');
INSERT INTO `countries` VALUES (190, 'ST', 'Sao Tome and Principe');
INSERT INTO `countries` VALUES (191, 'SA', 'Saudi Arabia');
INSERT INTO `countries` VALUES (192, 'SN', 'Senegal');
INSERT INTO `countries` VALUES (193, 'RS', 'Serbia');
INSERT INTO `countries` VALUES (194, 'SC', 'Seychelles');
INSERT INTO `countries` VALUES (195, 'SL', 'Sierra Leone');
INSERT INTO `countries` VALUES (196, 'SG', 'Singapore');
INSERT INTO `countries` VALUES (197, 'SK', 'Slovakia');
INSERT INTO `countries` VALUES (198, 'SI', 'Slovenia');
INSERT INTO `countries` VALUES (199, 'SB', 'Solomon Islands');
INSERT INTO `countries` VALUES (200, 'SO', 'Somalia');
INSERT INTO `countries` VALUES (201, 'ZA', 'South Africa');
INSERT INTO `countries` VALUES (202, 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO `countries` VALUES (203, 'SS', 'South Sudan');
INSERT INTO `countries` VALUES (204, 'ES', 'Spain');
INSERT INTO `countries` VALUES (205, 'LK', 'Sri Lanka');
INSERT INTO `countries` VALUES (206, 'SH', 'St. Helena');
INSERT INTO `countries` VALUES (207, 'PM', 'St. Pierre and Miquelon');
INSERT INTO `countries` VALUES (208, 'SD', 'Sudan');
INSERT INTO `countries` VALUES (209, 'SR', 'Suriname');
INSERT INTO `countries` VALUES (210, 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `countries` VALUES (211, 'SZ', 'Eswatini');
INSERT INTO `countries` VALUES (212, 'SE', 'Sweden');
INSERT INTO `countries` VALUES (213, 'CH', 'Switzerland');
INSERT INTO `countries` VALUES (214, 'SY', 'Syrian Arab Republic');
INSERT INTO `countries` VALUES (215, 'TW', 'Taiwan');
INSERT INTO `countries` VALUES (216, 'TJ', 'Tajikistan');
INSERT INTO `countries` VALUES (217, 'TZ', 'Tanzania, United Republic of');
INSERT INTO `countries` VALUES (218, 'TH', 'Thailand');
INSERT INTO `countries` VALUES (219, 'TG', 'Togo');
INSERT INTO `countries` VALUES (220, 'TK', 'Tokelau');
INSERT INTO `countries` VALUES (221, 'TO', 'Tonga');
INSERT INTO `countries` VALUES (222, 'TT', 'Trinidad and Tobago');
INSERT INTO `countries` VALUES (223, 'TN', 'Tunisia');
INSERT INTO `countries` VALUES (224, 'TR', 'Turkey');
INSERT INTO `countries` VALUES (225, 'TM', 'Turkmenistan');
INSERT INTO `countries` VALUES (226, 'TC', 'Turks and Caicos Islands');
INSERT INTO `countries` VALUES (227, 'TV', 'Tuvalu');
INSERT INTO `countries` VALUES (228, 'UG', 'Uganda');
INSERT INTO `countries` VALUES (229, 'UA', 'Ukraine');
INSERT INTO `countries` VALUES (230, 'AE', 'United Arab Emirates');
INSERT INTO `countries` VALUES (231, 'GB', 'United Kingdom');
INSERT INTO `countries` VALUES (232, 'US', 'United States');
INSERT INTO `countries` VALUES (233, 'UM', 'United States minor outlying islands');
INSERT INTO `countries` VALUES (234, 'UY', 'Uruguay');
INSERT INTO `countries` VALUES (235, 'UZ', 'Uzbekistan');
INSERT INTO `countries` VALUES (236, 'VU', 'Vanuatu');
INSERT INTO `countries` VALUES (237, 'VA', 'Vatican City State');
INSERT INTO `countries` VALUES (238, 'VE', 'Venezuela');
INSERT INTO `countries` VALUES (239, 'VN', 'Vietnam');
INSERT INTO `countries` VALUES (240, 'VG', 'Virgin Islands (British)');
INSERT INTO `countries` VALUES (241, 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `countries` VALUES (242, 'WF', 'Wallis and Futuna Islands');
INSERT INTO `countries` VALUES (243, 'EH', 'Western Sahara');
INSERT INTO `countries` VALUES (244, 'YE', 'Yemen');
INSERT INTO `countries` VALUES (245, 'ZM', 'Zambia');
INSERT INTO `countries` VALUES (246, 'ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for message_sources
-- ----------------------------
DROP TABLE IF EXISTS `message_sources`;
CREATE TABLE `message_sources`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message_sources
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `negotiation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `has_sources` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_date` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, 0, 6, 66, 'test', 0, 0);
INSERT INTO `messages` VALUES (2, 0, 6, 66, 'test test', 0, 0);
INSERT INTO `messages` VALUES (3, 0, 6, 70, 'test text test', 0, 0);
INSERT INTO `messages` VALUES (4, 0, 6, 66, 'test text', 0, 0);
INSERT INTO `messages` VALUES (5, 0, 6, 70, 'test text 444444', 0, 0);

-- ----------------------------
-- Table structure for negotiation_users
-- ----------------------------
DROP TABLE IF EXISTS `negotiation_users`;
CREATE TABLE `negotiation_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_role` enum('creator','responder') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `negotiation_id` int(10) UNSIGNED NOT NULL,
  `scenario_role_id` int(10) UNSIGNED NOT NULL,
  `goal_for_supervisor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `laa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personal_goals` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goal_for_partner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `batna` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of negotiation_users
-- ----------------------------
INSERT INTO `negotiation_users` VALUES (1, 1, 'creator', 1, 1, '1', '1', '1', NULL, NULL);
INSERT INTO `negotiation_users` VALUES (2, 1, 'creator', 3, 5, 'k', 'k', 'k', 'k', 'k');
INSERT INTO `negotiation_users` VALUES (3, 1, 'creator', 2, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (4, 1, 'responder', 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (5, 66, 'creator', 5, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (6, 66, 'creator', 6, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (7, 66, 'creator', 7, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (8, 66, 'creator', 8, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (9, 66, 'creator', 9, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (10, 66, 'creator', 10, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (11, 70, 'creator', 6, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `negotiation_users` VALUES (12, 70, 'creator', 14, 2, '', '', '', '', '');

-- ----------------------------
-- Table structure for negotiations
-- ----------------------------
DROP TABLE IF EXISTS `negotiations`;
CREATE TABLE `negotiations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `scenario_id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_timestamp` int(15) UNSIGNED NOT NULL,
  `waiting_timestamp` int(10) UNSIGNED NOT NULL,
  `duration_timestamp` int(10) UNSIGNED NOT NULL,
  `video_flag` tinyint(1) NOT NULL DEFAULT 0,
  `messaging_flag` tinyint(1) NOT NULL DEFAULT 0,
  `notification_flag` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of negotiations
-- ----------------------------
INSERT INTO `negotiations` VALUES (1, 2, 1, '', 1692019579, 5465444, 6454, 1, 1, 1);
INSERT INTO `negotiations` VALUES (2, 2, 2, '', 1692019578, 6544444, 978, 0, 0, 0);
INSERT INTO `negotiations` VALUES (3, 2, 3, '', 1692019578, 5645555, 800000, 0, 0, 0);
INSERT INTO `negotiations` VALUES (4, 2, 1, '', 1692019578, 8765544, 87654, 0, 0, 0);
INSERT INTO `negotiations` VALUES (5, 0, 1, '', 1692263193, 654654, 85455, 1, 1, 1);
INSERT INTO `negotiations` VALUES (6, 0, 1, 'sf54d3f1d3f1s6dgd1g6s5dg65sdg65s4dg6sd', 1692263351, 654654, 85455, 1, 1, 1);
INSERT INTO `negotiations` VALUES (7, 0, 1, '', 1692263567, 654654, 85455, 1, 1, 0);
INSERT INTO `negotiations` VALUES (8, 0, 1, '', 1692263571, 654654, 85455, 1, 1, 0);
INSERT INTO `negotiations` VALUES (9, 0, 1, '', 1692263579, 654654, 85455, 1, 1, 1);
INSERT INTO `negotiations` VALUES (10, 0, 1, '', 1692263582, 654654, 85455, 1, 0, 0);
INSERT INTO `negotiations` VALUES (11, 0, 1, '', 1692266718, 28860, 34080, 0, 0, 0);
INSERT INTO `negotiations` VALUES (12, 0, 1, '', 1692275802, 30300, 34800, 0, 0, 0);
INSERT INTO `negotiations` VALUES (13, 0, 1, '', 1692275845, 30300, 38400, 0, 0, 0);
INSERT INTO `negotiations` VALUES (14, 0, 1, 'f96b49a7645bbe2df8ecb1b9bdbdf2e9', 1692702731, 31500, 35700, 0, 0, 0);

-- ----------------------------
-- Table structure for scenario_roles
-- ----------------------------
DROP TABLE IF EXISTS `scenario_roles`;
CREATE TABLE `scenario_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `scenario_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_roles
-- ----------------------------
INSERT INTO `scenario_roles` VALUES (1, 1, 'scenario 1 role 1 by id 1', 'sd');
INSERT INTO `scenario_roles` VALUES (2, 1, 'scenario 1 role 2 by id 2', 'dsfs');
INSERT INTO `scenario_roles` VALUES (3, 2, 'scenario 2 role 1 by id 3', 'desc 1');
INSERT INTO `scenario_roles` VALUES (4, 2, 'scenario 2 role 2 by id 4', 'desc 2');
INSERT INTO `scenario_roles` VALUES (5, 3, 'scenario 3 role 1 by id 5', 'desc 1');
INSERT INTO `scenario_roles` VALUES (6, 3, 'scenario 2 role 2 by id 6', 'desc 2');

-- ----------------------------
-- Table structure for scenarios
-- ----------------------------
DROP TABLE IF EXISTS `scenarios`;
CREATE TABLE `scenarios`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `logo_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenarios
-- ----------------------------
INSERT INTO `scenarios` VALUES (1, 'Negotiate a price change\r\nwith a longterm supplier', 'Company McSafety is producing cardboard boxes.\r\nBill&Bob Ltd. has been purchasing cardboard boxes in standard dimensions from McSafety for the last 10 years. Bill&Bob Ltd informed McSafety that they carried out a value analysis and suggest a saving of 10% on material costs by reducing the size of the lower side flaps. Currently, Bill&Bob Ltd is purchasing 2 different shapes of cardboard boxes:\r\n-K1 approx. 300,000 pieces at a price of 2€\r\n-K2 approx. 150,000 pieces at a price of 3€\r\nThese boxes are delivered to a central warehouse from where Bill&Bob distributes them to the production lines in the same location. Total turnover last year is 1,050,000€. The negotiation takes place in January. The inflation is at around 2%.', NULL, 1);
INSERT INTO `scenarios` VALUES (2, 'Negotiate a price change\r\nwith a longterm supplier 2', 'Company McSafety is producing cardboard boxes.\r\nBill&Bob Ltd. has been purchasing cardboard boxes in standard dimensions from McSafety for the last 10 years. Bill&Bob Ltd informed McSafety that they carried out a value analysis and suggest a saving of 10% on material costs by reducing the size of the lower side flaps. Currently, Bill&Bob Ltd is purchasing 2 different shapes of cardboard boxes:\r\n-K1 approx. 300,000 pieces at a price of 2€\r\n-K2 approx. 150,000 pieces at a price of 3€\r\nThese boxes are delivered to a central warehouse from where Bill&Bob distributes them to the production lines in the same location. Total turnover last year is 1,050,000€. The negotiation takes place in January. The inflation is at around 2%.', NULL, 2);
INSERT INTO `scenarios` VALUES (3, 'Negotiate a price change\r\nwith a longterm supplier 3', 'Company McSafety is producing cardboard boxes.\r\nBill&Bob Ltd. has been purchasing cardboard boxes in standard dimensions from McSafety for the last 10 years. Bill&Bob Ltd informed McSafety that they carried out a value analysis and suggest a saving of 10% on material costs by reducing the size of the lower side flaps. Currently, Bill&Bob Ltd is purchasing 2 different shapes of cardboard boxes:\r\n-K1 approx. 300,000 pieces at a price of 2€\r\n-K2 approx. 150,000 pieces at a price of 3€\r\nThese boxes are delivered to a central warehouse from where Bill&Bob distributes them to the production lines in the same location. Total turnover last year is 1,050,000€. The negotiation takes place in January. The inflation is at around 2%.', NULL, 3);

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
  `refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
INSERT INTO `users` VALUES (66, 1, 'Name', 'Last name ', 'test@test.com1', '$2b$04$acfll5gigrbc/XhaRB6o4.AHB52Jr379il0h6q314tCaA6/JqVSku', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjYsImVtYWlsIjoidGVzdEB0ZXN0LmNvbTEiLCJmaXJzdE5hbWUiOiJOYW1lIiwiaWF0IjoxNjkyNjI1ODE2LCJleHAiOjE2OTUyMTc4MTZ9.4KmsKbXKMnUj4NDdgo8rBdMz_ndotXqANqeh95lM_Uc', 'user', '', '', 0);
INSERT INTO `users` VALUES (67, 1, 'Name', 'Last name ', 'test@te11st.com', '$2b$04$IjNVglbyE6hBQqaQD.CdgOkPtqhSGX2qvyxKFI1/JMoGwrlFEzJVO', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjcsImVtYWlsIjoidGVzdEB0ZTExc3QuY29tIiwiZmlyc3ROYW1lIjoiTmFtZSIsImlhdCI6MTY5MTczOTg0MywiZXhwIjoxNjk0MzMxODQzfQ.dKubRy5Iv0bm31276DSnOvIYOoenxcmz4dhDSNSV98E', 'user', '', '', 0);
INSERT INTO `users` VALUES (68, 1, 'Name', 'Last name ', 'test@te1hh1st.com', '$2b$04$wtYBJYzBEOGVnj325yaH8Ojbu7oED28tigf3ikD4vncYeS5PnSFIe', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjgsImVtYWlsIjoidGVzdEB0ZTFoaDFzdC5jb20iLCJmaXJzdE5hbWUiOiJOYW1lIiwiaWF0IjoxNjkyMTg1Mzc0LCJleHAiOjE2OTQ3NzczNzR9.ya50jsAD_AKbqMz28WGF0D74K6l1yCydvoa5H-IMiag', 'user', '', '', 0);
INSERT INTO `users` VALUES (69, 1, 'Name', 'Last name ', 'tesgggt@te1hh1st.com', '$2b$04$glhesiWQoGDB1vfyuyqDmuzWuZdHx/3Lcd3.rX7HlLCXCXste5uwa', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjksImVtYWlsIjoidGVzZ2dndEB0ZTFoaDFzdC5jb20iLCJmaXJzdE5hbWUiOiJOYW1lIiwiaWF0IjoxNjkyMTkwNzQyLCJleHAiOjE2OTQ3ODI3NDJ9.Qyyd1P25PWBHB6JlG9NsoCRBPFMVmRuYa06gqdDlkY4', 'user', '', '', 0);
INSERT INTO `users` VALUES (70, 1, 'user', 'user', 'user@gmail.com', '$2b$04$umsQhBp0g7kcmS8kr//dWOdqnmXExBP0mBxvuQ9N1a3D30BcVeRpG', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzAsImVtYWlsIjoidXNlckBnbWFpbC5jb20iLCJmaXJzdE5hbWUiOiJ1c2VyIiwiaWF0IjoxNjkyNzAyNjkwLCJleHAiOjE2OTUyOTQ2OTB9.2rkOlhnEv1jocxb6Rbpx-8CGGD8AWBUKVzE6Vinr9mU', 'user', 'company', 'address', 5);
INSERT INTO `users` VALUES (71, 1, 'user', 'user', 'user1@gmail.com', '$2b$04$97G6scvu6MnGUBrG6rUC3.XQuNMR79xp/pkgVyXLsMi/4LgWfUG1.', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzEsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwiZmlyc3ROYW1lIjoidXNlciIsImlhdCI6MTY5MjE5MTI0MCwiZXhwIjoxNjk0NzgzMjQwfQ.rl9ya6E-UPiwcVkyWv_57xCAVy6MsWXxw2K5NI3Aijg', 'user', 'company', 'address', 5);
INSERT INTO `users` VALUES (72, 1, 'user', 'user', 'user2@gmail.com', '$2b$04$nJEn67D8MrwcMpP5AolOz.PzC20Ihq6Q3DwFh71.1HlBcEZJwaH5G', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzIsImVtYWlsIjoidXNlcjJAZ21haWwuY29tIiwiZmlyc3ROYW1lIjoidXNlciIsImlhdCI6MTY5MjE5NDY3NSwiZXhwIjoxNjk0Nzg2Njc1fQ.vtWJUkWbZSv5SBfijoTqFmxTyP0odoGsbGMEI-V-Byk', 'user', 'com', 'address', 6);

SET FOREIGN_KEY_CHECKS = 1;
