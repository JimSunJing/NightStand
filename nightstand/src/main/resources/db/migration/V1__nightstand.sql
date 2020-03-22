/*
 Date: 22/03/2020 16:07:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for finished
-- ----------------------------
DROP TABLE IF EXISTS `finished`;
CREATE TABLE `finished`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL,
  `eventId` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventType` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `star` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_finished`(`uid`, `eventId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 961 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of finished
-- ----------------------------
INSERT INTO `finished` VALUES (11, 1, '10786473', 'b', '2020-01-31', '自控力', NULL, 4);
INSERT INTO `finished` VALUES (12, 1, '26855315', 'b', '2019-11-24', '冒险小虎队', NULL, NULL);
INSERT INTO `finished` VALUES (13, 1, '26826148', 'b', '2019-11-16', '血液的故事', NULL, 4);
INSERT INTO `finished` VALUES (14, 1, '26840215', 'b', '2019-11-10', 'Hands-On Machine Learning with Scikit-Learn and TensorFlow', NULL, 5);
INSERT INTO `finished` VALUES (15, 1, '1494050', 'b', '2019-10-19', 'The Ballad of the Sad Cafe', NULL, 5);
INSERT INTO `finished` VALUES (16, 1, '4578536', 'b', '2019-08-20', '阿司匹林传奇', NULL, 5);
INSERT INTO `finished` VALUES (17, 1, '3288908', 'b', '2019-07-27', '集体智慧编程', NULL, 4);
INSERT INTO `finished` VALUES (18, 1, '26848051', 'b', '2019-07-22', '造房子', NULL, 3);
INSERT INTO `finished` VALUES (19, 1, '30459278', 'b', '2019-05-22', '看不见的美国', NULL, 4);
INSERT INTO `finished` VALUES (20, 1, '6861475', 'b', '2019-05-13', '意识探秘', NULL, 5);
INSERT INTO `finished` VALUES (21, 1, '6313445', 'b', '2019-05-09', '喧哗与骚动', NULL, 5);
INSERT INTO `finished` VALUES (22, 1, '21332126', 'b', '2019-05-01', '电影人之眼', NULL, 4);
INSERT INTO `finished` VALUES (23, 1, '4719446', 'b', '2019-05-01', 'The Zoo Story (Acting Edition)', NULL, 4);
INSERT INTO `finished` VALUES (24, 1, '25760473', 'b', '2019-04-23', '等待戈多', NULL, 5);
INSERT INTO `finished` VALUES (25, 1, '1477396', 'b', '2019-04-11', 'Flowers for Algernon', NULL, 5);
INSERT INTO `finished` VALUES (26, 1, '25863515', 'b', '2019-04-08', '图解HTTP', NULL, 4);
INSERT INTO `finished` VALUES (27, 1, '4088758', 'b', '2019-03-28', '性社会学', NULL, 4);
INSERT INTO `finished` VALUES (28, 1, '20470849', 'b', '2019-03-22', '神的九十亿个名字', NULL, 4);
INSERT INTO `finished` VALUES (29, 1, '27088083', 'b', '2018-12-27', '西西弗神话', NULL, 5);
INSERT INTO `finished` VALUES (30, 1, '4908885', 'b', '2018-12-18', '局外人', NULL, 5);
INSERT INTO `finished` VALUES (31, 1, '24257152', 'b', '2018-12-18', '堕落', NULL, 4);
INSERT INTO `finished` VALUES (32, 1, '24257229', 'b', '2018-12-18', '鼠疫', NULL, 5);
INSERT INTO `finished` VALUES (33, 1, '3402999', 'b', '2018-12-18', '到灯塔去', NULL, 5);
INSERT INTO `finished` VALUES (34, 1, '4011670', 'b', '2018-12-18', '人间失格', NULL, 4);
INSERT INTO `finished` VALUES (35, 1, '3014444', 'b', '2018-12-18', '自深深处', NULL, 4);
INSERT INTO `finished` VALUES (36, 1, '26295448', 'b', '2018-12-18', '你一生的故事', NULL, 4);
INSERT INTO `finished` VALUES (37, 1, '5312096', 'b', '2018-11-29', '反抗者', NULL, 5);
INSERT INTO `finished` VALUES (38, 1, '1559665', 'b', '2018-11-29', '审判', NULL, 5);
INSERT INTO `finished` VALUES (39, 1, '25849608', 'b', '2018-10-12', '艺术的起源', NULL, 4);
INSERT INTO `finished` VALUES (40, 1, '25796187', 'b', '2018-05-08', '达洛维太太', NULL, 4);
INSERT INTO `finished` VALUES (41, 1, '3815131', 'b', '2018-03-24', '一九八四', NULL, 5);
INSERT INTO `finished` VALUES (42, 1, '1292409', 'b', '2018-01-23', '人生的智慧', NULL, 5);
INSERT INTO `finished` VALUES (43, 1, '25961458', 'b', '2017-12-30', '大问题', NULL, 5);
INSERT INTO `finished` VALUES (44, 1, '27119876', 'b', '2017-11-06', '陪孩子读最美古诗词', NULL, 1);
INSERT INTO `finished` VALUES (45, 1, '26295469', 'b', '2017-07-30', '星形广场', NULL, 3);
INSERT INTO `finished` VALUES (46, 1, '26275031', 'b', '2017-06-11', '美国', NULL, 2);
INSERT INTO `finished` VALUES (47, 1, '10738211', 'b', '2017-06-10', '直到长出青苔', NULL, 5);
INSERT INTO `finished` VALUES (48, 1, '25881376', 'b', '2017-06-05', '人生的枷锁（插图本·上下册）', NULL, 5);
INSERT INTO `finished` VALUES (49, 1, '4012365', 'b', '2017-04-23', '奥瑟罗', NULL, 5);
INSERT INTO `finished` VALUES (50, 1, '26649803', 'b', '2017-04-06', '李尔王', NULL, 5);
INSERT INTO `finished` VALUES (51, 1, '26646728', 'b', '2017-04-02', '哈姆莱特', NULL, 5);
INSERT INTO `finished` VALUES (52, 1, '1062193', 'b', '2017-03-10', '娱乐至死', NULL, 5);
INSERT INTO `finished` VALUES (53, 1, '11535042', 'b', '2017-02-19', '请以你的名字呼唤我', NULL, 5);
INSERT INTO `finished` VALUES (54, 1, '4913064', 'b', '2017-01-04', '活着', NULL, 5);
INSERT INTO `finished` VALUES (55, 1, '6082808', 'b', '2017-01-04', '百年孤独', NULL, 5);
INSERT INTO `finished` VALUES (56, 1, '26110579', 'b', '2015-08-30', '暗店街', NULL, 5);
INSERT INTO `finished` VALUES (57, 1, '1858513', 'b', '2015-05-30', '月亮和六便士', NULL, 5);
INSERT INTO `finished` VALUES (58, 1, '25982254', 'b', '2015-04-17', '大萝卜和难挑的鳄梨', NULL, 5);
INSERT INTO `finished` VALUES (59, 1, '1067570', 'b', '2015-04-17', '夜半撞车', NULL, 4);
INSERT INTO `finished` VALUES (60, 1, '25858680', 'b', '2015-04-17', '二十首情诗和一首绝望的歌', NULL, 5);
INSERT INTO `finished` VALUES (61, 1, '5396845', 'b', '2015-04-17', '刹那', NULL, 5);
INSERT INTO `finished` VALUES (62, 1, '1046265', 'b', '2015-02-20', '挪威的森林', NULL, 5);
INSERT INTO `finished` VALUES (63, 1, '1082154', 'b', '2015-02-20', '活着', NULL, 5);
INSERT INTO `finished` VALUES (64, 1, '1770782', 'b', '2014-09-03', '追风筝的人', NULL, 5);
INSERT INTO `finished` VALUES (65, 1, '1008988', 'b', '2014-08-28', '了不起的盖茨比', NULL, 5);
INSERT INTO `finished` VALUES (66, 1, '3646172', 'b', '2014-08-28', '恶意', NULL, 5);
INSERT INTO `finished` VALUES (67, 1, '3211779', 'b', '2014-08-28', '嫌疑人X的献身', NULL, 4);
INSERT INTO `finished` VALUES (68, 1, '4753783', 'b', '2014-08-28', '分身', NULL, 4);
INSERT INTO `finished` VALUES (69, 1, '5939295', 'b', '2014-08-28', '鸟人计划', NULL, 3);
INSERT INTO `finished` VALUES (70, 1, '6794021', 'b', '2014-08-28', '红手指', NULL, 4);
INSERT INTO `finished` VALUES (71, 1, '5347699', 'b', '2014-08-28', '彷徨之刃', NULL, 4);
INSERT INTO `finished` VALUES (72, 1, '3259440', 'b', '2014-08-28', '白夜行', NULL, 5);
INSERT INTO `finished` VALUES (73, 1, '30209084', 'f', '2020-03-15', '对不起，我们错过了你 / Sorry We Missed You', NULL, 5);
INSERT INTO `finished` VALUES (74, 1, '30142227', 'f', '2020-03-13', '9号秘事 第五季 / Inside No. 9 Season 5', NULL, 4);
INSERT INTO `finished` VALUES (75, 1, '27037053', 'f', '2020-03-13', '夜以继日 / 寝ても覚めても', NULL, 4);
INSERT INTO `finished` VALUES (76, 1, '1293350', 'f', '2020-03-12', '两杆大烟枪 / Lock, Stock and Two Smoking Barrels', NULL, 5);
INSERT INTO `finished` VALUES (77, 1, '26949241', 'f', '2020-03-11', '游戏之夜 / Game Night', NULL, 3);
INSERT INTO `finished` VALUES (78, 1, '1307427', 'f', '2020-03-11', '泳池情杀案 / Swimming Pool', NULL, 4);
INSERT INTO `finished` VALUES (79, 1, '30331959', 'f', '2020-03-09', '黑水 / Dark Waters', NULL, 4);
INSERT INTO `finished` VALUES (80, 1, '3927736', 'f', '2020-03-07', '高材生 / Booksmart', NULL, 3);
INSERT INTO `finished` VALUES (81, 1, '25761178', 'f', '2020-03-06', '百元之恋 / 百円の恋', NULL, 4);
INSERT INTO `finished` VALUES (82, 1, '2078989', 'f', '2020-03-06', '四月三周两天 / 4 luni, 3 săptămâni și 2 zile', NULL, 5);
INSERT INTO `finished` VALUES (83, 1, '1295038', 'f', '2020-03-03', '哈利·波特与魔法石 / Harry Potter and the Sorcerer\'s Stone', NULL, 5);
INSERT INTO `finished` VALUES (84, 1, '1652587', 'f', '2020-03-01', '阿凡达 / Avatar', NULL, 4);
INSERT INTO `finished` VALUES (85, 1, '30402183', 'f', '2020-02-28', '非我所愿 / I Am Not Okay with This', NULL, 4);
INSERT INTO `finished` VALUES (86, 1, '30257175', 'f', '2020-02-27', '燃烧女子的肖像 / Portrait de la jeune fille en feu', NULL, 5);
INSERT INTO `finished` VALUES (87, 1, '25881247', 'f', '2020-02-23', '边境杀手 / Sicario', NULL, 4);
INSERT INTO `finished` VALUES (88, 1, '1301498', 'f', '2020-02-22', '地球之夜 / Night on Earth', NULL, 5);
INSERT INTO `finished` VALUES (89, 1, '30334073', 'f', '2020-02-21', '调音师 / Andhadhun', NULL, 4);
INSERT INTO `finished` VALUES (90, 1, '1293544', 'f', '2020-02-19', '沉默的羔羊 / The Silence of the Lambs', NULL, 5);
INSERT INTO `finished` VALUES (91, 1, '30292777', 'f', '2020-02-17', '阳光普照 / 陽光普照', NULL, 3);
INSERT INTO `finished` VALUES (92, 1, '26581181', 'f', '2020-02-15', '血疫 / The Hot Zone', NULL, 4);
INSERT INTO `finished` VALUES (93, 1, '26961208', 'f', '2020-02-13', '9号秘事 第四季 / Inside No. 9 Season 4', NULL, 5);
INSERT INTO `finished` VALUES (94, 1, '26647711', 'f', '2020-02-13', '9号秘事 第三季 / Inside No. 9 Season 3', NULL, 5);
INSERT INTO `finished` VALUES (95, 1, '26341777', 'f', '2020-02-13', '9号秘事 第二季 / Inside No. 9 Season 2', NULL, 5);
INSERT INTO `finished` VALUES (96, 1, '20452350', 'f', '2020-02-13', '9号秘事 第一季 / Inside No. 9 Season 1', NULL, 5);
INSERT INTO `finished` VALUES (97, 1, '11527487', 'f', '2020-02-12', '弗兰西丝·哈 / Frances Ha', NULL, 5);
INSERT INTO `finished` VALUES (98, 1, '30483380', 'f', '2020-02-12', '世纪末 / Fin de siglo', NULL, 4);
INSERT INTO `finished` VALUES (99, 1, '26348103', 'f', '2020-02-11', '小妇人 / Little Women', NULL, 4);
INSERT INTO `finished` VALUES (100, 1, '26311990', 'f', '2020-02-09', '幸福谷 第二季 / Happy Valley Season 2', NULL, 5);
INSERT INTO `finished` VALUES (101, 1, '25872158', 'f', '2020-02-09', '幸福谷 第一季 / Happy Valley Season 1', NULL, 5);
INSERT INTO `finished` VALUES (102, 1, '30252495', 'f', '2020-02-09', '1917', NULL, 4);
INSERT INTO `finished` VALUES (103, 1, '10432911', 'f', '2020-02-01', '流感 / 감기', NULL, 3);
INSERT INTO `finished` VALUES (104, 1, '1300555', 'f', '2020-01-25', '回到未来 / Back to the Future', NULL, 5);
INSERT INTO `finished` VALUES (105, 1, '3259993', 'f', '2020-01-24', '丧尸乐园 / Zombieland', NULL, 4);
INSERT INTO `finished` VALUES (106, 1, '6875451', 'f', '2020-01-20', '神圣车行 / Holy Motors', NULL, NULL);
INSERT INTO `finished` VALUES (107, 1, '30438115', 'f', '2020-01-18', '性爱自修室 第二季 / Sex Education Season 2', NULL, 5);
INSERT INTO `finished` VALUES (108, 1, '30170546', 'f', '2020-01-08', '乔乔的异想世界 / Jojo Rabbit', NULL, 5);
INSERT INTO `finished` VALUES (109, 1, '26881131', 'f', '2020-01-08', '黑客军团 第三季 / Mr. Robot Season 3', NULL, 4);
INSERT INTO `finished` VALUES (110, 1, '26431328', 'f', '2020-01-08', '黑客军团 第二季 / Mr. Robot Season 2', NULL, 4);
INSERT INTO `finished` VALUES (111, 1, '27605486', 'f', '2020-01-08', '黑客军团 第四季 / Mr. Robot Season 4', NULL, 5);
INSERT INTO `finished` VALUES (112, 1, '26290409', 'f', '2019-12-26', '黑客军团 第一季 / Mr. Robot Season 1', NULL, 4);
INSERT INTO `finished` VALUES (113, 1, '30143336', 'f', '2019-12-21', '灯塔 / The Lighthouse', NULL, 4);
INSERT INTO `finished` VALUES (114, 1, '30486591', 'f', '2019-12-16', '心理测量者3 / PSYCHO-PASS サイコパス 3', NULL, 3);
INSERT INTO `finished` VALUES (115, 1, '30227139', 'f', '2019-12-09', '了不起的麦瑟尔夫人 第三季 / The Marvelous Mrs. Maisel Season 3', NULL, 4);
INSERT INTO `finished` VALUES (116, 1, '27202818', 'f', '2019-12-06', '婚姻故事 / Marriage Story', NULL, 5);
INSERT INTO `finished` VALUES (117, 1, '30272143', 'f', '2019-12-01', '盗梦特攻队 / Ruben Brandt, a gyüjtö', NULL, 4);
INSERT INTO `finished` VALUES (118, 1, '25983865', 'f', '2019-11-30', '守望尘世 第二季 / The Leftovers Season 2', NULL, 4);
INSERT INTO `finished` VALUES (119, 1, '23774557', 'f', '2019-11-30', '守望尘世 第一季 / The Leftovers Season 1', NULL, 4);
INSERT INTO `finished` VALUES (120, 1, '30318116', 'f', '2019-11-29', '利刃出鞘 / Knives Out', NULL, 4);
INSERT INTO `finished` VALUES (121, 1, '6860160', 'f', '2019-11-24', '悲惨世界 / Les Misérables', NULL, 5);
INSERT INTO `finished` VALUES (122, 1, '30399803', 'f', '2019-11-21', '少年犯 第二季 / The Young Offenders Season 2', NULL, 5);
INSERT INTO `finished` VALUES (123, 1, '25722132', 'f', '2019-11-20', '心理测量者 剧场版 / PSYCHO-PASS サイコパス 劇場版', NULL, 4);
INSERT INTO `finished` VALUES (124, 1, '30140761', 'f', '2019-11-19', '政客 第一季 / The Politician Season 1', NULL, 4);
INSERT INTO `finished` VALUES (125, 1, '27119724', 'f', '2019-11-10', '小丑 / Joker', NULL, 5);
INSERT INTO `finished` VALUES (126, 1, '26966712', 'f', '2019-11-06', '弗朗西斯·培根：暴力画笔 / Francis Bacon: A Brush with Violence', NULL, 4);
INSERT INTO `finished` VALUES (127, 1, '27625457', 'f', '2019-11-05', '去他*的世界 第二季 / The End of the F***ing World Season 2', NULL, 3);
INSERT INTO `finished` VALUES (128, 1, '30442251', 'f', '2019-11-02', '粉雄救兵：我们在日本！ / Queer Eye: We\'re in Japan!', NULL, 5);
INSERT INTO `finished` VALUES (129, 1, '30166972', 'f', '2019-10-27', '少年的你', NULL, 4);
INSERT INTO `finished` VALUES (130, 1, '27594856', 'f', '2019-10-20', '金发男子 / Un rubio', NULL, 4);
INSERT INTO `finished` VALUES (131, 1, '30401122', 'f', '2019-10-17', '致命女人 第一季 / Why Women Kill Season 1', NULL, 5);
INSERT INTO `finished` VALUES (132, 1, '1291875', 'f', '2019-10-17', '阳光灿烂的日子', NULL, 5);
INSERT INTO `finished` VALUES (133, 1, '2209573', 'f', '2019-10-10', '贫民窟的百万富翁 / Slumdog Millionaire', NULL, 4);
INSERT INTO `finished` VALUES (134, 1, '30230594', 'f', '2019-10-09', '解释一切 第一季 / Explained Season 1', NULL, 4);
INSERT INTO `finished` VALUES (135, 1, '4845728', 'f', '2019-10-06', '独裁者 / The Dictator', NULL, 3);
INSERT INTO `finished` VALUES (136, 1, '3233761', 'f', '2019-10-04', '宿醉 / The Hangover', NULL, 4);
INSERT INTO `finished` VALUES (137, 1, '4807924', 'f', '2019-10-04', '泰迪熊 / Ted', NULL, 2);
INSERT INTO `finished` VALUES (138, 1, '27053945', 'f', '2019-10-03', '我们 / Us', NULL, 2);
INSERT INTO `finished` VALUES (139, 1, '27047918', 'f', '2019-10-02', '同义词 / Synonymes', NULL, NULL);
INSERT INTO `finished` VALUES (140, 1, '1482072', 'f', '2019-09-27', '穿普拉达的女王 / The Devil Wears Prada', NULL, 4);
INSERT INTO `finished` VALUES (141, 1, '1292286', 'f', '2019-09-24', '我的野蛮女友 / 엽기적인 그녀', NULL, NULL);
INSERT INTO `finished` VALUES (142, 1, '1300299', 'f', '2019-09-21', '杀人回忆 / 살인의 추억', NULL, 5);
INSERT INTO `finished` VALUES (143, 1, '24857863', 'f', '2019-09-13', '心理测量者2 / PSYCHO-PASS サイコパス 2', NULL, 4);
INSERT INTO `finished` VALUES (144, 1, '10569144', 'f', '2019-09-11', '心理测量者 / PSYCHO-PASS サイコパス', NULL, 5);
INSERT INTO `finished` VALUES (145, 1, '30167509', 'f', '2019-09-08', '徒手攀岩 / Free Solo', NULL, 4);
INSERT INTO `finished` VALUES (146, 1, '30337031', 'f', '2019-09-07', '亚当·桑德勒：100%新鲜 / Adam Sandler: 100% Fresh', NULL, 4);
INSERT INTO `finished` VALUES (147, 1, '4845425', 'f', '2019-09-01', '吊带袜天使 / パンティ&ストッキングwithガーターベルト', NULL, 5);
INSERT INTO `finished` VALUES (148, 1, '1292222', 'f', '2019-09-01', '出租车司机 / Taxi Driver', NULL, 4);
INSERT INTO `finished` VALUES (149, 1, '30216753', 'f', '2019-08-25', '真爱不死 第三季 / Santa Clarita Diet Season 3', NULL, 4);
INSERT INTO `finished` VALUES (150, 1, '27007669', 'f', '2019-08-24', '真爱不死 第二季 / Santa Clarita Diet Season 2', NULL, 5);
INSERT INTO `finished` VALUES (151, 1, '26754624', 'f', '2019-08-24', '真爱不死 第一季 / Santa Clarita Diet Season 1', NULL, 3);
INSERT INTO `finished` VALUES (152, 1, '30447400', 'f', '2019-08-23', '富家穷路 第五季 / Schitt\'s Creek Season 5', NULL, 5);
INSERT INTO `finished` VALUES (153, 1, '27666477', 'f', '2019-08-22', '富家穷路 第四季 / Schitt\'s Creek Season 4', NULL, 4);
INSERT INTO `finished` VALUES (154, 1, '26970646', 'f', '2019-08-21', '富家穷路 第三季 / Schitt\'s Creek Season 3', NULL, 5);
INSERT INTO `finished` VALUES (155, 1, '26713776', 'f', '2019-08-21', '富家穷路 第二季 / Schitt\'s Creek Season 2', NULL, 4);
INSERT INTO `finished` VALUES (156, 1, '25840539', 'f', '2019-08-21', '富家穷路 第一季 / Schitt\'s Creek Season 1', NULL, 3);
INSERT INTO `finished` VALUES (157, 1, '27008551', 'f', '2019-08-20', '心灵猎人 第二季 / Mindhunter Season 2', NULL, 5);
INSERT INTO `finished` VALUES (158, 1, '27087724', 'f', '2019-08-17', '好莱坞往事 / Once Upon a Time... in Hollywood', NULL, 4);
INSERT INTO `finished` VALUES (159, 1, '1428175', 'f', '2019-08-13', '血钻 / Blood Diamond', NULL, 4);
INSERT INTO `finished` VALUES (160, 1, '27010768', 'f', '2019-08-08', '寄生虫 / 기생충', NULL, 5);
INSERT INTO `finished` VALUES (161, 1, '30234315', 'f', '2019-08-08', '摄影机不要停！ / カメラを止めるな！', NULL, 4);
INSERT INTO `finished` VALUES (162, 1, '27041242', 'f', '2019-08-03', '摩登家庭 第九季 / Modern Family Season 9', NULL, 4);
INSERT INTO `finished` VALUES (163, 1, '26385630', 'f', '2019-08-03', '摩登家庭 第七季 / Modern Family Season 7', NULL, 5);
INSERT INTO `finished` VALUES (164, 1, '25879091', 'f', '2019-08-03', '摩登家庭 第六季 / Modern Family Season 6', NULL, 5);
INSERT INTO `finished` VALUES (165, 1, '6729121', 'f', '2019-08-03', '摩登家庭  第三季 / Modern Family Season 3', NULL, 5);
INSERT INTO `finished` VALUES (166, 1, '4904662', 'f', '2019-08-03', '摩登家庭 第二季 / Modern Family Season 2', NULL, 5);
INSERT INTO `finished` VALUES (167, 1, '27041245', 'f', '2019-08-03', '摩登家庭 第十季 / Modern Family Season 10', NULL, 5);
INSERT INTO `finished` VALUES (168, 1, '26997983', 'f', '2019-08-02', '姿态 第一季 / Pose Season 1', NULL, 5);
INSERT INTO `finished` VALUES (169, 1, '3095514', 'f', '2019-07-31', '阴风阵阵 / Suspiria', NULL, 2);
INSERT INTO `finished` VALUES (170, 1, '11498785', 'f', '2019-07-28', 'JOJO的奇妙冒险 / ジョジョの奇妙な冒険', NULL, 4);
INSERT INTO `finished` VALUES (171, 1, '30198539', 'f', '2019-07-28', '痛苦与荣耀 / Dolor y gloria', NULL, 5);
INSERT INTO `finished` VALUES (172, 1, '27195401', 'f', '2019-07-23', '大小谎言 第二季 / Big Little Lies Season 2', NULL, 4);
INSERT INTO `finished` VALUES (173, 1, '2010972', 'f', '2019-07-22', '亡命驾驶 / Drive', NULL, 4);
INSERT INTO `finished` VALUES (174, 1, '2163588', 'f', '2019-07-22', '办公室   第三季 / The Office Season 3', NULL, 5);
INSERT INTO `finished` VALUES (175, 1, '34437885', 'f', '2019-07-20', '粉雄救兵 第四季 / Queer Eye Season 4', NULL, 5);
INSERT INTO `finished` VALUES (176, 1, '1304665', 'f', '2019-07-14', 'X圣治 / CURE キュア', NULL, 5);
INSERT INTO `finished` VALUES (177, 1, '1900841', 'f', '2019-07-14', '窃听风暴 / Das Leben der Anderen', NULL, 5);
INSERT INTO `finished` VALUES (178, 1, '27119156', 'f', '2019-07-10', '怪奇物语 第三季 / Stranger Things Season 3', NULL, 5);
INSERT INTO `finished` VALUES (179, 1, '1308892', 'f', '2019-06-26', '新世纪福音战士剧场版：Air/真心为你 / 新世紀エヴァンゲリオン劇...', NULL, 5);
INSERT INTO `finished` VALUES (180, 1, '2567646', 'f', '2019-06-26', '福音战士新剧场版：破 / ヱヴァンゲリヲン新劇場版：破', NULL, 5);
INSERT INTO `finished` VALUES (181, 1, '27141014', 'f', '2019-06-22', '银翼杀手：2022黑暗浩劫 / Blade Runner: Black Out 2022', NULL, 4);
INSERT INTO `finished` VALUES (182, 1, '33460998', 'f', '2019-06-16', '我们今后的故事 / Stories from Our Future', NULL, 4);
INSERT INTO `finished` VALUES (183, 1, '2159568', 'f', '2019-06-15', '办公室   第二季 / The Office Season 2', NULL, 4);
INSERT INTO `finished` VALUES (184, 1, '30161936', 'f', '2019-06-07', '黑镜 第五季 / Black Mirror Season 5', NULL, 4);
INSERT INTO `finished` VALUES (185, 1, '27098632', 'f', '2019-06-05', '切尔诺贝利 / Chernobyl', NULL, 5);
INSERT INTO `finished` VALUES (186, 1, '30198838', 'f', '2019-05-31', '杀死伊芙 第二季 / Killing Eve Season 2', NULL, 4);
INSERT INTO `finished` VALUES (187, 1, '26276364', 'f', '2019-05-21', '女巫 / The VVitch: A New-England Folktale', NULL, 4);
INSERT INTO `finished` VALUES (188, 1, '25958717', 'f', '2019-05-19', '海蒂和爷爷 / Heidi', NULL, 4);
INSERT INTO `finished` VALUES (189, 1, '30307228', 'f', '2019-05-16', '绑定 第一季 / Bonding Season 1', NULL, 4);
INSERT INTO `finished` VALUES (190, 1, '26835471', 'f', '2019-05-12', '大侦探皮卡丘 / Pokémon Detective Pikachu', NULL, 2);
INSERT INTO `finished` VALUES (191, 1, '27594217', 'f', '2019-05-09', '性爱自修室 第一季 / Sex Education Season 1', NULL, 5);
INSERT INTO `finished` VALUES (192, 1, '30443773', 'f', '2019-05-08', '我们一家人 / All in My Family', NULL, 4);
INSERT INTO `finished` VALUES (193, 1, '30170448', 'f', '2019-05-01', '何以为家 / كفرناحوم', NULL, 5);
INSERT INTO `finished` VALUES (194, 1, '30156023', 'f', '2019-04-30', '大叔之爱 第一季 / おっさんずラブ', NULL, 4);
INSERT INTO `finished` VALUES (195, 1, '3066739', 'f', '2019-04-27', '钢铁侠2 / Iron Man 2', NULL, NULL);
INSERT INTO `finished` VALUES (196, 1, '26100958', 'f', '2019-04-25', '复仇者联盟4：终局之战 / Avengers: Endgame', NULL, 5);
INSERT INTO `finished` VALUES (197, 1, '27053768', 'f', '2019-04-09', '伦敦生活 第二季 / Fleabag Season 2', NULL, 4);
INSERT INTO `finished` VALUES (198, 1, '4280102', 'f', '2019-04-07', '能召回前世的布米叔叔 / ลุงบุญมีร...', NULL, 5);
INSERT INTO `finished` VALUES (199, 1, '26728669', 'f', '2019-04-04', '风中有朵雨做的云', NULL, 4);
INSERT INTO `finished` VALUES (200, 1, '26677934', 'f', '2019-03-31', '灵能百分百 / モブサイコ100', NULL, 4);
INSERT INTO `finished` VALUES (201, 1, '30331149', 'f', '2019-03-26', '白蛇：缘起', NULL, 3);
INSERT INTO `finished` VALUES (202, 1, '26715636', 'f', '2019-03-22', '地久天长', NULL, 4);
INSERT INTO `finished` VALUES (203, 1, '30424374', 'f', '2019-03-20', '爱，死亡和机器人 第一季 / Love, Death & Robots Season 1', NULL, 4);
INSERT INTO `finished` VALUES (204, 1, '30272423', 'f', '2019-03-17', '粉雄救兵 第三季 / Queer Eye Season 3', NULL, 5);
INSERT INTO `finished` VALUES (205, 1, '27191431', 'f', '2019-03-15', '过春天', NULL, 4);
INSERT INTO `finished` VALUES (206, 1, '30414707', 'f', '2019-03-14', '少年犯圣诞特辑 / The Young Offenders  Christmas Special', NULL, 3);
INSERT INTO `finished` VALUES (207, 1, '26213252', 'f', '2019-03-09', '惊奇队长 / Captain Marvel', NULL, 3);
INSERT INTO `finished` VALUES (208, 1, '24751154', 'f', '2019-03-08', '罗尼和我 / Ronny & I', NULL, 4);
INSERT INTO `finished` VALUES (209, 1, '26838164', 'f', '2019-03-07', '伦敦生活 第一季 / Fleabag Season 1', NULL, 4);
INSERT INTO `finished` VALUES (210, 1, '3026559', 'f', '2019-03-04', '登月第一人 / First Man', NULL, 4);
INSERT INTO `finished` VALUES (211, 1, '27060077', 'f', '2019-03-01', '绿皮书 / Green Book', NULL, 3);
INSERT INTO `finished` VALUES (212, 1, '30433802', 'f', '2019-02-27', '月事革命 / Period. End of Sentence.', NULL, 4);
INSERT INTO `finished` VALUES (213, 1, '27624787', 'f', '2019-02-27', '肤色 / Skin', NULL, 4);
INSERT INTO `finished` VALUES (214, 1, '27006232', 'f', '2019-02-26', '真探 第三季 / True Detective Season 3', NULL, 5);
INSERT INTO `finished` VALUES (215, 1, '3908423', 'f', '2019-02-25', '夏日大作战 / サマーウォーズ', NULL, 4);
INSERT INTO `finished` VALUES (216, 1, '10529476', 'f', '2019-02-23', '办公室 第一季 / The Office Season 1', NULL, 4);
INSERT INTO `finished` VALUES (217, 1, '1302467', 'f', '2019-02-20', '黑客帝国3：矩阵革命 / The Matrix Revolutions', NULL, 4);
INSERT INTO `finished` VALUES (218, 1, '1304141', 'f', '2019-02-20', '黑客帝国2：重装上阵 / The Matrix Reloaded', NULL, 4);
INSERT INTO `finished` VALUES (219, 1, '1291843', 'f', '2019-02-20', '黑客帝国 / The Matrix', NULL, 5);
INSERT INTO `finished` VALUES (220, 1, '21937445', 'f', '2019-02-19', '辩护人 / 변호인', NULL, 5);
INSERT INTO `finished` VALUES (221, 1, '1292215', 'f', '2019-02-19', '天使爱美丽 / Le fabuleux destin d\'Amélie Poulain', NULL, 5);
INSERT INTO `finished` VALUES (222, 1, '1291992', 'f', '2019-02-19', '末路狂花 / Thelma & Louise', NULL, 5);
INSERT INTO `finished` VALUES (223, 1, '27113189', 'f', '2019-02-18', '柯明斯基理论 第一季 / The Kominsky Method Season 1', NULL, 4);
INSERT INTO `finished` VALUES (224, 1, '1291878', 'f', '2019-02-17', '不良教育 / La mala educación', NULL, 5);
INSERT INTO `finished` VALUES (225, 1, '26809592', 'f', '2019-02-17', '魅影缝匠 / Phantom Thread', NULL, 3);
INSERT INTO `finished` VALUES (226, 1, '24870808', 'f', '2019-02-17', '修女艾达 / Ida', NULL, 4);
INSERT INTO `finished` VALUES (227, 1, '26628282', 'f', '2019-02-17', '宠儿 / The Favourite', NULL, 4);
INSERT INTO `finished` VALUES (228, 1, '27038857', 'f', '2019-02-15', '英国式丑闻 第一季 / A Very English Scandal Season 1', NULL, 3);
INSERT INTO `finished` VALUES (229, 1, '1299080', 'f', '2019-02-15', '后窗 / Rear Window', NULL, 5);
INSERT INTO `finished` VALUES (230, 1, '1308865', 'f', '2019-02-14', '老男孩 / 올드보이', NULL, 5);
INSERT INTO `finished` VALUES (231, 1, '1293181', 'f', '2019-02-12', '惊魂记 / Psycho', NULL, 5);
INSERT INTO `finished` VALUES (232, 1, '27668245', 'f', '2019-02-11', '女继承者 / Las herederas', NULL, 5);
INSERT INTO `finished` VALUES (233, 1, '27119586', 'f', '2019-02-11', '谁先爱上他的 / 誰先愛上他的', NULL, 4);
INSERT INTO `finished` VALUES (234, 1, '26266893', 'f', '2019-02-11', '流浪地球', NULL, 1);
INSERT INTO `finished` VALUES (235, 1, '30286112', 'f', '2019-01-30', '乔纳斯 / Jonas', NULL, 3);
INSERT INTO `finished` VALUES (236, 1, '25941626', 'f', '2019-01-28', '黄瓜 / Cucumber', NULL, 5);
INSERT INTO `finished` VALUES (237, 1, '30197496', 'f', '2019-01-28', '野性 / Sauvage', NULL, 3);
INSERT INTO `finished` VALUES (238, 1, '26683287', 'f', '2019-01-27', '刺心 / Un couteau dans le cœur', NULL, 3);
INSERT INTO `finished` VALUES (239, 1, '26979199', 'f', '2019-01-26', '喜欢，轻吻，快跑 / Plaire, aimer et courir vite', NULL, 4);
INSERT INTO `finished` VALUES (240, 1, '26857109', 'f', '2019-01-26', '同行 第二季 / Gaycation Season 2', NULL, 4);
INSERT INTO `finished` VALUES (241, 1, '25749950', 'f', '2019-01-26', '柜外 / Stephen Fry: Out There', NULL, 5);
INSERT INTO `finished` VALUES (242, 1, '26717015', 'f', '2019-01-26', '同行 第一季 / Gaycation Season 1', NULL, 4);
INSERT INTO `finished` VALUES (243, 1, '5300054', 'f', '2019-01-26', '波西米亚狂想曲 / Bohemian Rhapsody', NULL, 4);
INSERT INTO `finished` VALUES (244, 1, '26416569', 'f', '2019-01-25', '出柜第4格 / Fourth Man Out', NULL, 4);
INSERT INTO `finished` VALUES (245, 1, '5156574', 'f', '2019-01-24', '再过四年 / Fyra år till', NULL, 4);
INSERT INTO `finished` VALUES (246, 1, '27172891', 'f', '2019-01-21', '大象席地而坐', NULL, 3);
INSERT INTO `finished` VALUES (247, 1, '27163287', 'f', '2019-01-20', '贴身保镖 / Bodyguard', NULL, 4);
INSERT INTO `finished` VALUES (248, 1, '10571509', 'f', '2019-01-18', '如父如子 / そして父になる', NULL, 5);
INSERT INTO `finished` VALUES (249, 1, '26374197', 'f', '2019-01-16', '蜘蛛侠：平行宇宙 / Spider-Man: Into the Spider-Verse', NULL, 4);
INSERT INTO `finished` VALUES (250, 1, '27191492', 'f', '2019-01-11', '四个春天', NULL, 4);
INSERT INTO `finished` VALUES (251, 1, '26633257', 'f', '2018-12-31', '地球最后的夜晚', NULL, 5);
INSERT INTO `finished` VALUES (252, 1, '30414462', 'f', '2018-12-27', '黑镜：潘达斯奈基 / Black Mirror: Bandersnatch', NULL, 4);
INSERT INTO `finished` VALUES (253, 1, '3025669', 'f', '2018-12-26', '迷失Z城 / The Lost City of Z', NULL, 4);
INSERT INTO `finished` VALUES (254, 1, '26410683', 'f', '2018-12-24', '赛马皮特 / Lean on Pete', NULL, 4);
INSERT INTO `finished` VALUES (255, 1, '30183785', 'f', '2018-12-23', '我是大哥大 / 今日から俺は！！', NULL, 5);
INSERT INTO `finished` VALUES (256, 1, '1950330', 'f', '2018-12-22', '罗马 / Roma', NULL, 5);
INSERT INTO `finished` VALUES (257, 1, '26894602', 'f', '2018-12-20', '冷战 / Zimna wojna', NULL, 4);
INSERT INTO `finished` VALUES (258, 1, '27016555', 'f', '2018-12-19', '了不起的麦瑟尔夫人 第二季 / The Marvelous Mrs. Maisel Season 2', NULL, 4);
INSERT INTO `finished` VALUES (259, 1, '1866473', 'f', '2018-12-16', '蚁人 / Ant-Man', NULL, NULL);
INSERT INTO `finished` VALUES (260, 1, '1432146', 'f', '2018-12-16', '钢铁侠 / Iron Man', NULL, NULL);
INSERT INTO `finished` VALUES (261, 1, '25821634', 'f', '2018-12-16', '雷神3：诸神黄昏 / Thor: Ragnarok', NULL, NULL);
INSERT INTO `finished` VALUES (262, 1, '25758898', 'f', '2018-12-16', '极品基老伴：2013圣诞特辑 / Vicious Christmas Special 2013', NULL, NULL);
INSERT INTO `finished` VALUES (263, 1, '30361134', 'f', '2018-12-16', '9号秘事 万圣节特别篇 / Inside No. 9  Dead Line', NULL, NULL);
INSERT INTO `finished` VALUES (264, 1, '3878007', 'f', '2018-12-08', '海王 / Aquaman', NULL, 3);
INSERT INTO `finished` VALUES (265, 1, '20438964', 'f', '2018-12-08', '无敌破坏王2：大闹互联网 / Ralph Breaks the Internet', NULL, 3);
INSERT INTO `finished` VALUES (266, 1, '26147417', 'f', '2018-11-16', '神奇动物：格林德沃之罪 / Fantastic Beasts: The Crimes of Grind...', NULL, 3);
INSERT INTO `finished` VALUES (267, 1, '3168101', 'f', '2018-11-14', '毒液：致命守护者 / Venom', NULL, 3);
INSERT INTO `finished` VALUES (268, 1, '1353745', 'f', '2018-10-26', '精疲力尽 / À bout de souffle', NULL, 5);
INSERT INTO `finished` VALUES (269, 1, '27615441', 'f', '2018-10-26', '网络谜踪 / Searching', NULL, 3);
INSERT INTO `finished` VALUES (270, 1, '27059130', 'f', '2018-10-24', '大佛普拉斯', NULL, 5);
INSERT INTO `finished` VALUES (271, 1, '25855071', 'f', '2018-10-21', '初恋这首情歌 / Sing Street', NULL, 4);
INSERT INTO `finished` VALUES (272, 1, '19965431', 'f', '2018-10-19', '圣哥传 / 聖☆おにいさん', NULL, 5);
INSERT INTO `finished` VALUES (273, 1, '26997470', 'f', '2018-10-08', '恶魔人：哭泣之子 / Devilman: Crybaby', NULL, 5);
INSERT INTO `finished` VALUES (274, 1, '1292444', 'f', '2018-10-06', '大逃杀 / バトル・ロワイアル', NULL, 3);
INSERT INTO `finished` VALUES (275, 1, '4864908', 'f', '2018-09-30', '影', NULL, 4);
INSERT INTO `finished` VALUES (276, 1, '25814705', 'f', '2018-09-29', '小森林 夏秋篇 / リトル・フォレスト 夏・秋', NULL, 2);
INSERT INTO `finished` VALUES (277, 1, '25814707', 'f', '2018-09-29', '小森林 冬春篇 / リトル・フォレスト 冬・春', NULL, 2);
INSERT INTO `finished` VALUES (278, 1, '26753904', 'f', '2018-09-22', '疯子 / Maniac', NULL, 5);
INSERT INTO `finished` VALUES (279, 1, '26972258', 'f', '2018-09-21', '江湖儿女', NULL, 3);
INSERT INTO `finished` VALUES (280, 1, '26813221', 'f', '2018-09-20', '了不起的麦瑟尔夫人 第一季 / The Marvelous Mrs. Maisel Season 1', NULL, 4);
INSERT INTO `finished` VALUES (281, 1, '27072795', 'f', '2018-09-18', '幸福的拉扎罗 / Lazzaro felice', NULL, 4);
INSERT INTO `finished` VALUES (282, 1, '27149382', 'f', '2018-09-16', '马男波杰克 第五季 / BoJack Horseman Season 5', NULL, 4);
INSERT INTO `finished` VALUES (283, 1, '27012772', 'f', '2018-09-15', '骑士 / The Rider', NULL, 4);
INSERT INTO `finished` VALUES (284, 1, '30162520', 'f', '2018-09-14', '盛夏 / Лето', NULL, 3);
INSERT INTO `finished` VALUES (285, 1, '1302770', 'f', '2018-09-09', '阿基拉 / Akira', NULL, 4);
INSERT INTO `finished` VALUES (286, 1, '27621727', 'f', '2018-09-07', '遗传厄运 / Hereditary', NULL, 4);
INSERT INTO `finished` VALUES (287, 1, '1457573', 'f', '2018-09-07', '新世纪福音战士 / 新世紀エヴァンゲリオン', NULL, 5);
INSERT INTO `finished` VALUES (288, 1, '1292337', 'f', '2018-09-04', '无人知晓 / 誰も知らない', NULL, 5);
INSERT INTO `finished` VALUES (289, 1, '24869254', 'f', '2018-09-03', '奥丽芙·基特里奇 / Olive Kitteridge', NULL, 4);
INSERT INTO `finished` VALUES (290, 1, '26754513', 'f', '2018-08-31', '人生密密缝 / 彼らが本気で編むときは、', NULL, 3);
INSERT INTO `finished` VALUES (291, 1, '1291818', 'f', '2018-08-31', '饮食男女 / 飲食男女', NULL, 5);
INSERT INTO `finished` VALUES (292, 1, '1303037', 'f', '2018-08-30', '喜宴 / 囍宴', NULL, 5);
INSERT INTO `finished` VALUES (293, 1, '26588308', 'f', '2018-08-30', '死侍2：我爱我家 / Deadpool 2', NULL, 3);
INSERT INTO `finished` VALUES (294, 1, '26636712', 'f', '2018-08-30', '蚁人2：黄蜂女现身 / Ant-Man and the Wasp', NULL, 3);
INSERT INTO `finished` VALUES (295, 1, '30145148', 'f', '2018-08-30', '少年犯 第一季 / The Young Offenders Season 1', NULL, 4);
INSERT INTO `finished` VALUES (296, 1, '26929023', 'f', '2018-08-30', '梦呓雨林 / Sueño en otro idioma', NULL, 3);
INSERT INTO `finished` VALUES (297, 1, '26654498', 'f', '2018-08-29', '爱你，西蒙 / Love, Simon', NULL, 4);
INSERT INTO `finished` VALUES (298, 1, '1431615', 'f', '2018-08-18', '攻壳机动队 第一季 / 攻殻機動隊 STAND ALONE COMPLEX', NULL, 5);
INSERT INTO `finished` VALUES (299, 1, '1460947', 'f', '2018-08-18', '攻壳机动队 第二季 / 攻殻機動隊 S.A.C. 2nd GIG', NULL, 5);
INSERT INTO `finished` VALUES (300, 1, '1291566', 'f', '2018-08-18', '攻壳机动队2：无罪 / 攻殻機動隊2 イノセンス', NULL, 5);
INSERT INTO `finished` VALUES (301, 1, '1291936', 'f', '2018-08-18', '攻壳机动队 / 攻殻機動隊', NULL, 5);
INSERT INTO `finished` VALUES (302, 1, '27622447', 'f', '2018-08-05', '小偷家族 / 万引き家族', NULL, 5);
INSERT INTO `finished` VALUES (303, 1, '2567647', 'f', '2018-07-24', '福音战士新剧场版：Q / ヱヴァンゲリヲン新劇場版：Q', NULL, 5);
INSERT INTO `finished` VALUES (304, 1, '1292211', 'f', '2018-07-16', '对她说 / Hable con ella', NULL, 5);
INSERT INTO `finished` VALUES (305, 1, '1291937', 'f', '2018-07-08', '关于我母亲的一切 / Todo sobre mi madre', NULL, 5);
INSERT INTO `finished` VALUES (306, 1, '20470074', 'f', '2018-07-07', '言叶之庭 / 言の葉の庭', NULL, 3);
INSERT INTO `finished` VALUES (307, 1, '1767042', 'f', '2018-07-01', '潘神的迷宫 / El laberinto del fauno', NULL, 5);
INSERT INTO `finished` VALUES (308, 1, '26915602', 'f', '2018-06-28', '杀死伊芙 第一季 / Killing Eve Season 1', NULL, 3);
INSERT INTO `finished` VALUES (309, 1, '26887174', 'f', '2018-06-27', '西部世界 第二季 / Westworld Season 2', NULL, 5);
INSERT INTO `finished` VALUES (310, 1, '1305690', 'f', '2018-06-25', '阿飞正传 / 阿飛正傳', NULL, 5);
INSERT INTO `finished` VALUES (311, 1, '27113517', 'f', '2018-06-22', '血观音 / 血觀音', NULL, 5);
INSERT INTO `finished` VALUES (312, 1, '30180156', 'f', '2018-06-18', '粉雄救兵 第二季 / Queer Eye Season 2', NULL, 5);
INSERT INTO `finished` VALUES (313, 1, '26919092', 'f', '2018-06-11', '亚特兰大 第二季 / Atlanta Season 2', NULL, 4);
INSERT INTO `finished` VALUES (314, 1, '24773958', 'f', '2018-06-10', '复仇者联盟3：无限战争 / Avengers: Infinity War', NULL, 4);
INSERT INTO `finished` VALUES (315, 1, '26842702', 'f', '2018-06-10', '燃烧 / 버닝', NULL, 5);
INSERT INTO `finished` VALUES (316, 1, '27040774', 'f', '2018-06-10', '超感猎杀：完结特别篇 / Sense8 Finale Special', NULL, 5);
INSERT INTO `finished` VALUES (317, 1, '21360417', 'f', '2018-06-04', '恐怖直播 / 더 테러 라이브', NULL, 4);
INSERT INTO `finished` VALUES (318, 1, '27032347', 'f', '2018-06-02', '十三个原因 第二季 / 13 Reasons Why Season 2', NULL, 4);
INSERT INTO `finished` VALUES (319, 1, '26322774', 'f', '2018-05-30', '纯洁心灵·逐梦演艺圈', NULL, 1);
INSERT INTO `finished` VALUES (320, 1, '26997663', 'f', '2018-05-19', '寂静之地 / A Quiet Place', NULL, 4);
INSERT INTO `finished` VALUES (321, 1, '1305487', 'f', '2018-05-01', '猫鼠游戏 / Catch Me If You Can', NULL, 4);
INSERT INTO `finished` VALUES (322, 1, '1297359', 'f', '2018-05-01', '幽灵公主 / もののけ姫', NULL, 5);
INSERT INTO `finished` VALUES (323, 1, '1787291', 'f', '2018-04-30', '被嫌弃的松子的一生 / 嫌われ松子の一生', NULL, 4);
INSERT INTO `finished` VALUES (324, 1, '26784967', 'f', '2018-04-28', '使女的故事 第一季 / The Handmaid\'s Tale Season 1', NULL, 4);
INSERT INTO `finished` VALUES (325, 1, '26640371', 'f', '2018-04-22', '犬之岛 / Isle of Dogs', NULL, 4);
INSERT INTO `finished` VALUES (326, 1, '26384741', 'f', '2018-04-13', '湮灭 / Annihilation', NULL, 3);
INSERT INTO `finished` VALUES (327, 1, '4920389', 'f', '2018-03-31', '头号玩家 / Ready Player One', NULL, 4);
INSERT INTO `finished` VALUES (328, 1, '26417192', 'f', '2018-03-24', '亚特兰大 第一季 / Atlanta Season 1', NULL, 4);
INSERT INTO `finished` VALUES (329, 1, '6390825', 'f', '2018-03-10', '黑豹 / Black Panther', NULL, 3);
INSERT INTO `finished` VALUES (330, 1, '1291858', 'f', '2018-03-04', '鬼子来了', NULL, 5);
INSERT INTO `finished` VALUES (331, 1, '26799731', 'f', '2018-03-01', '请以你的名字呼唤我 / Call Me by Your Name', NULL, 5);
INSERT INTO `finished` VALUES (332, 1, '10535568', 'f', '2018-03-01', '阿黛尔的生活 / La vie d\'Adèle', NULL, 4);
INSERT INTO `finished` VALUES (333, 1, '26344688', 'f', '2018-02-28', '同级生 / 同級生', NULL, 4);
INSERT INTO `finished` VALUES (334, 1, '1303535', 'f', '2018-02-28', '战场上的快乐圣诞 / Merry Christmas Mr. Lawrence', NULL, 3);
INSERT INTO `finished` VALUES (335, 1, '26781703', 'f', '2018-02-27', '上帝之国 / God\'s Own Country', NULL, 4);
INSERT INTO `finished` VALUES (336, 1, '1293456', 'f', '2018-02-27', '莫里斯 / Maurice', NULL, 5);
INSERT INTO `finished` VALUES (337, 1, '26610229', 'f', '2018-02-26', '方形 / The Square', NULL, 4);
INSERT INTO `finished` VALUES (338, 1, '26746559', 'f', '2018-02-24', '每分钟120击 / 120 battements par minute', NULL, 5);
INSERT INTO `finished` VALUES (339, 1, '26752852', 'f', '2018-02-24', '水形物语 / The Shape of Water', NULL, 5);
INSERT INTO `finished` VALUES (340, 1, '26964443', 'f', '2018-02-11', '粉雄救兵 第一季 / Queer Eye Season 1', NULL, 5);
INSERT INTO `finished` VALUES (341, 1, '26778790', 'f', '2018-02-07', '佛罗里达乐园 / The Florida Project', NULL, 4);
INSERT INTO `finished` VALUES (342, 1, '21941804', 'f', '2018-01-26', '白日焰火', NULL, 3);
INSERT INTO `finished` VALUES (343, 1, '26659459', 'f', '2018-01-15', '分手后 第二季 / The Outs Season 2', NULL, 3);
INSERT INTO `finished` VALUES (344, 1, '10767494', 'f', '2018-01-15', '分手后 第一季 / The Outs Season 1', NULL, 4);
INSERT INTO `finished` VALUES (345, 1, '26954003', 'f', '2018-01-12', '大世界', NULL, 3);
INSERT INTO `finished` VALUES (346, 1, '26611804', 'f', '2018-01-10', '三块广告牌 / Three Billboards Outside Ebbing, Missouri', NULL, 4);
INSERT INTO `finished` VALUES (347, 1, '26724989', 'f', '2018-01-07', '圣鹿之死 / The Killing of a Sacred Deer', NULL, 3);
INSERT INTO `finished` VALUES (348, 1, '3604148', 'f', '2018-01-02', '小丑回魂 / It', NULL, 3);
INSERT INTO `finished` VALUES (349, 1, '26588314', 'f', '2018-01-01', '伯德小姐 / Lady Bird', NULL, 5);
INSERT INTO `finished` VALUES (350, 1, '26898192', 'f', '2018-01-01', '黑镜 第四季 / Black Mirror Season 4', NULL, 3);
INSERT INTO `finished` VALUES (351, 1, '26844922', 'f', '2017-12-31', '杰出公民 / El ciudadano ilustre', NULL, 5);
INSERT INTO `finished` VALUES (352, 1, '26764928', 'f', '2017-12-25', '脸庞，村庄 / Visages villages', NULL, 4);
INSERT INTO `finished` VALUES (353, 1, '5350027', 'f', '2017-12-23', '妖猫传', NULL, 4);
INSERT INTO `finished` VALUES (354, 1, '10576419', 'f', '2017-12-16', '蓝色茉莉 / Blue Jasmine', NULL, 3);
INSERT INTO `finished` VALUES (355, 1, '26935675', 'f', '2017-12-11', '肉与灵 / Teströl és lélekröl', NULL, 3);
INSERT INTO `finished` VALUES (356, 1, '25837262', 'f', '2017-12-09', '至爱梵高·星空之谜 / Loving Vincent', NULL, 4);
INSERT INTO `finished` VALUES (357, 1, '26892546', 'f', '2017-12-04', '双面情人 / L\'amant double', NULL, 4);
INSERT INTO `finished` VALUES (358, 1, '26528871', 'f', '2017-12-03', '好时光 / Good Time', NULL, 3);
INSERT INTO `finished` VALUES (359, 1, '2158490', 'f', '2017-12-02', '正义联盟 / Justice League', NULL, 3);
INSERT INTO `finished` VALUES (360, 1, '27019527', 'f', '2017-11-25', '嘉年华', NULL, 4);
INSERT INTO `finished` VALUES (361, 1, '26657126', 'f', '2017-11-21', '不成问题的问题', NULL, 5);
INSERT INTO `finished` VALUES (362, 1, '27032266', 'f', '2017-11-19', '酷儿们 / Queers', NULL, 5);
INSERT INTO `finished` VALUES (363, 1, '27031389', 'f', '2017-11-19', '去他*的世界 第一季 / The End of the F***ing World Season 1', NULL, 4);
INSERT INTO `finished` VALUES (364, 1, '25790761', 'f', '2017-11-14', '东方快车谋杀案 / Murder on the Orient Express', NULL, 3);
INSERT INTO `finished` VALUES (365, 1, '26935251', 'f', '2017-11-12', '春宵苦短，少女前进吧！ / 夜は短し歩けよ乙女', NULL, 4);
INSERT INTO `finished` VALUES (366, 1, '26844438', 'f', '2017-11-04', '怪奇物语 第二季 / Stranger Things Season 2', NULL, 4);
INSERT INTO `finished` VALUES (367, 1, '26691486', 'f', '2017-10-29', '心灵猎人 第一季 / Mindhunter Season 1', NULL, 5);
INSERT INTO `finished` VALUES (368, 1, '10512661', 'f', '2017-10-28', '银翼杀手2049 / Blade Runner 2049', NULL, 5);
INSERT INTO `finished` VALUES (369, 1, '27024903', 'f', '2017-10-15', '天才枪手 / ฉลาดเกมส์โกง', NULL, 4);
INSERT INTO `finished` VALUES (370, 1, '1291839', 'f', '2017-10-08', '银翼杀手 / Blade Runner', NULL, 5);
INSERT INTO `finished` VALUES (371, 1, '25885410', 'f', '2017-10-04', '初来乍到 第一季 / Fresh Off The Boat Season 1', NULL, 4);
INSERT INTO `finished` VALUES (372, 1, '25953429', 'f', '2017-10-04', '大小谎言 第一季 / Big Little Lies Season 1', NULL, 5);
INSERT INTO `finished` VALUES (373, 1, '26920017', 'f', '2017-10-01', '鬼魅浮生 / A Ghost Story', NULL, 3);
INSERT INTO `finished` VALUES (374, 1, '25723583', 'f', '2017-10-01', '英伦对决 / The Foreigner', NULL, 2);
INSERT INTO `finished` VALUES (375, 1, '27120369', 'f', '2017-09-27', '嘎嘎：五尺二寸 / GAGA: Five Foot Two', NULL, 5);
INSERT INTO `finished` VALUES (376, 1, '26679188', 'f', '2017-09-23', '天梯：蔡国强的艺术', NULL, 4);
INSERT INTO `finished` VALUES (377, 1, '26842335', 'f', '2017-09-21', '马男波杰克 第四季 / BoJack Horseman Season 4', NULL, 5);
INSERT INTO `finished` VALUES (378, 1, '26694988', 'f', '2017-09-16', '比海更深 / 海よりもまだ深く', NULL, 5);
INSERT INTO `finished` VALUES (379, 1, '6284624', 'f', '2017-09-10', '十三个原因 第一季 / 13 Reasons Why Season 1', NULL, 5);
INSERT INTO `finished` VALUES (380, 1, '24753477', 'f', '2017-09-09', '蜘蛛侠：英雄归来 / Spider-Man: Homecoming', NULL, 3);
INSERT INTO `finished` VALUES (381, 1, '1388216', 'f', '2017-09-08', '撞车 / Crash', NULL, 5);
INSERT INTO `finished` VALUES (382, 1, '24750126', 'f', '2017-09-08', '荒蛮故事 / Relatos salvajes', NULL, 5);
INSERT INTO `finished` VALUES (383, 1, '26292143', 'f', '2017-09-07', '纽约灾星 / The Jinx: The Life and Deaths of Robert Durst', NULL, 5);
INSERT INTO `finished` VALUES (384, 1, '26683900', 'f', '2017-09-06', '守望尘世 第三季 / The Leftovers Season 3', NULL, 5);
INSERT INTO `finished` VALUES (385, 1, '24845107', 'f', '2017-09-03', '暗芝居 第一季 / 闇芝居 第1期', NULL, 4);
INSERT INTO `finished` VALUES (386, 1, '6126502', 'f', '2017-09-03', '未来日记 / 未来日記', NULL, 4);
INSERT INTO `finished` VALUES (387, 1, '10001418', 'f', '2017-09-03', '冰菓 / 氷菓', NULL, 4);
INSERT INTO `finished` VALUES (388, 1, '4925398', 'f', '2017-09-03', '命运石之门 / STEINS;GATE', NULL, 5);
INSERT INTO `finished` VALUES (389, 1, '1857099', 'f', '2017-09-03', '老无所依 / No Country for Old Men', NULL, 4);
INSERT INTO `finished` VALUES (390, 1, '1292233', 'f', '2017-09-02', '发条橙 / A Clockwork Orange', NULL, 5);
INSERT INTO `finished` VALUES (391, 1, '4798707', 'f', '2017-08-29', '爱 / Amour', NULL, 4);
INSERT INTO `finished` VALUES (392, 1, '1416435', 'f', '2017-08-28', '破碎之花 / Broken Flowers', NULL, 4);
INSERT INTO `finished` VALUES (393, 1, '1292225', 'f', '2017-08-27', '闪灵 / The Shining', NULL, 5);
INSERT INTO `finished` VALUES (394, 1, '2043546', 'f', '2017-08-25', '秒速5厘米 / 秒速5センチメートル', NULL, 5);
INSERT INTO `finished` VALUES (395, 1, '1308575', 'f', '2017-08-24', '蓝色大门 / 藍色大門', NULL, 4);
INSERT INTO `finished` VALUES (396, 1, '26430107', 'f', '2017-08-15', '二十二', NULL, 4);
INSERT INTO `finished` VALUES (397, 1, '6872273', 'f', '2017-08-14', '盲探', NULL, 3);
INSERT INTO `finished` VALUES (398, 1, '1427500', 'f', '2017-08-11', '同志亦凡人 第一季 / Queer as Folk Season 1', NULL, 5);
INSERT INTO `finished` VALUES (399, 1, '26837905', 'f', '2017-08-10', '橘衫男子 / Man in an Orange Shirt', NULL, 3);
INSERT INTO `finished` VALUES (400, 1, '26337866', 'f', '2017-08-10', '路边野餐', NULL, 5);
INSERT INTO `finished` VALUES (401, 1, '6845667', 'f', '2017-08-03', '秘密特工 / The Man from U.N.C.L.E.', NULL, 4);
INSERT INTO `finished` VALUES (402, 1, '5360889', 'f', '2017-08-01', '月升王国 / Moonrise Kingdom', NULL, 5);
INSERT INTO `finished` VALUES (403, 1, '26363254', 'f', '2017-07-31', '战狼2', NULL, 1);
INSERT INTO `finished` VALUES (404, 1, '1306454', 'f', '2017-07-31', '烈焰焚币 / Plata quemada', NULL, 3);
INSERT INTO `finished` VALUES (405, 1, '26918285', 'f', '2017-07-27', '无所畏惧 / Fearless', NULL, 5);
INSERT INTO `finished` VALUES (406, 1, '26638885', 'f', '2017-07-27', '最后的话 / The Last Word', NULL, 4);
INSERT INTO `finished` VALUES (407, 1, '26607693', 'f', '2017-07-22', '敦刻尔克 / Dunkirk', NULL, 4);
INSERT INTO `finished` VALUES (408, 1, '5387041', 'f', '2017-07-21', '浮生一日 / Life in a Day', NULL, 5);
INSERT INTO `finished` VALUES (409, 1, '4944008', 'f', '2017-07-19', '香肠派对 / Sausage Party', NULL, 3);
INSERT INTO `finished` VALUES (410, 1, '26653833', 'f', '2017-07-19', '生吃 / Grave', NULL, 4);
INSERT INTO `finished` VALUES (411, 1, '26035290', 'f', '2017-07-17', '悟空传', NULL, 1);
INSERT INTO `finished` VALUES (412, 1, '26811587', 'f', '2017-07-13', '大护法', NULL, 5);
INSERT INTO `finished` VALUES (413, 1, '1436768', 'f', '2017-07-07', '时光驻留 / Le temps qui reste', NULL, 4);
INSERT INTO `finished` VALUES (414, 1, '6308210', 'f', '2017-07-07', '美国众神 第一季 / American Gods Season 1', NULL, 3);
INSERT INTO `finished` VALUES (415, 1, '26425072', 'f', '2017-07-03', '明月几时有', NULL, 4);
INSERT INTO `finished` VALUES (416, 1, '26295873', 'f', '2017-06-30', '马男波杰克 第二季 / BoJack Horseman Season 2', NULL, 5);
INSERT INTO `finished` VALUES (417, 1, '1291545', 'f', '2017-06-29', '大鱼 / Big Fish', NULL, 5);
INSERT INTO `finished` VALUES (418, 1, '6854414', 'f', '2017-06-24', '歌声不绝 / Song to Song', NULL, 3);
INSERT INTO `finished` VALUES (419, 1, '26636273', 'f', '2017-06-10', '当我们崛起时 / When We Rise', NULL, 5);
INSERT INTO `finished` VALUES (420, 1, '1292272', 'f', '2017-06-10', '大象 / Elephant', NULL, 5);
INSERT INTO `finished` VALUES (421, 1, '26806099', 'f', '2017-06-09', '爱猫之城 / Kedi', NULL, 4);
INSERT INTO `finished` VALUES (422, 1, '26718795', 'f', '2017-06-03', '纸牌屋 第五季 / House of Cards Season 5', NULL, 4);
INSERT INTO `finished` VALUES (423, 1, '1578714', 'f', '2017-06-03', '神奇女侠 / Wonder Woman', NULL, 3);
INSERT INTO `finished` VALUES (424, 1, '3243344', 'f', '2017-05-30', '养子十五岁 / Patrik 1,5', NULL, 4);
INSERT INTO `finished` VALUES (425, 1, '26387939', 'f', '2017-05-29', '摔跤吧！爸爸 / Dangal', NULL, 5);
INSERT INTO `finished` VALUES (426, 1, '1293455', 'f', '2017-05-27', '永恒和一日 / Μια αιωνιότητα και μια μερα', NULL, 5);
INSERT INTO `finished` VALUES (427, 1, '1292792', 'f', '2017-05-25', '我自己的爱达荷 / My Own Private Idaho', NULL, 5);
INSERT INTO `finished` VALUES (428, 1, '20644938', 'f', '2017-05-25', '硅谷 第一季 / Silicon Valley Season 1', NULL, 4);
INSERT INTO `finished` VALUES (429, 1, '26688480', 'f', '2017-05-21', '逃出绝命镇 / Get Out', NULL, 4);
INSERT INTO `finished` VALUES (430, 1, '4728076', 'f', '2017-05-20', '幻想之爱 / Les amours imaginaires', NULL, 4);
INSERT INTO `finished` VALUES (431, 1, '2037012', 'f', '2017-05-20', '革命之路 / Revolutionary Road', NULL, 4);
INSERT INTO `finished` VALUES (432, 1, '25864124', 'f', '2017-05-13', '亚瑟王：斗兽争霸 / King Arthur: Legend of the Sword', NULL, 4);
INSERT INTO `finished` VALUES (433, 1, '26592971', 'f', '2017-05-11', '瑞克和莫蒂 第三季 / Rick and Morty Season 3', NULL, 5);
INSERT INTO `finished` VALUES (434, 1, '26588239', 'f', '2017-05-11', '超感猎杀 第二季 / Sense8 Season 2', NULL, 5);
INSERT INTO `finished` VALUES (435, 1, '25937854', 'f', '2017-05-06', '银河护卫队2 / Guardians of the Galaxy Vol. 2', NULL, 5);
INSERT INTO `finished` VALUES (436, 1, '2996640', 'f', '2017-05-01', '朱莉与朱莉娅 / Julie & Julia', NULL, 4);
INSERT INTO `finished` VALUES (437, 1, '6537486', 'f', '2017-04-30', '登堂入室 / Dans la maison', NULL, 5);
INSERT INTO `finished` VALUES (438, 1, '27007246', 'f', '2017-04-26', '人间失格 / Less Than Human', NULL, 4);
INSERT INTO `finished` VALUES (439, 1, '26356789', 'f', '2017-04-23', '心房客 / Asphalte', NULL, 5);
INSERT INTO `finished` VALUES (440, 1, '1292329', 'f', '2017-04-16', '牯岭街少年杀人事件 / 牯嶺街少年殺人事件', NULL, 5);
INSERT INTO `finished` VALUES (441, 1, '5964718', 'f', '2017-04-15', '一次别离 / جدایی نادر از س...', NULL, 5);
INSERT INTO `finished` VALUES (442, 1, '26279289', 'f', '2017-04-09', '怒 / 怒り', NULL, 4);
INSERT INTO `finished` VALUES (443, 1, '25875022', 'f', '2017-04-07', '废柴舅舅 第二季 / Uncle Season 2', NULL, 5);
INSERT INTO `finished` VALUES (444, 1, '26680329', 'f', '2017-04-07', '废柴舅舅 第三季 / Uncle Season 3', NULL, 5);
INSERT INTO `finished` VALUES (445, 1, '26580232', 'f', '2017-04-01', '看不见的客人 / Contratiempo', NULL, 4);
INSERT INTO `finished` VALUES (446, 1, '26611086', 'f', '2017-04-01', '我们的秘密', NULL, 1);
INSERT INTO `finished` VALUES (447, 1, '26614141', 'f', '2017-04-01', '惊天岳雷', NULL, 1);
INSERT INTO `finished` VALUES (448, 1, '26369809', 'f', '2017-04-01', '守卫者·浮出水面', NULL, 1);
INSERT INTO `finished` VALUES (449, 1, '25754848', 'f', '2017-04-01', '琅琊榜', NULL, 1);
INSERT INTO `finished` VALUES (450, 1, '26766869', 'f', '2017-03-30', '鹬 / Piper', NULL, 5);
INSERT INTO `finished` VALUES (451, 1, '20515394', 'f', '2017-03-19', '自由坠落 / Freier Fall', NULL, 3);
INSERT INTO `finished` VALUES (452, 1, '26794215', 'f', '2017-03-18', '我们这一天 第一季 / This Is Us Season 1', NULL, 4);
INSERT INTO `finished` VALUES (453, 1, '26849144', 'f', '2017-03-08', '男男呼啦圈 / The Arrow [Love. Pride. Truth.]', NULL, 5);
INSERT INTO `finished` VALUES (454, 1, '25766754', 'f', '2017-03-05', '年轻气盛 / Youth', NULL, 4);
INSERT INTO `finished` VALUES (455, 1, '26921952', 'f', '2017-03-04', '校合唱团的秘密 / Mindenki', NULL, 4);
INSERT INTO `finished` VALUES (456, 1, '25765735', 'f', '2017-03-03', '金刚狼3：殊死一战 / Logan', NULL, 5);
INSERT INTO `finished` VALUES (457, 1, '26389148', 'f', '2017-02-26', '赴汤蹈火 / Hell or High Water', NULL, 4);
INSERT INTO `finished` VALUES (458, 1, '11526817', 'f', '2017-02-24', '刺客信条 / Assassin\'s Creed', NULL, 2);
INSERT INTO `finished` VALUES (459, 1, '3072086', 'f', '2017-02-17', '和莎莫的500天 / (500) Days of Summer', NULL, 4);
INSERT INTO `finished` VALUES (460, 1, '5365461', 'f', '2017-02-17', '枕边人 / Bedfellows', NULL, 5);
INSERT INTO `finished` VALUES (461, 1, '26220650', 'f', '2017-02-17', '雄狮 / Lion', NULL, 3);
INSERT INTO `finished` VALUES (462, 1, '26677495', 'f', '2017-02-17', '帕特森 / Paterson', NULL, 4);
INSERT INTO `finished` VALUES (463, 1, '24872189', 'f', '2017-02-17', '托尼·厄德曼 / Toni Erdmann', NULL, 5);
INSERT INTO `finished` VALUES (464, 1, '26215216', 'f', '2017-02-16', '将来的事 / L\'avenir', NULL, 5);
INSERT INTO `finished` VALUES (465, 1, '26615208', 'f', '2017-02-16', '隐藏人物 / Hidden Figures', NULL, 4);
INSERT INTO `finished` VALUES (466, 1, '11026347', 'f', '2017-02-16', '人来，人往 / Pit Stop', NULL, 4);
INSERT INTO `finished` VALUES (467, 1, '26732514', 'f', '2017-02-15', '事事答是 / Sí a todo', NULL, 5);
INSERT INTO `finished` VALUES (468, 1, '24695390', 'f', '2017-02-15', '我们假期做了什么 / What We Did On Our Holiday', NULL, 3);
INSERT INTO `finished` VALUES (469, 1, '1291999', 'f', '2017-02-15', '重庆森林 / 重慶森林', NULL, 5);
INSERT INTO `finished` VALUES (470, 1, '1309163', 'f', '2017-02-15', '恋恋笔记本 / The Notebook', NULL, 4);
INSERT INTO `finished` VALUES (471, 1, '26689198', 'f', '2017-02-15', '同船爱歌 / Théo et Hugo dans le même bateau', NULL, 4);
INSERT INTO `finished` VALUES (472, 1, '11584019', 'f', '2017-02-15', '海洋之歌 / Song of the Sea', NULL, 4);
INSERT INTO `finished` VALUES (473, 1, '10773181', 'f', '2017-02-14', '暗之光 / עלטה', NULL, 4);
INSERT INTO `finished` VALUES (474, 1, '26022182', 'f', '2017-02-14', '她 / Elle', NULL, 4);
INSERT INTO `finished` VALUES (475, 1, '26781921', 'f', '2017-02-14', '跆拳道 / Taekwondo', NULL, 4);
INSERT INTO `finished` VALUES (476, 1, '25980443', 'f', '2017-02-13', '海边的曼彻斯特 / Manchester by the Sea', NULL, 5);
INSERT INTO `finished` VALUES (477, 1, '1309046', 'f', '2017-02-12', 'V字仇杀队 / V for Vendetta', NULL, 5);
INSERT INTO `finished` VALUES (478, 1, '25934014', 'f', '2017-02-11', '爱乐之城 / La La Land', NULL, 5);
INSERT INTO `finished` VALUES (479, 1, '26389696', 'f', '2017-02-04', '大闹天竺', NULL, 1);
INSERT INTO `finished` VALUES (480, 1, '6048838', 'f', '2017-02-01', '爱森斯坦在瓜纳华托 / Eisenstein in Guanajuato', NULL, 4);
INSERT INTO `finished` VALUES (481, 1, '20276230', 'f', '2017-02-01', '汤姆的农场旅行 / Tom à la Ferme', NULL, 4);
INSERT INTO `finished` VALUES (482, 1, '26377370', 'f', '2017-02-01', '只是世界尽头 / Juste la fin du monde', NULL, 3);
INSERT INTO `finished` VALUES (483, 1, '1300056', 'f', '2017-01-31', '四百击 / Les quatre cents coups', NULL, 5);
INSERT INTO `finished` VALUES (484, 1, '25801066', 'f', '2017-01-30', '西游伏妖篇', NULL, 2);
INSERT INTO `finished` VALUES (485, 1, '26685451', 'f', '2017-01-29', '流浪猫鲍勃 / A Street Cat Named Bob', NULL, 4);
INSERT INTO `finished` VALUES (486, 1, '26862259', 'f', '2017-01-28', '乘风破浪', NULL, 2);
INSERT INTO `finished` VALUES (487, 1, '26353372', 'f', '2017-01-24', '夜行动物 / Nocturnal Animals', NULL, 4);
INSERT INTO `finished` VALUES (488, 1, '26932873', 'f', '2017-01-23', '大叔的爱 / おっさんずラブ  年の瀬 変愛ドラマ第3夜', NULL, 4);
INSERT INTO `finished` VALUES (489, 1, '26628357', 'f', '2017-01-22', '一个叫欧维的男人决定去死 / En man som heter Ove', NULL, 5);
INSERT INTO `finished` VALUES (490, 1, '26648249', 'f', '2017-01-21', '月光男孩 / Moonlight', NULL, 5);
INSERT INTO `finished` VALUES (491, 1, '21324900', 'f', '2017-01-20', '降临 / Arrival', NULL, 4);
INSERT INTO `finished` VALUES (492, 1, '26910059', 'f', '2017-01-20', '我在故宫修文物', NULL, 3);
INSERT INTO `finished` VALUES (493, 1, '26359270', 'f', '2017-01-12', '怪奇物语 第一季 / Stranger Things Season 1', NULL, 5);
INSERT INTO `finished` VALUES (494, 1, '26287114', 'f', '2017-01-03', '虫师 铃之滴 / 蟲師 特別編「鈴の雫」', NULL, 5);
INSERT INTO `finished` VALUES (495, 1, '26303865', 'f', '2017-01-03', '维多利亚 / Victoria', NULL, 5);
INSERT INTO `finished` VALUES (496, 1, '26336281', 'f', '2017-01-01', '纸牌屋 第四季 / House of Cards Season 4', NULL, 5);
INSERT INTO `finished` VALUES (497, 1, '26340305', 'f', '2017-01-01', '毕业会考 / Bacalaureat', NULL, 4);
INSERT INTO `finished` VALUES (498, 1, '26926703', 'f', '2016-12-25', '超感猎杀：圣诞特别篇 / Sense8: A Christmas Special', NULL, 5);
INSERT INTO `finished` VALUES (499, 1, '3262918', 'f', '2016-12-18', '精神分裂症 / Skhizein', NULL, 4);
INSERT INTO `finished` VALUES (500, 1, '25865470', 'f', '2016-12-17', '瑞克和莫蒂 第二季 / Rick and Morty Season 2', NULL, 5);
INSERT INTO `finished` VALUES (501, 1, '11537954', 'f', '2016-12-17', '瑞克和莫蒂 第一季 / Rick and Morty Season 1', NULL, 5);
INSERT INTO `finished` VALUES (502, 1, '2338055', 'f', '2016-12-10', '西部世界 第一季 / Westworld Season 1', NULL, 5);
INSERT INTO `finished` VALUES (503, 1, '26728351', 'f', '2016-12-09', '十米跳台 / Hopptornet', NULL, 4);
INSERT INTO `finished` VALUES (504, 1, '25726614', 'f', '2016-12-03', '神奇动物在哪里 / Fantastic Beasts and Where to Find Them', NULL, 5);
INSERT INTO `finished` VALUES (505, 1, '25837700', 'f', '2016-12-03', '真探 第二季 / True Detective Season 2', NULL, 3);
INSERT INTO `finished` VALUES (506, 1, '26719562', 'f', '2016-11-29', '百年酒馆 / Horace and Pete', NULL, 5);
INSERT INTO `finished` VALUES (507, 1, '25966044', 'f', '2016-11-21', '黑镜 第三季 / Black Mirror Season 3', NULL, 5);
INSERT INTO `finished` VALUES (508, 1, '3025375', 'f', '2016-11-19', '奇异博士 / Doctor Strange', NULL, 3);
INSERT INTO `finished` VALUES (509, 1, '25983044', 'f', '2016-11-12', '比利·林恩的中场战事 / Billy Lynn\'s Long Halftime Walk', NULL, 3);
INSERT INTO `finished` VALUES (510, 1, '26762709', 'f', '2016-10-07', '最终幻想15：王者之剑 / Kingsglaive Final Fantasy XV', NULL, 3);
INSERT INTO `finished` VALUES (511, 1, '26437237', 'f', '2016-10-07', '瑞士军刀男 / Swiss Army Man', NULL, 4);
INSERT INTO `finished` VALUES (512, 1, '25815034', 'f', '2016-10-06', '湄公河行动', NULL, 4);
INSERT INTO `finished` VALUES (513, 1, '26683290', 'f', '2016-10-01', '你的名字。 / 君の名は。', NULL, 4);
INSERT INTO `finished` VALUES (514, 1, '25986180', 'f', '2016-09-17', '釜山行 / 부산행', NULL, 4);
INSERT INTO `finished` VALUES (515, 1, '1292267', 'f', '2016-08-27', '银河系漫游指南 / The Hitchhiker\'s Guide to the Galaxy', NULL, 5);
INSERT INTO `finished` VALUES (516, 1, '1293434', 'f', '2016-08-27', '王牌对王牌 / The Negotiator', NULL, 5);
INSERT INTO `finished` VALUES (517, 1, '26614893', 'f', '2016-08-27', '完美陌生人 / Perfetti sconosciuti', NULL, 4);
INSERT INTO `finished` VALUES (518, 1, '1305666', 'f', '2016-08-27', '时时刻刻 / The Hours', NULL, 4);
INSERT INTO `finished` VALUES (519, 1, '1298759', 'f', '2016-08-26', '狗镇 / Dogville', NULL, 5);
INSERT INTO `finished` VALUES (520, 1, '1291832', 'f', '2016-08-25', '低俗小说 / Pulp Fiction', NULL, 5);
INSERT INTO `finished` VALUES (521, 1, '21817627', 'f', '2016-08-25', '爱宠大机密 / The Secret Life of Pets', NULL, 3);
INSERT INTO `finished` VALUES (522, 1, '26275494', 'f', '2016-08-25', '橘色 / Tangerine', NULL, 4);
INSERT INTO `finished` VALUES (523, 1, '3718279', 'f', '2016-08-23', '死侍 / Deadpool', NULL, 3);
INSERT INTO `finished` VALUES (524, 1, '25811267', 'f', '2016-08-23', '废柴舅舅 第一季 / Uncle Season 1', NULL, 5);
INSERT INTO `finished` VALUES (525, 1, '1292679', 'f', '2016-08-23', '春光乍泄 / 春光乍洩', NULL, 5);
INSERT INTO `finished` VALUES (526, 1, '1292434', 'f', '2016-08-22', '一一', NULL, 5);
INSERT INTO `finished` VALUES (527, 1, '26581673', 'f', '2016-08-13', '马男波杰克 第三季 / BoJack Horseman Season 3', NULL, 5);
INSERT INTO `finished` VALUES (528, 1, '26354587', 'f', '2016-08-11', '寻：电影版 / Looking: The Movie', NULL, 4);
INSERT INTO `finished` VALUES (529, 1, '10484117', 'f', '2016-07-22', '天空之眼 / Eye in the Sky', NULL, 4);
INSERT INTO `finished` VALUES (530, 1, '6874403', 'f', '2016-07-20', '再次出发之纽约遇见你 / Begin Again', NULL, 5);
INSERT INTO `finished` VALUES (531, 1, '25864085', 'f', '2016-07-17', '火星救援 / The Martian', NULL, 4);
INSERT INTO `finished` VALUES (532, 1, '4319218', 'f', '2016-07-16', '午夜巴黎 / Midnight in Paris', NULL, 5);
INSERT INTO `finished` VALUES (533, 1, '1291554', 'f', '2016-07-10', '歌剧魅影 / The Phantom of the Opera', NULL, 4);
INSERT INTO `finished` VALUES (534, 1, '25786060', 'f', '2016-07-09', 'X战警：天启 / X-Men: Apocalypse', NULL, 4);
INSERT INTO `finished` VALUES (535, 1, '10533913', 'f', '2016-07-05', '头脑特工队 / Inside Out', NULL, 5);
INSERT INTO `finished` VALUES (536, 1, '4206357', 'f', '2016-07-05', '龙纹身的女孩 / The Girl with the Dragon Tattoo', NULL, 5);
INSERT INTO `finished` VALUES (537, 1, '4099231', 'f', '2016-07-04', '辉夜姬物语 / かぐや姫の物語', NULL, 4);
INSERT INTO `finished` VALUES (538, 1, '3395373', 'f', '2016-07-03', '蝙蝠侠：黑暗骑士崛起 / The Dark Knight Rises', NULL, 5);
INSERT INTO `finished` VALUES (539, 1, '26700818', 'f', '2016-07-01', '极品基老伴：完结篇 / Vicious Series Finale', NULL, 5);
INSERT INTO `finished` VALUES (540, 1, '25662337', 'f', '2016-07-01', '惊天魔盗团2 / Now You See Me 2', NULL, 3);
INSERT INTO `finished` VALUES (541, 1, '10808442', 'f', '2016-06-26', '爱在午夜降临前 / Before Midnight', NULL, 5);
INSERT INTO `finished` VALUES (542, 1, '5327268', 'f', '2016-06-24', '荒野猎人 / The Revenant', NULL, 4);
INSERT INTO `finished` VALUES (543, 1, '26388908', 'f', '2016-06-23', '福斯特医生 第一季 / Doctor Foster Season 1', NULL, 5);
INSERT INTO `finished` VALUES (544, 1, '2297265', 'f', '2016-06-22', '浪潮 / Die Welle', NULL, 4);
INSERT INTO `finished` VALUES (545, 1, '4268598', 'f', '2016-06-14', '告白', NULL, 5);
INSERT INTO `finished` VALUES (546, 1, '2131940', 'f', '2016-06-13', '魔兽 / Warcraft', NULL, 4);
INSERT INTO `finished` VALUES (547, 1, '3144388', 'f', '2016-05-28', '最后一周 / One Week', NULL, 4);
INSERT INTO `finished` VALUES (548, 1, '25900177', 'f', '2016-05-25', '马男波杰克 第一季 / BoJack Horseman Season 1', NULL, 5);
INSERT INTO `finished` VALUES (549, 1, '25820460', 'f', '2016-05-14', '美国队长3 / Captain America: Civil War', NULL, 4);
INSERT INTO `finished` VALUES (550, 1, '4847665', 'f', '2016-04-04', '壁花少年 / The Perks of Being a Wallflower', NULL, 5);
INSERT INTO `finished` VALUES (551, 1, '25662329', 'f', '2016-03-12', '疯狂动物城 / Zootopia', NULL, 5);
INSERT INTO `finished` VALUES (552, 1, '26304167', 'f', '2016-02-20', '出租车 / تاکسی', NULL, 5);
INSERT INTO `finished` VALUES (553, 1, '1292217', 'f', '2016-02-13', '穆赫兰道 / Mulholland Dr.', NULL, 5);
INSERT INTO `finished` VALUES (554, 1, '26306652', 'f', '2016-02-12', '蓝色时分 / อนธการ', NULL, 4);
INSERT INTO `finished` VALUES (555, 1, '1484091', 'f', '2016-02-11', '水果硬糖 / Hard Candy', NULL, 4);
INSERT INTO `finished` VALUES (556, 1, '25724855', 'f', '2016-02-06', '房间 / Room', NULL, 4);
INSERT INTO `finished` VALUES (557, 1, '25895901', 'f', '2016-02-06', '海街日记 / 海街diary', NULL, 5);
INSERT INTO `finished` VALUES (558, 1, '6985803', 'f', '2016-02-03', '少年斯派维的奇异旅行 / The Young and Prodigious T.S. Spivet', NULL, 4);
INSERT INTO `finished` VALUES (559, 1, '25839662', 'f', '2016-01-24', '45周年 / 45 Years', NULL, 4);
INSERT INTO `finished` VALUES (560, 1, '10757577', 'f', '2016-01-22', '卡罗尔 / Carol', NULL, 4);
INSERT INTO `finished` VALUES (561, 1, '25954475', 'f', '2016-01-17', '聚焦 / Spotlight', NULL, 5);
INSERT INTO `finished` VALUES (562, 1, '1307394', 'f', '2016-01-01', '千年女优 / 千年女優', NULL, 5);
INSERT INTO `finished` VALUES (563, 1, '2336735', 'f', '2015-12-05', '生命之树 / The Tree of Life', NULL, 4);
INSERT INTO `finished` VALUES (564, 1, '3073124', 'f', '2015-12-05', '月球 / Moon', NULL, 4);
INSERT INTO `finished` VALUES (565, 1, '4202982', 'f', '2015-11-16', '冰雪奇缘 / Frozen', NULL, 5);
INSERT INTO `finished` VALUES (566, 1, '20645098', 'f', '2015-10-31', '小王子 / Le Petit Prince', NULL, 5);
INSERT INTO `finished` VALUES (567, 1, '24325923', 'f', '2015-10-03', '我和厄尔以及将死的女孩 / Me and Earl and the Dying Girl', NULL, 4);
INSERT INTO `finished` VALUES (568, 1, '1308755', 'f', '2015-10-02', '僵尸肖恩 / Shaun of the Dead', NULL, 4);
INSERT INTO `finished` VALUES (569, 1, '1292064', 'f', '2015-09-27', '楚门的世界 / The Truman Show', NULL, 5);
INSERT INTO `finished` VALUES (570, 1, '25710912', 'f', '2015-09-26', '港囧', NULL, 2);
INSERT INTO `finished` VALUES (571, 1, '1292220', 'f', '2015-09-20', '情书 / Love Letter', NULL, 5);
INSERT INTO `finished` VALUES (572, 1, '25978207', 'f', '2015-09-13', '亲爱的，不要跨过那条江 / 님아, 그 강을 건너지 ...', NULL, 5);
INSERT INTO `finished` VALUES (573, 1, '1978709', 'f', '2015-09-12', '黑天鹅 / Black Swan', NULL, 5);
INSERT INTO `finished` VALUES (574, 1, '1297192', 'f', '2015-09-03', '致命ID / Identity', NULL, 5);
INSERT INTO `finished` VALUES (575, 1, '2303845', 'f', '2015-08-29', '刺客聂隐娘', NULL, 5);
INSERT INTO `finished` VALUES (576, 1, '1308820', 'f', '2015-08-23', '花与爱丽丝 / 花とアリス', NULL, 4);
INSERT INTO `finished` VALUES (577, 1, '1292343', 'f', '2015-07-30', '蝴蝶效应 / The Butterfly Effect', NULL, 4);
INSERT INTO `finished` VALUES (578, 1, '1294183', 'f', '2015-07-30', '黑洞频率 / Frequency', NULL, 4);
INSERT INTO `finished` VALUES (579, 1, '1291580', 'f', '2015-07-29', '杀死比尔 / Kill Bill: Vol. 1', NULL, 4);
INSERT INTO `finished` VALUES (580, 1, '25807345', 'f', '2015-07-27', '彗星来的那一夜 / Coherence', NULL, 4);
INSERT INTO `finished` VALUES (581, 1, '1291990', 'f', '2015-07-19', '爱在日落黄昏时 / Before Sunset', NULL, 5);
INSERT INTO `finished` VALUES (582, 1, '1780330', 'f', '2015-07-14', '致命魔术 / The Prestige', NULL, 5);
INSERT INTO `finished` VALUES (583, 1, '23011215', 'f', '2015-07-12', '超感猎杀 第一季 / Sense8 Season 1', NULL, 5);
INSERT INTO `finished` VALUES (584, 1, '2971730', 'f', '2015-07-10', '你好，再见 / Ciao', NULL, 5);
INSERT INTO `finished` VALUES (585, 1, '1292523', 'f', '2015-07-09', '侏罗纪公园 / Jurassic Park', NULL, 4);
INSERT INTO `finished` VALUES (586, 1, '3592854', 'f', '2015-07-08', '疯狂的麦克斯4：狂暴之路 / Mad Max: Fury Road', NULL, 5);
INSERT INTO `finished` VALUES (587, 1, '2338019', 'f', '2015-07-04', '欲盖弄潮 / Shelter', NULL, 4);
INSERT INTO `finished` VALUES (588, 1, '1296339', 'f', '2015-06-22', '爱在黎明破晓前 / Before Sunrise', NULL, 5);
INSERT INTO `finished` VALUES (589, 1, '10440138', 'f', '2015-06-20', '侏罗纪世界 / Jurassic World', NULL, 4);
INSERT INTO `finished` VALUES (590, 1, '2133323', 'f', '2015-06-06', '白日梦想家 / The Secret Life of Walter Mitty', NULL, 4);
INSERT INTO `finished` VALUES (591, 1, '1291546', 'f', '2015-06-04', '霸王别姬', NULL, 5);
INSERT INTO `finished` VALUES (592, 1, '10741834', 'f', '2015-05-24', '复仇者联盟2：奥创纪元 / Avengers: Age of Ultron', NULL, 4);
INSERT INTO `finished` VALUES (593, 1, '5980670', 'f', '2015-05-21', '疑犯追踪  第一季 / Person of Interest Season 1', NULL, 5);
INSERT INTO `finished` VALUES (594, 1, '1295644', 'f', '2015-05-17', '这个杀手不太冷 / Léon', NULL, 5);
INSERT INTO `finished` VALUES (595, 1, '4934987', 'f', '2015-05-10', '意外的幸运签 / カラフル', NULL, 4);
INSERT INTO `finished` VALUES (596, 1, '1292656', 'f', '2015-05-09', '心灵捕手 / Good Will Hunting', NULL, 5);
INSERT INTO `finished` VALUES (597, 1, '1291557', 'f', '2015-05-01', '花样年华 / 花樣年華', NULL, 5);
INSERT INTO `finished` VALUES (598, 1, '4023638', 'f', '2015-04-26', '国王的演讲 / The King\'s Speech', NULL, 5);
INSERT INTO `finished` VALUES (599, 1, '3275168', 'f', '2015-04-26', '单身男子 / A Single Man', NULL, 5);
INSERT INTO `finished` VALUES (600, 1, '3707070', 'f', '2015-04-18', '我杀了我妈妈 / J\'ai tué ma mère', NULL, 4);
INSERT INTO `finished` VALUES (601, 1, '25745651', 'f', '2015-04-18', '妈咪 / Mommy', NULL, 5);
INSERT INTO `finished` VALUES (602, 1, '1301174', 'f', '2015-04-17', '傲慢与偏见 / Pride and Prejudice', NULL, 5);
INSERT INTO `finished` VALUES (603, 1, '4848701', 'f', '2015-04-16', '日常', NULL, 5);
INSERT INTO `finished` VALUES (604, 1, '1291548', 'f', '2015-04-06', '死亡诗社 / Dead Poets Society', NULL, 5);
INSERT INTO `finished` VALUES (605, 1, '24405378', 'f', '2015-04-04', '王牌特工：特工学院 / Kingsman: The Secret Service', NULL, 4);
INSERT INTO `finished` VALUES (606, 1, '25912858', 'f', '2015-03-29', '寻 第二季 / Looking Season 2', NULL, 5);
INSERT INTO `finished` VALUES (607, 1, '25823412', 'f', '2015-03-20', '纸牌屋 第三季 / House of Cards Season 3', NULL, 4);
INSERT INTO `finished` VALUES (608, 1, '1292365', 'f', '2015-03-17', '活着', NULL, 5);
INSERT INTO `finished` VALUES (609, 1, '4739952', 'f', '2015-03-15', '初恋这件小事 / สิ่งเล็กเล็...', NULL, 4);
INSERT INTO `finished` VALUES (610, 1, '6011805', 'f', '2015-03-08', '一九四二', NULL, 3);
INSERT INTO `finished` VALUES (611, 1, '11026735', 'f', '2015-02-28', '超能陆战队 / Big Hero 6', NULL, 5);
INSERT INTO `finished` VALUES (612, 1, '1418834', 'f', '2015-02-25', '断背山 / Brokeback Mountain', NULL, 5);
INSERT INTO `finished` VALUES (613, 1, '25767503', 'f', '2015-02-24', '自杀热线 / The Phone Call', NULL, 4);
INSERT INTO `finished` VALUES (614, 1, '25815008', 'f', '2015-02-21', '依然爱丽丝 / Still Alice', NULL, 5);
INSERT INTO `finished` VALUES (615, 1, '3075287', 'f', '2015-02-17', '源代码 / Source Code', NULL, 4);
INSERT INTO `finished` VALUES (616, 1, '24706561', 'f', '2015-02-16', '爱很怪 / Love Is Strange', NULL, 4);
INSERT INTO `finished` VALUES (617, 1, '10726941', 'f', '2015-02-16', '窃听风云3', NULL, 3);
INSERT INTO `finished` VALUES (618, 1, '1292529', 'f', '2015-02-15', '机器管家 / Bicentennial Man', NULL, 4);
INSERT INTO `finished` VALUES (619, 1, '1291583', 'f', '2015-02-14', '天空之城 / 天空の城ラピュタ', NULL, 4);
INSERT INTO `finished` VALUES (620, 1, '6533054', 'f', '2015-02-14', '饥饿游戏3：嘲笑鸟(上) / The Hunger Games: Mockingjay - Part 1', NULL, 1);
INSERT INTO `finished` VALUES (621, 1, '25740192', 'f', '2015-02-14', '骄傲 / Pride', NULL, 5);
INSERT INTO `finished` VALUES (622, 1, '1305164', 'f', '2015-02-14', '甜蜜蜜', NULL, 5);
INSERT INTO `finished` VALUES (623, 1, '5450891', 'f', '2015-02-14', '泰坦尼克号 3D版 / Titanic 3D', NULL, 5);
INSERT INTO `finished` VALUES (624, 1, '25750969', 'f', '2015-02-13', '夜行者 / Nightcrawler', NULL, 4);
INSERT INTO `finished` VALUES (625, 1, '1306029', 'f', '2015-02-11', '美丽心灵 / A Beautiful Mind', NULL, 5);
INSERT INTO `finished` VALUES (626, 1, '10463953', 'f', '2015-02-10', '模仿游戏 / The Imitation Game', NULL, 4);
INSERT INTO `finished` VALUES (627, 1, '1395091', 'f', '2015-02-06', '未麻的部屋 / Perfect Blue', NULL, 5);
INSERT INTO `finished` VALUES (628, 1, '20438962', 'f', '2015-02-06', '鸟人 / Birdman or (The Unexpected Virtue of Ignorance)', NULL, 5);
INSERT INTO `finished` VALUES (629, 1, '11525673', 'f', '2015-02-01', '布达佩斯大饭店 / The Grand Budapest Hotel', NULL, 4);
INSERT INTO `finished` VALUES (630, 1, '25773932', 'f', '2015-02-01', '爆裂鼓手 / Whiplash', NULL, 5);
INSERT INTO `finished` VALUES (631, 1, '2053515', 'f', '2015-01-03', '曾经 / Once', NULL, 5);
INSERT INTO `finished` VALUES (632, 1, '2044089', 'f', '2015-01-03', '杀手没有假期 / In Bruges', NULL, 4);
INSERT INTO `finished` VALUES (633, 1, '1851857', 'f', '2014-12-31', '蝙蝠侠：黑暗骑士 / The Dark Knight', NULL, 5);
INSERT INTO `finished` VALUES (634, 1, '1309069', 'f', '2014-12-27', '蝙蝠侠：侠影之谜 / Batman Begins', NULL, 4);
INSERT INTO `finished` VALUES (635, 1, '2373195', 'f', '2014-12-27', '绝命毒师 第一季 / Breaking Bad Season 1', NULL, 4);
INSERT INTO `finished` VALUES (636, 1, '1297630', 'f', '2014-12-27', '第六感 / The Sixth Sense', NULL, 5);
INSERT INTO `finished` VALUES (637, 1, '2149806', 'f', '2014-12-27', '入殓师 / おくりびと', NULL, 4);
INSERT INTO `finished` VALUES (638, 1, '1310177', 'f', '2014-12-26', '东京教父 / 東京ゴッドファーザーズ', NULL, 5);
INSERT INTO `finished` VALUES (639, 1, '1292401', 'f', '2014-12-26', '真爱至上 / Love Actually', NULL, 5);
INSERT INTO `finished` VALUES (640, 1, '1793929', 'f', '2014-12-21', '达拉斯买家俱乐部 / Dallas Buyers Club', NULL, 5);
INSERT INTO `finished` VALUES (641, 1, '25964630', 'f', '2014-12-20', '黑镜：圣诞特别篇 / Black Mirror: White Christmas', NULL, 5);
INSERT INTO `finished` VALUES (642, 1, '21318488', 'f', '2014-12-14', '消失的爱人 / Gone Girl', NULL, 4);
INSERT INTO `finished` VALUES (643, 1, '6786002', 'f', '2014-12-13', '触不可及 / Intouchables', NULL, 5);
INSERT INTO `finished` VALUES (644, 1, '10748120', 'f', '2014-12-03', '真探 第一季 / True Detective Season 1', NULL, 5);
INSERT INTO `finished` VALUES (645, 1, '3011051', 'f', '2014-12-01', '恐怖游轮 / Triangle', NULL, 4);
INSERT INTO `finished` VALUES (646, 1, '20256636', 'f', '2014-11-30', '夏威夷 / Hawaii', NULL, 5);
INSERT INTO `finished` VALUES (647, 1, '1304447', 'f', '2014-11-22', '记忆碎片 / Memento', NULL, 5);
INSERT INTO `finished` VALUES (648, 1, '1292226', 'f', '2014-11-16', '2001太空漫游 / 2001: A Space Odyssey', NULL, 5);
INSERT INTO `finished` VALUES (649, 1, '1889243', 'f', '2014-11-15', '星际穿越 / Interstellar', NULL, 5);
INSERT INTO `finished` VALUES (650, 1, '24404677', 'f', '2014-11-13', '超体 / Lucy', NULL, 3);
INSERT INTO `finished` VALUES (651, 1, '3552028', 'f', '2014-11-12', '弱点 / The Blind Side', NULL, 3);
INSERT INTO `finished` VALUES (652, 1, '7065154', 'f', '2014-10-19', '银河护卫队 / Guardians of the Galaxy', NULL, 5);
INSERT INTO `finished` VALUES (653, 1, '10763928', 'f', '2014-10-11', '弗兰克 / Frank', NULL, 3);
INSERT INTO `finished` VALUES (654, 1, '25966028', 'f', '2014-10-02', '红色', NULL, 4);
INSERT INTO `finished` VALUES (655, 1, '3011308', 'f', '2014-08-30', '孤儿怨 / Orphan', NULL, 4);
INSERT INTO `finished` VALUES (656, 1, '2209575', 'f', '2014-08-24', '少年时代 / Boyhood', NULL, 5);
INSERT INTO `finished` VALUES (657, 1, '1867345', 'f', '2014-08-23', '遗愿清单 / The Bucket List', NULL, 3);
INSERT INTO `finished` VALUES (658, 1, '1293359', 'f', '2014-08-23', '菊次郎的夏天 / 菊次郎の夏', NULL, 4);
INSERT INTO `finished` VALUES (659, 1, '1397546', 'f', '2014-08-23', '追随 / Following', NULL, 5);
INSERT INTO `finished` VALUES (660, 1, '1292223', 'f', '2014-08-22', '七宗罪 / Se7en', NULL, 4);
INSERT INTO `finished` VALUES (661, 1, '22523356', 'f', '2014-08-22', '纸牌屋 第二季 / House of Cards Season 2', NULL, 5);
INSERT INTO `finished` VALUES (662, 1, '20438510', 'f', '2014-08-22', '翠星之加尔刚蒂亚 / 翠星のガルガンティア', NULL, 4);
INSERT INTO `finished` VALUES (663, 1, '23055587', 'f', '2014-08-22', '破产姐妹 第三季 / 2 Broke Girls Season 3', NULL, 4);
INSERT INTO `finished` VALUES (664, 1, '3205624', 'f', '2014-08-22', '社交网络 / The Social Network', NULL, 4);
INSERT INTO `finished` VALUES (665, 1, '25915882', 'f', '2014-08-22', '虫师 续章 荆棘之路 / 蟲師 続章 棘のみち', NULL, 5);
INSERT INTO `finished` VALUES (666, 1, '25774760', 'f', '2014-08-22', '虫师 蚀日之翳 / 蟲師 日蝕む翳', NULL, 5);
INSERT INTO `finished` VALUES (667, 1, '25806507', 'f', '2014-08-22', '虫师 续章 / 蟲師 続章', NULL, 5);
INSERT INTO `finished` VALUES (668, 1, '1800597', 'f', '2014-08-21', '虫师 / 蟲師', NULL, 5);
INSERT INTO `finished` VALUES (669, 1, '6846495', 'f', '2014-08-21', '调音师(短片) / L\'accordeur', NULL, 4);
INSERT INTO `finished` VALUES (670, 1, '22523273', 'f', '2014-08-20', '摩登家庭 第五季 / Modern Family Season 5', NULL, 5);
INSERT INTO `finished` VALUES (671, 1, '2334904', 'f', '2014-08-15', '禁闭岛 / Shutter Island', NULL, 4);
INSERT INTO `finished` VALUES (672, 1, '6390823', 'f', '2014-08-15', '美国队长2 / Captain America: The Winter Soldier', NULL, 4);
INSERT INTO `finished` VALUES (673, 1, '2138838', 'f', '2014-08-15', '美国队长 / Captain America: The First Avenger', NULL, 3);
INSERT INTO `finished` VALUES (674, 1, '10748074', 'f', '2014-08-12', '摩登家庭 第四季 / Modern Family Season 4', NULL, 5);
INSERT INTO `finished` VALUES (675, 1, '10527275', 'f', '2014-08-12', '来自新世界 / 新世界より', NULL, 5);
INSERT INTO `finished` VALUES (676, 1, '10759851', 'f', '2014-08-11', '无耻之徒(美版) 第三季 / Shameless Season 3', NULL, 5);
INSERT INTO `finished` VALUES (677, 1, '6727679', 'f', '2014-08-09', '无耻之徒(美版)  第二季 / Shameless Season 2', NULL, 3);
INSERT INTO `finished` VALUES (678, 1, '4729738', 'f', '2014-08-09', '无耻之徒(美版) 第一季 / Shameless Season 1', NULL, 5);
INSERT INTO `finished` VALUES (679, 1, '25895278', 'f', '2014-08-06', '洛克王国3：圣龙的守护', NULL, 1);
INSERT INTO `finished` VALUES (680, 1, '10569151', 'f', '2014-08-06', '剧场版魔法少女小圆 新篇 叛逆的故事 / 劇場版 魔法少女まどか☆マ...', NULL, 4);
INSERT INTO `finished` VALUES (681, 1, '5349275', 'f', '2014-08-06', '魔法少女小圆 / 魔法少女まどか★マギカ', NULL, 5);
INSERT INTO `finished` VALUES (682, 1, '3754382', 'f', '2014-08-05', '摩登家庭 第一季 / Modern Family Season 1', NULL, 5);
INSERT INTO `finished` VALUES (683, 1, '1292000', 'f', '2014-08-05', '搏击俱乐部 / Fight Club', NULL, 5);
INSERT INTO `finished` VALUES (684, 1, '1291560', 'f', '2014-08-05', '龙猫 / となりのトトロ', NULL, 4);
INSERT INTO `finished` VALUES (685, 1, '1292722', 'f', '2014-08-05', '泰坦尼克号 / Titanic', NULL, 5);
INSERT INTO `finished` VALUES (686, 1, '21627801', 'f', '2014-08-04', '总而言之 第二季 / Bref Season 2', NULL, 5);
INSERT INTO `finished` VALUES (687, 1, '2997076', 'f', '2014-08-03', '华尔街之狼 / The Wolf of Wall Street', NULL, 4);
INSERT INTO `finished` VALUES (688, 1, '5323968', 'f', '2014-08-03', '环太平洋 / Pacific Rim', NULL, 4);
INSERT INTO `finished` VALUES (689, 1, '3430169', 'f', '2014-08-03', '钢之炼金术师FA / 鋼の錬金術師 FULLMETAL ALCHEMIST', NULL, 5);
INSERT INTO `finished` VALUES (690, 1, '11533262', 'f', '2014-08-03', '罪恶王冠：失落的圣诞节 / ギルティクラウン ロストクリスマス an ...', NULL, 3);
INSERT INTO `finished` VALUES (691, 1, '6518736', 'f', '2014-08-03', '罪恶王冠 / ギルティクラウン', NULL, 4);
INSERT INTO `finished` VALUES (692, 1, '10440112', 'f', '2014-08-02', '总而言之 第一季 / Bref Season 1', NULL, 5);
INSERT INTO `finished` VALUES (693, 1, '1441053', 'f', '2014-08-02', '妄想代理人 / Paranoia Agent', NULL, 5);
INSERT INTO `finished` VALUES (694, 1, '2131459', 'f', '2014-08-02', '机器人总动员 / WALL·E', NULL, 5);
INSERT INTO `finished` VALUES (695, 1, '1291561', 'f', '2014-08-02', '千与千寻 / 千と千尋の神隠し', NULL, 5);
INSERT INTO `finished` VALUES (696, 1, '3541415', 'f', '2014-08-02', '盗梦空间 / Inception', NULL, 5);
INSERT INTO `finished` VALUES (697, 1, '1972729', 'f', '2014-08-02', '铁甲钢拳 / Real Steel', NULL, 4);
INSERT INTO `finished` VALUES (698, 1, '1866479', 'f', '2014-08-02', '复仇者联盟 / The Avengers', NULL, 4);
INSERT INTO `finished` VALUES (699, 1, '4746257', 'f', '2014-08-02', '明日边缘 / Edge of Tomorrow', NULL, 4);
INSERT INTO `finished` VALUES (700, 1, '1865703', 'f', '2014-08-02', '红辣椒 / パプリカ', NULL, 5);
INSERT INTO `finished` VALUES (701, 1, '20278812', 'f', '2014-08-01', '极品基老伴 第一季 / Vicious Season 1', NULL, 4);
INSERT INTO `finished` VALUES (702, 1, '11502153', 'f', '2014-08-01', '黑镜 第二季 / Black Mirror Season 2', NULL, 5);
INSERT INTO `finished` VALUES (703, 1, '7054120', 'f', '2014-07-31', '黑镜 第一季 / Black Mirror Season 1', NULL, 5);
INSERT INTO `finished` VALUES (704, 1, '10485647', 'f', '2014-07-31', 'X战警：逆转未来 / X-Men: Days of Future Past', NULL, 5);
INSERT INTO `finished` VALUES (705, 1, '3168089', 'f', '2014-07-31', 'X战警：第一战 / X-Men: First Class', NULL, 4);
INSERT INTO `finished` VALUES (706, 1, '1292720', 'f', '2014-07-30', '阿甘正传 / Forrest Gump', NULL, 5);
INSERT INTO `finished` VALUES (707, 1, '21941283', 'f', '2014-07-30', '天注定', NULL, 4);
INSERT INTO `finished` VALUES (708, 1, '3530403', 'f', '2014-07-30', '云图 / Cloud Atlas', NULL, 5);
INSERT INTO `finished` VALUES (709, 1, '3364223', 'f', '2014-07-30', '了不起的盖茨比 / The Great Gatsby', NULL, 4);
INSERT INTO `finished` VALUES (710, 1, '6424814', 'f', '2014-07-30', '分歧者：异类觉醒 / Divergent', NULL, 3);
INSERT INTO `finished` VALUES (711, 1, '6874456', 'f', '2014-07-29', '饥饿游戏2：星火燎原 / The Hunger Games: Catching Fire', NULL, 4);
INSERT INTO `finished` VALUES (712, 1, '3592853', 'f', '2014-07-29', '饥饿游戏 / The Hunger Games', NULL, 3);
INSERT INTO `finished` VALUES (713, 1, '1929463', 'f', '2014-07-29', '少年派的奇幻漂流 / Life of Pi', NULL, 4);
INSERT INTO `finished` VALUES (714, 1, '1485260', 'f', '2014-07-29', '本杰明·巴顿奇事 / The Curious Case of Benjamin Button', NULL, 5);
INSERT INTO `finished` VALUES (715, 1, '6024430', 'f', '2014-07-29', '周末时光 / Weekend', NULL, 5);
INSERT INTO `finished` VALUES (716, 1, '24705628', 'f', '2014-07-28', '寻 第一季 / Looking Season 1', NULL, 5);
INSERT INTO `finished` VALUES (717, 1, '6037429', 'f', '2014-07-28', '纸牌屋 第一季 / House of Cards Season 1', NULL, 4);
INSERT INTO `finished` VALUES (718, 1, '25805741', 'f', '2014-07-24', '后会无期', NULL, 2);
INSERT INTO `finished` VALUES (719, 1, '24847340', 'f', '2014-07-17', '小时代3：刺金时代', NULL, 1);
INSERT INTO `finished` VALUES (720, 1, '25845586', 'f', '2014-07-15', '赛尔号大电影4：圣魔之战', NULL, 1);
INSERT INTO `finished` VALUES (721, 1, '1292052', 'f', '2014-07-08', '肖申克的救赎 / The Shawshank Redemption', NULL, 5);
INSERT INTO `finished` VALUES (722, 1, '7054604', 'f', '2014-07-07', '变形金刚4：绝迹重生 / Transformers: Age of Extinction', NULL, 3);
INSERT INTO `finished` VALUES (723, 1, '6722879', 'f', '2014-07-06', '她 / Her', NULL, 4);
INSERT INTO `finished` VALUES (724, 1, '34947168', 'm', '2020-01-15', 'Good News', NULL, 4);
INSERT INTO `finished` VALUES (725, 1, '34790828', 'm', '2020-01-07', 'OIL OF EVERY PEARL\'S UN-INSIDES Remix Album (NON STOP)', NULL, 4);
INSERT INTO `finished` VALUES (726, 1, '3663710', 'm', '2019-12-25', 'A Theme For The Moon / 致月亮的主题曲', NULL, 4);
INSERT INTO `finished` VALUES (727, 1, '4010504', 'm', '2019-12-25', 'xx', NULL, 5);
INSERT INTO `finished` VALUES (728, 1, '4091515', 'm', '2019-12-25', 'Found Songs / 找到的歌曲', NULL, 4);
INSERT INTO `finished` VALUES (729, 1, '30784428', 'm', '2019-12-25', '过春天 / 过春天 电影原声碟', NULL, 5);
INSERT INTO `finished` VALUES (730, 1, '30403492', 'm', '2019-12-25', 'Spider Man: Into the Spider-Verse (Soundtrack from & Inspired ...', NULL, 4);
INSERT INTO `finished` VALUES (731, 1, '34439717', 'm', '2019-12-25', 'ANIMA', NULL, 4);
INSERT INTO `finished` VALUES (732, 1, '33407017', 'm', '2019-12-25', 'ARIZONA baby', NULL, 4);
INSERT INTO `finished` VALUES (733, 1, '30340443', 'm', '2019-12-25', 'Remind Me Tomorrow', NULL, 4);
INSERT INTO `finished` VALUES (734, 1, '30360710', 'm', '2019-12-25', 'Quiet Signs', NULL, 4);
INSERT INTO `finished` VALUES (735, 1, '30458467', 'm', '2019-12-25', 'Titanic Rising', NULL, 4);
INSERT INTO `finished` VALUES (736, 1, '10600872', 'm', '2019-12-23', 'The Idler Wheel Is Wiser Than The Driver Of The Screw And Whip...', NULL, 5);
INSERT INTO `finished` VALUES (737, 1, '25866083', 'm', '2019-12-06', 'What Is This Heart?', NULL, 5);
INSERT INTO `finished` VALUES (738, 1, '4068593', 'm', '2019-11-29', 'Tracks and Traces', NULL, 5);
INSERT INTO `finished` VALUES (739, 1, '1395014', 'm', '2019-11-15', 'Discovery', NULL, 5);
INSERT INTO `finished` VALUES (740, 1, '34881345', 'm', '2019-11-10', 'sad day', NULL, 5);
INSERT INTO `finished` VALUES (741, 1, '2347961', 'm', '2019-11-05', 'Oracular Spectacular / 石破天惊', NULL, 5);
INSERT INTO `finished` VALUES (742, 1, '34820358', 'm', '2019-11-03', 'Magdalene', NULL, 5);
INSERT INTO `finished` VALUES (743, 1, '34820623', 'm', '2019-11-03', 'Holy Terrain', NULL, 4);
INSERT INTO `finished` VALUES (744, 1, '34851088', 'm', '2019-11-03', 'home with you', NULL, 5);
INSERT INTO `finished` VALUES (745, 1, '25864210', 'm', '2019-10-28', 'Atlas: Oceans', NULL, 4);
INSERT INTO `finished` VALUES (746, 1, '26842972', 'm', '2019-10-28', 'Skiptracing', NULL, 4);
INSERT INTO `finished` VALUES (747, 1, '27060343', 'm', '2019-10-28', 'A Deeper Understanding / 深入理解', NULL, 5);
INSERT INTO `finished` VALUES (748, 1, '27120973', 'm', '2019-10-28', 'Freudian', NULL, 3);
INSERT INTO `finished` VALUES (749, 1, '27132077', 'm', '2019-10-28', 'MASSEDUCTION', NULL, 4);
INSERT INTO `finished` VALUES (750, 1, '30239493', 'm', '2019-10-28', 'ye', NULL, 4);
INSERT INTO `finished` VALUES (751, 1, '34808999', 'm', '2019-10-26', 'Crush', NULL, 5);
INSERT INTO `finished` VALUES (752, 1, '34865140', 'm', '2019-10-21', 'DHL', NULL, 5);
INSERT INTO `finished` VALUES (753, 1, '34794108', 'm', '2019-10-20', 'Two Hands', NULL, 4);
INSERT INTO `finished` VALUES (754, 1, '6972409', 'm', '2019-10-12', '萬能青年旅店 / 萬能青年旅店首張同名專輯臺灣版', NULL, 5);
INSERT INTO `finished` VALUES (755, 1, '26998314', 'm', '2019-10-12', 'Mono No Aware', NULL, 4);
INSERT INTO `finished` VALUES (756, 1, '27025577', 'm', '2019-10-12', 'After Laughter / 笑容背后', NULL, 3);
INSERT INTO `finished` VALUES (757, 1, '30323012', 'm', '2019-10-12', 'A Brief Inquiry Into Online Relationships / 网路交友的快问快答', NULL, 4);
INSERT INTO `finished` VALUES (758, 1, '19994870', 'm', '2019-10-12', '2', NULL, 4);
INSERT INTO `finished` VALUES (759, 1, '5959896', 'm', '2019-10-12', 'Helplessness Blues / 无奈蓝调', NULL, 4);
INSERT INTO `finished` VALUES (760, 1, '6753175', 'm', '2019-10-12', 'Hurry Up, We\'re Dreaming', NULL, 5);
INSERT INTO `finished` VALUES (761, 1, '11499053', 'm', '2019-10-12', 'Lonerism', NULL, NULL);
INSERT INTO `finished` VALUES (762, 1, '30319400', 'm', '2019-10-12', 'Safe In The Hands of Love', NULL, NULL);
INSERT INTO `finished` VALUES (763, 1, '27593439', 'm', '2019-10-12', 'In A Poem Unlimited', NULL, NULL);
INSERT INTO `finished` VALUES (764, 1, '30247066', 'm', '2019-10-12', 'Double Negative', NULL, 5);
INSERT INTO `finished` VALUES (765, 1, '26576796', 'm', '2019-10-12', 'Acid Rap / 瘾说唱', NULL, 4);
INSERT INTO `finished` VALUES (766, 1, '26386649', 'm', '2019-10-12', 'Currents / 摇滚趋势', NULL, 5);
INSERT INTO `finished` VALUES (767, 1, '4852038', 'm', '2019-10-12', 'The Suburbs / 郊区', NULL, 5);
INSERT INTO `finished` VALUES (768, 1, '30128087', 'm', '2019-10-12', 'Knock Knock', NULL, 4);
INSERT INTO `finished` VALUES (769, 1, '10450377', 'm', '2019-10-12', 'Visions / 呓语', NULL, 5);
INSERT INTO `finished` VALUES (770, 1, '30471613', 'm', '2019-10-12', 'U.F.O.F.', NULL, 4);
INSERT INTO `finished` VALUES (771, 1, '6129247', 'm', '2019-10-12', 'Bon Iver', NULL, 5);
INSERT INTO `finished` VALUES (772, 1, '30149281', 'm', '2019-10-12', 'Golden Hour / 镀金时光', NULL, 4);
INSERT INTO `finished` VALUES (773, 1, '26651208', 'm', '2019-10-12', 'Art Angels / 艺天使', NULL, 5);
INSERT INTO `finished` VALUES (774, 1, '21340805', 'm', '2019-10-12', 'Modern Vampires Of The City', NULL, NULL);
INSERT INTO `finished` VALUES (775, 1, '26339045', 'm', '2019-10-12', 'To Pimp a Butterfly / 破茧成蝶', NULL, NULL);
INSERT INTO `finished` VALUES (776, 1, '26884160', 'm', '2019-10-12', 'A Seat At The Table', NULL, 5);
INSERT INTO `finished` VALUES (777, 1, '27054760', 'm', '2019-10-12', 'Ctrl / 全面控制', NULL, 4);
INSERT INTO `finished` VALUES (778, 1, '26354131', 'm', '2019-10-12', 'In Colour / 多采多姿', NULL, 5);
INSERT INTO `finished` VALUES (779, 1, '34778970', 'm', '2019-10-05', 'All Mirrors', NULL, 5);
INSERT INTO `finished` VALUES (780, 1, '30176427', 'm', '2019-10-05', 'Lush', NULL, 4);
INSERT INTO `finished` VALUES (781, 1, '1456747', 'm', '2019-10-05', 'You Forgot It in People / 在人群中遗忘', NULL, 5);
INSERT INTO `finished` VALUES (782, 1, '2311180', 'm', '2019-10-01', 'Eulogy for Evolution / 进化赞', NULL, 5);
INSERT INTO `finished` VALUES (783, 1, '34444243', 'm', '2019-09-20', 'Jaime / 潔米', NULL, 4);
INSERT INTO `finished` VALUES (784, 1, '34264383', 'm', '2019-09-18', 'House Of Sugar', NULL, 4);
INSERT INTO `finished` VALUES (785, 1, '34431929', 'm', '2019-09-14', 'Charli / 酷娃恰莉', NULL, 4);
INSERT INTO `finished` VALUES (786, 1, '34668261', 'm', '2019-09-03', 'Norman F**king Rockwell / Norman F**king Rockwell! / NFR!', NULL, 5);
INSERT INTO `finished` VALUES (787, 1, '34463658', 'm', '2019-08-13', 'i,i', NULL, 5);
INSERT INTO `finished` VALUES (788, 1, '26324288', 'm', '2019-07-28', 'Sound & Color / 声与色', NULL, 4);
INSERT INTO `finished` VALUES (789, 1, '30416959', 'm', '2019-07-23', 'This Is How You Smile', NULL, 5);
INSERT INTO `finished` VALUES (790, 1, '26914189', 'm', '2019-07-17', '\"Awaken, My Love!\"', NULL, 5);
INSERT INTO `finished` VALUES (791, 1, '27621290', 'm', '2019-06-22', 'Twin Fantasy / Face to Face / 双子幻想曲', NULL, 5);
INSERT INTO `finished` VALUES (792, 1, '30335871', 'm', '2019-06-08', 'Honey / 甜蜜藥劑', NULL, 4);
INSERT INTO `finished` VALUES (793, 1, '21370521', 'm', '2019-06-03', 'Overgrown', NULL, 5);
INSERT INTO `finished` VALUES (794, 1, '33474630', 'm', '2019-05-31', 'Love Yourself / With My Whole Heart', NULL, 5);
INSERT INTO `finished` VALUES (795, 1, '27082400', 'm', '2019-05-30', 'Don’t Delete The Kisses', NULL, 5);
INSERT INTO `finished` VALUES (796, 1, '33451048', 'm', '2019-05-30', 'Blame It On Your Love', NULL, 3);
INSERT INTO `finished` VALUES (797, 1, '33451388', 'm', '2019-05-17', 'IGOR', NULL, 5);
INSERT INTO `finished` VALUES (798, 1, '1400691', 'm', '2019-05-05', 'Homogenic / 雌雄同体', NULL, 5);
INSERT INTO `finished` VALUES (799, 1, '33423861', 'm', '2019-04-30', 'Cellophane / 玻璃纸', NULL, 5);
INSERT INTO `finished` VALUES (800, 1, '25906182', 'm', '2019-04-29', 'LP1', NULL, 5);
INSERT INTO `finished` VALUES (801, 1, '24750727', 'm', '2019-04-01', 'Tape One', NULL, 5);
INSERT INTO `finished` VALUES (802, 1, '27032252', 'm', '2019-04-01', 'Carrie & Lowell Live', NULL, 4);
INSERT INTO `finished` VALUES (803, 1, '30450334', 'm', '2019-04-01', 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?', NULL, 3);
INSERT INTO `finished` VALUES (804, 1, '6710257', 'm', '2019-03-29', 'Islands / Islands - Essential Einaudi / Islands, Essential Einaudi', NULL, 3);
INSERT INTO `finished` VALUES (805, 1, '2209609', 'm', '2019-03-29', 'In Our Bedroom After the War', NULL, 4);
INSERT INTO `finished` VALUES (806, 1, '30150498', 'm', '2019-03-29', 'Moon River', NULL, 5);
INSERT INTO `finished` VALUES (807, 1, '3722223', 'm', '2019-03-29', 'melody/summer', NULL, 4);
INSERT INTO `finished` VALUES (808, 1, '24530022', 'm', '2019-03-29', '10 Day', NULL, 4);
INSERT INTO `finished` VALUES (809, 1, '26309543', 'm', '2019-03-29', 'Hero', NULL, 4);
INSERT INTO `finished` VALUES (810, 1, '4842477', 'm', '2019-03-29', 'Seven Swans', NULL, 5);
INSERT INTO `finished` VALUES (811, 1, '1900533', 'm', '2019-03-29', '「蟲師」オリジナル サウンドトラック 蟲(むしのね)音 後', NULL, 5);
INSERT INTO `finished` VALUES (812, 1, '19897634', 'm', '2019-03-13', 'Good Music Cruel Summer', NULL, 4);
INSERT INTO `finished` VALUES (813, 1, '30478468', 'm', '2019-03-02', 'When I Get Home / 当我回归', NULL, 4);
INSERT INTO `finished` VALUES (814, 1, '30439155', 'm', '2019-03-02', 'thank u, next', NULL, 3);
INSERT INTO `finished` VALUES (815, 1, '30343444', 'm', '2019-02-11', 'BALLADS 1', NULL, 4);
INSERT INTO `finished` VALUES (816, 1, '30419806', 'm', '2019-02-08', 'Assume Form / 想像未來', NULL, 4);
INSERT INTO `finished` VALUES (817, 1, '26941373', 'm', '2018-12-24', 'Merry Christmas Lil\' Mama', NULL, 5);
INSERT INTO `finished` VALUES (818, 1, '26349246', 'm', '2018-10-06', 'Taranta Project', NULL, 5);
INSERT INTO `finished` VALUES (819, 1, '30242284', 'm', '2018-08-31', 'Bloom / 绽放', NULL, 5);
INSERT INTO `finished` VALUES (820, 1, '30214373', 'm', '2018-08-15', 'Devotion / 挚爱', NULL, 5);
INSERT INTO `finished` VALUES (821, 1, '30271322', 'm', '2018-07-25', 'Summer Pack', NULL, 4);
INSERT INTO `finished` VALUES (822, 1, '30249944', 'm', '2018-07-25', 'Oil of Every Pearl\'s Un-Insides / OIL OF EVERY PEARL\'s UN-INSIDES', NULL, 5);
INSERT INTO `finished` VALUES (823, 1, '30179157', 'm', '2018-07-25', 'I\'m All Ears', NULL, 4);
INSERT INTO `finished` VALUES (824, 1, '6429662', 'm', '2018-07-04', '4', NULL, 3);
INSERT INTO `finished` VALUES (825, 1, '25790943', 'm', '2018-07-04', 'BEYONCÉ', NULL, 5);
INSERT INTO `finished` VALUES (826, 1, '26777577', 'm', '2018-07-04', 'Lemonade', NULL, 5);
INSERT INTO `finished` VALUES (827, 1, '6047593', 'm', '2018-06-14', 'House Of Balloons', NULL, 4);
INSERT INTO `finished` VALUES (828, 1, '10438410', 'm', '2018-06-14', 'Nostalgia, Ultra.', NULL, 5);
INSERT INTO `finished` VALUES (829, 1, '1438561', 'm', '2018-04-28', 'Brokeback Mountain / 断臂山电影原声', NULL, 5);
INSERT INTO `finished` VALUES (830, 1, '27060933', 'm', '2018-02-05', 'The Leftovers (Music from the HBO® Series) Season 3', NULL, 4);
INSERT INTO `finished` VALUES (831, 1, '24717047', 'm', '2018-02-03', 'Yeezus', NULL, 5);
INSERT INTO `finished` VALUES (832, 1, '27614271', 'm', '2018-01-18', 'Ephorize', NULL, 4);
INSERT INTO `finished` VALUES (833, 1, '26788103', 'm', '2018-01-08', 'The Colour In Anything / 内在光谱', NULL, 5);
INSERT INTO `finished` VALUES (834, 1, '27135307', 'm', '2017-12-25', 'Loving Vincent (Original Soundtrack Album) / 至爱梵高电影原声', NULL, 3);
INSERT INTO `finished` VALUES (835, 1, '27102518', 'm', '2017-12-25', 'Harmony of Difference / 多元共生之美', NULL, 4);
INSERT INTO `finished` VALUES (836, 1, '26911968', 'm', '2017-12-25', 'I See You / 相知', NULL, 3);
INSERT INTO `finished` VALUES (837, 1, '27036387', 'm', '2017-12-25', 'A Ghost Story (Original Soundtrack Album) / 鬼魅浮生电影原声', NULL, 4);
INSERT INTO `finished` VALUES (838, 1, '26918515', 'm', '2017-12-25', 'La La Land (Original Motion Picture Soundtrack)', NULL, 5);
INSERT INTO `finished` VALUES (839, 1, '27008518', 'm', '2017-12-25', 'Big Little Lies (Music From the HBO Limited Series)', NULL, 4);
INSERT INTO `finished` VALUES (840, 1, '27047877', 'm', '2017-12-25', 'Big Fish Theory / 大鱼理论', NULL, 4);
INSERT INTO `finished` VALUES (841, 1, '26981532', 'm', '2017-12-25', 'Arca / 卡仙子', NULL, 4);
INSERT INTO `finished` VALUES (842, 1, '27185891', 'm', '2017-12-25', 'Utopia / 乌托邦', NULL, 5);
INSERT INTO `finished` VALUES (843, 1, '26997057', 'm', '2017-12-25', 'async', NULL, 4);
INSERT INTO `finished` VALUES (844, 1, '27607627', 'm', '2017-12-25', 'Pop 2', NULL, 5);
INSERT INTO `finished` VALUES (845, 1, '27120792', 'm', '2017-12-19', 'Saturation II / SATURATION 2 / 饱和：第二弹', NULL, 4);
INSERT INTO `finished` VALUES (846, 1, '27604557', 'm', '2017-12-19', 'Saturation III / Saturation 3 / 饱和：第三弹', NULL, 4);
INSERT INTO `finished` VALUES (847, 1, '1432023', 'm', '2017-12-18', 'The Hours (Music From The Motion Picture)', NULL, 5);
INSERT INTO `finished` VALUES (848, 1, '27145991', 'm', '2017-11-24', 'The Greatest Gift / The Greatest Gift Mixtape', NULL, 5);
INSERT INTO `finished` VALUES (849, 1, '27178604', 'm', '2017-11-17', 'Everyday Is Christmas / 天天圣诞', NULL, 3);
INSERT INTO `finished` VALUES (850, 1, '27196180', 'm', '2017-11-13', 'Heiress', NULL, 3);
INSERT INTO `finished` VALUES (851, 1, '26302435', 'm', '2017-11-06', 'Carrie & Lowell / 凯莉和洛维', NULL, 5);
INSERT INTO `finished` VALUES (852, 1, '1417805', 'm', '2017-11-04', 'Illinoise', NULL, 5);
INSERT INTO `finished` VALUES (853, 1, '5255171', 'm', '2017-11-03', 'The Age Of Adz', NULL, 5);
INSERT INTO `finished` VALUES (854, 1, '27163740', 'm', '2017-11-03', 'The Thrill Of It All / 痛快感受', NULL, 3);
INSERT INTO `finished` VALUES (855, 1, '27166751', 'm', '2017-11-03', 'Call Me By Your Name (Original Motion Picture Soundtrack)', NULL, 5);
INSERT INTO `finished` VALUES (856, 1, '27182066', 'm', '2017-11-02', 'Plunge', NULL, 4);
INSERT INTO `finished` VALUES (857, 1, '27117899', 'm', '2017-11-02', 'Turn Out The Lights', NULL, 4);
INSERT INTO `finished` VALUES (858, 1, '27139481', 'm', '2017-10-13', 'The OOZ / 分泌', NULL, 5);
INSERT INTO `finished` VALUES (859, 1, '27103261', 'm', '2017-10-09', 'Take Me Apart', NULL, 4);
INSERT INTO `finished` VALUES (860, 1, '25795232', 'm', '2017-10-07', 'In The Lonely Hour / 寂寞时分', NULL, 5);
INSERT INTO `finished` VALUES (861, 1, '27140530', 'm', '2017-10-07', 'New Energy', NULL, 4);
INSERT INTO `finished` VALUES (862, 1, '27109475', 'm', '2017-10-06', 'Younger Now / 青春进行式', NULL, 3);
INSERT INTO `finished` VALUES (863, 1, '27087199', 'm', '2017-09-30', 'Aromanticism', NULL, 4);
INSERT INTO `finished` VALUES (864, 1, '27146202', 'm', '2017-09-20', 'Kids Only', NULL, 4);
INSERT INTO `finished` VALUES (865, 1, '27064058', 'm', '2017-09-12', 'Okovi', NULL, 5);
INSERT INTO `finished` VALUES (866, 1, '27130538', 'm', '2017-09-08', 'Too Good At Goodbyes', NULL, 5);
INSERT INTO `finished` VALUES (867, 1, '27076001', 'm', '2017-09-02', 'American Dream / 美国梦', NULL, 5);
INSERT INTO `finished` VALUES (868, 1, '27120991', 'm', '2017-08-26', 'Look What You Made Me Do / 看是你逼我的(台)', NULL, 1);
INSERT INTO `finished` VALUES (869, 1, '26434042', 'm', '2017-08-22', 'About Face', NULL, 5);
INSERT INTO `finished` VALUES (870, 1, '27084044', 'm', '2017-07-26', 'Flower Boy / 花季少男', NULL, 5);
INSERT INTO `finished` VALUES (871, 1, '27074606', 'm', '2017-07-23', 'Lust For Life', NULL, 5);
INSERT INTO `finished` VALUES (872, 1, '26988096', 'm', '2017-07-07', 'LANY', NULL, 3);
INSERT INTO `finished` VALUES (873, 1, '25934394', 'm', '2017-07-04', 'Hozier', NULL, 4);
INSERT INTO `finished` VALUES (874, 1, '26992306', 'm', '2017-06-18', 'Melodrama / 狂想曲', NULL, 5);
INSERT INTO `finished` VALUES (875, 1, '27065277', 'm', '2017-06-11', 'Free Me', NULL, 4);
INSERT INTO `finished` VALUES (876, 1, '26804971', 'm', '2017-06-11', 'Masterpiece', NULL, 3);
INSERT INTO `finished` VALUES (877, 1, '27065807', 'm', '2017-06-11', 'Inspired', NULL, 3);
INSERT INTO `finished` VALUES (878, 1, '27030405', 'm', '2017-06-11', 'Capacity', NULL, 4);
INSERT INTO `finished` VALUES (879, 1, '27006693', 'm', '2017-06-11', 'Planetarium / 天文馆', NULL, 4);
INSERT INTO `finished` VALUES (880, 1, '26988546', 'm', '2017-06-02', 'Relaxer', NULL, 4);
INSERT INTO `finished` VALUES (881, 1, '27004750', 'm', '2017-05-28', 'King Arthur: Legend of The Sword: Original Motion Picture Soun...', NULL, 4);
INSERT INTO `finished` VALUES (882, 1, '27055781', 'm', '2017-05-26', 'True Care', NULL, 4);
INSERT INTO `finished` VALUES (883, 1, '5359941', 'm', '2017-05-19', 'My Beautiful Dark Twisted Fantasy', NULL, 5);
INSERT INTO `finished` VALUES (884, 1, '26827150', 'm', '2017-05-19', 'My Woman', NULL, 4);
INSERT INTO `finished` VALUES (885, 1, '27008202', 'm', '2017-05-19', 'Compassion', NULL, 5);
INSERT INTO `finished` VALUES (886, 1, '27006707', 'm', '2017-05-19', 'Slowdive', NULL, 4);
INSERT INTO `finished` VALUES (887, 1, '4731019', 'm', '2017-05-15', 'This Is Happening / 现在进行式', NULL, 4);
INSERT INTO `finished` VALUES (888, 1, '27001209', 'm', '2017-05-15', 'No Shape / 无形', NULL, 5);
INSERT INTO `finished` VALUES (889, 1, '27036940', 'm', '2017-05-14', 'call the police / american dream', NULL, 5);
INSERT INTO `finished` VALUES (890, 1, '6067883', 'm', '2017-05-13', 'Helplessness Blues / 无奈蓝调', NULL, 4);
INSERT INTO `finished` VALUES (891, 1, '3101574', 'm', '2017-05-13', 'Fleet Foxes', NULL, 5);
INSERT INTO `finished` VALUES (892, 1, '26991499', 'm', '2017-05-13', 'Crack-Up', NULL, 5);
INSERT INTO `finished` VALUES (893, 1, '27037304', 'm', '2017-05-12', 'Malibu', NULL, 5);
INSERT INTO `finished` VALUES (894, 1, '5990053', 'm', '2017-05-11', 'James Vincent McMorrow', NULL, 5);
INSERT INTO `finished` VALUES (895, 1, '27025763', 'm', '2017-05-11', 'Guardians of the Galaxy Vol. 2: Awesome Mix Vol. 2 / 银河护卫队2原声', NULL, 5);
INSERT INTO `finished` VALUES (896, 1, '26964801', 'm', '2017-05-05', 'Afterglow', NULL, 4);
INSERT INTO `finished` VALUES (897, 1, '26668273', 'm', '2017-05-01', 'Blackstar / ★', NULL, 5);
INSERT INTO `finished` VALUES (898, 1, '26788783', 'm', '2017-05-01', 'A Moon Shaped Pool / 月形洼', NULL, 5);
INSERT INTO `finished` VALUES (899, 1, '3344873', 'm', '2017-05-01', 'songs by the tumbled sea', NULL, 5);
INSERT INTO `finished` VALUES (900, 1, '26995317', 'm', '2017-05-01', 'A Crow Looked At Me', NULL, 4);
INSERT INTO `finished` VALUES (901, 1, '26596288', 'm', '2017-05-01', 'Honeymoon', NULL, 5);
INSERT INTO `finished` VALUES (902, 1, '26999693', 'm', '2017-04-30', 'The Search for Everything / 无限探索', NULL, 4);
INSERT INTO `finished` VALUES (903, 1, '27031932', 'm', '2017-04-30', 'I\'m the One (feat. Justin Bieber, Quavo, Chance The Rapper, Li...', NULL, 3);
INSERT INTO `finished` VALUES (904, 1, '26967985', 'm', '2017-04-30', 'American Teen', NULL, 4);
INSERT INTO `finished` VALUES (905, 1, '27032358', 'm', '2017-04-30', 'Young And Menace', NULL, 3);
INSERT INTO `finished` VALUES (906, 1, '26792614', 'm', '2017-04-26', 'Coloring Book', NULL, 5);
INSERT INTO `finished` VALUES (907, 1, '26999241', 'm', '2017-04-25', 'More Life: A Playlist By October Firm', NULL, 4);
INSERT INTO `finished` VALUES (908, 1, '27014505', 'm', '2017-04-25', 'DAMN.', NULL, 5);
INSERT INTO `finished` VALUES (909, 1, '27025592', 'm', '2017-04-20', 'Lust For Life / 欲望人生', NULL, 4);
INSERT INTO `finished` VALUES (910, 1, '26332028', 'm', '2017-04-19', 'The Life of Pablo / T.L.O.P.', NULL, 5);
INSERT INTO `finished` VALUES (911, 1, '26907212', 'm', '2017-04-19', 'Process', NULL, 5);
INSERT INTO `finished` VALUES (912, 1, '10810770', 'm', '2017-04-16', 'channel ORANGE', NULL, 5);
INSERT INTO `finished` VALUES (913, 1, '26616272', 'm', '2017-03-22', 'Hamilton (2015 Original Broadway Cast Recording) / 音乐剧《亚历山...', NULL, 5);
INSERT INTO `finished` VALUES (914, 1, '26907510', 'm', '2017-03-22', 'The Hamilton Mixtape', NULL, 5);
INSERT INTO `finished` VALUES (915, 1, '26924585', 'm', '2017-03-19', 'Semper Femina', NULL, 5);
INSERT INTO `finished` VALUES (916, 1, '26994071', 'm', '2017-03-19', 'Chanel', NULL, 5);
INSERT INTO `finished` VALUES (917, 1, '26992919', 'm', '2017-03-19', 'Liability', NULL, 5);
INSERT INTO `finished` VALUES (918, 1, '26859478', 'm', '2017-03-15', 'Blonde', NULL, 5);
INSERT INTO `finished` VALUES (919, 1, '26854795', 'm', '2017-03-15', '22, A Million', NULL, 5);
INSERT INTO `finished` VALUES (920, 1, '26886984', 'm', '2017-03-15', 'Farewell, Starlite!', NULL, 4);
INSERT INTO `finished` VALUES (921, 1, '26978829', 'm', '2017-03-05', 'Love', NULL, 5);
INSERT INTO `finished` VALUES (922, 1, '1960229', 'm', '2017-01-25', 'Music For Tourists', NULL, 3);
INSERT INTO `finished` VALUES (923, 1, '26878898', 'm', '2016-11-20', 'Joanne', NULL, 5);
INSERT INTO `finished` VALUES (924, 1, '26283121', 'm', '2016-10-12', 'Human EP', NULL, 5);
INSERT INTO `finished` VALUES (925, 1, '3783626', 'm', '2016-08-05', 'The leaver and the left', NULL, 5);
INSERT INTO `finished` VALUES (926, 1, '20432031', 'm', '2016-07-31', 'For Now I Am Winter', NULL, 4);
INSERT INTO `finished` VALUES (927, 1, '24164804', 'm', '2016-07-31', 'Young And Beautiful', NULL, 5);
INSERT INTO `finished` VALUES (928, 1, '26629610', 'm', '2015-09-30', 'Runnin’ (Lose It All) (feat. Beyoncé & Arrow Benjamin)', NULL, 4);
INSERT INTO `finished` VALUES (929, 1, '26585302', 'm', '2015-08-10', 'High By The Beach', NULL, 4);
INSERT INTO `finished` VALUES (930, 1, '25803569', 'm', '2015-07-22', 'Sweater Weather', NULL, 5);
INSERT INTO `finished` VALUES (931, 1, '4196046', 'm', '2015-06-04', 'A Single Man', NULL, 5);
INSERT INTO `finished` VALUES (932, 1, '26347314', 'm', '2015-05-17', 'Communion', NULL, 4);
INSERT INTO `finished` VALUES (933, 1, '25770735', 'm', '2015-04-17', 'The Secret Life of Walter Mitty / 白日梦想家', NULL, 4);
INSERT INTO `finished` VALUES (934, 1, '26362557', 'm', '2015-04-15', 'See You Again (feat. Charlie Puth)', NULL, 5);
INSERT INTO `finished` VALUES (935, 1, '11628035', 'm', '2015-02-27', 'Happiness / 高兴', NULL, 4);
INSERT INTO `finished` VALUES (936, 1, '20432843', 'm', '2015-02-27', 'Long Way Down / 芦苇荡', NULL, 3);
INSERT INTO `finished` VALUES (937, 1, '26302722', 'm', '2015-02-27', 'Fifty Shades Of Grey (Original Motion Picture Soundtrack)', NULL, 4);
INSERT INTO `finished` VALUES (938, 1, '25976833', 'm', '2015-02-02', 'Whiplash / 爆裂鼓手电影原声', NULL, 5);
INSERT INTO `finished` VALUES (939, 1, '25961712', 'm', '2015-01-11', '1989', NULL, 4);
INSERT INTO `finished` VALUES (940, 1, '25808564', 'm', '2014-12-20', 'Torso', NULL, 4);
INSERT INTO `finished` VALUES (941, 1, '25939303', 'm', '2014-12-20', 'One Is Glad To Be Of Service', NULL, 5);
INSERT INTO `finished` VALUES (942, 1, '25986573', 'm', '2014-12-20', 'Sines', NULL, 4);
INSERT INTO `finished` VALUES (943, 1, '25805607', 'm', '2014-12-20', 'Underwater Cities / 水下城市', NULL, 5);
INSERT INTO `finished` VALUES (944, 1, '26196835', 'm', '2014-11-18', 'Interstellar: Original Motion Picture Soundtrack / 《星际穿越》', NULL, 5);
INSERT INTO `finished` VALUES (945, 1, '2131368', 'm', '2014-10-18', 'Once (Soundtrack) / Once / 电影《曾经》原声大碟', NULL, 5);
INSERT INTO `finished` VALUES (946, 1, '2287865', 'm', '2014-09-08', 'Afterglow', NULL, 5);
INSERT INTO `finished` VALUES (947, 1, '25960507', 'm', '2014-08-28', 'Shake It Off', NULL, 5);
INSERT INTO `finished` VALUES (948, 1, '3042588', 'm', '2014-08-15', 'Grace', NULL, 5);
INSERT INTO `finished` VALUES (949, 1, '2336423', 'm', '2014-08-10', 'Yael Naim', NULL, 5);
INSERT INTO `finished` VALUES (950, 1, '4116633', 'm', '2014-07-18', 'Fireflies', NULL, 4);
INSERT INTO `finished` VALUES (951, 1, '1939243', 'm', '2014-07-11', 'Yui', NULL, 5);
INSERT INTO `finished` VALUES (952, 1, '11624826', 'm', '2014-07-11', 'Kiss / Kiss: International Deluxe Edition / 么么哒', NULL, 4);
INSERT INTO `finished` VALUES (953, 1, '25904815', 'm', '2014-07-11', 'Maps', NULL, 3);
INSERT INTO `finished` VALUES (954, 1, '25862758', 'm', '2014-07-11', 'Love Runs Out / 感觉不会爱了', NULL, 4);
INSERT INTO `finished` VALUES (955, 1, '21336108', 'm', '2014-07-11', 'Native', NULL, 4);
INSERT INTO `finished` VALUES (956, 1, '1547155', 'm', '2014-07-11', 'Say I Am You', NULL, 5);
INSERT INTO `finished` VALUES (957, 1, '3908010', 'm', '2014-07-11', 'Everybody / 茫茫人海', NULL, 4);

-- ----------------------------
-- Table structure for mail_send_log
-- ----------------------------
DROP TABLE IF EXISTS `mail_send_log`;
CREATE TABLE `mail_send_log`  (
  `msgId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `status` smallint(1) NULL DEFAULT NULL,
  `routeKey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `exchange` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `tryTime` datetime(0) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`msgId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_send_log
-- ----------------------------
INSERT INTO `mail_send_log` VALUES ('153dc260-6bd2-4a71-9737-0ab07d1683ed', 19, 1, 'nightstand.mail.routeingKey', 'nightstand.mail.exchange', 0, '2020-03-22 14:32:04', '2020-03-22 14:31:04', '2020-03-22 14:31:04');
INSERT INTO `mail_send_log` VALUES ('72197311-8f0d-4788-be50-9bd6af55387d', 18, 1, 'nightstand.mail.routeingKey', 'nightstand.mail.exchange', 0, '2020-03-21 20:20:21', '2020-03-21 20:19:21', '2020-03-21 20:19:22');
INSERT INTO `mail_send_log` VALUES ('8da63d74-24bd-4f33-a0e2-e3336f57645f', 17, 1, 'nightstand.mail.routeingKey', 'nightstand.mail.exchange', 0, '2020-03-21 18:56:08', '2020-03-21 18:55:08', '2020-03-21 18:55:08');

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `iconCls` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keepAlive` tinyint(1) NULL DEFAULT NULL,
  `requireAuth` tinyint(1) NULL DEFAULT NULL COMMENT '是否需要登陆',
  `parentId` int(11) NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES (1, '/', '/', NULL, '所有', NULL, NULL, NULL, NULL, 1);
INSERT INTO `nav` VALUES (2, '/home/**', '/home', 'Home', '首页', NULL, NULL, 1, 1, 1);
INSERT INTO `nav` VALUES (5, '/userHome/**', '/userHome', 'UserHome', '我的首页', '', NULL, 1, 2, 1);
INSERT INTO `nav` VALUES (6, '/movie/main', '/movie/main', 'MoviePopular', '电影推荐', 'bookmark-fill', NULL, 1, 8, 1);
INSERT INTO `nav` VALUES (8, '/movie/**', '/movie', 'Home', 'Movie', 'skip-end', NULL, 1, 1, 1);
INSERT INTO `nav` VALUES (9, '/book/**', '/book', 'Home', 'Book', 'book', NULL, 1, 1, 1);
INSERT INTO `nav` VALUES (10, '/music/**', '/music', 'Home', 'Music', 'speaker', NULL, 1, 1, 1);
INSERT INTO `nav` VALUES (11, '/movie/edit', '/movie/edit', 'MovieEdit', '编辑电影推荐', 'pen', NULL, 1, 8, 1);
INSERT INTO `nav` VALUES (12, '/book/main', '/book/main', 'BookPopular', '图书推荐', 'bookmark-fill', NULL, 1, 9, 1);
INSERT INTO `nav` VALUES (13, '/book/edit', '/book/edit', 'BookEdit', '编辑图书推荐', 'pen', NULL, 1, 9, 1);
INSERT INTO `nav` VALUES (14, '/music/main', '/music/main', 'MusicPopular', '音乐推荐', 'bookmark-fill', NULL, 1, 10, 1);
INSERT INTO `nav` VALUES (15, '/music/edit', '/music/edit', 'MusicEdit', '音乐推荐编辑', 'pen', NULL, 1, 10, 1);
INSERT INTO `nav` VALUES (16, '/event/**', '/event', 'Home', 'Schedule', 'list-check', NULL, 1, 1, 1);
INSERT INTO `nav` VALUES (17, '/event/waiting', '/event/waiting', 'EventWaitingTable', '待计划', 'clock', NULL, 1, 16, 1);
INSERT INTO `nav` VALUES (18, '/event/schedule', '/event/schedule', 'EventSchedule', '规划日历', 'calendar', NULL, 1, 16, 1);
INSERT INTO `nav` VALUES (19, '/event/finished', '/event/finished', 'EventFinishedTable', '已完成', 'check-box', NULL, 1, 16, 1);

-- ----------------------------
-- Table structure for nav_role
-- ----------------------------
DROP TABLE IF EXISTS `nav_role`;
CREATE TABLE `nav_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NULL DEFAULT NULL COMMENT 'role id',
  `nid` int(11) NULL DEFAULT NULL COMMENT 'nav id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  INDEX `nid`(`nid`) USING BTREE,
  CONSTRAINT `nav_role_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nav_role_ibfk_2` FOREIGN KEY (`nid`) REFERENCES `nav` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nav_role
-- ----------------------------
INSERT INTO `nav_role` VALUES (17, 5, 8);
INSERT INTO `nav_role` VALUES (18, 5, 11);
INSERT INTO `nav_role` VALUES (19, 5, 5);
INSERT INTO `nav_role` VALUES (20, 5, 2);
INSERT INTO `nav_role` VALUES (21, 5, 9);
INSERT INTO `nav_role` VALUES (22, 5, 10);
INSERT INTO `nav_role` VALUES (23, 5, 16);

-- ----------------------------
-- Table structure for recommendlist
-- ----------------------------
DROP TABLE IF EXISTS `recommendlist`;
CREATE TABLE `recommendlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列表标题',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '列表简介',
  `items` json NULL COMMENT '代表items列表的json,item有以下字段: id,type,title',
  `pubTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommendlist
-- ----------------------------
INSERT INTO `recommendlist` VALUES (2, 1, '今敏大师作品集', '天妒英才。', '[{\"id\": \"1307394\", \"type\": \"f\", \"title\": \"千年女优\"}, {\"id\": \"1310177\", \"type\": \"f\", \"title\": \"东京教父\"}, {\"id\": \"1395091\", \"type\": \"f\", \"title\": \"未麻的部屋\"}, {\"id\": \"1865703\", \"type\": \"f\", \"title\": \"红辣椒\"}]', '2020-03-20 11:32:09');
INSERT INTO `recommendlist` VALUES (3, 1, '2019的奥斯卡热门', '2019年是电影大年，奥斯卡颁奖现场神仙打架。', '[{\"id\": \"27010768\", \"type\": \"f\", \"title\": \"寄生虫\"}, {\"id\": \"27119724\", \"type\": \"f\", \"title\": \"小丑\"}, {\"id\": \"27087724\", \"type\": \"f\", \"title\": \"好莱坞往事\"}, {\"id\": \"6981153\", \"type\": \"f\", \"title\": \"爱尔兰人\"}, {\"id\": \"30252495\", \"type\": \"f\", \"title\": \"1917\"}, {\"id\": \"30170546\", \"type\": \"f\", \"title\": \"乔乔的异想世界\"}, {\"id\": \"26348103\", \"type\": \"f\", \"title\": \"小妇人\"}, {\"id\": \"27202818\", \"type\": \"f\", \"title\": \"婚姻故事\"}]', '2020-03-20 16:09:45');
INSERT INTO `recommendlist` VALUES (4, 1, '加缪的书', '', '[{\"id\": \"26826605\", \"type\": \"b\", \"title\": \"加缪手记\"}, {\"id\": \"4908885\", \"type\": \"b\", \"title\": \"局外人\"}, {\"id\": \"24257229\", \"type\": \"b\", \"title\": \"鼠疫\"}, {\"id\": \"24257448\", \"type\": \"b\", \"title\": \"反抗者\"}, {\"id\": \"5312095\", \"type\": \"b\", \"title\": \"西西弗神话\"}]', '2020-03-20 16:10:07');
INSERT INTO `recommendlist` VALUES (5, 1, '村上春树', '啊，没看多少。。。', '[{\"id\": \"4742918\", \"type\": \"b\", \"title\": \"1Q84 BOOK 1\"}, {\"id\": \"4885241\", \"type\": \"b\", \"title\": \"1Q84 BOOK 2\"}, {\"id\": \"5502995\", \"type\": \"b\", \"title\": \"1Q84 BOOK 3\"}, {\"id\": \"1046265\", \"type\": \"b\", \"title\": \"挪威的森林\"}]', '2020-03-20 16:30:55');
INSERT INTO `recommendlist` VALUES (6, 1, '我...', '测试一下', '[{\"id\": \"1403640\", \"type\": \"m\", \"title\": \"我愿意\"}, {\"id\": \"1402197\", \"type\": \"m\", \"title\": \"我依然爱你\"}, {\"id\": \"1404450\", \"type\": \"m\", \"title\": \"我的心太亂\"}, {\"id\": \"1403309\", \"type\": \"m\", \"title\": \"我的丁文琪\"}]', '2020-03-20 17:09:08');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色标识id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'movieManager');
INSERT INTO `role` VALUES (3, 'bookManager');
INSERT INTO `role` VALUES (4, 'musicManager');
INSERT INTO `role` VALUES (5, 'user');
INSERT INTO `role` VALUES (6, 'guest');

-- ----------------------------
-- Table structure for scheduled
-- ----------------------------
DROP TABLE IF EXISTS `scheduled`;
CREATE TABLE `scheduled`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL,
  `due` date NOT NULL,
  `eventId` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventType` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `informed` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `achieved` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scheduled
-- ----------------------------
INSERT INTO `scheduled` VALUES (2, 1, '2020-03-17', '12321', 'b', 0, 0, 'aaaa');
INSERT INTO `scheduled` VALUES (3, 1, '2020-03-16', 'tte5231425', 'f', 0, 0, 'dyqugxix');
INSERT INTO `scheduled` VALUES (7, 1, '2020-03-21', '1306662', 'f', 0, 0, '死亡幻觉 / Donnie Darko');
INSERT INTO `scheduled` VALUES (8, 1, '2020-03-22', '1291851', 'f', 0, 0, '小武');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识id',
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名，最大字符长度10',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '注册邮箱',
  `userface` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像的url地址',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人简介',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '激活码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'jack', '6422@qq.com', 'https://img3.doubanio.com/icon/ul91835006-102.jpg', 'JACK', 'hell! abcdefg', '$2a$10$yOT4/zlYQyUgBGmgdW6INOz3LcT85y9.yyjOvBjUlODvhTeP4RaB.', 1, NULL);
INSERT INTO `user` VALUES (17, 'rose', '642861404@qq.com', NULL, 'ROSE', '我是泰坦尼克号生存下来的人...', '$2a$10$qqEM732nGuHKzi2JNr5MB.UcDUo/uzBuQuiHDYr8erhe6BoFzkimq', 1, '4ed4a946-1ccc-4b33-b997-469dee0e9c7a');
INSERT INTO `user` VALUES (18, 'tom', '642861404@qq.com', NULL, '阿汤', '我叫阿汤', '$2a$10$b3VH61NCJXp6BRE7bSyzNednkukvBNJuek5LMdZoYgzh5wvs6nqdW', 1, 'ab2b09c0-4fd5-4470-b503-229d7dc2168c');
INSERT INTO `user` VALUES (19, 'ali', '642861404@qq.com', NULL, '阿里', '我叫阿里', '$2a$10$KRkAhYCuhmJdrmlC4i8CfeZf5Gs0Y8el6ZlPm9kzdnkUsHF.o7aQm', 1, 'cc9c5736-60c4-4c43-b9c5-a42b0e3c940e');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 1, 5);
INSERT INTO `user_role` VALUES (18, 17, 6);
INSERT INTO `user_role` VALUES (19, 18, 5);
INSERT INTO `user_role` VALUES (20, 19, 5);

-- ----------------------------
-- Table structure for waiting
-- ----------------------------
DROP TABLE IF EXISTS `waiting`;
CREATE TABLE `waiting`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL,
  `eventId` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventType` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_wait`(`uid`, `eventId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 491 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waiting
-- ----------------------------
INSERT INTO `waiting` VALUES (11, 1, '30295442', 'm', 'Honeybloom');
INSERT INTO `waiting` VALUES (12, 1, '27044064', 'm', 'Black Origami');
INSERT INTO `waiting` VALUES (13, 1, '26949253', 'm', 'Either/Or: Expanded Edition / 模棱两可');
INSERT INTO `waiting` VALUES (14, 1, '22770967', 'm', 'Seven Lions');
INSERT INTO `waiting` VALUES (15, 1, '10829914', 'm', 'Who You Are Is Not Enough');
INSERT INTO `waiting` VALUES (16, 1, '25861394', 'm', '天宫图');
INSERT INTO `waiting` VALUES (17, 1, '3776009', 'm', 'All Is Wild');
INSERT INTO `waiting` VALUES (18, 1, '25816790', 'm', 'Enochian');
INSERT INTO `waiting` VALUES (19, 1, '34960201', 'f', '列夫·朗道：娜塔莎 / DAU. Natasha');
INSERT INTO `waiting` VALUES (20, 1, '27032162', 'f', '漩涡俱乐部 / The Eddy');
INSERT INTO `waiting` VALUES (21, 1, '33411505', 'f', '从不，很少，有时，总是 / Never Rarely Sometimes Always');
INSERT INTO `waiting` VALUES (22, 1, '34603816', 'f', '温蒂妮 / Undine');
INSERT INTO `waiting` VALUES (23, 1, '34955843', 'f', '真雄起 / Shubh Mangal Zyada Saavdhan');
INSERT INTO `waiting` VALUES (24, 1, '3369426', 'f', 'T省的84·85年');
INSERT INTO `waiting` VALUES (25, 1, '30300279', 'f', '法兰西特派 / The French Dispatch');
INSERT INTO `waiting` VALUES (26, 1, '34966169', 'f', '性爱自修室 第三季 / Sex Education Season 3');
INSERT INTO `waiting` VALUES (27, 1, '27044303', 'f', '幸福谷 第三季 / Happy Valley Season 3');
INSERT INTO `waiting` VALUES (28, 1, '1293564', 'f', '木兰花 / Magnolia');
INSERT INTO `waiting` VALUES (29, 1, '1292965', 'f', '不羁夜 / Boogie Nights');
INSERT INTO `waiting` VALUES (30, 1, '34868361', 'f', '日子');
INSERT INTO `waiting` VALUES (31, 1, '30444960', 'f', '信条 / Tenet');
INSERT INTO `waiting` VALUES (32, 1, '27109326', 'f', '做你喜欢的人 / Hazlo Como Hombre');
INSERT INTO `waiting` VALUES (33, 1, '30211998', 'f', '绅士们 / The Gentlemen');
INSERT INTO `waiting` VALUES (34, 1, '34907309', 'f', '别惹猫咪：追捕虐猫者 / Don\'t F**k with Cats: Hunting an Intern...');
INSERT INTO `waiting` VALUES (35, 1, '1293071', 'f', '野草莓 / Smultronstället');
INSERT INTO `waiting` VALUES (36, 1, '34926605', 'f', '我爷爷是同性恋');
INSERT INTO `waiting` VALUES (37, 1, '4304402', 'f', '精英部队2：大敌当前 / Tropa de Elite 2 - O Inimigo Agora É ...');
INSERT INTO `waiting` VALUES (38, 1, '1292348', 'f', '洛城机密 / L.A. Confidential');
INSERT INTO `waiting` VALUES (39, 1, '2027938', 'f', '神探');
INSERT INTO `waiting` VALUES (40, 1, '1292214', 'f', '非常嫌疑犯 / The Usual Suspects');
INSERT INTO `waiting` VALUES (41, 1, '27012433', 'f', '阿尔法围棋 / AlphaGo');
INSERT INTO `waiting` VALUES (43, 1, '1293092', 'f', '沙丘 / Dune');
INSERT INTO `waiting` VALUES (44, 1, '1417084', 'f', '黑暗扫描仪 / A Scanner Darkly');
INSERT INTO `waiting` VALUES (45, 1, '1293958', 'f', '为所应为 / Do the Right Thing');
INSERT INTO `waiting` VALUES (46, 1, '1292872', 'f', '街区男孩 / Boyz n the Hood');
INSERT INTO `waiting` VALUES (47, 1, '3007826', 'f', '摔角王 / The Wrestler');
INSERT INTO `waiting` VALUES (48, 1, '1292772', 'f', '喜剧之王 / The King of Comedy');
INSERT INTO `waiting` VALUES (49, 1, '27032656', 'f', '1985');
INSERT INTO `waiting` VALUES (50, 1, '26710369', 'f', '纪念品 / The Souvenir');
INSERT INTO `waiting` VALUES (51, 1, '3749974', 'f', '皮囊之下 / Under the Skin');
INSERT INTO `waiting` VALUES (52, 1, '1297880', 'f', '芙蓉镇');
INSERT INTO `waiting` VALUES (53, 1, '30414812', 'f', '轮回派对 第一季 / Russian Doll Season 1');
INSERT INTO `waiting` VALUES (54, 1, '33417030', 'f', '悲惨世界 / Les misérables');
INSERT INTO `waiting` VALUES (55, 1, '26992330', 'f', '暗黑 第一季 / Dark Season 1');
INSERT INTO `waiting` VALUES (56, 1, '34845795', 'f', '政客 第二季 / The Politician Season 2');
INSERT INTO `waiting` VALUES (57, 1, '1305085', 'f', '盗马贼');
INSERT INTO `waiting` VALUES (59, 1, '4060797', 'f', '培根：男人与竞技场 / Bacon\'s Arena');
INSERT INTO `waiting` VALUES (60, 1, '30214057', 'f', '橡皮海豚 / Dolfin Megumi');
INSERT INTO `waiting` VALUES (61, 1, '3078409', 'f', '古驰 / Gucci');
INSERT INTO `waiting` VALUES (62, 1, '30458442', 'f', '动物狂想曲 / BEASTARS');
INSERT INTO `waiting` VALUES (63, 1, '2133337', 'f', '斯图尔特：倒带人生 / Stuart: A Life Backwards');
INSERT INTO `waiting` VALUES (64, 1, '21098725', 'f', '和谐课程 / Уроки гармонии');
INSERT INTO `waiting` VALUES (65, 1, '25830985', 'f', '盗火者：中国教育改革调查 / 盜火者：中國教育改革調查');
INSERT INTO `waiting` VALUES (66, 1, '34869441', 'f', '超新星 / Supernova');
INSERT INTO `waiting` VALUES (67, 1, '4009651', 'f', '斗牛');
INSERT INTO `waiting` VALUES (68, 1, '25859495', 'f', '思悼 / 사도');
INSERT INTO `waiting` VALUES (69, 1, '30371819', 'f', '热带雨');
INSERT INTO `waiting` VALUES (70, 1, '26727890', 'f', '女教师 / Učiteľka');
INSERT INTO `waiting` VALUES (71, 1, '1304576', 'f', '忏悔 / Покаяние');
INSERT INTO `waiting` VALUES (72, 1, '1301867', 'f', '烈日灼人 / Утомлённые солнцем');
INSERT INTO `waiting` VALUES (73, 1, '25908051', 'f', '间谍之桥 / Bridge of Spies');
INSERT INTO `waiting` VALUES (74, 1, '2133370', 'f', '冷战疑云 / The Company');
INSERT INTO `waiting` VALUES (75, 1, '27608785', 'f', '沉默的教室 / Das schweigende Klassenzimmer');
INSERT INTO `waiting` VALUES (76, 1, '25804252', 'f', '博恩霍姆大街 / Bornholmer Straße');
INSERT INTO `waiting` VALUES (77, 1, '10438581', 'f', '芭芭拉 / Barbara');
INSERT INTO `waiting` VALUES (78, 1, '1432631', 'f', '通往自由的通道 / Der Tunnel');
INSERT INTO `waiting` VALUES (79, 1, '33462337', 'f', '明天之前');
INSERT INTO `waiting` VALUES (80, 1, '25817534', 'f', '哭声 / 곡성');
INSERT INTO `waiting` VALUES (81, 1, '1293663', 'f', '天国与地狱 / 天国と地獄');
INSERT INTO `waiting` VALUES (82, 1, '33428622', 'f', '叔·叔');
INSERT INTO `waiting` VALUES (83, 1, '27198172', 'f', '无声好友 第一季 / This Close Season 1');
INSERT INTO `waiting` VALUES (84, 1, '30338164', 'f', '罪梦者 / 罪夢者');
INSERT INTO `waiting` VALUES (85, 1, '30288638', 'f', '仲夏夜惊魂 / Midsommar');
INSERT INTO `waiting` VALUES (86, 1, '30446496', 'f', '女高中生的虚度日常 / 女子高生の無駄づかい');
INSERT INTO `waiting` VALUES (87, 1, '30299714', 'f', '悦纳新自我 / Living with Yourself');
INSERT INTO `waiting` VALUES (88, 1, '1292218', 'f', '中央车站 / Central do Brasil');
INSERT INTO `waiting` VALUES (89, 1, '25884741', 'f', '美国甜心 / American Honey');
INSERT INTO `waiting` VALUES (90, 1, '1293155', 'f', '愤怒的公牛 / Raging Bull');
INSERT INTO `waiting` VALUES (91, 1, '1420225', 'f', '沼泽 / La Ciénaga');
INSERT INTO `waiting` VALUES (92, 1, '24719134', 'f', '扎马 / Zama');
INSERT INTO `waiting` VALUES (93, 1, '26952994', 'f', '马丁·伊登 / Martin Eden');
INSERT INTO `waiting` VALUES (94, 1, '10745208', 'f', '我控诉 / J\'accuse');
INSERT INTO `waiting` VALUES (95, 1, '34606671', 'f', '继园台七号 / 繼園臺七號');
INSERT INTO `waiting` VALUES (96, 1, '1293824', 'f', '蝴蝶梦 / Rebecca');
INSERT INTO `waiting` VALUES (97, 1, '1300267', 'f', '乱世佳人 / Gone with the Wind');
INSERT INTO `waiting` VALUES (98, 1, '1293492', 'f', '战舰波将金号 / Броненосец Потёмкин');
INSERT INTO `waiting` VALUES (99, 1, '26834159', 'f', '自助洗衣店 / The Laundromat');
INSERT INTO `waiting` VALUES (100, 1, '1296736', 'f', '钢琴家 / The Pianist');
INSERT INTO `waiting` VALUES (101, 1, '1295287', 'f', '党同伐异 / Intolerance: Love\'s Struggle Throughout the Ages');
INSERT INTO `waiting` VALUES (102, 1, '1300306', 'f', '一个国家的诞生 / The Birth of a Nation');
INSERT INTO `waiting` VALUES (103, 1, '1294139', 'f', '似水流年');
INSERT INTO `waiting` VALUES (104, 1, '26846856', 'f', '好兆头 / Good Omens');
INSERT INTO `waiting` VALUES (105, 1, '26895436', 'f', '水之北 / The North Water');
INSERT INTO `waiting` VALUES (106, 1, '34801038', 'f', '黑客帝国4 / The Matrix 4');
INSERT INTO `waiting` VALUES (107, 1, '27115166', 'f', '好小子们 / Good Boys');
INSERT INTO `waiting` VALUES (108, 1, '1401526', 'f', '摄氏零度·春光再现 / 攝氏零度·春光再現');
INSERT INTO `waiting` VALUES (109, 1, '30390144', 'f', '别告诉她 / The Farewell');
INSERT INTO `waiting` VALUES (110, 1, '30454227', 'f', '摩登家庭 第十一季 / Modern Family Season 11');
INSERT INTO `waiting` VALUES (111, 1, '30482587', 'f', '新·奥特曼 / シン・ウルトラマン');
INSERT INTO `waiting` VALUES (112, 1, '2059321', 'f', '破碎的拥抱 / Los abrazos rotos');
INSERT INTO `waiting` VALUES (113, 1, '34437886', 'f', '粉雄救兵 第五季 / Queer Eye Season 5');
INSERT INTO `waiting` VALUES (114, 1, '26701196', 'f', '无主之作 / Werk ohne Autor');
INSERT INTO `waiting` VALUES (115, 1, '26794435', 'f', '哪吒之魔童降世');
INSERT INTO `waiting` VALUES (116, 1, '27194292', 'f', '怪奇物语 第四季 / Stranger Things Season 4');
INSERT INTO `waiting` VALUES (117, 1, '10428501', 'f', '新世纪福音战士新剧场版：终 / シン・エヴァンゲリオン劇場版:|▎');
INSERT INTO `waiting` VALUES (118, 1, '26372545', 'f', '野马 / Mustang');
INSERT INTO `waiting` VALUES (119, 1, '6538833', 'f', '内布拉斯加 / Nebraska');
INSERT INTO `waiting` VALUES (120, 1, '1361276', 'f', '八部半 / 8½');
INSERT INTO `waiting` VALUES (121, 1, '26353881', 'f', '索尔之子 / Saul fia');
INSERT INTO `waiting` VALUES (122, 1, '1292055', 'f', '再见列宁 / Good Bye Lenin!');
INSERT INTO `waiting` VALUES (123, 1, '4915107', 'f', '留下我 / Leave Me');
INSERT INTO `waiting` VALUES (124, 1, '24525283', 'f', '利维坦 / Левиафан');
INSERT INTO `waiting` VALUES (125, 1, '1303459', 'f', '妖夜慌踪 / Lost Highway');
INSERT INTO `waiting` VALUES (126, 1, '1291877', 'f', '两生花 / La double vie de Véronique');
INSERT INTO `waiting` VALUES (127, 1, '4030657', 'f', '勒阿弗尔 / Le Havre');
INSERT INTO `waiting` VALUES (128, 1, '1292719', 'f', '大路 / La strada');
INSERT INTO `waiting` VALUES (129, 1, '1293929', 'f', '廊桥遗梦 / The Bridges of Madison County');
INSERT INTO `waiting` VALUES (130, 1, '1498818', 'f', '通天塔 / Babel');
INSERT INTO `waiting` VALUES (131, 1, '1308833', 'f', '空房间 / 빈집');
INSERT INTO `waiting` VALUES (132, 1, '5360890', 'f', '羞耻 / Shame');
INSERT INTO `waiting` VALUES (133, 1, '26296258', 'f', '胡丽叶塔 / Julieta');
INSERT INTO `waiting` VALUES (134, 1, '1302050', 'f', '广岛之恋 / Hiroshima mon amour');
INSERT INTO `waiting` VALUES (135, 1, '5972040', 'f', '单车少年 / Le gamin au vélo');
INSERT INTO `waiting` VALUES (136, 1, '10484041', 'f', '横道世之介');
INSERT INTO `waiting` VALUES (137, 1, '1293414', 'f', '阮玲玉');
INSERT INTO `waiting` VALUES (138, 1, '1438652', 'f', '无耻混蛋 / Inglourious Basterds');
INSERT INTO `waiting` VALUES (139, 1, '2132495', 'f', '朱诺 / Juno');
INSERT INTO `waiting` VALUES (140, 1, '3071604', 'f', '丹麦女孩 / The Danish Girl');
INSERT INTO `waiting` VALUES (141, 1, '1308074', 'f', '回归 / Возвращение');
INSERT INTO `waiting` VALUES (142, 1, '1303145', 'f', '薄荷糖 / 박하사탕');
INSERT INTO `waiting` VALUES (143, 1, '1291568', 'f', '东京物语 / 東京物語');
INSERT INTO `waiting` VALUES (144, 1, '7152895', 'f', '听说桐岛要退部 / 桐島、部活やめるってよ');
INSERT INTO `waiting` VALUES (145, 1, '6307447', 'f', '被解救的姜戈 / Django Unchained');
INSERT INTO `waiting` VALUES (146, 1, '3534824', 'f', '空气人偶 / 空気人形');
INSERT INTO `waiting` VALUES (147, 1, '3683521', 'f', '在某处 / Somewhere');
INSERT INTO `waiting` VALUES (148, 1, '1303357', 'f', '纸月亮 / Paper Moon');
INSERT INTO `waiting` VALUES (149, 1, '1308960', 'f', '金赛性学教授 / Kinsey');
INSERT INTO `waiting` VALUES (150, 1, '25941405', 'f', '金翅雀 / The Goldfinch');
INSERT INTO `waiting` VALUES (151, 1, '1937946', 'f', '穿越时空的少女 / 時をかける少女');
INSERT INTO `waiting` VALUES (152, 1, '1301409', 'f', '杀出个黎明 / From Dusk Till Dawn');
INSERT INTO `waiting` VALUES (153, 1, '30488005', 'f', '我很容易找到 / I Am Easy to Find');
INSERT INTO `waiting` VALUES (154, 1, '26553290', 'f', '太空生活 / High Life');
INSERT INTO `waiting` VALUES (155, 1, '24860318', 'f', '但丁密码 / Inferno');
INSERT INTO `waiting` VALUES (156, 1, '1302434', 'f', '机动部队 / PTU');
INSERT INTO `waiting` VALUES (157, 1, '33427659', 'f', '我们与天空的距离 / Η απόσταση ανάμεσα στ...');
INSERT INTO `waiting` VALUES (158, 1, '10521477', 'f', '未来海岸 / Praia do Futuro');
INSERT INTO `waiting` VALUES (159, 1, '1292341', 'f', '性、谎言和录像带 / Sex');
INSERT INTO `waiting` VALUES (160, 1, '2286642', 'f', '名侦探柯南：贝克街的亡灵 / 名探偵コナン ベイカー街の亡霊');
INSERT INTO `waiting` VALUES (161, 1, '1486221', 'f', '英版同志亦凡人 第一季 / Queer as Folk Season 1');
INSERT INTO `waiting` VALUES (162, 1, '30394484', 'f', '然后我们跳了舞 / და ჩვენ ვიცე...');
INSERT INTO `waiting` VALUES (163, 1, '24389792', 'f', '巴克劳 / Bacurau');
INSERT INTO `waiting` VALUES (164, 1, '27097041', 'f', '希尔达 第一季 / Hilda Season 1');
INSERT INTO `waiting` VALUES (165, 1, '30223888', 'f', '永恒族 / The Eternals');
INSERT INTO `waiting` VALUES (166, 1, '3008247', 'f', '穿条纹睡衣的男孩 / The Boy in the Striped Pajamas');
INSERT INTO `waiting` VALUES (167, 1, '1296717', 'f', '夺宝奇兵 / Raiders of the Lost Ark');
INSERT INTO `waiting` VALUES (168, 1, '7051249', 'f', '解码数学 / The Code');
INSERT INTO `waiting` VALUES (169, 1, '3194941', 'f', '维度：数学漫步 / Dimensions: A Walk Through Mathematics');
INSERT INTO `waiting` VALUES (170, 1, '26959115', 'f', '小小乔 / Little Joe');
INSERT INTO `waiting` VALUES (171, 1, '26341593', 'f', '某种女人 / Certain Women');
INSERT INTO `waiting` VALUES (172, 1, '27036366', 'f', '猴子 / Monos');
INSERT INTO `waiting` VALUES (173, 1, '30150661', 'f', '弗兰琪 / Frankie');
INSERT INTO `waiting` VALUES (174, 1, '30134129', 'f', '马蒂亚斯与马克西姆 / Matthias & Maxime');
INSERT INTO `waiting` VALUES (175, 1, '30179836', 'f', '我们仨 / Somos tr3s');
INSERT INTO `waiting` VALUES (176, 1, '3036460', 'f', '母亲 / 마더');
INSERT INTO `waiting` VALUES (177, 1, '6540541', 'f', '都市急救线 / Sirens');
INSERT INTO `waiting` VALUES (178, 1, '26790580', 'f', '电子梦：菲利普·狄克的世界 / Philip K. Dick\'s Electric Dreams');
INSERT INTO `waiting` VALUES (179, 1, '1763905', 'f', '我是 / Jestem');
INSERT INTO `waiting` VALUES (180, 1, '26954859', 'f', '兰心大剧院');
INSERT INTO `waiting` VALUES (181, 1, '1302642', 'f', '花火 / HANA-BI');
INSERT INTO `waiting` VALUES (182, 1, '1307681', 'f', '榴莲飘飘 / 榴槤飄飄');
INSERT INTO `waiting` VALUES (183, 1, '30140231', 'f', '沦落人 / 淪落人');
INSERT INTO `waiting` VALUES (184, 1, '1306861', 'f', '我是山姆 / I Am Sam');
INSERT INTO `waiting` VALUES (185, 1, '30302136', 'f', '番石榴岛 / Guava Island');
INSERT INTO `waiting` VALUES (186, 1, '1303364', 'f', '资产阶级的审慎魅力 / Le charme discret de la bourgeoisie');
INSERT INTO `waiting` VALUES (187, 1, '1297203', 'f', '着魔 / Possession');
INSERT INTO `waiting` VALUES (188, 1, '1307997', 'f', '祝福 / สุดเสน่หา');
INSERT INTO `waiting` VALUES (189, 1, '1414808', 'f', '热带疾病 / สัตว์ประหลาด');
INSERT INTO `waiting` VALUES (190, 1, '4917726', 'f', '阳光姐妹淘 / 써니');
INSERT INTO `waiting` VALUES (191, 1, '30135113', 'f', '骡子 / The Mule');
INSERT INTO `waiting` VALUES (192, 1, '1307067', 'f', '战争与和平 / Война и мир');
INSERT INTO `waiting` VALUES (193, 1, '1793922', 'f', '我不在那儿 / I\'m Not There');
INSERT INTO `waiting` VALUES (194, 1, '1296753', 'f', '卡萨布兰卡 / Casablanca');
INSERT INTO `waiting` VALUES (195, 1, '1308774', 'f', '华氏911 / Fahrenheit 9/11');
INSERT INTO `waiting` VALUES (196, 1, '1292347', 'f', '黑客帝国动画版 / The Animatrix');
INSERT INTO `waiting` VALUES (197, 1, '3001114', 'f', '沙丘 / Dune');
INSERT INTO `waiting` VALUES (198, 1, '27099095', 'f', '大护法2');
INSERT INTO `waiting` VALUES (199, 1, '1291850', 'f', '站台');
INSERT INTO `waiting` VALUES (200, 1, '1902947', 'f', '费城永远阳光灿烂 第一季 / It\'s Always Sunny in Philadelphia Se...');
INSERT INTO `waiting` VALUES (201, 1, '1297665', 'f', '盖瑞 / Gerry');
INSERT INTO `waiting` VALUES (202, 1, '1689787', 'f', '回归 / Volver');
INSERT INTO `waiting` VALUES (203, 1, '30482958', 'f', '百年孤独 / Cien años de soledad');
INSERT INTO `waiting` VALUES (204, 1, '25870483', 'f', '它在身后 / It Follows');
INSERT INTO `waiting` VALUES (205, 1, '27066187', 'f', '麦昆 / McQueen');
INSERT INTO `waiting` VALUES (206, 1, '1872133', 'f', '三峡好人');
INSERT INTO `waiting` VALUES (207, 1, '1299292', 'f', '八美图 / 8 femmes');
INSERT INTO `waiting` VALUES (208, 1, '24888580', 'f', '莱蒙诺夫 / Limonov');
INSERT INTO `waiting` VALUES (209, 1, '24324730', 'f', '爸妈不在家 / 爸媽不在家');
INSERT INTO `waiting` VALUES (210, 1, '26351864', 'f', '风林火山 / 風林火山');
INSERT INTO `waiting` VALUES (211, 1, '30225018', 'f', '花明度');
INSERT INTO `waiting` VALUES (212, 1, '3742987', 'f', '小小的白色谎言 / Les petits mouchoirs');
INSERT INTO `waiting` VALUES (213, 1, '30414802', 'f', '真爱解码 / Osmosis');
INSERT INTO `waiting` VALUES (214, 1, '7015714', 'f', '南国野兽 / Beasts of the Southern Wild');
INSERT INTO `waiting` VALUES (215, 1, '6981153', 'f', '爱尔兰人 / The Irishman');
INSERT INTO `waiting` VALUES (216, 1, '6852646', 'f', '智利说不 / No');
INSERT INTO `waiting` VALUES (217, 1, '30413546', 'f', '丹尼尔的脸 / Daniel fait face');
INSERT INTO `waiting` VALUES (218, 1, '30439557', 'f', '再见 南屏晚钟');
INSERT INTO `waiting` VALUES (219, 1, '1306664', 'f', '共同警备区 / 공동경비구역 JSA');
INSERT INTO `waiting` VALUES (220, 1, '25977027', 'f', '小姐 / 아가씨');
INSERT INTO `waiting` VALUES (221, 1, '1323746', 'f', '小城之春');
INSERT INTO `waiting` VALUES (222, 1, '1400240', 'f', '去年在马里昂巴德 / L\'année dernière à Marienbad');
INSERT INTO `waiting` VALUES (223, 1, '1438066', 'f', '隐藏摄像机 / Caché');
INSERT INTO `waiting` VALUES (224, 1, '30423539', 'f', '阿涅斯论瓦尔达 / Varda par Agnès');
INSERT INTO `waiting` VALUES (225, 1, '30427460', 'f', '上帝存在，她叫佩特鲁尼娅 / Gospod postoi');
INSERT INTO `waiting` VALUES (226, 1, '26969120', 'f', '你的鸟儿会唱歌 / きみの鳥はうたえる');
INSERT INTO `waiting` VALUES (227, 1, '1293460', 'f', '雨中曲 / Singin\' in the Rain');
INSERT INTO `waiting` VALUES (228, 1, '1401261', 'f', '游戏规则 / La règle du jeu');
INSERT INTO `waiting` VALUES (229, 1, '1295416', 'f', '无因的反叛 / Rebel Without a Cause');
INSERT INTO `waiting` VALUES (230, 1, '1292449', 'f', '惊世狂花 / Bound');
INSERT INTO `waiting` VALUES (231, 1, '1773216', 'f', '迷恋荷尔蒙 / Soldier\'s Girl');
INSERT INTO `waiting` VALUES (232, 1, '1652592', 'f', '阿丽塔：战斗天使 / Alita: Battle Angel');
INSERT INTO `waiting` VALUES (233, 1, '3077791', 'f', '在云端 / Up in the Air');
INSERT INTO `waiting` VALUES (234, 1, '30162055', 'f', '感谢上帝 / Grâce à Dieu');
INSERT INTO `waiting` VALUES (235, 1, '1295923', 'f', '卡夫卡 / Kafka');
INSERT INTO `waiting` VALUES (236, 1, '1293808', 'f', '雾港水手 / Querelle');
INSERT INTO `waiting` VALUES (237, 1, '3036997', 'f', '立春');
INSERT INTO `waiting` VALUES (238, 1, '26947951', 'f', '王国 第一季 / 킹덤 Season 1');
INSERT INTO `waiting` VALUES (239, 1, '1297233', 'f', '心之全蚀 / Total Eclipse');
INSERT INTO `waiting` VALUES (240, 1, '26420626', 'f', '约翰之子 / Le fils de Jean');
INSERT INTO `waiting` VALUES (241, 1, '1294547', 'f', '神父同志 / Priest');
INSERT INTO `waiting` VALUES (242, 1, '1300426', 'f', '愈爱愈美丽 / Beautiful Thing');
INSERT INTO `waiting` VALUES (243, 1, '4832288', 'f', '奇迹 / 奇跡');
INSERT INTO `waiting` VALUES (244, 1, '3285632', 'f', '都灵之马 / A Torinói ló');
INSERT INTO `waiting` VALUES (245, 1, '1388175', 'f', '下妻物语 / 下妻物語');
INSERT INTO `waiting` VALUES (246, 1, '30155283', 'f', '鸟姐妹的反差生活 / Tuca & Bertie');
INSERT INTO `waiting` VALUES (247, 1, '30156039', 'f', '风味人间');
INSERT INTO `waiting` VALUES (248, 1, '30403683', 'f', '菊石 / Ammonite');
INSERT INTO `waiting` VALUES (249, 1, '6895950', 'f', '火箭人 / Rocketman');
INSERT INTO `waiting` VALUES (250, 1, '30143523', 'f', '死亡天使 / El ángel');
INSERT INTO `waiting` VALUES (251, 1, '26363987', 'f', '你能原谅我吗？ / Can You Ever Forgive Me?');
INSERT INTO `waiting` VALUES (252, 1, '1292206', 'f', '地下 / Подземље');
INSERT INTO `waiting` VALUES (253, 1, '26835829', 'f', '晚班 / Late Shift');
INSERT INTO `waiting` VALUES (254, 1, '26718836', 'f', '底特律 / Detroit');
INSERT INTO `waiting` VALUES (255, 1, '3927789', 'f', '三方国界 / Triple Frontier');
INSERT INTO `waiting` VALUES (256, 1, '1300951', 'f', '欲望法则 / La ley del deseo');
INSERT INTO `waiting` VALUES (257, 1, '1780122', 'f', '风吹麦浪 / The Wind That Shakes the Barley');
INSERT INTO `waiting` VALUES (258, 1, '27668250', 'f', '南方车站的聚会');
INSERT INTO `waiting` VALUES (259, 1, '2032143', 'f', '东京奏鸣曲 / トウキョウソナタ');
INSERT INTO `waiting` VALUES (260, 1, '1294421', 'f', '伊万的童年 / Иваново детство');
INSERT INTO `waiting` VALUES (261, 1, '26952704', 'f', '巴斯特·斯克鲁格斯的歌谣 / The Ballad of Buster Scruggs');
INSERT INTO `waiting` VALUES (262, 1, '1302476', 'f', '麦兜故事 / 麥兜故事');
INSERT INTO `waiting` VALUES (263, 1, '2277018', 'f', '麦兜响当当 / 麥兜響當當');
INSERT INTO `waiting` VALUES (264, 1, '1303554', 'f', '审判 / Le procès');
INSERT INTO `waiting` VALUES (265, 1, '1292472', 'f', '巴里·林登 / Barry Lyndon');
INSERT INTO `waiting` VALUES (266, 1, '26303622', 'f', '大空头 / The Big Short');
INSERT INTO `waiting` VALUES (267, 1, '2464346', 'f', '白丝带 / Das weiße Band – Eine deutsche Kindergeschichte');
INSERT INTO `waiting` VALUES (268, 1, '1292260', 'f', '现代启示录 / Apocalypse Now');
INSERT INTO `waiting` VALUES (269, 1, '1291879', 'f', '罗生门 / 羅生門');
INSERT INTO `waiting` VALUES (270, 1, '1310176', 'f', '放大 / Blow-Up');
INSERT INTO `waiting` VALUES (271, 1, '26985996', 'f', '私人生活 / Private Life');
INSERT INTO `waiting` VALUES (272, 1, '1302836', 'f', '天浴');
INSERT INTO `waiting` VALUES (273, 1, '3734112', 'f', '风声');
INSERT INTO `waiting` VALUES (274, 1, '26895435', 'f', '非典型少年 第一季 / Atypical Season 1');
INSERT INTO `waiting` VALUES (275, 1, '1424406', 'f', '星际牛仔 / カウボーイビバップ');
INSERT INTO `waiting` VALUES (276, 1, '1307897', 'f', '回忆三部曲 / Memories');
INSERT INTO `waiting` VALUES (277, 1, '3804629', 'f', '招魂 / The Conjuring');
INSERT INTO `waiting` VALUES (278, 1, '1292067', 'f', '冰血暴 / Fargo');
INSERT INTO `waiting` VALUES (279, 1, '26786642', 'f', '摘金奇缘 / Crazy Rich Asians');
INSERT INTO `waiting` VALUES (280, 1, '6800483', 'f', '污泥 / Mud');
INSERT INTO `waiting` VALUES (281, 1, '30282504', 'f', '何塞 / José');
INSERT INTO `waiting` VALUES (282, 1, '10537949', 'f', '恶之教典 / 悪の教典');
INSERT INTO `waiting` VALUES (283, 1, '3726072', 'f', '东邪西毒：终极版 / 東邪西毒終極版');
INSERT INTO `waiting` VALUES (284, 1, '1303521', 'f', '特写 / نمای نزدیک');
INSERT INTO `waiting` VALUES (285, 1, '1299457', 'f', '基卡 / Kika');
INSERT INTO `waiting` VALUES (286, 1, '1298744', 'f', '十二猴子 / Twelve Monkeys');
INSERT INTO `waiting` VALUES (287, 1, '4066125', 'f', '谜一样的双眼 / El secreto de sus ojos');
INSERT INTO `waiting` VALUES (288, 1, '2997052', 'f', '吾栖之肤 / La piel que habito');
INSERT INTO `waiting` VALUES (289, 1, '1394342', 'f', '通往绞刑架的电梯 / Ascenseur pour l\'échafaud');
INSERT INTO `waiting` VALUES (290, 1, '25926851', 'f', '苍穹浩瀚 第一季 / The Expanse Season 1');
INSERT INTO `waiting` VALUES (291, 1, '3059389', 'f', '漂亮男孩 / Beautiful Boy');
INSERT INTO `waiting` VALUES (292, 1, '30206389', 'f', '西部世界 第三季 / Westworld Season 3');
INSERT INTO `waiting` VALUES (293, 1, '1303453', 'f', '鳗鱼 / うなぎ');
INSERT INTO `waiting` VALUES (294, 1, '1298112', 'f', '堕落天使');
INSERT INTO `waiting` VALUES (295, 1, '1794082', 'f', '娜娜 / NANA -ナナ-');
INSERT INTO `waiting` VALUES (296, 1, '1291844', 'f', '终结者2：审判日 / Terminator 2: Judgment Day');
INSERT INTO `waiting` VALUES (297, 1, '26955451', 'f', '詹姆斯·卡梅隆的科幻故事 / Story of Science Fiction');
INSERT INTO `waiting` VALUES (298, 1, '26307784', 'f', '青亲 / 青親');
INSERT INTO `waiting` VALUES (299, 1, '30194769', 'f', '女孩 / Girl');
INSERT INTO `waiting` VALUES (300, 1, '1300275', 'f', '大开眼戒 / Eyes Wide Shut');
INSERT INTO `waiting` VALUES (301, 1, '1292262', 'f', '美国往事 / Once Upon a Time in America');
INSERT INTO `waiting` VALUES (302, 1, '26731376', 'f', '天上再见 / Au revoir là-haut');
INSERT INTO `waiting` VALUES (303, 1, '26756258', 'f', '狐步舞 / פוֹקְסטְרוֹט');
INSERT INTO `waiting` VALUES (304, 1, '1293823', 'f', '妙想天开 / Brazil');
INSERT INTO `waiting` VALUES (305, 1, '1293323', 'f', '大红灯笼高高挂');
INSERT INTO `waiting` VALUES (306, 1, '1301169', 'f', '跳出我天地 / Billy Elliot');
INSERT INTO `waiting` VALUES (307, 1, '26887990', 'f', '小情歌 / Feral');
INSERT INTO `waiting` VALUES (308, 1, '20152546', 'f', '戴上手套擦泪 / Torka aldrig tårar utan handskar');
INSERT INTO `waiting` VALUES (309, 1, '1296660', 'f', '我美丽的洗衣店 / My Beautiful Laundrette');
INSERT INTO `waiting` VALUES (310, 1, '26656655', 'f', '怪奇秀 / Freak Show');
INSERT INTO `waiting` VALUES (311, 1, '26949364', 'f', '伤口 / Inxeba');
INSERT INTO `waiting` VALUES (312, 1, '1828115', 'f', '色，戒');
INSERT INTO `waiting` VALUES (313, 1, '1303485', 'f', '洗澡');
INSERT INTO `waiting` VALUES (314, 1, '1389923', 'f', '奇遇 / L\'avventura');
INSERT INTO `waiting` VALUES (315, 1, '1294565', 'f', '五至七时的克莱奥 / Cléo de 5 à 7');
INSERT INTO `waiting` VALUES (316, 1, '1293172', 'f', '末代皇帝 / The Last Emperor');
INSERT INTO `waiting` VALUES (317, 1, '3725295', 'f', '断线 / Disconnect');
INSERT INTO `waiting` VALUES (318, 1, '2213597', 'f', '朗读者 / The Reader');
INSERT INTO `waiting` VALUES (319, 1, '1322848', 'f', '奇爱博士 / Dr. Strangelove or: How I Learned to Stop Worrying ...');
INSERT INTO `waiting` VALUES (320, 1, '26648284', 'f', '母亲！ / Mother!');
INSERT INTO `waiting` VALUES (321, 1, '1308823', 'f', '天涯家园 / A Home at the End of the World');
INSERT INTO `waiting` VALUES (322, 1, '26787574', 'f', '奇迹男孩 / Wonder');
INSERT INTO `waiting` VALUES (323, 1, '26723165', 'f', '神偷联盟 / Logan Lucky');
INSERT INTO `waiting` VALUES (324, 1, '5960606', 'f', '再见我们的幼儿园 / さよならぼくたちのようちえん');
INSERT INTO `waiting` VALUES (325, 1, '1291585', 'f', '风之谷 / 風の谷のナウシカ');
INSERT INTO `waiting` VALUES (326, 1, '1422927', 'f', '痴男怨女 / A Good Woman');
INSERT INTO `waiting` VALUES (327, 1, '1972698', 'f', '守望者 / Watchmen');
INSERT INTO `waiting` VALUES (328, 1, '6873747', 'f', '爱若此时 / Any Day Now');
INSERT INTO `waiting` VALUES (329, 1, '3592859', 'f', '囚徒 / Prisoners');
INSERT INTO `waiting` VALUES (330, 1, '1309071', 'f', '天国王朝 / Kingdom of Heaven');
INSERT INTO `waiting` VALUES (331, 1, '26773744', 'f', '相爱相亲');
INSERT INTO `waiting` VALUES (332, 1, '26710940', 'f', '疯狂玛丽的约会 / A Date for Mad Mary');
INSERT INTO `waiting` VALUES (333, 1, '26822230', 'f', '摩天轮 / Wonder Wheel');
INSERT INTO `waiting` VALUES (334, 1, '26657443', 'f', '福斯特医生 第二季 / Doctor Foster Season 2');
INSERT INTO `waiting` VALUES (335, 1, '27066184', 'f', '被抹去的男孩 / Boy Erased');
INSERT INTO `waiting` VALUES (336, 1, '2222996', 'f', '步履不停 / 歩いても 歩いても');
INSERT INTO `waiting` VALUES (337, 1, '21339377', 'f', '湖畔的陌生人 / L\'Inconnu du lac');
INSERT INTO `waiting` VALUES (338, 1, '1292969', 'f', '光荣之路 / Paths of Glory');
INSERT INTO `waiting` VALUES (339, 1, '1292224', 'f', '飞越疯人院 / One Flew Over the Cuckoo\'s Nest');
INSERT INTO `waiting` VALUES (340, 1, '1302061', 'f', '德州巴黎 / Paris');
INSERT INTO `waiting` VALUES (341, 1, '26932643', 'f', '难以忽视的真相2 / An Inconvenient Sequel: Truth to Power');
INSERT INTO `waiting` VALUES (342, 1, '1291853', 'f', '英国病人 / The English Patient');
INSERT INTO `waiting` VALUES (343, 1, '1293391', 'f', '孩子王');
INSERT INTO `waiting` VALUES (344, 1, '1759386', 'f', '了不起的狐狸爸爸 / Fantastic Mr. Fox');
INSERT INTO `waiting` VALUES (345, 1, '25938803', 'f', '莫娣 / Maudie');
INSERT INTO `waiting` VALUES (346, 1, '26661610', 'f', '制造杀人犯 第一季 / Making a Murderer Season 1');
INSERT INTO `waiting` VALUES (347, 1, '10774184', 'f', '豪勇七蛟龙 / The Magnificent Seven');
INSERT INTO `waiting` VALUES (348, 1, '25755599', 'f', '小楼的奇幻生活 / Lou! Journal infime');
INSERT INTO `waiting` VALUES (349, 1, '25821461', 'f', '旅行终点 / The End of the Tour');
INSERT INTO `waiting` VALUES (350, 1, '26637930', 'f', '凡人与超人 / National Theatre Live: Man and Superman');
INSERT INTO `waiting` VALUES (351, 1, '1305261', 'f', '恐怖分子 / 恐怖份子');
INSERT INTO `waiting` VALUES (352, 1, '2361823', 'f', '我爱你莫里斯 / I Love You Phillip Morris');
INSERT INTO `waiting` VALUES (353, 1, '1294136', 'f', '天鹅绒金矿 / Velvet Goldmine');
INSERT INTO `waiting` VALUES (354, 1, '22266126', 'f', '王牌保镖 / The Hitman\'s Bodyguard');
INSERT INTO `waiting` VALUES (355, 1, '26617395', 'f', '心之石 / Hjartasteinn');
INSERT INTO `waiting` VALUES (356, 1, '1292781', 'f', '细细的红线 / The Thin Red Line');
INSERT INTO `waiting` VALUES (357, 1, '26761325', 'f', '牡丹花下 / The Beguiled');
INSERT INTO `waiting` VALUES (358, 1, '3011072', 'f', '珍爱 / Precious');
INSERT INTO `waiting` VALUES (359, 1, '6959015', 'f', '时间之旅 / Voyage of Time');
INSERT INTO `waiting` VALUES (360, 1, '5977835', 'f', '桃姐');
INSERT INTO `waiting` VALUES (361, 1, '26995171', 'f', '列车无声恋 / Sisak');
INSERT INTO `waiting` VALUES (362, 1, '10438697', 'f', '阴阳相成 / Side by Side');
INSERT INTO `waiting` VALUES (363, 1, '1297226', 'f', '众神与野兽 / Gods and Monsters');
INSERT INTO `waiting` VALUES (364, 1, '20434014', 'f', '日常工作 第一季 / Regular Show Season 1');
INSERT INTO `waiting` VALUES (365, 1, '26443937', 'f', '随性所欲 第一季 / Casual Season 1');
INSERT INTO `waiting` VALUES (366, 1, '26681645', 'f', '罗伯特·梅普勒索普：看看那些照片 / Mapplethorpe: Look at the P...');
INSERT INTO `waiting` VALUES (367, 1, '1428577', 'f', '九色鹿');
INSERT INTO `waiting` VALUES (368, 1, '1291556', 'f', '乡愁 / Ностальгия');
INSERT INTO `waiting` VALUES (369, 1, '1294048', 'f', '卡拉瓦乔 / Caravaggio');
INSERT INTO `waiting` VALUES (370, 1, '1293146', 'f', '豹 / Il gattopardo');
INSERT INTO `waiting` VALUES (371, 1, '1300912', 'f', '魂断威尼斯 / Morte a Venezia');
INSERT INTO `waiting` VALUES (372, 1, '1777612', 'f', '阳光小美女 / Little Miss Sunshine');
INSERT INTO `waiting` VALUES (373, 1, '11524958', 'f', '快乐王子 / The Happy Prince');
INSERT INTO `waiting` VALUES (374, 1, '26791455', 'f', '你从未在此 / You Were Never Really Here');
INSERT INTO `waiting` VALUES (375, 1, '4145476', 'f', '得闲炒饭 / 得閒炒飯');
INSERT INTO `waiting` VALUES (376, 1, '1294252', 'f', '雾中风景 / Τοπίο στην ομίχλη');
INSERT INTO `waiting` VALUES (377, 1, '26930375', 'f', '凭空而来 / Aus dem Nichts');
INSERT INTO `waiting` VALUES (378, 1, '1299248', 'f', '镜子 / Зеркало');
INSERT INTO `waiting` VALUES (379, 1, '1292925', 'f', '伴我同行 / Stand by Me');
INSERT INTO `waiting` VALUES (380, 1, '26411217', 'f', '追捕聂鲁达 / Neruda');
INSERT INTO `waiting` VALUES (381, 1, '1303451', 'f', '海上花');
INSERT INTO `waiting` VALUES (382, 1, '20645052', 'f', '东方男孩 / Eastern Boys');
INSERT INTO `waiting` VALUES (383, 1, '1436764', 'f', '奥菲斯 / Orphée');
INSERT INTO `waiting` VALUES (384, 1, '1419169', 'f', '奥菲斯的遗嘱 / Le testament d\'Orphée');
INSERT INTO `waiting` VALUES (385, 1, '1303263', 'f', '诗人之血 / Le Sang d\'un Poète');
INSERT INTO `waiting` VALUES (386, 1, '1760622', 'f', '香水 / Perfume: The Story of a Murderer');
INSERT INTO `waiting` VALUES (387, 1, '25925764', 'f', '派对搭讪秘诀 / How to Talk to Girls at Parties');
INSERT INTO `waiting` VALUES (388, 1, '26928352', 'f', '天涯歌女');
INSERT INTO `waiting` VALUES (389, 1, '1292048', 'f', '蓝白红三部曲之蓝 / Trois couleurs: Bleu');
INSERT INTO `waiting` VALUES (390, 1, '1417428', 'f', '蓝 / Blue');
INSERT INTO `waiting` VALUES (391, 1, '4896929', 'f', '男孩的战争 / The War Boys');
INSERT INTO `waiting` VALUES (392, 1, '1296141', 'f', '控方证人 / Witness for the Prosecution');
INSERT INTO `waiting` VALUES (393, 1, '4838667', 'f', '双面劳伦斯 / Laurence Anyways');
INSERT INTO `waiting` VALUES (394, 1, '1293145', 'f', '费城故事 / Philadelphia');
INSERT INTO `waiting` VALUES (395, 1, '26653676', 'f', '我是布莱克 / I');
INSERT INTO `waiting` VALUES (396, 1, '1292370', 'f', '剪刀手爱德华 / Edward Scissorhands');
INSERT INTO `waiting` VALUES (397, 1, '1306730', 'f', '钢琴教师 / La pianiste');
INSERT INTO `waiting` VALUES (398, 1, '1291856', 'f', '戏梦巴黎 / The Dreamers');
INSERT INTO `waiting` VALUES (399, 1, '26755583', 'f', '西尔玛 / Thelma');
INSERT INTO `waiting` VALUES (400, 1, '4921358', 'f', '梵高：画语人生 / Vincent Van Gogh: Painted with Words');
INSERT INTO `waiting` VALUES (401, 1, '1394218', 'f', '桃色公寓 / The Apartment');
INSERT INTO `waiting` VALUES (402, 1, '1981242', 'f', '午夜巴塞罗那 / Vicky Cristina Barcelona');
INSERT INTO `waiting` VALUES (403, 1, '25917787', 'f', '耐撕侦探 / The Nice Guys');
INSERT INTO `waiting` VALUES (404, 1, '1293530', 'f', '角斗士 / Gladiator');
INSERT INTO `waiting` VALUES (405, 1, '1421809', 'f', '最好的时光 / 最好的時光');
INSERT INTO `waiting` VALUES (406, 1, '26933724', 'f', '色情狂人 / Pornhead');
INSERT INTO `waiting` VALUES (407, 1, '25982461', 'f', '约翰·多诺万的死与生 / The Death And Life of John F. Donovan');
INSERT INTO `waiting` VALUES (408, 1, '26630167', 'f', '自由坠落2 / Freier Fall 2');
INSERT INTO `waiting` VALUES (409, 1, '26823502', 'f', '隐秘的生活 / A Hidden Life');
INSERT INTO `waiting` VALUES (410, 1, '6843843', 'f', '锈与骨 / De rouille et d\'os');
INSERT INTO `waiting` VALUES (411, 1, '26365236', 'f', '玉子 / 옥자');
INSERT INTO `waiting` VALUES (412, 1, '26710271', 'f', '公猫 / Kater');
INSERT INTO `waiting` VALUES (413, 1, '26369884', 'f', '此房是我造 / The House That Jack Built');
INSERT INTO `waiting` VALUES (414, 1, '1291562', 'f', '黑暗中的舞者 / Dancer in the Dark');
INSERT INTO `waiting` VALUES (415, 1, '3094909', 'f', '乌云背后的幸福线 / Silver Linings Playbook');
INSERT INTO `waiting` VALUES (416, 1, '26884826', 'f', '日常对话 / 日常對話');
INSERT INTO `waiting` VALUES (417, 1, '25821498', 'f', '妇女参政论者 / Suffragette');
INSERT INTO `waiting` VALUES (418, 1, '1291835', 'f', '迷失东京 / Lost in Translation');
INSERT INTO `waiting` VALUES (419, 1, '26930506', 'f', '山田孝之的戛纳电影节 / 山田孝之のカンヌ映画祭');
INSERT INTO `waiting` VALUES (420, 1, '26698601', 'f', '快乐结局 / Happy End');
INSERT INTO `waiting` VALUES (421, 1, '2028677', 'f', '雨果 / Hugo');
INSERT INTO `waiting` VALUES (422, 1, '26668284', 'f', '寂静中的惊奇 / Wonderstruck');
INSERT INTO `waiting` VALUES (423, 1, '1297689', 'f', '少数派报告 / Minority Report');
INSERT INTO `waiting` VALUES (424, 1, '1945780', 'f', '血色将至 / There Will Be Blood');
INSERT INTO `waiting` VALUES (425, 1, '26924748', 'f', '无人之境 / National Theatre Live: No Man\'s Land');
INSERT INTO `waiting` VALUES (426, 1, '6097775', 'f', '艺术家 / The Artist');
INSERT INTO `waiting` VALUES (427, 1, '3071509', 'f', '后裔 / The Descendants');
INSERT INTO `waiting` VALUES (428, 1, '26969821', 'f', '笨鸟');
INSERT INTO `waiting` VALUES (429, 1, '6549903', 'f', '逃离德黑兰 / Argo');
INSERT INTO `waiting` VALUES (430, 1, '1958447', 'f', '深蓝即是黑 / Azul oscuro casi negro');
INSERT INTO `waiting` VALUES (431, 1, '26679552', 'f', '推销员 / فروشنده');
INSERT INTO `waiting` VALUES (432, 1, '1292528', 'f', '猜火车 / Trainspotting');
INSERT INTO `waiting` VALUES (433, 1, '1306505', 'f', '红高粱');
INSERT INTO `waiting` VALUES (434, 1, '4709671', 'f', '胡佛 / J. Edgar');
INSERT INTO `waiting` VALUES (435, 1, '26966391', 'f', '我的同志姐姐 / Min Homosyster');
INSERT INTO `waiting` VALUES (436, 1, '26627754', 'f', '普通女人 / Una mujer fantástica');
INSERT INTO `waiting` VALUES (437, 1, '10760030', 'f', '绝美之城 / La grande Bellezza');
INSERT INTO `waiting` VALUES (438, 1, '4935242', 'f', '焦土之城 / Incendies');
INSERT INTO `waiting` VALUES (439, 1, '22047569', 'f', '卧底情劫 第一季 / Rogue Season 1');
INSERT INTO `waiting` VALUES (440, 1, '25824854', 'f', '透明家庭 第一季 / Transparent Season 1');
INSERT INTO `waiting` VALUES (441, 1, '1296987', 'f', '安妮·霍尔 / Annie Hall');
INSERT INTO `waiting` VALUES (442, 1, '26928125', 'f', '沙滩鼠 / Beach Rats');
INSERT INTO `waiting` VALUES (443, 1, '26379657', 'f', '舞女 / La Danseuse');
INSERT INTO `waiting` VALUES (444, 1, '1292338', 'f', '祖与占 / Jules et Jim');
INSERT INTO `waiting` VALUES (445, 1, '21339682', 'f', '藩篱 / Fences');
INSERT INTO `waiting` VALUES (446, 1, '1300613', 'f', '土拨鼠之日 / Groundhog Day');
INSERT INTO `waiting` VALUES (447, 1, '26864413', 'f', '莫茜 / My Days of Mercy');
INSERT INTO `waiting` VALUES (448, 1, '26647024', 'f', '帅气的恶魔 / Handsome Devil');
INSERT INTO `waiting` VALUES (449, 1, '2336737', 'f', '米尔克 / Milk');
INSERT INTO `waiting` VALUES (450, 1, '26581464', 'f', '来自远方 / Desde allá');
INSERT INTO `waiting` VALUES (451, 1, '2365260', 'f', '爱在暹罗 / รักแห่งสยาม');
INSERT INTO `waiting` VALUES (452, 1, '1291833', 'f', '杯酒人生 / Sideways');
INSERT INTO `waiting` VALUES (453, 1, '26287884', 'f', '魔弦传说 / Kubo and the Two Strings');
INSERT INTO `waiting` VALUES (454, 1, '26088510', 'f', '双峰 / Twin Peaks');
INSERT INTO `waiting` VALUES (455, 1, '26427445', 'f', '堕落街传奇 第一季 / The Deuce Season 1');
INSERT INTO `waiting` VALUES (456, 1, '3821067', 'f', '一代宗师 / 一代宗師');
INSERT INTO `waiting` VALUES (457, 1, '1890572', 'f', '坠入 / The Fall');
INSERT INTO `waiting` VALUES (458, 1, '26733371', 'f', '地球脉动 第二季 / Planet Earth Season 2');
INSERT INTO `waiting` VALUES (459, 1, '1871906', 'f', '地球脉动 第一季 / Planet Earth Season 1');
INSERT INTO `waiting` VALUES (460, 1, '1306444', 'f', '哈特的战争 / Hart\'s War');
INSERT INTO `waiting` VALUES (461, 1, '26713790', 'f', '未定名亚历山大·麦昆传记片 / Untitled Alexander McQueen Project');
INSERT INTO `waiting` VALUES (462, 1, '25853963', 'f', '我们的动物园 / Our Zoo');
INSERT INTO `waiting` VALUES (463, 1, '25890005', 'f', '山河故人');
INSERT INTO `waiting` VALUES (464, 1, '26649041', 'f', '战争天堂 / Рай');
INSERT INTO `waiting` VALUES (465, 1, '6860147', 'f', '霓虹恶魔 / The Neon Demon');
INSERT INTO `waiting` VALUES (466, 1, '1308950', 'f', '亚历山大大帝 / Alexander');
INSERT INTO `waiting` VALUES (467, 1, '26389329', 'f', '附属美丽 / Collateral Beauty');
INSERT INTO `waiting` VALUES (468, 1, '26673872', 'f', '小大人 / Little Men');
INSERT INTO `waiting` VALUES (469, 1, '26852792', 'f', '我的整个高中沉到海里了 / My Entire High School Sinking into th...');
INSERT INTO `waiting` VALUES (470, 1, '26630781', 'f', '我不是潘金莲');
INSERT INTO `waiting` VALUES (471, 1, '10752547', 'f', '夜色人生 / Live by Night');
INSERT INTO `waiting` VALUES (472, 1, '26258064', 'f', '第三极');
INSERT INTO `waiting` VALUES (473, 1, '1292062', 'f', '美国丽人 / American Beauty');
INSERT INTO `waiting` VALUES (474, 1, '6985810', 'f', '狩猎 / Jagten');
INSERT INTO `waiting` VALUES (475, 1, '1305725', 'f', '大卫·戈尔的一生 / The Life of David Gale');
INSERT INTO `waiting` VALUES (476, 1, '2238297', 'f', '迷情站台 / Clapham Junction');
INSERT INTO `waiting` VALUES (477, 1, '1306939', 'f', '推手');
INSERT INTO `waiting` VALUES (478, 1, '1307210', 'f', '失眠症 / Insomnia');
INSERT INTO `waiting` VALUES (479, 1, '19955769', 'f', '失常 / Anomalisa');
INSERT INTO `waiting` VALUES (480, 1, '1292279', 'f', '成为约翰·马尔科维奇 / Being John Malkovich');
INSERT INTO `waiting` VALUES (481, 1, '25917973', 'f', '心迷宫');
INSERT INTO `waiting` VALUES (482, 1, '1293232', 'f', '天堂之日 / Days of Heaven');
INSERT INTO `waiting` VALUES (483, 1, '6966617', 'f', '圣杯骑士 / Knight of Cups');
INSERT INTO `waiting` VALUES (484, 1, '10741871', 'f', '地球之盐 / Le sel de la Terre');
INSERT INTO `waiting` VALUES (485, 1, '1441238', 'f', '面纱 / The Painted Veil');
INSERT INTO `waiting` VALUES (486, 1, '3154003', 'f', '天佑鲍比 / Prayers for Bobby');
INSERT INTO `waiting` VALUES (487, 1, '1291841', 'f', '教父 / The Godfather');
INSERT INTO `waiting` VALUES (488, 1, '1810517', 'f', '凉宫春日的忧郁 / 涼宮ハルヒの憂鬱');
INSERT INTO `waiting` VALUES (489, 1, '1292270', 'f', '梦之安魂曲 / Requiem for a Dream');
INSERT INTO `waiting` VALUES (490, 1, '24297912', 'f', '冰血暴 第一季 / Fargo Season 1');

SET FOREIGN_KEY_CHECKS = 1;
