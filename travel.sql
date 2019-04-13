/*
 Navicat Premium Data Transfer

 Source Server         : mysql80
 Source Server Type    : MySQL
 Source Server Version : 80014
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 80014
 File Encoding         : 65001

 Date: 13/04/2019 09:41:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 游记信息', 6, 'add_diary');
INSERT INTO `auth_permission` VALUES (22, 'Can change 游记信息', 6, 'change_diary');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 游记信息', 6, 'delete_diary');
INSERT INTO `auth_permission` VALUES (24, 'Can view 游记信息', 6, 'view_diary');
INSERT INTO `auth_permission` VALUES (25, 'Can add news', 7, 'add_news');
INSERT INTO `auth_permission` VALUES (26, 'Can change news', 7, 'change_news');
INSERT INTO `auth_permission` VALUES (27, 'Can delete news', 7, 'delete_news');
INSERT INTO `auth_permission` VALUES (28, 'Can view news', 7, 'view_news');
INSERT INTO `auth_permission` VALUES (29, 'Can add 活动评论', 8, 'add_activecomments');
INSERT INTO `auth_permission` VALUES (30, 'Can change 活动评论', 8, 'change_activecomments');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 活动评论', 8, 'delete_activecomments');
INSERT INTO `auth_permission` VALUES (32, 'Can view 活动评论', 8, 'view_activecomments');
INSERT INTO `auth_permission` VALUES (33, 'Can add 游记评论', 9, 'add_diarycomments');
INSERT INTO `auth_permission` VALUES (34, 'Can change 游记评论', 9, 'change_diarycomments');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 游记评论', 9, 'delete_diarycomments');
INSERT INTO `auth_permission` VALUES (36, 'Can view 游记评论', 9, 'view_diarycomments');
INSERT INTO `auth_permission` VALUES (37, 'Can add 景区评论', 10, 'add_spotscomments');
INSERT INTO `auth_permission` VALUES (38, 'Can change 景区评论', 10, 'change_spotscomments');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 景区评论', 10, 'delete_spotscomments');
INSERT INTO `auth_permission` VALUES (40, 'Can view 景区评论', 10, 'view_spotscomments');
INSERT INTO `auth_permission` VALUES (41, 'Can add 游记收藏', 11, 'add_usercollect');
INSERT INTO `auth_permission` VALUES (42, 'Can change 游记收藏', 11, 'change_usercollect');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 游记收藏', 11, 'delete_usercollect');
INSERT INTO `auth_permission` VALUES (44, 'Can view 游记收藏', 11, 'view_usercollect');
INSERT INTO `auth_permission` VALUES (45, 'Can add 旅游活动', 12, 'add_active');
INSERT INTO `auth_permission` VALUES (46, 'Can change 旅游活动', 12, 'change_active');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 旅游活动', 12, 'delete_active');
INSERT INTO `auth_permission` VALUES (48, 'Can view 旅游活动', 12, 'view_active');
INSERT INTO `auth_permission` VALUES (49, 'Can add 轮播图', 13, 'add_gallery');
INSERT INTO `auth_permission` VALUES (50, 'Can change 轮播图', 13, 'change_gallery');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 轮播图', 13, 'delete_gallery');
INSERT INTO `auth_permission` VALUES (52, 'Can view 轮播图', 13, 'view_gallery');
INSERT INTO `auth_permission` VALUES (53, 'Can add 旅游景区', 14, 'add_spots');
INSERT INTO `auth_permission` VALUES (54, 'Can change 旅游景区', 14, 'change_spots');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 旅游景区', 14, 'delete_spots');
INSERT INTO `auth_permission` VALUES (56, 'Can view 旅游景区', 14, 'view_spots');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用户信息', 15, 'add_myuser');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用户信息', 15, 'change_myuser');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用户信息', 15, 'delete_myuser');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用户信息', 15, 'view_myuser');
INSERT INTO `auth_permission` VALUES (61, 'Can add 轮播图', 16, 'add_banner');
INSERT INTO `auth_permission` VALUES (62, 'Can change 轮播图', 16, 'change_banner');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 轮播图', 16, 'delete_banner');
INSERT INTO `auth_permission` VALUES (64, 'Can view 轮播图', 16, 'view_banner');
INSERT INTO `auth_permission` VALUES (65, 'Can add 邮箱验证码信息', 17, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (66, 'Can change 邮箱验证码信息', 17, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 邮箱验证码信息', 17, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (68, 'Can view 邮箱验证码信息', 17, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (69, 'Can add 常用联系人信息', 18, 'add_thecontact');
INSERT INTO `auth_permission` VALUES (70, 'Can change 常用联系人信息', 18, 'change_thecontact');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 常用联系人信息', 18, 'delete_thecontact');
INSERT INTO `auth_permission` VALUES (72, 'Can view 常用联系人信息', 18, 'view_thecontact');
INSERT INTO `auth_permission` VALUES (73, 'Can add Bookmark', 19, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (74, 'Can change Bookmark', 19, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (75, 'Can delete Bookmark', 19, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (76, 'Can view Bookmark', 19, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (77, 'Can add User Setting', 20, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (78, 'Can change User Setting', 20, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (79, 'Can delete User Setting', 20, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (80, 'Can view User Setting', 20, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (81, 'Can add User Widget', 21, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (82, 'Can change User Widget', 21, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (83, 'Can delete User Widget', 21, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (84, 'Can view User Widget', 21, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (85, 'Can add log entry', 22, 'add_log');
INSERT INTO `auth_permission` VALUES (86, 'Can change log entry', 22, 'change_log');
INSERT INTO `auth_permission` VALUES (87, 'Can delete log entry', 22, 'delete_log');
INSERT INTO `auth_permission` VALUES (88, 'Can view log entry', 22, 'view_log');
INSERT INTO `auth_permission` VALUES (89, 'Can add 商品信息', 23, 'add_product');
INSERT INTO `auth_permission` VALUES (90, 'Can change 商品信息', 23, 'change_product');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 商品信息', 23, 'delete_product');
INSERT INTO `auth_permission` VALUES (92, 'Can view 商品信息', 23, 'view_product');
INSERT INTO `auth_permission` VALUES (93, 'Can add 商品图片', 24, 'add_propic');
INSERT INTO `auth_permission` VALUES (94, 'Can change 商品图片', 24, 'change_propic');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 商品图片', 24, 'delete_propic');
INSERT INTO `auth_permission` VALUES (96, 'Can view 商品图片', 24, 'view_propic');
INSERT INTO `auth_permission` VALUES (97, 'Can add captcha store', 25, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (98, 'Can change captcha store', 25, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (99, 'Can delete captcha store', 25, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (100, 'Can view captcha store', 25, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (101, 'Can add area info', 26, 'add_areainfo');
INSERT INTO `auth_permission` VALUES (102, 'Can change area info', 26, 'change_areainfo');
INSERT INTO `auth_permission` VALUES (103, 'Can delete area info', 26, 'delete_areainfo');
INSERT INTO `auth_permission` VALUES (104, 'Can view area info', 26, 'view_areainfo');
INSERT INTO `auth_permission` VALUES (105, 'Can add 游记点赞', 27, 'add_userfav');
INSERT INTO `auth_permission` VALUES (106, 'Can change 游记点赞', 27, 'change_userfav');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 游记点赞', 27, 'delete_userfav');
INSERT INTO `auth_permission` VALUES (108, 'Can view 游记点赞', 27, 'view_userfav');
INSERT INTO `auth_permission` VALUES (109, 'Can add shopping cart', 28, 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES (110, 'Can change shopping cart', 28, 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES (111, 'Can delete shopping cart', 28, 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES (112, 'Can view shopping cart', 28, 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES (113, 'Can add 商品订单主表', 29, 'add_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES (114, 'Can change 商品订单主表', 29, 'change_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 商品订单主表', 29, 'delete_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES (116, 'Can view 商品订单主表', 29, 'view_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES (117, 'Can add 用户购买商品信息', 30, 'add_orderitems');
INSERT INTO `auth_permission` VALUES (118, 'Can change 用户购买商品信息', 30, 'change_orderitems');
INSERT INTO `auth_permission` VALUES (119, 'Can delete 用户购买商品信息', 30, 'delete_orderitems');
INSERT INTO `auth_permission` VALUES (120, 'Can view 用户购买商品信息', 30, 'view_orderitems');
INSERT INTO `auth_permission` VALUES (121, 'Can add 直接购买商品', 31, 'add_shopping');
INSERT INTO `auth_permission` VALUES (122, 'Can change 直接购买商品', 31, 'change_shopping');
INSERT INTO `auth_permission` VALUES (123, 'Can delete 直接购买商品', 31, 'delete_shopping');
INSERT INTO `auth_permission` VALUES (124, 'Can view 直接购买商品', 31, 'view_shopping');
INSERT INTO `auth_permission` VALUES (125, 'Can add 商品评论', 32, 'add_productcomments');
INSERT INTO `auth_permission` VALUES (126, 'Can change 商品评论', 32, 'change_productcomments');
INSERT INTO `auth_permission` VALUES (127, 'Can delete 商品评论', 32, 'delete_productcomments');
INSERT INTO `auth_permission` VALUES (128, 'Can view 商品评论', 32, 'view_productcomments');
INSERT INTO `auth_permission` VALUES (129, 'Can add 门票订单', 33, 'add_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES (130, 'Can change 门票订单', 33, 'change_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES (131, 'Can delete 门票订单', 33, 'delete_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES (132, 'Can view 门票订单', 33, 'view_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES (133, 'Can add 旅游订单', 34, 'add_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES (134, 'Can change 旅游订单', 34, 'change_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES (135, 'Can delete 旅游订单', 34, 'delete_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES (136, 'Can view 旅游订单', 34, 'view_scenicordersmaintable');

-- ----------------------------
-- Table structure for diarys_diary
-- ----------------------------
DROP TABLE IF EXISTS `diarys_diary`;
CREATE TABLE `diarys_diary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checknum` int(11) NOT NULL,
  `commentsnum` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `add_times` datetime(6) NULL,
  `user_id` int(11) NOT NULL,
  `praisenum` int(11) NOT NULL,
  `collectnum` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `diarys_diary_user_id_6a600bd5_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `diarys_diary_user_id_6a600bd5_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diarys_diary
-- ----------------------------
INSERT INTO `diarys_diary` VALUES (5, '赏千年银杏林', '<p>每年</p><p>给自己定个小目标，</p><p>春天去看一场花开；</p><p>夏天去看一次大海；</p><p>秋天去看一片银杏。</p><p>带着这个梦想来到洛阳，白云山。</p><p style=\"text-align:center\"><img src=\"http://127.0.0.1:8000/media/1_20181029155011_609.png\" title=\"\" alt=\"1.png\"/></p><p><br/></p><p>洛阳·白云山&nbsp;</p><p><br/></p>', 'diary/2019/1/CggYs1bN1-yAUNw5AAOOjgStrss989_R_10000_500_Q90.jpg', 3, 0, 1, '2019-01-30 15:51:24.664372', 19, 3, 0);
INSERT INTO `diarys_diary` VALUES (6, '全攻略', '<p>“天府之国”成都，那是生我养我的故土。虽然高中毕业后，我便离开了这片土地，但这里可口的美食、闲适的生活和童年的记忆，始终深深的吸引着我，也正因为这样，成都，几乎成了我每一次西部之旅的中转站。这一次，寻梦之旅，便从此拉开了序幕。\r\n2011年4月6日，晨，8时许，在成都新南门汽车站附近吃好早餐，采购了一些备用食品，我正式踏上了“追寻人间最后的香格里拉”之旅，独自上路确实有些许不便，但追寻人间天堂的喜悦完全掩盖了这点小困难。\r\n9时，大巴缓缓驶离车站，我开始升天咯！\r\n售票员号称有7个小时的车程，这可不能亏待了我的屁股，于是乎，我做的是条件最好的一班大巴（票子当然是提前就买好的啦），运气不错，位子很靠前，也挺宽敞的。旁边坐了个小姑娘，貌似常坐这趟班车了，一路上除了打电话就是睡觉，估计应该家住新都桥附近的，来成都读书的。旁边的乘客都在睡觉，我只能用大巴上放映的《大腕》打发时间了。\r\n“雨城”雅安，东邻成都、西连甘孜、南界凉山、北接阿坝，素有“川西咽喉”、“西藏门户”、“民族走廊”之称。全长141公里的成雅高速，也是我这次旅行中唯一的一段高速公路。稍事休息，大巴驶离了天全，缓缓驶向了青衣江和大渡河的分水岭，海拔3437的二郎山。渐浓的雾气与潺潺的流水、金黄的菜花、成荫的绿树一起，编织出一幅室外桃源的画卷，身边不时萦绕着点点鸟语花香，让人不经萌生出住上几日的冲动。\r\n一路上行，大巴终于进入了全长4176米，海拔2200米的二郎山隧道，呼吸之间，又穿越了别托隧道。隧道另一边，豁然开朗，天高云淡，一切都变得如此的通透，就像是向着天空迈出了一大步。远方，大大小小几十座雪山连绵不绝，或大或小的村寨依山而建，神奇而壮观。<p>\r\n\r\n<img src=\"http://127.0.0.1:8000/media/6e06f50f6e8741b2938a01e514f6b8f1_R_1024_10000_Q90_20181029155324_809.jpg\" title=\"\" alt=\"1.png\"/>', 'diary/2019/1/893aebb481754feea54d7124d10b3b7f_R_671_10000_Q90.jpg', 55, 0, 1, '2019-01-30 15:53:43.925177', 19, 0, 0);
INSERT INTO `diarys_diary` VALUES (7, '賞花行', '<p>从炎热的江南回到天府之国，心情自然是极好的。淅淅沥沥的小雨轻柔地洒落在头顶和身上，好不清凉！四下散布的水汽紧贴着肌肤勾勒起记忆中熟悉的感觉，那一句“细雨湿花花不落，清茶作酒人自得”。&nbsp;仅仅才离开不到两个月，心情竟已像久别的游子。我是伴着午夜那无边的夜色从天而降的。同机的头等舱似乎有某位明星，一些小姑娘时不时跑去照像签名。也许是我平常很少看电视，或者是我真的孤陋寡闻，那“明星”看着脸熟却总也想不起名字。不去管他，因为此时在我心里只有一个焦点，那就是脚下记忆中的锦官城。&nbsp;从机场出来，一路听着出租车司机在无线电里吵嚷着地道的川话，我不禁闭上眼，仿佛在欣赏一出精彩的唱腔。人民路沿线的地铁早已竣工，二环路的高架也已通车，出租车在雨湿的夜色中飞快地奔驰着。</p>\r\n\r\n<p><img src=\"/media/1ae3ae23ec92443d9126f6bf6daa5f81_R_671_10000_Q90_20181029155559_330.jpg\" title=\"\" alt=\"1ae3ae23ec92443d9126f6bf6daa5f81_R_671_10000_Q90.jpg\"/></p>\r\n\r\n\r\n由于雨和夜的缘故，整座锦官城呈现出一份宁静安逸的景象。市中心不灭的霓虹被雨雾笼罩得明中带暗，多了些层次，感觉更加好看了。偶尔瞥见路边的长椅上竟然有一对情侣在述说着情话，他们用一把大伞遮住天空的雨水也遮住旁人的视线，在雨夜里浸透出独自浪漫的气息。 一路上我故意放低着车窗，任清凉的夜雨溅落面颊。我要狠狠地呼吸这些味道，就像呼吸情人的肌肤。这一夜，我睡得很香，以胎儿在母体里的姿势，睡得很香！', 'diary/2019/1/fb10a87f433747b1bdaad3910f805c5b_R_1024_10000_Q90.jpg', 8, 1, 0, '2019-01-30 15:56:09.247553', 19, 0, 0);
INSERT INTO `diarys_diary` VALUES (8, '宽窄巷子', '<p><img src=\"/media/CggYHFbN1-yAHQCsAANf2YxMj6E011_C_350_234_Q90_20181029155827_411.jpg\" style=\"\"/></p><p><img src=\"/media/CggYHVbN1-6ASzkYAAJyMreTpvk475_R_10000_500_Q90_20181029155827_606.jpg\" style=\"\"/></p><p><img src=\"/media/CggYs1bN1-yAUNw5AAOOjgStrss989_R_10000_500_Q90_20181029155827_317.jpg\" style=\"\"/></p><p><img src=\"/media/CggYslbN1-2ARx-PAAItNbzMpP8974_R_10000_500_Q90_20181029155827_667.jpg\" style=\"\"/></p><p><img src=\"/media/CggYtFbN1-yACKs6AAL5e7SJYoQ470_R_1024_10000_Q90_20181029155827_359.jpg\" style=\"\"/></p><p><br/></p>', 'diary/2019/1/1.png', 16, 0, 1, '2019-01-30 15:58:42.898813', 19, 0, 2);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (25, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'diarys', 'diary');
INSERT INTO `django_content_type` VALUES (7, 'news', 'news');
INSERT INTO `django_content_type` VALUES (8, 'operation', 'activecomments');
INSERT INTO `django_content_type` VALUES (9, 'operation', 'diarycomments');
INSERT INTO `django_content_type` VALUES (32, 'operation', 'productcomments');
INSERT INTO `django_content_type` VALUES (31, 'operation', 'shopping');
INSERT INTO `django_content_type` VALUES (28, 'operation', 'shoppingcart');
INSERT INTO `django_content_type` VALUES (10, 'operation', 'spotscomments');
INSERT INTO `django_content_type` VALUES (11, 'operation', 'usercollect');
INSERT INTO `django_content_type` VALUES (27, 'operation', 'userfav');
INSERT INTO `django_content_type` VALUES (29, 'pay', 'goodsordersmaintable');
INSERT INTO `django_content_type` VALUES (30, 'pay', 'orderitems');
INSERT INTO `django_content_type` VALUES (34, 'pay', 'scenicordersmaintable');
INSERT INTO `django_content_type` VALUES (33, 'pay', 'ticketsordersmaintable');
INSERT INTO `django_content_type` VALUES (12, 'scenicspots', 'active');
INSERT INTO `django_content_type` VALUES (13, 'scenicspots', 'gallery');
INSERT INTO `django_content_type` VALUES (14, 'scenicspots', 'spots');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (23, 'shop', 'product');
INSERT INTO `django_content_type` VALUES (24, 'shop', 'propic');
INSERT INTO `django_content_type` VALUES (26, 'users', 'areainfo');
INSERT INTO `django_content_type` VALUES (16, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (17, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (15, 'users', 'myuser');
INSERT INTO `django_content_type` VALUES (18, 'users', 'thecontact');
INSERT INTO `django_content_type` VALUES (19, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (20, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('4h98p1tkh5tm0hpsmkpwr9u5pyigthd5', 'YTM2N2E3ZjkwZmI3ZDRmMzk0ODU3ZjQ4ZDk0ZWRmYTRiMThkNzczYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDU5OWNjMzUzN2Y5ZmZhYWZmZWQzMWJhOGY1NDE2OTM3NWViZDBlIiwiTElTVF9RVUVSWSI6W1sic2Nlbmljc3BvdHMiLCJzcG90cyJdLCIiXX0=', '2019-04-27 09:40:09.728990');
INSERT INTO `django_session` VALUES ('oxon28si7wdjxcngghbuuxhdn0p1ec3d', 'ZTQzNzMyZDg4OGNmMjQ4ODY5YzFhY2FjNTc5Mjg5ODU2OWNiMGRjYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDU5OWNjMzUzN2Y5ZmZhYWZmZWQzMWJhOGY1NDE2OTM3NWViZDBlIiwiTElTVF9RVUVSWSI6W1sic2hvcCIsInByb3BpYyJdLCIiXX0=', '2019-04-27 09:16:46.797247');

-- ----------------------------
-- Table structure for news_news
-- ----------------------------
DROP TABLE IF EXISTS `news_news`;
CREATE TABLE `news_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checknum` int(11) NOT NULL,
  `classification` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_times` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_news
-- ----------------------------
INSERT INTO `news_news` VALUES (1, '甘孜旅游再添新运力 格萨尔机场开始飞行校验', ' 四川旅游新闻网消息（记者 李晋平）日前，一架中国民用航空飞行校验中心“桨状C680”型校验飞机在甘孜格萨尔机场跑道平稳着陆，并安全停靠在停机坪，这标志着甘孜格萨尔机场建设取得重大突破，正式进入飞行校验阶段。\r\n\r\n       近日据甘孜州康定机场集团消息，民航飞行校验组从达州河市机场腾空起飞，历经约2小时的飞行，顺利抵达甘孜格萨尔机场。在7至10天内，飞行校验机组将驾驶校验飞机，在甘孜格萨尔机场完成数次起降，对机场的导航设备、通信设备、灯光系统、飞行程序以及跑道道面性能等指标逐一进行校验评估，执行10余个规定校验项目。\r\n\r\n       飞行校验是新建机场投入使用前的关键步骤，是机场开放和航路运行的前提保障，为确保此次飞行校验顺利进行，四川康定机场集团公司精心组织、全力支持、积极配合，于11月初就全面铺开了此次飞行校验的筹备工作，形成了详尽的工作方案，统一调配康定机场、稻城亚丁机场相关专业共计30余名员工，组成空管保障组、机务场务消防组、安检保卫组，并于11月30日全员抵达甘孜格萨尔机场，尽快调整最佳状态，投入到各项设施设备的调试、准备工作中。\r\n\r\n       海拨4068米的甘孜格萨尔机场，于2017年6月正式开工建设，场址位于四川省甘孜州甘孜县来马镇和德格县错阿镇交界六十六道班。本期建设规模按照满足目标年2025年旅客吞吐量22万人次、年货邮吞吐量660吨设计，飞行区等级4C，新建一条长4000米、宽45米的跑道，3000平方米航站楼，站坪设置4个C类机位，并配套建设空管、供油、消防救援以及公共配套设施。\r\n\r\n       自2006年9月康定机场开建以来，历经十余载，甘孜高原的民用机场从无到有，康定机场、稻城亚丁机场、甘孜格萨尔机场分别布局于全州东路、南路、北路三大片区，逐步构建起甘孜州民用航空交通“金三角”构架，并与国道317、318线紧密相连，形成陆空立体交通体系，从而真正打破了甘孜交通建设瓶颈，破除经济发展制约，使甘孜州地方社会经济发展如虎添翼。\r\n\r\n       下一步，甘孜格萨尔机场将以全力推进工程竣工验收、试飞、行业验收、运营许可证申办等后续工作，确保2019年实现通航运营。届时，甘孜州将成为全国首个拥有三座民用机场的地区级市州，也是全国首个三座民用机场均为海拔4000米以上高高原机场的地区级市州。', 'news/2019/1/TVgz-hktxqai3239835.jpg', 7, 'hot', '2019-01-30 10:40:00.000000');
INSERT INTO `news_news` VALUES (2, '中国·大熊猫文化联盟在雅安成立 四川十大特色旅游品牌出炉', '   四川旅游新闻网消息 （刘可为 记者 李晋平）12月5日-8日，以“大熊猫 大旅游 大融合”为主题，由省文化旅游厅、雅安市人民政府等主办的第二届四川旅游新媒体营销大会暨中国•大熊猫文化联盟成立大会在四川雅安举行。在6日上午举行的开幕式上，投票总数超1050万、持续15天的“2018四川十大特色旅游品牌”网络评选结果最终揭晓。\r\n\r\n       雅安是世界上第一只大熊猫的科学发现地、命名地和模式标本产地，2006年纳入联合国世界遗产名录的四川大熊猫栖息地52%在雅安，全市划入大熊猫国家公园面积约占整个大熊猫国家公园面积（含四川、陕西、甘肃）的22%，建国以来先后有130余只大熊猫从雅安走出国门。\r\n\r\n       联盟同时发布《弘扬熊猫文化 共建国家公园——中国•大熊猫文化联盟雅安宣言》，宣言提出保护优先、永续发展；资源整合、和谐共生；统筹协调、合作共赢；开放合作，共同参与四点倡议。联盟承诺努力在稳定大熊猫繁衍、维护生态系统完整性和原真性、探索生态文明建设新模式、实现人与自然和谐共生、大熊猫品牌建设、大熊猫文化传播与旅游融合发展等方面实现新突破，给大熊猫更好的生存空间，给子孙后代留下更多净土。随着成雅铁路通车在即，“坐动车游雅安”即将成为现实。\r\n\r\n       另外，在6日上午举行的开幕式上，投票总数超1050万、持续15天的“2018四川十大特色旅游品牌”网络评选结果最终揭晓。该评选涉及十大类别，包括赏花旅游目的地、避暑旅游目的地、红叶旅游目的地、冰雪旅游目的地、温泉旅游目的地、亲子旅游目的地、阳光旅游目的地、康养旅游目的地、特色乡村民宿、特色旅游商品。雅安碧峰峡、巴中光雾山、甘孜海螺沟、宜宾蜀南竹海等景区均榜上有名。', 'news/2019/1/00300203755_5fdd830f.jpg', 3, 'life', '2019-01-30 11:05:00.000000');
INSERT INTO `news_news` VALUES (3, '2018第六届成都国际旅游展(CITE)开幕', ' 四川旅游新闻网消息（记者李晋平）11月29日，由四川省旅游协会作为战略合作伙伴，四川省文化和旅游厅、成都市旅游局和成都市博览局作为支持单位的“2018第六届成都国际旅游展(CITE)”在成都世纪城新国际会展中心三号馆开幕。\r\n\r\n       据悉，本次展会为期三天，第一天和第二天为专业日，仅限专业观众和受邀买家参加；第三天天为公众日，对市民公众开放。本届旅游展展出面积超一万平方米，参展国家和地区超30个，参展企业逾500家，国内外特邀买家近500名，预计专业观众数量将突破3000人。\r\n\r\n       值得一提的是，除了大家熟知的摩洛哥、埃及、俄罗斯和斯里兰卡等国外，欧洲旅游协会（ETOA）和欧洲温泉协会(ESPA)首次作为合作伙伴亮相成都。\r\n\r\n       本次成都国际旅游展(CITE)通过买卖家见面会、PSA预约系统精准匹配需求、B2B专业洽谈、商务社交午餐、高端论坛、旅游推介会等方式，促进和加强中外旅游文化的合作交流。现场既有已经较为成熟的国际旅游国家和线路展览展示，又推出一系列小众景点和新玩法，能满足社会各阶层和各年龄层次的不同需求。\r\n\r\n       记者在展会现场看到，主宾国斯里兰卡带来的传统歌舞极具民族特色，成为全场焦点之一；欧洲旅游协会（ETOA）携其庞大的全球旅游供应商队伍，推出了“浪漫欧洲对中国游客的诱惑”，丰富的旅游产品吸引了众多业者的关注；欧洲温泉协会(ESPA)主办的\"欧洲温泉胜地和温泉保健\"研讨会，深度介绍了欧洲浪漫温泉胜地和温泉保健知识，颇受旅游爱好者青睐；不丹王国、斯里兰卡西吉里亚、越南胡志明市的现场推介活动让大家纷纷驻足欣赏；还有不少观展者在“清新福建”展台前细细品尝着当地特产的武夷山大红袍。\r\n\r\n       除了来自全球和国内各地丰富的旅游产品和资源推介，四川本地的展品同样精彩，其中尤以“科技+旅游”的产品最受关注。记者在展厅看到，由多元互动专为景区研发的共享电动车只需扫码即可开走，引得参展商和观展者纷纷体验。该公司还把当前最为智能的人脸识别、指静脉识别等景区智能服务技术“搬”到了现场。“这些技术既能为游客带来便捷，也为景区大大节约了人工成本。”该公司负责人说道。\r\n\r\n       此外，LED大屏上显示的大数据平台以图形效果呈现，让景区管理者一眼即知景区各类运营现状，并可通过手机实时掌控景区情况；基于“阿米巴”经营管理模式开发的“慧·经营”管理系统，不仅为景区管理者解决了融资难、管理难的问题，还能有效提高员工积极性，得到业界人士的一致好评。\r\n\r\n       据了解，成都国际旅游展自2012年举办至今，致力于为旅界提供一种精准的、专业高端的商务洽谈型展会。经过六年时间的沉淀和积累，该展会目前每年吸引超过3000位专业观众，500名专业买家，观展人数过万，受到国内外旅游界人士的高度评价，被誉为西南地区最具影响力的专业旅游展会。', 'news/2019/1/ac4bd11373f0820221facfa542fbfbedab641b3b.jpg', 12, 'culture', '2019-01-30 11:07:00.000000');
INSERT INTO `news_news` VALUES (4, '理塘县汉戈村贫困户今年第三次分红', '四川旅游新闻网消息(叶强平 记者 徐登林 文/图)10月23日，理塘县濯桑乡汉戈村贫困户甲措从村集体经济分红大会上领到了1350元，他高兴地说：“这是我们村今年第三次分红，年底我家脱贫大有希望，全村退出贫困也不再遥远了,感谢党的脱贫好政策。”\r\n\r\n汉戈村虽然位于理塘县通往稻城亚丁的香格里拉旅游环线上，但全村109户中，52户因各种原因搬迁至县城谋求生计，只有57户留在村里，三分之一以上属于贫困户。甲措家9口人，除了读书的、多病的，家中就只有两个劳动力，日子过得十分艰难。\r\n\r\n2015年9月，甘孜州旅发委下派汉戈村“第一书记”郭林，通过深入调查后下定决心，发展村集体经济，给村民寻找一条增收渠道。他看准过境旅游的商机，整合利用资源，建成“甘孜州乡村旅游扶贫培训示范点”，对旅游产业发展进行相关培训，提升了村民的商品意识和服务水平。\r\n\r\n为了让更多的游客能在汉戈村驻足，2016年，郭林与当地乡村干部一起努力，以村“两委”成员为骨干成立了“理塘县汉戈花村旅游服务有限公司”。投资13万元，在S217线新建一个大型户外广告牌，吸引客户做商业广告，当年收回成本并盈利3万余元。\r\n\r\n今年，在理塘县政府、甘孜州旅法委、新都区和金堂县的支持下，争取各方资金，当地老百姓群策群力，共同在汉戈村修建民俗接待中心，打造汉戈花海，修建赛马场、游客中心、锅庄广场等。国庆期间，汉戈花海就吸引了5000余游客赏花照相、骑马游玩，收入了5万元。\r\n\r\n汉戈村支部书记降央介绍，这次分红主要是花海门票收入、村集体收割机对外出租等合计7万元;年初每户分红75元是2016年12月集体种植油菜榨油后收入;4月份将户外广告牌利润以购买网围栏的形式对村民进行分红，每户533元。\r\n\r\n郭林说，虽然汉戈村集体经济分红是相关要求的50倍，但总体经济实力还是很弱小。下一步，将利用汉戈村的旅游区位优势，打造汽车越野赛道，举办汽车越野赛事，修建星空帐篷露营基地、房车露营基地等，为老百姓的创收提供新的途径。\r\n\r\n ', 'news/2019/1/00300203976_e0d829ed.jpg', 6, 'culture', '2019-01-30 10:41:00.000000');
INSERT INTO `news_news` VALUES (5, '峨眉山今起执行淡季价 半价优惠只要90元', '四川旅游新闻网记者了解到，这已经是今冬峨眉山景区执行的第五大优惠政策了。除此之外，为纪念峨眉山—乐山大佛申遗成功20周年，峨眉山景区于12月实行门票半价优惠活动，优惠后，景区门票为90元，活动时间于12月1日至12月31日。同时，峨眉山景区将于2017年1月1日推出【峨眉山申遗20周年福运卡】，该卡享受峨眉山门票半价优惠，总量为20160张，游客可登录峨眉山识途旅游网购卡。\r\n\r\n值得一提的是，峨眉山景区猴年门票免费政策仍在继续。据悉，猴年门票免费政策将延续至2017年1月27日(春节、国庆黄金周除外)期间，属猴游客可凭本人有效身份证件享受峨眉山景区门票免费的优惠政策。申遗优惠月期间，该优惠政策仍同时执行，该优惠倒计时最后一个月，属猴的游客要抓紧这次难得的机会。同时，峨眉山景区将限量推出峨眉山滑雪场0元秒杀活动，免费玩转冰雪季，届时将会在识途旅游网、峨眉山官方微信、微博上进行抢票活动。\r\n\r\n除了优惠政策外，四川旅游新闻网记者从峨眉山景区管委会了解到，该景区将于12月25日举行第二届“冰雪勇士”高海拔、户外冰雪极限大型活动。活动期间100名峨眉功夫达人将在金顶之巅表演峨眉派养生拳功，同时还将上演冰雪瑜伽。最“刺激”的是冰雪勇士极地耐寒挑战“冰雪神功”，目前景区已向全世界发出邀请，征集100名冰雪勇士于12月25日，身着统一挑战赛服装，以峨眉派经典的“须弥掌”招式为标准动作，在雪地中进行耐寒挑战。游客可在享受优惠政策的同时也可以在冰天雪地里挑战自我', 'news/2019/1/00300203530_d346d26b.jpg', 3, 'hot', '2019-01-30 10:59:00.000000');
INSERT INTO `news_news` VALUES (6, '赏樱花、杏花、桃花 青白江\"赏花季\"旅游活动拉开序幕', '四川旅游新闻网消息(记者 李晋平)春来到，踏春赏花又成为成都市民的必定行程。四川旅游新闻网记者了解到，今年，青白江区将以凤凰湖樱花风情游、福洪杏花幸福游、姚渡桃花文化游拉开“赏花季”旅游活动的序幕，围绕“赏花踏青观光”“欧洲文化体验”两条主线，创新赏花内容与形式，给游客们带来更加丰富的旅游体验。其中，第十届杏花(果)节将于2017年2月中旬开幕，6月中旬结束;第八届樱花旅游文化节将于2017年3月2日开幕，4月中旬结束;第27届姚渡桃花节将于2017年3月11日开幕，4月中旬结束。', 'news/2019/1/00300200783_0cabb0bc.jpg', 3, 'active', '2019-01-30 11:01:00.000000');
INSERT INTO `news_news` VALUES (7, '清新之绿 登上名山采茗茶 \"明前\"踏青正当时', '   四川旅游新闻网消息（记者 冯超颖）3月27日，第十三届蒙顶山国际茶文化旅游节暨首届蒙顶山国际禅茶大会开幕，数万名游客和茶叶爱好者涌向茶园。作为一个标志性的事件，蒙顶山每年的茶文化旅游节一开幕，就意味着四川春季旅游又打开了一扇采茶踏青的大门。\r\n\r\n本周末就是清明节假期，为吸引游客前来采茶踏青观光，我省多个产茶地都将开展以茶为主题的文旅活动，以满足游客的多种体验需求。戴上草帽、背起竹篓，到茶园里去踏青吧。\r\n\r\n清新之绿 登上名山采茗茶\r\n\r\n谈到四川茶叶，竹叶青、峨眉雪芽、蒙顶甘露、雀舌等可谓如雷贯耳，这几大品牌的茶叶都是绿茶。目前，峨眉雪芽和蒙顶甘露正是采摘的最佳时节。\r\n\r\n想要采摘峨眉雪芽，峨眉雪芽黑水生态茶园是不错的选择，这里的茶农会现场演示采制过程，观摩之余游客也可以亲自体验一番采茶和做茶带来的乐趣。除了黑水生态茶园，在峨眉山海拔800-1200米常年云遮雾绕的赤城峰、白岩峰、万年寺等地，都有峨眉雪芽生长，游客在登山过程中采茶赏景别有一番情趣。而且，峨眉山低山区的油菜花还未完全“退场”，半山腰处点缀着杜鹃花、山樱花、油桐花等，如果遇合适天气，在高山区还能见到春雪美景，在混搭的春色中，体验不同的景色。\r\n\r\n在雅安蒙顶山，种茶的历史可追溯到西汉。随着第十三届蒙顶山国际茶文化旅游节暨首届蒙顶山国际禅茶大会在雅安市名山区茶马古城开幕，近期到这里采茶，还可以参与摄影展、骑游体验等系列活动。\r\n\r\n韵味之黑 品赏特色茶艺文化\r\n\r\n如果绿茶让人感受到的是清新，那黑茶就是别样的韵味。黑茶被称为“生命之茶”，近日，以“黑茶溯源头 邛茶天下香”为主题的采茶活动在邛崃市夹关镇进行。这里有着大量的黑茶种植基地。此次活动以邛茶走廊为线索，连接了天台山、平乐古镇、夹关古镇等景区景点，串起了一个个茶园观光体验点。活动期间，还有邛茶走廊影像大赛、斗茶大赛等系列精彩活动，丰富了游客的采茶体验。\r\n\r\n淡雅之白 微微一酵很倾城\r\n\r\n    雅安藏茶则是四川有名的黑茶。在雅安市雨城区多营镇藏茶村，一亩接一亩的藏茶梯田连绵，一望无际，呈现出“十处景观、百种茶树、千亩公园、万步游道”的秀丽景象。藏茶制作颇为讲究，从采摘到最后泡制都由茶农亲手操作，需要长时间的发酵而变成黑色，除了本身的藏式风情外，还具有一番特殊的韵味。\r\n\r\n说过了黑茶，我们来聊聊白茶。白茶属微发酵茶，采摘后不经杀青或揉捻，只需经过晾晒或文火干燥，滋味清淡回甘。', 'news/2019/1/00300201907_785dd758.jpg', 3, 'hot', '2019-01-30 11:02:00.000000');
INSERT INTO `news_news` VALUES (8, '今春新版踏青手册出炉 乐山这些地方不容错过', '四川旅游新闻网消息(祝贺 记者 吴亚飞)随着气温的回升，日暖风清、草木飘香的春季即将到来，准备春游踏青的市民已经跃跃欲试。春游去哪儿?\r\n\r\n峨眉山市\r\n\r\n赏花爬山两不误\r\n\r\n每年的3月，都是到峨眉山市赏花踏青的好时节。人们可以沿着万亩油菜花田，经峨眉山市绥山镇天全村、普兴乡仙牙桃花村等地，一起穿越花海。每年的“李花节”、“桃花节”等诸多活动也会让游客感受到乡村旅游的乐趣。\r\n\r\n据了解，峨眉山市绥山镇天全村四季温和，常年平均气温15摄氏度左右，每逢三月李花盛开，各地游客慕名而来，附近的农家乐也是不少游客周末踏青出游的理想去处。运动休闲方面，峨眉山市符溪镇峨眉河骑游、符溪镇丰收湖垂钓、罗目古镇体验游等项目，都能让游客享受垂钓、野营、骑游的乐趣。\r\n\r\n小贴士：体验采摘乐趣也是峨眉山市乡村游的重头戏。除了时下流行的草莓采摘以外，绥山镇天全村李子采摘、双福镇冯岗村蓝莓采摘等将随着季节轮番登场。届时，游客不仅能体验农家乐趣，还能度过休闲的假日。\r\n\r\n犍为县\r\n\r\n开往春天的小火车\r\n\r\n说到春季赏花，每年2月底到3月初都是油菜开花的季节，看油菜花就不得不提犍为县每年都游人如织的“花季之旅”——在石溪镇到芭蕉沟这条怀旧的路线上，乘着蒸汽小火车，去欣赏漫山遍野金灿灿的油菜花。沿途的菜子坝和蜜蜂岩是两个绝佳的观赏景点。小火车行驶在群山、层层梯田之中，不仅可以观赏风景，而且窄窄的车厢摇晃缓慢的速度，时不时鸣起的汽笛声，都会让人有“穿越”的感觉。\r\n\r\n犍为县金石井镇是体验采摘的好去处。椪柑、脐橙、“塔罗科”血橙、“春见”、“沃柑”、“不知火”等不同品种的橘子都能采摘品尝到。随着去年该镇首届柑橘采摘节所产生的辐射效应，如今“橘子小镇”被越来越多的游客所知晓，在以柑橘健康绿色品牌形象的金石井镇，采摘品尝鲜果、吃农家饭已成为不少游客的选择。\r\n\r\n小贴士：在犍为县，主题游活动贯穿一整年，除了小火车，在黄村井感受全国唯一用于游客真实观光体验的矿井，体验矿工生产生活;在犍为文庙，能品味东方古建筑艺术的神韵，领略儒家文化并接受洗礼;桫椤湖景区可乘船畅游桫椤湖，观亿年桫椤树;而罗城古镇的“船型街”，能让游客领略古镇的怀旧与沧桑。\r\n\r\n井研县\r\n\r\n休闲垂钓好享受\r\n\r\n近年来，“春天可踏青、夏天可作画、秋天可采果、冬天可盐浴、四季都可钓鱼”的旅游体验在井研县风生水起，吸引着众多游客。春天，是万物复苏的季节，井研县又有什么耍法呢?\r\n\r\n免费游览雷畅故居，景区内可以看到古色古香的建筑、雕刻，凝重的台门，别具特色的制酒作坊，错落有致的庭院景观，而农耕文化展示厅则会给人“穿越”到古代的感觉。\r\n\r\n春天也是垂钓的好季节，在“垂钓之乡”，众多库区不仅能满足钓友的需求，还能体验农家乐趣。据了解，井研县每年都会举办库钓大赛，这已成为井研县的一张“名片”，不仅能带动旅游的人气，还能促进乡村旅游的发展，刺激和带动相关服务业', 'news/2019/1/00300204462_64b4dfa2.jpg', 5, 'culture', '2019-01-30 09:57:00.000000');
INSERT INTO `news_news` VALUES (9, '2019世界雪日暨国际儿童滑雪节在西岭雪山开幕', '四川旅游新闻网消息（记者 杨艺茂）1月20日，在孩子们的欢笑和尖叫中，2019“世界雪日暨国际儿童滑雪节”在西岭雪山滑雪场拉开帷幕。本次活动由国际滑雪联合会与国家体育总局主办，旨在响应“带动三亿人参与冰雪运动”的发展目标，面向14岁以下的儿童推广冰雪活动。\r\n\r\n　　今年已是西岭雪山第五次举行“世界雪日暨国际儿童滑雪节”，在五年的时间里，西岭雪山滑雪课程的专业性，越来越受到家长和孩子们的认可。当天，共有50名小选手在家长的陪伴下参加滑雪比赛，绝大多数小朋友都独立完成了比赛。\r\n \r\n滑雪场被欢快热闹的气氛包围，小朋友们争先恐后朝终点冲去，在勇敢尝试中掌握了一些滑雪技巧，完成比赛。许多第一次参加滑雪比赛的选手对这项运动表现出喜欢，而往年参加过儿童滑雪比赛的小朋友，则以流畅、娴熟的滑雪动作，展现出了“滑雪健将”的风采，赢得观众的掌声和欢呼。当前，儿童滑雪比赛，已经成为孩子们了解滑雪、学习滑雪并喜欢滑雪的良好平台。\r\n\r\n　　据了解，为推广冰雪运动，西岭雪山引进了专业顶尖的造雪系统、滑雪器具，并且西岭雪山拥有专业的滑雪道，可以容纳2000余人同时滑雪，同时还引入国际先进滑雪课程，着力打造西南地区最专业的滑雪教育基地。随着2022年北京冬奥会的临近，冰雪运动越来越受到民众欢迎。拥有优良滑雪设施、专业教学课程和便利区位优势的西岭雪山，成为全国西南地区唯一受邀举办“世界雪日暨国际儿童滑雪节”的滑雪场，带孩子体验冰雪运动的家长也越来越多。滑雪运动为孩子们带来运动乐趣的同时，也锻炼了他们的体魄和毅力。\r\n\r\n　　如今的西岭雪山，既是滑雪培训基地，也是冰雪体验乐园。1月18日，为响应国家体育总局“带动三亿人参与冰雪运动”的发展目标，由成都市体育局、大邑县人民政府主办的“运动成都”成都市第五届全民健身运动会，也在西岭雪山滑雪场举行，400余名选手嗨翻西岭畅滑冰雪，引领市民参与冰雪运动的体育潮流。为吸引更多群众参与冰雪运动，西岭雪山还邀请了专业团队进行单板滑雪表演、炫彩夜场滑雪等活动，以丰富有趣的的冰雪游玩项目让人们爱上冰雪、爱上运动。', 'news/2019/1/mudan.jpg', 2, 'specialty', '2019-01-30 10:25:00.000000');
INSERT INTO `news_news` VALUES (10, '年终岁末将至 旅游活动在成都扎堆亮相', '    四川旅游新闻网消息（记者李晋平）年终岁末将至，旅游市场将迎来消费力最为旺盛的黄金周，近期旅游商家也瞄准了这次消费盛宴，各出奇招，吸引游客的关注度。成都欢乐谷借十周年庆典推出“城市寻梦，欢乐“拾”光”、第25自贡灯会也携手携程推出“百万游客线上订票赏灯”、同时印尼也瞄准了成都这个出游力旺盛的旅游客源市场推出“印尼奇妙之旅”。\r\n\r\n\r\n       成都欢乐谷十周年生日庆典璀璨开启\r\n\r\n       近日，在流光溢彩的灯光海洋与成千上万谷迷的祝福中，成都欢乐谷十周年生日庆典璀璨开启。庆典以活力四射的舞蹈表演作为开启，紧接着，成都欢乐谷表彰了作为“拾光守护者”的优秀员工，感谢亲密的合作伙伴和一直支持欢乐谷的谷迷们，并用丰富的礼品抽奖与巨型的生日蛋糕，和全场观众共同庆祝十周年的生日。\r\n\r\n       据悉，成都欢乐谷还在现场揭开了2019年重磅活动计划：潮玩季、电音节、街头艺术节、万圣节、灯光节等，将在2019年为大家带来精彩纷呈的潮玩活动，继续构筑谷迷们心中永不落幕的寻梦之地。\r\n\r\n       回顾十年历程，成都欢乐谷以集艺术文化、时尚潮流、娱乐休闲的多元化综合体验，用整座主题乐园的精彩，激活玩家心中关于欢乐的梦想，让刹那间的欣喜成为生命中多彩的回忆。同时欢乐谷推出四项“欢乐十年，暖心回馈”活动，分别是从2019年1月起，“星寿免费 家属半价”、“十年锡婚 免费畅玩”、“年卡七折 畅玩一整年”、“十周年优惠夜场门票”四项优惠举措', 'news/2019/1/liyu.jpg', 2, 'specialty', '2019-01-30 10:28:00.000000');

-- ----------------------------
-- Table structure for operation_activecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_activecomments`;
CREATE TABLE `operation_activecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `active_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_activecomm_active_id_fa517fb5_fk_scenicspo`(`active_id`) USING BTREE,
  INDEX `operation_activecomments_user_id_ae1153b0_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_activecomm_active_id_fa517fb5_fk_scenicspo` FOREIGN KEY (`active_id`) REFERENCES `scenicspots_active` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_activecomments_user_id_ae1153b0_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_activecomments
-- ----------------------------
INSERT INTO `operation_activecomments` VALUES (1, '很好哦很好哦很好哦', '2019-01-30 17:07:42.503174', 2, 1);
INSERT INTO `operation_activecomments` VALUES (2, '独立成团·私家享受,完美！', '2019-01-30 10:10:49.023945', 3, 1);

-- ----------------------------
-- Table structure for operation_diarycomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_diarycomments`;
CREATE TABLE `operation_diarycomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_diarycomments_diary_id_a5054431_fk_diarys_diary_id`(`diary_id`) USING BTREE,
  INDEX `operation_diarycomments_user_id_90fe7301_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_diarycomments_diary_id_a5054431_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_diarycomments_user_id_90fe7301_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_diarycomments
-- ----------------------------
INSERT INTO `operation_diarycomments` VALUES (1, '一般化', '2019-01-30 15:20:43.142073', 76, 1);
INSERT INTO `operation_diarycomments` VALUES (2, '还可以', '2019-01-30 15:44:29.000000', 75, 19);
INSERT INTO `operation_diarycomments` VALUES (3, '学习了', '2019-01-30 15:49:02.384543', 75, 1);
INSERT INTO `operation_diarycomments` VALUES (4, '很好', '2019-01-30 15:49:58.802799', 75, 19);
INSERT INTO `operation_diarycomments` VALUES (5, 'hahahahahahhahah', '2019-01-30 15:51:28.044170', 75, 1);
INSERT INTO `operation_diarycomments` VALUES (6, '好好好好好', '2019-01-30 16:17:25.236691', 75, 1);
INSERT INTO `operation_diarycomments` VALUES (7, '很好很好很好！', '2019-01-30 15:31:24.000000', 75, 19);
INSERT INTO `operation_diarycomments` VALUES (8, '不错', '2019-04-13 08:44:50.516614', 7, 25);

-- ----------------------------
-- Table structure for operation_productcomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_productcomments`;
CREATE TABLE `operation_productcomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_productcomments_product_id_07f2dc10_fk_shop_product_id`(`product_id`) USING BTREE,
  INDEX `operation_productcomments_user_id_c7452db3_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_productcomments_product_id_07f2dc10_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_productcomments_user_id_c7452db3_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_productcomments
-- ----------------------------
INSERT INTO `operation_productcomments` VALUES (1, '1541999329971653321', '很好看的摆件！', '2019-01-30 16:22:17.564157', 6, 1);

-- ----------------------------
-- Table structure for operation_shopping
-- ----------------------------
DROP TABLE IF EXISTS `operation_shopping`;
CREATE TABLE `operation_shopping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_shopping_product_id_13d02d24_fk_shop_product_id`(`product_id`) USING BTREE,
  INDEX `operation_shopping_user_id_0b58005c_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_shopping_product_id_13d02d24_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_shopping_user_id_0b58005c_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_shopping
-- ----------------------------
INSERT INTO `operation_shopping` VALUES (8, 4, '2019-01-30 11:08:55.376533', 8, 1);
INSERT INTO `operation_shopping` VALUES (9, 1, '2019-01-30 11:17:27.335778', 6, 1);
INSERT INTO `operation_shopping` VALUES (10, 1, '2019-01-30 13:07:37.909377', 5, 1);
INSERT INTO `operation_shopping` VALUES (11, 1, '2019-01-30 13:14:13.822066', 3, 1);
INSERT INTO `operation_shopping` VALUES (12, 2, '2019-01-30 21:19:38.219422', 8, 25);
INSERT INTO `operation_shopping` VALUES (13, 1, '2019-01-30 08:27:40.759242', 5, 25);

-- ----------------------------
-- Table structure for operation_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `operation_shoppingcart`;
CREATE TABLE `operation_shoppingcart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_shoppingcart_product_id_39e6948f_fk_shop_product_id`(`product_id`) USING BTREE,
  INDEX `operation_shoppingcart_user_id_afb642bb_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_shoppingcart_product_id_39e6948f_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_shoppingcart_user_id_afb642bb_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_shoppingcart
-- ----------------------------
INSERT INTO `operation_shoppingcart` VALUES (1, 1, '2019-01-30 15:27:57.042176', 7, 1, 1);
INSERT INTO `operation_shoppingcart` VALUES (5, 10, '2019-01-30 14:02:08.433645', 5, 1, 0);
INSERT INTO `operation_shoppingcart` VALUES (6, 3, '2019-01-30 15:21:18.795222', 8, 1, 0);
INSERT INTO `operation_shoppingcart` VALUES (7, 1, '2019-01-30 15:22:19.405650', 6, 1, 1);
INSERT INTO `operation_shoppingcart` VALUES (8, 12, '2019-01-30 15:28:33.228581', 1, 1, 0);

-- ----------------------------
-- Table structure for operation_spotscomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_spotscomments`;
CREATE TABLE `operation_spotscomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `spots_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_spotscomme_spots_id_9e05aeab_fk_scenicspo`(`spots_id`) USING BTREE,
  INDEX `operation_spotscomments_user_id_1ab65cb3_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_spotscomme_spots_id_9e05aeab_fk_scenicspo` FOREIGN KEY (`spots_id`) REFERENCES `scenicspots_spots` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_spotscomments_user_id_1ab65cb3_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_spotscomments
-- ----------------------------
INSERT INTO `operation_spotscomments` VALUES (1, '很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好', '2019-01-30 14:11:23.012778', 4, 1);
INSERT INTO `operation_spotscomments` VALUES (2, '不错不错不错不错不错不错不错不错不错不错不错不错不错不错不错不错不错不错不错不错', '2019-01-30 17:07:01.251005', 5, 1);

-- ----------------------------
-- Table structure for operation_usercollect
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercollect`;
CREATE TABLE `operation_usercollect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercollect_diary_id_645e38c5_fk_diarys_diary_id`(`diary_id`) USING BTREE,
  INDEX `operation_usercollect_user_id_bd2b08b4_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_usercollect_diary_id_645e38c5_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_usercollect_user_id_bd2b08b4_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usercollect
-- ----------------------------
INSERT INTO `operation_usercollect` VALUES (4, '2019-01-30 16:45:32.729416', 8, 1);
INSERT INTO `operation_usercollect` VALUES (5, '2019-01-30 16:45:39.214790', 76, 1);
INSERT INTO `operation_usercollect` VALUES (23, '2019-01-30 10:09:58.238369', 75, 1);

-- ----------------------------
-- Table structure for operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfav`;
CREATE TABLE `operation_userfav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfav_diary_id_15f80041_fk_diarys_diary_id`(`diary_id`) USING BTREE,
  INDEX `operation_userfav_user_id_1f1a4c7e_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_userfav_diary_id_15f80041_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_userfav_user_id_1f1a4c7e_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_goodsordersmaintable
-- ----------------------------
DROP TABLE IF EXISTS `pay_goodsordersmaintable`;
CREATE TABLE `pay_goodsordersmaintable`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_describe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_amount` decimal(11, 2) NOT NULL,
  `consignee` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_state` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `received_time` datetime(6) NULL DEFAULT NULL,
  `finish_time` datetime(6) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pay_goodsordersmaintable_user_id_a9d1ec06_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `pay_goodsordersmaintable_user_id_a9d1ec06_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_orderitems
-- ----------------------------
DROP TABLE IF EXISTS `pay_orderitems`;
CREATE TABLE `pay_orderitems`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `good_num` int(11) NOT NULL,
  `order_num` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `good_price` double NOT NULL,
  `good_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `good_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_scenicordersmaintable
-- ----------------------------
DROP TABLE IF EXISTS `pay_scenicordersmaintable`;
CREATE TABLE `pay_scenicordersmaintable`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_num` int(11) NOT NULL,
  `ticket_price` double NOT NULL,
  `scenic_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scenic_id` int(11) NOT NULL,
  `order_num` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cdk` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_describe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_amount` decimal(11, 2) NOT NULL,
  `consignee` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_state` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classification` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `received_time` datetime(6) NULL DEFAULT NULL,
  `finish_time` datetime(6) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pay_scenicordersmaintable_user_id_1fd20704_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `pay_scenicordersmaintable_user_id_1fd20704_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scenicspots_active
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_active`;
CREATE TABLE `scenicspots_active`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduce` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classification` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `go_time` datetime(6) NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NOT NULL,
  `now_num` int(11) NOT NULL,
  `all_num` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenicspots_active
-- ----------------------------
INSERT INTO `scenicspots_active` VALUES (1, '成都+峨眉山+乐山+都江堰', '<p>\n	&nbsp;1、三环内免费上门接，避免衔接问题，轻松出游</p>2、全程一个导游，不更换导游，更好的沟通与服务\r\n\r\n 3、乐山船游游览，遥望睡佛魅影，独揽大佛全景，峨眉山精华景点游览（金顶+报国寺），赠送2个AAAA主题景区《黄龙溪古镇+成都大熊猫繁育基地》行程更丰富\r\n\r\n 4、升级1晚5钻奢享酒店，住宿更好\r\n\r\n 5、三大特色餐，四川地道苍蝇馆子鸡毛店+大蓉和+四川麻辣火锅（可选清汤、火锅、鸳鸯锅）\r\n\r\n 6、赠送峨眉山品牌晚会《圣象峨眉》，价值180元', 'active/2019/1/shaolin.jpeg', 'natural', '0838-00000000', '2019-01-30 08:00:00.000000', '成都火车站', 699, 0, 30, '2019-01-30 10:43:00.000000');
INSERT INTO `scenicspots_active` VALUES (2, '成都+九寨沟+黄龙6日跟团游', '早在九十年代中，有同事获奖励去九寨沟游玩，带回来那些惊艳绝美的风景照片羡煞了我们这些都市之人。由此知道在我国的中西部有一个叫“九寨沟”的人间仙境。 一直想去见识一下这个传说中的世外桃源，今天终于如愿以偿，踏上了这片神奇的土地。 说起这次出行，还真是受了年轻人的影响。我退休前服务的单位每年都有旅游活动，今年他们的目的地是九寨沟黄龙。8月中旬，一幅幅绚丽多彩的景区美景通过微信传来，将我云游之心拨动，产生了立刻去九寨沟的冲动。 接下来，上网查游程，选团队，定日期，一切顺理成章。之所以选择“成都+九寨沟+黄龙”这样的行程，还有一个情结是顺便浏览地震后的汶川。 携程团队游的服务就是让人放心，出发前一天晚，接机的短信就来了。字里行间充满了亲切感，告白清晰明了，使人有一种好像是去朋友家做客的感觉。虽然飞机晚了足足一小时，抵达成都已夜色阑珊，但接机的司机却毫无怨言。\r\n\r\n行程： D1：上海浦东机场 - 成都双流机场 D2：成都 - 九寨沟 D3：九寨沟一日游 D4：九寨沟 - 黄龙 - 茂县 D5：茂县 - 成都 D6：成都 -上海\r\n\r\nTips： 1. 这次我们团里有人抱怨航班时间不如意，其实网上显示的航班在订购时是可以更改的，如网上显示没有更多选择的话，还可以电话联系携程订购工作人员。电话订购的航班选择范围更大，而不需要增加费用。 2. 去九寨沟和黄龙，出了成都沿途所有厕所都要收费，1/元一人一次，要备好零钱。而在九寨沟、黄龙景区内的厕所均不收费。 3. 阿坝州所有酒店都不提供免费一次性洗浴用品，我们住的酒店提供收费的洗漱用品，10元/份。不准备花钱，就随身携带。 4. 景区内不能抽烟。', 'active/2019/1/longmenshiku_VmtBGlg.jpeg', 'natural', '0838-00000000', '2019-01-30 09:00:00.000000', '成都', 399, 4, 25, '2019-01-30 11:02:00.000000');
INSERT INTO `scenicspots_active` VALUES (3, '舌尖上的重庆、成都10日', '飞机：2月5日，西部航空PN6248,12:15---15:21，机型320，沈阳经停合肥再飞重庆。\r\n\r\n动车：2月10日，D5103,重庆北---成都东，08:58---10:57,票价96.5元，时间1小时59分。（成都结束后到北京2日，动车回沈阳。）\r\n\r\n地铁：重庆市内的地铁相当的便利，机场出来后直接地铁进入市内，根据需要换乘不同的线路。朋友帮助办了一张重庆的交通卡，可乘坐地铁、公交使用，后来证明，这绝对是个好的举措，不仅方便，而且还留了下来纪念。\r\n\r\n成都市的地铁有2条线，大部分出行靠公交车。\r\n\r\n（提示）：如果没有较好的体力的话。在市内尽量坐车或者地铁，重庆是山城，坡道很多。很是费体力，准备一些补充能量的食品。', 'active/2019/1/sdfsdfsdgsdgss.jpeg', 'leisure', '0838-00000000', '2019-01-30 08:00:00.000000', '成都火车站', 2995, 2, 10, '2019-01-30 11:09:00.000000');

-- ----------------------------
-- Table structure for scenicspots_gallery
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_gallery`;
CREATE TABLE `scenicspots_gallery`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `spots_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `scenicspots_gallery_spots_id_43d90e33_fk_scenicspots_spots_id`(`spots_id`) USING BTREE,
  CONSTRAINT `scenicspots_gallery_spots_id_43d90e33_fk_scenicspots_spots_id` FOREIGN KEY (`spots_id`) REFERENCES `scenicspots_spots` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenicspots_gallery
-- ----------------------------
INSERT INTO `scenicspots_gallery` VALUES (1, '都江堰1', 'spots/banner/2019/1/timg.jpeg', '2019-01-30 14:31:00.000000', 1);
INSERT INTO `scenicspots_gallery` VALUES (2, '都江堰2', 'spots/banner/2019/1/timg_1.jpeg', '2019-01-30 14:32:00.000000', 1);
INSERT INTO `scenicspots_gallery` VALUES (3, '都江堰3', 'spots/banner/2019/1/timg_2.jpeg', '2019-01-30 14:33:00.000000', 1);
INSERT INTO `scenicspots_gallery` VALUES (4, '都江堰4', 'spots/banner/2019/1/timg_3.jpeg', '2019-01-30 14:34:00.000000', 1);
INSERT INTO `scenicspots_gallery` VALUES (5, '都江堰5', 'spots/banner/2019/1/u3190787190571207846fm26gp0.jpg', '2019-01-30 14:34:00.000000', 1);
INSERT INTO `scenicspots_gallery` VALUES (6, '锦里风光1', 'spots/banner/2019/1/43f2_b.jpg', '2019-01-30 14:35:00.000000', 2);
INSERT INTO `scenicspots_gallery` VALUES (7, '锦里风光2', 'spots/banner/2019/1/2017050105.jpg', '2019-01-30 14:37:00.000000', 2);
INSERT INTO `scenicspots_gallery` VALUES (8, '锦里风光3', 'spots/banner/2019/1/d01373f082025aafe06feaf1f0edab64034f1aae.jpg', '2019-01-30 14:37:00.000000', 2);
INSERT INTO `scenicspots_gallery` VALUES (12, '大熊猫', 'spots/banner/2019/1/dsefsfg.jpeg', '2019-01-30 14:40:00.000000', 4);
INSERT INTO `scenicspots_gallery` VALUES (13, '大熊猫', 'spots/banner/2019/1/safasfg.jpeg', '2019-01-30 14:41:00.000000', 4);
INSERT INTO `scenicspots_gallery` VALUES (14, '大熊猫', 'spots/banner/2019/1/dfsafsfg.jpeg', '2019-01-30 14:41:00.000000', 4);
INSERT INTO `scenicspots_gallery` VALUES (15, '宽窄巷子1', 'spots/banner/2019/1/013e355875ca65a801219c77a66943.jpg1280w_1l_2o_100sh.jpg', '2019-01-30 14:43:00.000000', 3);
INSERT INTO `scenicspots_gallery` VALUES (16, '宽窄巷子2', 'spots/banner/2019/1/bf096b63f6246b60138698a0e1f81a4c500fa25d.jpg', '2019-01-30 14:43:00.000000', 3);
INSERT INTO `scenicspots_gallery` VALUES (17, '宽窄巷子3', 'spots/banner/2019/1/dbb44aed2e738bd4e03f33fbab8b87d6267ff9da.jpg', '2019-01-30 14:44:00.000000', 3);
INSERT INTO `scenicspots_gallery` VALUES (18, '宽窄巷子4', 'spots/banner/2019/1/f703738da9773912282ad258f3198618367ae2ff.jpg', '2019-01-30 14:44:00.000000', 3);
INSERT INTO `scenicspots_gallery` VALUES (19, '宽窄巷子5', 'spots/banner/2019/1/u5763711552706764766fm26gp0.jpg', '2019-01-30 14:44:00.000000', 3);

-- ----------------------------
-- Table structure for scenicspots_spots
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_spots`;
CREATE TABLE `scenicspots_spots`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classification` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `businessHours` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NOT NULL,
  `add_times` datetime(6) NULL,
  `x` decimal(9, 6) NOT NULL,
  `y` decimal(9, 6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenicspots_spots
-- ----------------------------
INSERT INTO `scenicspots_spots` VALUES (1, '都江堰景区', '<div class=\"toggle_l\" style=\"display: block;\">\n                            <div itemprop=\"description\" class=\"text_style\">\n                                <p class=\"inset-p\">两千多年前由秦国蜀郡太守李冰修建的都江堰水利工程，是全世界年代最久、唯一留存、以无坝引水为特征的水利工程，也是目前中国保存最完整的古代水利工程，工程位于都江堰市城西的岷江干流上。</p><p class=\"inset-p\">工程由鱼嘴分水堤、飞沙堰溢洪道、宝瓶口引水口三大主体工程和百丈堤、人字堤等附属工程构成，把汹涌的岷江分隔成外江和内江，外江排洪，内江引水灌溉，使川西平原成为“水旱从人”的“天府之国”。两千多年来，一直发挥着防洪灌溉作用。都江堰水利工程周边景色秀丽，文物古迹众多，主要景点有伏龙观、二王庙、李冰石刻像、安澜索桥、玉垒山公园等。</p>\n                            </div>\n                        </div>', 'spots/thumbnail/2019/1/下载_0iTJ0CT.jpeg', 'spots/mainfigure/2019/1/u30829683821652909244fm200gp0_VO5wJX9.jpg', 'natural', '0838-65980972', '全年', '成都市都江堰市公园路', 120, '2019-01-30 09:50:00.000000', 103.617656, 31.006376);
INSERT INTO `scenicspots_spots` VALUES (2, '锦里古街', '<div class=\"toggle_l\" style=\"display: block;\">\n                            <div itemprop=\"description\" class=\"text_style\">\n                                <p class=\"inset-p\">成都知名的步行商业街，由一大片清末建筑风格的仿古建筑组成，拥有数量众多的酒吧、餐饮名店，是西蜀历史上最古老、最具有商业气息的街道，著名的武侯祠也在其中。</p><p class=\"inset-p\">锦里与<a href=\"https://you.ctrip.com/sight/chengdu104/4227.html\" class=\"inset-p-link\" target=\"_blank\">武侯祠</a>一墙之隔。人们一般都会在游玩好武侯祠后，来锦里逛一逛。锦里洋溢着成都市井特有的喧嚣和随意。街道两边售卖的都是颇具当地特色的物品，手工的皮包、五颜六色的布灯笼等，还有众多老成都手艺人在忙碌，吹糖画、捏面人。此外，各色美食绝对令你垂涎三尺，张飞牛肉、豆花、牛肉焦饼、钵钵鸡，各具风味。</p><p class=\"inset-p\">夜幕下红灯笼亮起后的锦里，酒吧茶馆喧嚣热闹，其中比较有名的莲花府邸酒吧，据说很多超女、快女都在此唱过歌。</p>\n                            </div>\n                        </div>', 'spots/thumbnail/2019/1/5aa745f69bc83_9oqheqt_CxnpWIh.jpg', 'spots/mainfigure/2019/1/659ac7198618367a4cec2e7a2e738bd4b21ce578_DQK3MNA.jpg', 'leisure', '0838-66586666', '全年', '四川省成都市武侯区武侯祠大街231号', 75, '2019-01-30 09:57:00.000000', 104.054052, 30.651778);
INSERT INTO `scenicspots_spots` VALUES (3, '宽窄巷子', '<div class=\"toggle_l\" style=\"display: block;\">\n                            <div itemprop=\"description\" class=\"text_style\">\n                                <p class=\"inset-p\">宽窄巷子是成都惟一遗留下来的清朝古街道，由宽巷子、窄巷子和井巷子三条平行排列的城市老式街道及其之间的四合院群落组成。来这里，喝茶、吃火锅，感受成都的闲生活、慢生活和新生活。</p><p class=\"inset-p\">你可以在这里要一杯蒙山黄芽，与旁边的老爷子摆摆龙门阵；也可以唤一名“舒耳郎”，舒舒服服的享受掏耳朵的惬意；更可以在小吃摊边，面对着琳琅满目的小吃大快朵颐。夜幕下的宽窄巷子也是别有韵味，点醉、白夜、胡里等酒吧，都充满了成都的时尚感，在夜间绽放它的魅力。</p>\n                            </div>\n                        </div>', 'spots/thumbnail/2019/1/eb4f9f6b-bebf-44b5-835a-5d356ab3119c_480_320_T7UrY8k.jpg', 'spots/mainfigure/2019/1/50047581-5abe-400f-90cf-5b4dd9b1a6b5_480_320_8udunHe.jpg', 'natural', '0838-00000000', '全年', '四川省成都市青羊区下同仁路71号', 80, '2019-01-30 09:59:00.000000', 104.050669, 30.665404);
INSERT INTO `scenicspots_spots` VALUES (4, '成都大熊猫培育中心', '<div class=\"toggle_l\" style=\"display: block;\">\n                            <div itemprop=\"description\" class=\"text_style\">\n                                <p class=\"inset-p\">基地内有很多萌萌的大熊猫，你可以近距离的去观赏这些萌哒哒的国宝们。基地位于成都市北郊，距市区约10公里，建设完全模拟大熊猫野外生活环境，建有湖泊、溪流、竹林、草坪等。</p><p class=\"inset-p\">基地设有众多“熊猫别墅”就是基熊猫的封闭休闲场所。内有露天园子和室内休息室，天气凉爽时大熊猫会在园子内玩耍，游人可以隔着栏杆观赏萌萌的大熊猫；天气炎热时，大熊猫就躲在开着空调的休息室内，这时候只能隔着玻璃观看了。</p>\n                            </div>\n                        </div>', 'spots/thumbnail/2019/1/b151f8198618367a39ac6bc927738bd4b31ce5f9_a4KWxIC.jpg', 'spots/mainfigure/2019/1/908fa0ec08fa513d21fb78ca346d55fbb2fbd954_x4azeuQ.jpg', 'natural', '0838-63781065', '全年', '四川省成都市成华区熊猫大道', 50, '2019-01-30 10:03:00.000000', 104.143773, 30.736643);

-- ----------------------------
-- Table structure for shop_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NOT NULL,
  `num` int(11) NOT NULL,
  `freight` int(11) NOT NULL,
  `origin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyers` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `details` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `mainimg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remind` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES (1, '新繁棕编', 29.8, 473, 0, '四川成都', 'sg', 30, 0, '<ul>\n                <li class=\"product_title ellipsis\">新繁棕编</li>\n                <li class=\"infotext\" style=\"height: 125px;\">新繁棕编是成都的传统手工艺品，其原料主要采用四川山区的嫩棕叶，是经过采棕叶、制棕丝、搓棕绳、晾晒和编制等几道工序制作而成的。其中拖鞋堪称新繁棕编一绝，深受各地游客欢迎。</li>\n            </ul>', '2019-01-30 10:11:00.000000', 'product/mainimg/2019/1/u8997057393192590278fm26gp0.jpg', '');
INSERT INTO `shop_product` VALUES (2, '郫县豆瓣', 10, 553, 10, '四川成都', 'sg', 0, 0, '<ul>\n                <li class=\"product_title ellipsis\">郫县豆瓣</li>\n                <li class=\"infotext\" style=\"height: 125px;\">郫县豆瓣是川菜中常用的调味佳品，有“川菜灵魂”之称。具有辣味重、鲜红油润、辣椒块大、回味香甜的特点。</li>\n            </ul>', '2019-01-30 14:20:00.000000', 'product/mainimg/2019/1/546475.jpeg', '');
INSERT INTO `shop_product` VALUES (4, '川酒', 59, 129, 5, '四川', 'ncp', 0, 0, '<ul>\n                <li class=\"product_title ellipsis\">川酒</li>\n                <li class=\"infotext\" style=\"height: 125px;\">四川有着充足的水源和优良的水质，为四川出现众多的名特好酒提供了得天独厚的条件。在众多四川名酒当中，最著名的就要数“五朵金花”了，她们分别是：五粮液、泸州老窖、绵竹剑南春、全兴大曲、古蔺郎酒。</li>\n            </ul>', '2019-01-30 14:42:00.000000', 'product/mainimg/2019/1/2142345.jpeg', NULL);
INSERT INTO `shop_product` VALUES (5, '青城茶', 72, 1401, 0, '四川成都', 'ncp', 16, 0, '<li class=\"infotext\" style=\"height: 125px;\">青城山的气候和土壤非常适合茶树的生长，所以自古既是著名的茶产区，出产名闻天下的“青城茶”。“青城茶”的特点是：茶叶小而嫩，其芽犹如“元出花“。</li>', '2019-01-30 14:48:00.000000', 'product/mainimg/2019/1/u8602493881365701743fm200gp0.jpg', NULL);
INSERT INTO `shop_product` VALUES (7, '小零食', 1598, 45, 0, '四川成都', 'gyp', 21, 0, '\r\n<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>商品名称：小熊买</p></li><li><p>商品编号：587454</p></li><li><p>商品毛重：0.66kg</p></li><li><p>商品产地：浙江义乌</p></li><li><p>材质：木质</p></li><li><p>风格：现代简约</p></li><li><p>类型：桌面摆件</p></li><li><p>外观造型：建筑</p></li><li><p>分类：装饰摆件</p></li><li><p>用途：事业</p></li><li><p>适用场景：客厅，玄关，书房，餐厅</p></li></ul><p><br/> </p>', '2019-01-30 14:54:00.000000', 'product/mainimg/2019/1/123asd.jpeg', '支持七天无理由退货');

-- ----------------------------
-- Table structure for shop_propic
-- ----------------------------
DROP TABLE IF EXISTS `shop_propic`;
CREATE TABLE `shop_propic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shop_propic_product_id_32f51b91_fk_shop_product_id`(`product_id`) USING BTREE,
  CONSTRAINT `shop_propic_product_id_32f51b91_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_propic
-- ----------------------------
INSERT INTO `shop_propic` VALUES (1, 'product/2019/1/sdadasdsf.jpeg', 1, '2019-01-30 14:33:00.000000');
INSERT INTO `shop_propic` VALUES (2, 'product/2019/1/u13169828951304490032fm26gp0.jpg', 1, '2019-01-30 14:34:00.000000');
INSERT INTO `shop_propic` VALUES (3, 'product/2019/1/u18929235521492736427fm200gp0.jpg', 1, '2019-01-30 14:34:00.000000');
INSERT INTO `shop_propic` VALUES (5, 'product/2019/1/youzi1.jpeg', 1, '2019-01-30 14:34:00.000000');
INSERT INTO `shop_propic` VALUES (6, 'product/2019/1/u5982165093666614667fm26gp0.jpg', 2, '2019-01-30 14:35:00.000000');
INSERT INTO `shop_propic` VALUES (7, 'product/2019/1/u7601192363179539404fm26gp0.jpg', 2, '2019-01-30 14:36:00.000000');
INSERT INTO `shop_propic` VALUES (8, 'product/2019/1/u10823352311037865581fm200gp0.jpg', 2, '2019-01-30 14:36:00.000000');
INSERT INTO `shop_propic` VALUES (9, 'product/2019/1/u13006401731507832118fm200gp0.jpg', 3, '2019-01-30 14:39:00.000000');
INSERT INTO `shop_propic` VALUES (10, 'product/2019/1/u21326009963129401320fm200gp0.jpg', 3, '2019-01-30 14:40:00.000000');
INSERT INTO `shop_propic` VALUES (11, 'product/2019/1/u2619906361712776241fm200gp0.jpg', 3, '2019-01-30 14:40:00.000000');
INSERT INTO `shop_propic` VALUES (12, 'product/2019/1/5b6176c3N4ace3d7a.jpg', 4, '2019-01-30 14:46:00.000000');
INSERT INTO `shop_propic` VALUES (13, 'product/2019/1/5b6176caNdd0e0859.jpg', 4, '2019-01-30 14:47:00.000000');
INSERT INTO `shop_propic` VALUES (14, 'product/2019/1/u21469647391264340391fm200gp0.jpg', 5, '2019-01-30 14:50:00.000000');
INSERT INTO `shop_propic` VALUES (15, 'product/2019/1/u22923944891760817181fm200gp0.jpg', 5, '2019-01-30 14:50:00.000000');
INSERT INTO `shop_propic` VALUES (16, 'product/2019/1/u257853416681158271fm200gp0.jpg', 5, '2019-01-30 14:50:00.000000');
INSERT INTO `shop_propic` VALUES (17, 'product/2019/1/u42067941022732747374fm26gp0.jpg', 5, '2019-01-30 14:50:00.000000');
INSERT INTO `shop_propic` VALUES (18, 'product/2019/1/5b5edba5N60720245.jpg', 6, '2019-01-30 14:53:00.000000');
INSERT INTO `shop_propic` VALUES (19, 'product/2019/1/5b5edba6N904080ff.jpg', 6, '2019-01-30 14:53:00.000000');
INSERT INTO `shop_propic` VALUES (20, 'product/2019/1/5b068a12N6bb7b1e4.jpg', 7, '2019-01-30 14:55:00.000000');
INSERT INTO `shop_propic` VALUES (21, 'product/2019/1/u12968643141600296057fm26gp0.jpg', 8, '2019-01-30 14:59:00.000000');
INSERT INTO `shop_propic` VALUES (22, 'product/2019/1/u23076616973972066607fm26gp0.jpg', 8, '2019-01-30 14:59:00.000000');
INSERT INTO `shop_propic` VALUES (23, 'product/2019/1/u36642129033322461283fm26gp0.jpg', 8, '2019-01-30 14:59:00.000000');

-- ----------------------------
-- Table structure for users_areainfo
-- ----------------------------
DROP TABLE IF EXISTS `users_areainfo`;
CREATE TABLE `users_areainfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Parent_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_areainfo_Parent_id_1438e84c_fk_users_areainfo_id`(`Parent_id`) USING BTREE,
  CONSTRAINT `users_areainfo_Parent_id_1438e84c_fk_users_areainfo_id` FOREIGN KEY (`Parent_id`) REFERENCES `users_areainfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 990101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_areainfo
-- ----------------------------
INSERT INTO `users_areainfo` VALUES (110000, '北京', 0);
INSERT INTO `users_areainfo` VALUES (110100, '北京市', 110000);
INSERT INTO `users_areainfo` VALUES (110101, '东城', 110100);
INSERT INTO `users_areainfo` VALUES (110102, '西城', 110100);
INSERT INTO `users_areainfo` VALUES (110103, '崇文', 110100);
INSERT INTO `users_areainfo` VALUES (110104, '宣武', 110100);
INSERT INTO `users_areainfo` VALUES (110105, '朝阳', 110100);
INSERT INTO `users_areainfo` VALUES (110106, '丰台', 110100);
INSERT INTO `users_areainfo` VALUES (110107, '石景山', 110100);
INSERT INTO `users_areainfo` VALUES (110108, '海淀', 110100);
INSERT INTO `users_areainfo` VALUES (110109, '门头沟', 110100);
INSERT INTO `users_areainfo` VALUES (110111, '房山', 110100);
INSERT INTO `users_areainfo` VALUES (110112, '通州', 110100);
INSERT INTO `users_areainfo` VALUES (110113, '顺义', 110100);
INSERT INTO `users_areainfo` VALUES (110114, '昌平', 110100);
INSERT INTO `users_areainfo` VALUES (110115, '大兴', 110100);
INSERT INTO `users_areainfo` VALUES (110116, '怀柔', 110100);
INSERT INTO `users_areainfo` VALUES (110117, '平谷', 110100);
INSERT INTO `users_areainfo` VALUES (110228, '密云', 110100);
INSERT INTO `users_areainfo` VALUES (110229, '延庆', 110100);
INSERT INTO `users_areainfo` VALUES (110230, '其它', 110100);
INSERT INTO `users_areainfo` VALUES (120000, '天津', 0);
INSERT INTO `users_areainfo` VALUES (120100, '天津市', 120000);
INSERT INTO `users_areainfo` VALUES (120101, '和平', 120100);
INSERT INTO `users_areainfo` VALUES (120102, '河东', 120100);
INSERT INTO `users_areainfo` VALUES (120103, '河西', 120100);
INSERT INTO `users_areainfo` VALUES (120104, '南开', 120100);
INSERT INTO `users_areainfo` VALUES (120105, '河北', 120100);
INSERT INTO `users_areainfo` VALUES (120106, '红桥', 120100);
INSERT INTO `users_areainfo` VALUES (120107, '塘沽', 120100);
INSERT INTO `users_areainfo` VALUES (120108, '汉沽', 120100);
INSERT INTO `users_areainfo` VALUES (120109, '大港', 120100);
INSERT INTO `users_areainfo` VALUES (120110, '东丽', 120100);
INSERT INTO `users_areainfo` VALUES (120111, '西青', 120100);
INSERT INTO `users_areainfo` VALUES (120112, '津南', 120100);
INSERT INTO `users_areainfo` VALUES (120113, '北辰', 120100);
INSERT INTO `users_areainfo` VALUES (120114, '武清', 120100);
INSERT INTO `users_areainfo` VALUES (120115, '宝坻', 120100);
INSERT INTO `users_areainfo` VALUES (120221, '宁河', 120100);
INSERT INTO `users_areainfo` VALUES (120223, '静海', 120100);
INSERT INTO `users_areainfo` VALUES (120225, '蓟县', 120100);
INSERT INTO `users_areainfo` VALUES (120226, '其它', 120100);
INSERT INTO `users_areainfo` VALUES (130000, '河北', 0);
INSERT INTO `users_areainfo` VALUES (130100, '石家庄', 130000);
INSERT INTO `users_areainfo` VALUES (130102, '长安区', 130100);
INSERT INTO `users_areainfo` VALUES (130103, '桥东区', 130100);
INSERT INTO `users_areainfo` VALUES (130104, '桥西区', 130100);
INSERT INTO `users_areainfo` VALUES (130105, '新华区', 130100);
INSERT INTO `users_areainfo` VALUES (130107, '井陉矿区', 130100);
INSERT INTO `users_areainfo` VALUES (130108, '裕华区', 130100);
INSERT INTO `users_areainfo` VALUES (130121, '井陉县', 130100);
INSERT INTO `users_areainfo` VALUES (130123, '正定县', 130100);
INSERT INTO `users_areainfo` VALUES (130124, '栾城县', 130100);
INSERT INTO `users_areainfo` VALUES (130125, '行唐县', 130100);
INSERT INTO `users_areainfo` VALUES (130126, '灵寿县', 130100);
INSERT INTO `users_areainfo` VALUES (130127, '高邑县', 130100);
INSERT INTO `users_areainfo` VALUES (130128, '深泽县', 130100);
INSERT INTO `users_areainfo` VALUES (130129, '赞皇县', 130100);
INSERT INTO `users_areainfo` VALUES (130130, '无极县', 130100);
INSERT INTO `users_areainfo` VALUES (130131, '平山县', 130100);
INSERT INTO `users_areainfo` VALUES (130132, '元氏县', 130100);
INSERT INTO `users_areainfo` VALUES (130133, '赵县', 130100);
INSERT INTO `users_areainfo` VALUES (130181, '辛集市', 130100);
INSERT INTO `users_areainfo` VALUES (130182, '藁城市', 130100);
INSERT INTO `users_areainfo` VALUES (130183, '晋州市', 130100);
INSERT INTO `users_areainfo` VALUES (130184, '新乐市', 130100);
INSERT INTO `users_areainfo` VALUES (130185, '鹿泉市', 130100);
INSERT INTO `users_areainfo` VALUES (130186, '其它区', 130100);
INSERT INTO `users_areainfo` VALUES (130200, '唐山', 130000);
INSERT INTO `users_areainfo` VALUES (130202, '路南区', 130200);
INSERT INTO `users_areainfo` VALUES (130203, '路北区', 130200);
INSERT INTO `users_areainfo` VALUES (130204, '古冶区', 130200);
INSERT INTO `users_areainfo` VALUES (130205, '开平区', 130200);
INSERT INTO `users_areainfo` VALUES (130207, '丰南区', 130200);
INSERT INTO `users_areainfo` VALUES (130208, '丰润区', 130200);
INSERT INTO `users_areainfo` VALUES (130223, '滦县', 130200);
INSERT INTO `users_areainfo` VALUES (130224, '滦南县', 130200);
INSERT INTO `users_areainfo` VALUES (130225, '乐亭县', 130200);
INSERT INTO `users_areainfo` VALUES (130227, '迁西县', 130200);
INSERT INTO `users_areainfo` VALUES (130229, '玉田县', 130200);
INSERT INTO `users_areainfo` VALUES (130230, '唐海县', 130200);
INSERT INTO `users_areainfo` VALUES (130281, '遵化市', 130200);
INSERT INTO `users_areainfo` VALUES (130283, '迁安市', 130200);
INSERT INTO `users_areainfo` VALUES (130284, '其它区', 130200);
INSERT INTO `users_areainfo` VALUES (130300, '秦皇岛', 130000);
INSERT INTO `users_areainfo` VALUES (130302, '海港区', 130300);
INSERT INTO `users_areainfo` VALUES (130303, '山海关区', 130300);
INSERT INTO `users_areainfo` VALUES (130304, '北戴河区', 130300);
INSERT INTO `users_areainfo` VALUES (130321, '青龙满族自治县', 130300);
INSERT INTO `users_areainfo` VALUES (130322, '昌黎县', 130300);
INSERT INTO `users_areainfo` VALUES (130323, '抚宁县', 130300);
INSERT INTO `users_areainfo` VALUES (130324, '卢龙县', 130300);
INSERT INTO `users_areainfo` VALUES (130398, '其它区', 130300);
INSERT INTO `users_areainfo` VALUES (130399, '经济技术开发区', 130300);
INSERT INTO `users_areainfo` VALUES (130400, '邯郸', 130000);
INSERT INTO `users_areainfo` VALUES (130402, '邯山区', 130400);
INSERT INTO `users_areainfo` VALUES (130403, '丛台区', 130400);
INSERT INTO `users_areainfo` VALUES (130404, '复兴区', 130400);
INSERT INTO `users_areainfo` VALUES (130406, '峰峰矿区', 130400);
INSERT INTO `users_areainfo` VALUES (130421, '邯郸县', 130400);
INSERT INTO `users_areainfo` VALUES (130423, '临漳县', 130400);
INSERT INTO `users_areainfo` VALUES (130424, '成安县', 130400);
INSERT INTO `users_areainfo` VALUES (130425, '大名县', 130400);
INSERT INTO `users_areainfo` VALUES (130426, '涉县', 130400);
INSERT INTO `users_areainfo` VALUES (130427, '磁县', 130400);
INSERT INTO `users_areainfo` VALUES (130428, '肥乡县', 130400);
INSERT INTO `users_areainfo` VALUES (130429, '永年县', 130400);
INSERT INTO `users_areainfo` VALUES (130430, '邱县', 130400);
INSERT INTO `users_areainfo` VALUES (130431, '鸡泽县', 130400);
INSERT INTO `users_areainfo` VALUES (130432, '广平县', 130400);
INSERT INTO `users_areainfo` VALUES (130433, '馆陶县', 130400);
INSERT INTO `users_areainfo` VALUES (130434, '魏县', 130400);
INSERT INTO `users_areainfo` VALUES (130435, '曲周县', 130400);
INSERT INTO `users_areainfo` VALUES (130481, '武安市', 130400);
INSERT INTO `users_areainfo` VALUES (130482, '其它区', 130400);
INSERT INTO `users_areainfo` VALUES (130500, '邢台', 130000);
INSERT INTO `users_areainfo` VALUES (130502, '桥东区', 130500);
INSERT INTO `users_areainfo` VALUES (130503, '桥西区', 130500);
INSERT INTO `users_areainfo` VALUES (130521, '邢台县', 130500);
INSERT INTO `users_areainfo` VALUES (130522, '临城县', 130500);
INSERT INTO `users_areainfo` VALUES (130523, '内丘县', 130500);
INSERT INTO `users_areainfo` VALUES (130524, '柏乡县', 130500);
INSERT INTO `users_areainfo` VALUES (130525, '隆尧县', 130500);
INSERT INTO `users_areainfo` VALUES (130526, '任县', 130500);
INSERT INTO `users_areainfo` VALUES (130527, '南和县', 130500);
INSERT INTO `users_areainfo` VALUES (130528, '宁晋县', 130500);
INSERT INTO `users_areainfo` VALUES (130529, '巨鹿县', 130500);
INSERT INTO `users_areainfo` VALUES (130530, '新河县', 130500);
INSERT INTO `users_areainfo` VALUES (130531, '广宗县', 130500);
INSERT INTO `users_areainfo` VALUES (130532, '平乡县', 130500);
INSERT INTO `users_areainfo` VALUES (130533, '威县', 130500);
INSERT INTO `users_areainfo` VALUES (130534, '清河县', 130500);
INSERT INTO `users_areainfo` VALUES (130535, '临西县', 130500);
INSERT INTO `users_areainfo` VALUES (130581, '南宫市', 130500);
INSERT INTO `users_areainfo` VALUES (130582, '沙河市', 130500);
INSERT INTO `users_areainfo` VALUES (130583, '其它区', 130500);
INSERT INTO `users_areainfo` VALUES (130600, '保定', 130000);
INSERT INTO `users_areainfo` VALUES (130602, '新市区', 130600);
INSERT INTO `users_areainfo` VALUES (130603, '北市区', 130600);
INSERT INTO `users_areainfo` VALUES (130604, '南市区', 130600);
INSERT INTO `users_areainfo` VALUES (130621, '满城县', 130600);
INSERT INTO `users_areainfo` VALUES (130622, '清苑县', 130600);
INSERT INTO `users_areainfo` VALUES (130623, '涞水县', 130600);
INSERT INTO `users_areainfo` VALUES (130624, '阜平县', 130600);
INSERT INTO `users_areainfo` VALUES (130625, '徐水县', 130600);
INSERT INTO `users_areainfo` VALUES (130626, '定兴县', 130600);
INSERT INTO `users_areainfo` VALUES (130627, '唐县', 130600);
INSERT INTO `users_areainfo` VALUES (130628, '高阳县', 130600);
INSERT INTO `users_areainfo` VALUES (130629, '容城县', 130600);
INSERT INTO `users_areainfo` VALUES (130630, '涞源县', 130600);
INSERT INTO `users_areainfo` VALUES (130631, '望都县', 130600);
INSERT INTO `users_areainfo` VALUES (130632, '安新县', 130600);
INSERT INTO `users_areainfo` VALUES (130633, '易县', 130600);
INSERT INTO `users_areainfo` VALUES (130634, '曲阳县', 130600);
INSERT INTO `users_areainfo` VALUES (130635, '蠡县', 130600);
INSERT INTO `users_areainfo` VALUES (130636, '顺平县', 130600);
INSERT INTO `users_areainfo` VALUES (130637, '博野县', 130600);
INSERT INTO `users_areainfo` VALUES (130638, '雄县', 130600);
INSERT INTO `users_areainfo` VALUES (130681, '涿州市', 130600);
INSERT INTO `users_areainfo` VALUES (130682, '定州市', 130600);
INSERT INTO `users_areainfo` VALUES (130683, '安国市', 130600);
INSERT INTO `users_areainfo` VALUES (130684, '高碑店市', 130600);
INSERT INTO `users_areainfo` VALUES (130698, '高开区', 130600);
INSERT INTO `users_areainfo` VALUES (130699, '其它区', 130600);
INSERT INTO `users_areainfo` VALUES (130700, '张家口', 130000);
INSERT INTO `users_areainfo` VALUES (130702, '桥东区', 130700);
INSERT INTO `users_areainfo` VALUES (130703, '桥西区', 130700);
INSERT INTO `users_areainfo` VALUES (130705, '宣化区', 130700);
INSERT INTO `users_areainfo` VALUES (130706, '下花园区', 130700);
INSERT INTO `users_areainfo` VALUES (130721, '宣化县', 130700);
INSERT INTO `users_areainfo` VALUES (130722, '张北县', 130700);
INSERT INTO `users_areainfo` VALUES (130723, '康保县', 130700);
INSERT INTO `users_areainfo` VALUES (130724, '沽源县', 130700);
INSERT INTO `users_areainfo` VALUES (130725, '尚义县', 130700);
INSERT INTO `users_areainfo` VALUES (130726, '蔚县', 130700);
INSERT INTO `users_areainfo` VALUES (130727, '阳原县', 130700);
INSERT INTO `users_areainfo` VALUES (130728, '怀安县', 130700);
INSERT INTO `users_areainfo` VALUES (130729, '万全县', 130700);
INSERT INTO `users_areainfo` VALUES (130730, '怀来县', 130700);
INSERT INTO `users_areainfo` VALUES (130731, '涿鹿县', 130700);
INSERT INTO `users_areainfo` VALUES (130732, '赤城县', 130700);
INSERT INTO `users_areainfo` VALUES (130733, '崇礼县', 130700);
INSERT INTO `users_areainfo` VALUES (130734, '其它区', 130700);
INSERT INTO `users_areainfo` VALUES (130800, '承德', 130000);
INSERT INTO `users_areainfo` VALUES (130802, '双桥区', 130800);
INSERT INTO `users_areainfo` VALUES (130803, '双滦区', 130800);
INSERT INTO `users_areainfo` VALUES (130804, '鹰手营子矿区', 130800);
INSERT INTO `users_areainfo` VALUES (130821, '承德县', 130800);
INSERT INTO `users_areainfo` VALUES (130822, '兴隆县', 130800);
INSERT INTO `users_areainfo` VALUES (130823, '平泉县', 130800);
INSERT INTO `users_areainfo` VALUES (130824, '滦平县', 130800);
INSERT INTO `users_areainfo` VALUES (130825, '隆化县', 130800);
INSERT INTO `users_areainfo` VALUES (130826, '丰宁满族自治县', 130800);
INSERT INTO `users_areainfo` VALUES (130827, '宽城满族自治县', 130800);
INSERT INTO `users_areainfo` VALUES (130828, '围场满族蒙古族自治县', 130800);
INSERT INTO `users_areainfo` VALUES (130829, '其它区', 130800);
INSERT INTO `users_areainfo` VALUES (130900, '沧州', 130000);
INSERT INTO `users_areainfo` VALUES (130902, '新华区', 130900);
INSERT INTO `users_areainfo` VALUES (130903, '运河区', 130900);
INSERT INTO `users_areainfo` VALUES (130921, '沧县', 130900);
INSERT INTO `users_areainfo` VALUES (130922, '青县', 130900);
INSERT INTO `users_areainfo` VALUES (130923, '东光县', 130900);
INSERT INTO `users_areainfo` VALUES (130924, '海兴县', 130900);
INSERT INTO `users_areainfo` VALUES (130925, '盐山县', 130900);
INSERT INTO `users_areainfo` VALUES (130926, '肃宁县', 130900);
INSERT INTO `users_areainfo` VALUES (130927, '南皮县', 130900);
INSERT INTO `users_areainfo` VALUES (130928, '吴桥县', 130900);
INSERT INTO `users_areainfo` VALUES (130929, '献县', 130900);
INSERT INTO `users_areainfo` VALUES (130930, '孟村回族自治县', 130900);
INSERT INTO `users_areainfo` VALUES (130981, '泊头市', 130900);
INSERT INTO `users_areainfo` VALUES (130982, '任丘市', 130900);
INSERT INTO `users_areainfo` VALUES (130983, '黄骅市', 130900);
INSERT INTO `users_areainfo` VALUES (130984, '河间市', 130900);
INSERT INTO `users_areainfo` VALUES (130985, '其它区', 130900);
INSERT INTO `users_areainfo` VALUES (131000, '廊坊', 130000);
INSERT INTO `users_areainfo` VALUES (131002, '安次区', 131000);
INSERT INTO `users_areainfo` VALUES (131003, '广阳区', 131000);
INSERT INTO `users_areainfo` VALUES (131022, '固安县', 131000);
INSERT INTO `users_areainfo` VALUES (131023, '永清县', 131000);
INSERT INTO `users_areainfo` VALUES (131024, '香河县', 131000);
INSERT INTO `users_areainfo` VALUES (131025, '大城县', 131000);
INSERT INTO `users_areainfo` VALUES (131026, '文安县', 131000);
INSERT INTO `users_areainfo` VALUES (131028, '大厂回族自治县', 131000);
INSERT INTO `users_areainfo` VALUES (131051, '开发区', 131000);
INSERT INTO `users_areainfo` VALUES (131052, '燕郊经济技术开发区', 131000);
INSERT INTO `users_areainfo` VALUES (131081, '霸州市', 131000);
INSERT INTO `users_areainfo` VALUES (131082, '三河市', 131000);
INSERT INTO `users_areainfo` VALUES (131083, '其它区', 131000);
INSERT INTO `users_areainfo` VALUES (131100, '衡水', 130000);
INSERT INTO `users_areainfo` VALUES (131102, '桃城区', 131100);
INSERT INTO `users_areainfo` VALUES (131121, '枣强县', 131100);
INSERT INTO `users_areainfo` VALUES (131122, '武邑县', 131100);
INSERT INTO `users_areainfo` VALUES (131123, '武强县', 131100);
INSERT INTO `users_areainfo` VALUES (131124, '饶阳县', 131100);
INSERT INTO `users_areainfo` VALUES (131125, '安平县', 131100);
INSERT INTO `users_areainfo` VALUES (131126, '故城县', 131100);
INSERT INTO `users_areainfo` VALUES (131127, '景县', 131100);
INSERT INTO `users_areainfo` VALUES (131128, '阜城县', 131100);
INSERT INTO `users_areainfo` VALUES (131181, '冀州市', 131100);
INSERT INTO `users_areainfo` VALUES (131182, '深州市', 131100);
INSERT INTO `users_areainfo` VALUES (131183, '其它区', 131100);
INSERT INTO `users_areainfo` VALUES (140000, '山西', 0);
INSERT INTO `users_areainfo` VALUES (140100, '太原', 140000);
INSERT INTO `users_areainfo` VALUES (140105, '小店区', 140100);
INSERT INTO `users_areainfo` VALUES (140106, '迎泽区', 140100);
INSERT INTO `users_areainfo` VALUES (140107, '杏花岭区', 140100);
INSERT INTO `users_areainfo` VALUES (140108, '尖草坪区', 140100);
INSERT INTO `users_areainfo` VALUES (140109, '万柏林区', 140100);
INSERT INTO `users_areainfo` VALUES (140110, '晋源区', 140100);
INSERT INTO `users_areainfo` VALUES (140121, '清徐县', 140100);
INSERT INTO `users_areainfo` VALUES (140122, '阳曲县', 140100);
INSERT INTO `users_areainfo` VALUES (140123, '娄烦县', 140100);
INSERT INTO `users_areainfo` VALUES (140181, '古交市', 140100);
INSERT INTO `users_areainfo` VALUES (140182, '其它区', 140100);
INSERT INTO `users_areainfo` VALUES (140200, '大同', 140000);
INSERT INTO `users_areainfo` VALUES (140202, '城区', 140200);
INSERT INTO `users_areainfo` VALUES (140203, '矿区', 140200);
INSERT INTO `users_areainfo` VALUES (140211, '南郊区', 140200);
INSERT INTO `users_areainfo` VALUES (140212, '新荣区', 140200);
INSERT INTO `users_areainfo` VALUES (140221, '阳高县', 140200);
INSERT INTO `users_areainfo` VALUES (140222, '天镇县', 140200);
INSERT INTO `users_areainfo` VALUES (140223, '广灵县', 140200);
INSERT INTO `users_areainfo` VALUES (140224, '灵丘县', 140200);
INSERT INTO `users_areainfo` VALUES (140225, '浑源县', 140200);
INSERT INTO `users_areainfo` VALUES (140226, '左云县', 140200);
INSERT INTO `users_areainfo` VALUES (140227, '大同县', 140200);
INSERT INTO `users_areainfo` VALUES (140228, '其它区', 140200);
INSERT INTO `users_areainfo` VALUES (140300, '阳泉', 140000);
INSERT INTO `users_areainfo` VALUES (140302, '城区', 140300);
INSERT INTO `users_areainfo` VALUES (140303, '矿区', 140300);
INSERT INTO `users_areainfo` VALUES (140311, '郊区', 140300);
INSERT INTO `users_areainfo` VALUES (140321, '平定县', 140300);
INSERT INTO `users_areainfo` VALUES (140322, '盂县', 140300);
INSERT INTO `users_areainfo` VALUES (140323, '其它区', 140300);
INSERT INTO `users_areainfo` VALUES (140400, '长治', 140000);
INSERT INTO `users_areainfo` VALUES (140421, '长治县', 140400);
INSERT INTO `users_areainfo` VALUES (140423, '襄垣县', 140400);
INSERT INTO `users_areainfo` VALUES (140424, '屯留县', 140400);
INSERT INTO `users_areainfo` VALUES (140425, '平顺县', 140400);
INSERT INTO `users_areainfo` VALUES (140426, '黎城县', 140400);
INSERT INTO `users_areainfo` VALUES (140427, '壶关县', 140400);
INSERT INTO `users_areainfo` VALUES (140428, '长子县', 140400);
INSERT INTO `users_areainfo` VALUES (140429, '武乡县', 140400);
INSERT INTO `users_areainfo` VALUES (140430, '沁县', 140400);
INSERT INTO `users_areainfo` VALUES (140431, '沁源县', 140400);
INSERT INTO `users_areainfo` VALUES (140481, '潞城市', 140400);
INSERT INTO `users_areainfo` VALUES (140482, '城区', 140400);
INSERT INTO `users_areainfo` VALUES (140483, '郊区', 140400);
INSERT INTO `users_areainfo` VALUES (140484, '高新区', 140400);
INSERT INTO `users_areainfo` VALUES (140485, '其它区', 140400);
INSERT INTO `users_areainfo` VALUES (140500, '晋城', 140000);
INSERT INTO `users_areainfo` VALUES (140502, '城区', 140500);
INSERT INTO `users_areainfo` VALUES (140521, '沁水县', 140500);
INSERT INTO `users_areainfo` VALUES (140522, '阳城县', 140500);
INSERT INTO `users_areainfo` VALUES (140524, '陵川县', 140500);
INSERT INTO `users_areainfo` VALUES (140525, '泽州县', 140500);
INSERT INTO `users_areainfo` VALUES (140581, '高平市', 140500);
INSERT INTO `users_areainfo` VALUES (140582, '其它区', 140500);
INSERT INTO `users_areainfo` VALUES (140600, '朔州', 140000);
INSERT INTO `users_areainfo` VALUES (140602, '朔城区', 140600);
INSERT INTO `users_areainfo` VALUES (140603, '平鲁区', 140600);
INSERT INTO `users_areainfo` VALUES (140621, '山阴县', 140600);
INSERT INTO `users_areainfo` VALUES (140622, '应县', 140600);
INSERT INTO `users_areainfo` VALUES (140623, '右玉县', 140600);
INSERT INTO `users_areainfo` VALUES (140624, '怀仁县', 140600);
INSERT INTO `users_areainfo` VALUES (140625, '其它区', 140600);
INSERT INTO `users_areainfo` VALUES (140700, '晋中', 140000);
INSERT INTO `users_areainfo` VALUES (140702, '榆次区', 140700);
INSERT INTO `users_areainfo` VALUES (140721, '榆社县', 140700);
INSERT INTO `users_areainfo` VALUES (140722, '左权县', 140700);
INSERT INTO `users_areainfo` VALUES (140723, '和顺县', 140700);
INSERT INTO `users_areainfo` VALUES (140724, '昔阳县', 140700);
INSERT INTO `users_areainfo` VALUES (140725, '寿阳县', 140700);
INSERT INTO `users_areainfo` VALUES (140726, '太谷县', 140700);
INSERT INTO `users_areainfo` VALUES (140727, '祁县', 140700);
INSERT INTO `users_areainfo` VALUES (140728, '平遥县', 140700);
INSERT INTO `users_areainfo` VALUES (140729, '灵石县', 140700);
INSERT INTO `users_areainfo` VALUES (140781, '介休市', 140700);
INSERT INTO `users_areainfo` VALUES (140782, '其它区', 140700);
INSERT INTO `users_areainfo` VALUES (140800, '运城', 140000);
INSERT INTO `users_areainfo` VALUES (140802, '盐湖区', 140800);
INSERT INTO `users_areainfo` VALUES (140821, '临猗县', 140800);
INSERT INTO `users_areainfo` VALUES (140822, '万荣县', 140800);
INSERT INTO `users_areainfo` VALUES (140823, '闻喜县', 140800);
INSERT INTO `users_areainfo` VALUES (140824, '稷山县', 140800);
INSERT INTO `users_areainfo` VALUES (140825, '新绛县', 140800);
INSERT INTO `users_areainfo` VALUES (140826, '绛县', 140800);
INSERT INTO `users_areainfo` VALUES (140827, '垣曲县', 140800);
INSERT INTO `users_areainfo` VALUES (140828, '夏县', 140800);
INSERT INTO `users_areainfo` VALUES (140829, '平陆县', 140800);
INSERT INTO `users_areainfo` VALUES (140830, '芮城县', 140800);
INSERT INTO `users_areainfo` VALUES (140881, '永济市', 140800);
INSERT INTO `users_areainfo` VALUES (140882, '河津市', 140800);
INSERT INTO `users_areainfo` VALUES (140883, '其它区', 140800);
INSERT INTO `users_areainfo` VALUES (140900, '忻州', 140000);
INSERT INTO `users_areainfo` VALUES (140902, '忻府区', 140900);
INSERT INTO `users_areainfo` VALUES (140921, '定襄县', 140900);
INSERT INTO `users_areainfo` VALUES (140922, '五台县', 140900);
INSERT INTO `users_areainfo` VALUES (140923, '代县', 140900);
INSERT INTO `users_areainfo` VALUES (140924, '繁峙县', 140900);
INSERT INTO `users_areainfo` VALUES (140925, '宁武县', 140900);
INSERT INTO `users_areainfo` VALUES (140926, '静乐县', 140900);
INSERT INTO `users_areainfo` VALUES (140927, '神池县', 140900);
INSERT INTO `users_areainfo` VALUES (140928, '五寨县', 140900);
INSERT INTO `users_areainfo` VALUES (140929, '岢岚县', 140900);
INSERT INTO `users_areainfo` VALUES (140930, '河曲县', 140900);
INSERT INTO `users_areainfo` VALUES (140931, '保德县', 140900);
INSERT INTO `users_areainfo` VALUES (140932, '偏关县', 140900);
INSERT INTO `users_areainfo` VALUES (140981, '原平市', 140900);
INSERT INTO `users_areainfo` VALUES (140982, '其它区', 140900);
INSERT INTO `users_areainfo` VALUES (141000, '临汾', 140000);
INSERT INTO `users_areainfo` VALUES (141002, '尧都区', 141000);
INSERT INTO `users_areainfo` VALUES (141021, '曲沃县', 141000);
INSERT INTO `users_areainfo` VALUES (141022, '翼城县', 141000);
INSERT INTO `users_areainfo` VALUES (141023, '襄汾县', 141000);
INSERT INTO `users_areainfo` VALUES (141024, '洪洞县', 141000);
INSERT INTO `users_areainfo` VALUES (141025, '古县', 141000);
INSERT INTO `users_areainfo` VALUES (141026, '安泽县', 141000);
INSERT INTO `users_areainfo` VALUES (141027, '浮山县', 141000);
INSERT INTO `users_areainfo` VALUES (141028, '吉县', 141000);
INSERT INTO `users_areainfo` VALUES (141029, '乡宁县', 141000);
INSERT INTO `users_areainfo` VALUES (141030, '大宁县', 141000);
INSERT INTO `users_areainfo` VALUES (141031, '隰县', 141000);
INSERT INTO `users_areainfo` VALUES (141032, '永和县', 141000);
INSERT INTO `users_areainfo` VALUES (141033, '蒲县', 141000);
INSERT INTO `users_areainfo` VALUES (141034, '汾西县', 141000);
INSERT INTO `users_areainfo` VALUES (141081, '侯马市', 141000);
INSERT INTO `users_areainfo` VALUES (141082, '霍州市', 141000);
INSERT INTO `users_areainfo` VALUES (141083, '其它区', 141000);
INSERT INTO `users_areainfo` VALUES (141100, '吕梁', 140000);
INSERT INTO `users_areainfo` VALUES (141102, '离石区', 141100);
INSERT INTO `users_areainfo` VALUES (141121, '文水县', 141100);
INSERT INTO `users_areainfo` VALUES (141122, '交城县', 141100);
INSERT INTO `users_areainfo` VALUES (141123, '兴县', 141100);
INSERT INTO `users_areainfo` VALUES (141124, '临县', 141100);
INSERT INTO `users_areainfo` VALUES (141125, '柳林县', 141100);
INSERT INTO `users_areainfo` VALUES (141126, '石楼县', 141100);
INSERT INTO `users_areainfo` VALUES (141127, '岚县', 141100);
INSERT INTO `users_areainfo` VALUES (141128, '方山县', 141100);
INSERT INTO `users_areainfo` VALUES (141129, '中阳县', 141100);
INSERT INTO `users_areainfo` VALUES (141130, '交口县', 141100);
INSERT INTO `users_areainfo` VALUES (141181, '孝义市', 141100);
INSERT INTO `users_areainfo` VALUES (141182, '汾阳市', 141100);
INSERT INTO `users_areainfo` VALUES (141183, '其它区', 141100);
INSERT INTO `users_areainfo` VALUES (150000, '内蒙', 0);
INSERT INTO `users_areainfo` VALUES (150100, '呼和浩特', 150000);
INSERT INTO `users_areainfo` VALUES (150102, '新城区', 150100);
INSERT INTO `users_areainfo` VALUES (150103, '回民区', 150100);
INSERT INTO `users_areainfo` VALUES (150104, '玉泉区', 150100);
INSERT INTO `users_areainfo` VALUES (150105, '赛罕区', 150100);
INSERT INTO `users_areainfo` VALUES (150121, '土默特左旗', 150100);
INSERT INTO `users_areainfo` VALUES (150122, '托克托县', 150100);
INSERT INTO `users_areainfo` VALUES (150123, '和林格尔县', 150100);
INSERT INTO `users_areainfo` VALUES (150124, '清水河县', 150100);
INSERT INTO `users_areainfo` VALUES (150125, '武川县', 150100);
INSERT INTO `users_areainfo` VALUES (150126, '其它区', 150100);
INSERT INTO `users_areainfo` VALUES (150200, '包头', 150000);
INSERT INTO `users_areainfo` VALUES (150202, '东河区', 150200);
INSERT INTO `users_areainfo` VALUES (150203, '昆都仑区', 150200);
INSERT INTO `users_areainfo` VALUES (150204, '青山区', 150200);
INSERT INTO `users_areainfo` VALUES (150205, '石拐区', 150200);
INSERT INTO `users_areainfo` VALUES (150206, '白云矿区', 150200);
INSERT INTO `users_areainfo` VALUES (150207, '九原区', 150200);
INSERT INTO `users_areainfo` VALUES (150221, '土默特右旗', 150200);
INSERT INTO `users_areainfo` VALUES (150222, '固阳县', 150200);
INSERT INTO `users_areainfo` VALUES (150223, '达尔罕茂明安联合旗', 150200);
INSERT INTO `users_areainfo` VALUES (150224, '其它区', 150200);
INSERT INTO `users_areainfo` VALUES (150300, '乌海', 150000);
INSERT INTO `users_areainfo` VALUES (150302, '海勃湾区', 150300);
INSERT INTO `users_areainfo` VALUES (150303, '海南区', 150300);
INSERT INTO `users_areainfo` VALUES (150304, '乌达区', 150300);
INSERT INTO `users_areainfo` VALUES (150305, '其它区', 150300);
INSERT INTO `users_areainfo` VALUES (150400, '赤峰', 150000);
INSERT INTO `users_areainfo` VALUES (150402, '红山区', 150400);
INSERT INTO `users_areainfo` VALUES (150403, '元宝山区', 150400);
INSERT INTO `users_areainfo` VALUES (150404, '松山区', 150400);
INSERT INTO `users_areainfo` VALUES (150421, '阿鲁科尔沁旗', 150400);
INSERT INTO `users_areainfo` VALUES (150422, '巴林左旗', 150400);
INSERT INTO `users_areainfo` VALUES (150423, '巴林右旗', 150400);
INSERT INTO `users_areainfo` VALUES (150424, '林西县', 150400);
INSERT INTO `users_areainfo` VALUES (150425, '克什克腾旗', 150400);
INSERT INTO `users_areainfo` VALUES (150426, '翁牛特旗', 150400);
INSERT INTO `users_areainfo` VALUES (150428, '喀喇沁旗', 150400);
INSERT INTO `users_areainfo` VALUES (150429, '宁城县', 150400);
INSERT INTO `users_areainfo` VALUES (150430, '敖汉旗', 150400);
INSERT INTO `users_areainfo` VALUES (150431, '其它区', 150400);
INSERT INTO `users_areainfo` VALUES (150500, '通辽', 150000);
INSERT INTO `users_areainfo` VALUES (150502, '科尔沁区', 150500);
INSERT INTO `users_areainfo` VALUES (150521, '科尔沁左翼中旗', 150500);
INSERT INTO `users_areainfo` VALUES (150522, '科尔沁左翼后旗', 150500);
INSERT INTO `users_areainfo` VALUES (150523, '开鲁县', 150500);
INSERT INTO `users_areainfo` VALUES (150524, '库伦旗', 150500);
INSERT INTO `users_areainfo` VALUES (150525, '奈曼旗', 150500);
INSERT INTO `users_areainfo` VALUES (150526, '扎鲁特旗', 150500);
INSERT INTO `users_areainfo` VALUES (150581, '霍林郭勒市', 150500);
INSERT INTO `users_areainfo` VALUES (150582, '其它区', 150500);
INSERT INTO `users_areainfo` VALUES (150600, '鄂尔多斯', 150000);
INSERT INTO `users_areainfo` VALUES (150602, '东胜区', 150600);
INSERT INTO `users_areainfo` VALUES (150621, '达拉特旗', 150600);
INSERT INTO `users_areainfo` VALUES (150622, '准格尔旗', 150600);
INSERT INTO `users_areainfo` VALUES (150623, '鄂托克前旗', 150600);
INSERT INTO `users_areainfo` VALUES (150624, '鄂托克旗', 150600);
INSERT INTO `users_areainfo` VALUES (150625, '杭锦旗', 150600);
INSERT INTO `users_areainfo` VALUES (150626, '乌审旗', 150600);
INSERT INTO `users_areainfo` VALUES (150627, '伊金霍洛旗', 150600);
INSERT INTO `users_areainfo` VALUES (150628, '其它区', 150600);
INSERT INTO `users_areainfo` VALUES (150700, '呼伦贝尔', 150000);
INSERT INTO `users_areainfo` VALUES (150702, '海拉尔区', 150700);
INSERT INTO `users_areainfo` VALUES (150721, '阿荣旗', 150700);
INSERT INTO `users_areainfo` VALUES (150722, '莫力达瓦达斡尔族自治旗', 150700);
INSERT INTO `users_areainfo` VALUES (150723, '鄂伦春自治旗', 150700);
INSERT INTO `users_areainfo` VALUES (150724, '鄂温克族自治旗', 150700);
INSERT INTO `users_areainfo` VALUES (150725, '陈巴尔虎旗', 150700);
INSERT INTO `users_areainfo` VALUES (150726, '新巴尔虎左旗', 150700);
INSERT INTO `users_areainfo` VALUES (150727, '新巴尔虎右旗', 150700);
INSERT INTO `users_areainfo` VALUES (150781, '满洲里市', 150700);
INSERT INTO `users_areainfo` VALUES (150782, '牙克石市', 150700);
INSERT INTO `users_areainfo` VALUES (150783, '扎兰屯市', 150700);
INSERT INTO `users_areainfo` VALUES (150784, '额尔古纳市', 150700);
INSERT INTO `users_areainfo` VALUES (150785, '根河市', 150700);
INSERT INTO `users_areainfo` VALUES (150786, '其它区', 150700);
INSERT INTO `users_areainfo` VALUES (150800, '巴彦淖尔', 150000);
INSERT INTO `users_areainfo` VALUES (150802, '临河区', 150800);
INSERT INTO `users_areainfo` VALUES (150821, '五原县', 150800);
INSERT INTO `users_areainfo` VALUES (150822, '磴口县', 150800);
INSERT INTO `users_areainfo` VALUES (150823, '乌拉特前旗', 150800);
INSERT INTO `users_areainfo` VALUES (150824, '乌拉特中旗', 150800);
INSERT INTO `users_areainfo` VALUES (150825, '乌拉特后旗', 150800);
INSERT INTO `users_areainfo` VALUES (150826, '杭锦后旗', 150800);
INSERT INTO `users_areainfo` VALUES (150827, '其它区', 150800);
INSERT INTO `users_areainfo` VALUES (150900, '乌兰察布', 150000);
INSERT INTO `users_areainfo` VALUES (150902, '集宁区', 150900);
INSERT INTO `users_areainfo` VALUES (150921, '卓资县', 150900);
INSERT INTO `users_areainfo` VALUES (150922, '化德县', 150900);
INSERT INTO `users_areainfo` VALUES (150923, '商都县', 150900);
INSERT INTO `users_areainfo` VALUES (150924, '兴和县', 150900);
INSERT INTO `users_areainfo` VALUES (150925, '凉城县', 150900);
INSERT INTO `users_areainfo` VALUES (150926, '察哈尔右翼前旗', 150900);
INSERT INTO `users_areainfo` VALUES (150927, '察哈尔右翼中旗', 150900);
INSERT INTO `users_areainfo` VALUES (150928, '察哈尔右翼后旗', 150900);
INSERT INTO `users_areainfo` VALUES (150929, '四子王旗', 150900);
INSERT INTO `users_areainfo` VALUES (150981, '丰镇市', 150900);
INSERT INTO `users_areainfo` VALUES (150982, '其它区', 150900);
INSERT INTO `users_areainfo` VALUES (152200, '兴安盟', 150000);
INSERT INTO `users_areainfo` VALUES (152201, '乌兰浩特市', 152200);
INSERT INTO `users_areainfo` VALUES (152202, '阿尔山市', 152200);
INSERT INTO `users_areainfo` VALUES (152221, '科尔沁右翼前旗', 152200);
INSERT INTO `users_areainfo` VALUES (152222, '科尔沁右翼中旗', 152200);
INSERT INTO `users_areainfo` VALUES (152223, '扎赉特旗', 152200);
INSERT INTO `users_areainfo` VALUES (152224, '突泉县', 152200);
INSERT INTO `users_areainfo` VALUES (152225, '其它区', 152200);
INSERT INTO `users_areainfo` VALUES (152500, '锡林郭勒盟', 150000);
INSERT INTO `users_areainfo` VALUES (152501, '二连浩特市', 152500);
INSERT INTO `users_areainfo` VALUES (152502, '锡林浩特市', 152500);
INSERT INTO `users_areainfo` VALUES (152522, '阿巴嘎旗', 152500);
INSERT INTO `users_areainfo` VALUES (152523, '苏尼特左旗', 152500);
INSERT INTO `users_areainfo` VALUES (152524, '苏尼特右旗', 152500);
INSERT INTO `users_areainfo` VALUES (152525, '东乌珠穆沁旗', 152500);
INSERT INTO `users_areainfo` VALUES (152526, '西乌珠穆沁旗', 152500);
INSERT INTO `users_areainfo` VALUES (152527, '太仆寺旗', 152500);
INSERT INTO `users_areainfo` VALUES (152528, '镶黄旗', 152500);
INSERT INTO `users_areainfo` VALUES (152529, '正镶白旗', 152500);
INSERT INTO `users_areainfo` VALUES (152530, '正蓝旗', 152500);
INSERT INTO `users_areainfo` VALUES (152531, '多伦县', 152500);
INSERT INTO `users_areainfo` VALUES (152532, '其它区', 152500);
INSERT INTO `users_areainfo` VALUES (152900, '阿拉善盟', 150000);
INSERT INTO `users_areainfo` VALUES (152921, '阿拉善左旗', 152900);
INSERT INTO `users_areainfo` VALUES (152922, '阿拉善右旗', 152900);
INSERT INTO `users_areainfo` VALUES (152923, '额济纳旗', 152900);
INSERT INTO `users_areainfo` VALUES (152924, '其它区', 152900);
INSERT INTO `users_areainfo` VALUES (210000, '辽宁', 0);
INSERT INTO `users_areainfo` VALUES (210100, '沈阳', 210000);
INSERT INTO `users_areainfo` VALUES (210102, '和平区', 210100);
INSERT INTO `users_areainfo` VALUES (210103, '沈河区', 210100);
INSERT INTO `users_areainfo` VALUES (210104, '大东区', 210100);
INSERT INTO `users_areainfo` VALUES (210105, '皇姑区', 210100);
INSERT INTO `users_areainfo` VALUES (210106, '铁西区', 210100);
INSERT INTO `users_areainfo` VALUES (210111, '苏家屯区', 210100);
INSERT INTO `users_areainfo` VALUES (210112, '东陵区', 210100);
INSERT INTO `users_areainfo` VALUES (210113, '新城子区', 210100);
INSERT INTO `users_areainfo` VALUES (210114, '于洪区', 210100);
INSERT INTO `users_areainfo` VALUES (210122, '辽中县', 210100);
INSERT INTO `users_areainfo` VALUES (210123, '康平县', 210100);
INSERT INTO `users_areainfo` VALUES (210124, '法库县', 210100);
INSERT INTO `users_areainfo` VALUES (210181, '新民市', 210100);
INSERT INTO `users_areainfo` VALUES (210182, '浑南新区', 210100);
INSERT INTO `users_areainfo` VALUES (210183, '张士开发区', 210100);
INSERT INTO `users_areainfo` VALUES (210184, '沈北新区', 210100);
INSERT INTO `users_areainfo` VALUES (210185, '其它区', 210100);
INSERT INTO `users_areainfo` VALUES (210200, '大连', 210000);
INSERT INTO `users_areainfo` VALUES (210202, '中山区', 210200);
INSERT INTO `users_areainfo` VALUES (210203, '西岗区', 210200);
INSERT INTO `users_areainfo` VALUES (210204, '沙河口区', 210200);
INSERT INTO `users_areainfo` VALUES (210211, '甘井子区', 210200);
INSERT INTO `users_areainfo` VALUES (210212, '旅顺口区', 210200);
INSERT INTO `users_areainfo` VALUES (210213, '金州区', 210200);
INSERT INTO `users_areainfo` VALUES (210224, '长海县', 210200);
INSERT INTO `users_areainfo` VALUES (210251, '开发区', 210200);
INSERT INTO `users_areainfo` VALUES (210281, '瓦房店市', 210200);
INSERT INTO `users_areainfo` VALUES (210282, '普兰店市', 210200);
INSERT INTO `users_areainfo` VALUES (210283, '庄河市', 210200);
INSERT INTO `users_areainfo` VALUES (210297, '岭前区', 210200);
INSERT INTO `users_areainfo` VALUES (210298, '其它区', 210200);
INSERT INTO `users_areainfo` VALUES (210300, '鞍山', 210000);
INSERT INTO `users_areainfo` VALUES (210302, '铁东区', 210300);
INSERT INTO `users_areainfo` VALUES (210303, '铁西区', 210300);
INSERT INTO `users_areainfo` VALUES (210304, '立山区', 210300);
INSERT INTO `users_areainfo` VALUES (210311, '千山区', 210300);
INSERT INTO `users_areainfo` VALUES (210321, '台安县', 210300);
INSERT INTO `users_areainfo` VALUES (210323, '岫岩满族自治县', 210300);
INSERT INTO `users_areainfo` VALUES (210351, '高新区', 210300);
INSERT INTO `users_areainfo` VALUES (210381, '海城市', 210300);
INSERT INTO `users_areainfo` VALUES (210382, '其它区', 210300);
INSERT INTO `users_areainfo` VALUES (210400, '抚顺', 210000);
INSERT INTO `users_areainfo` VALUES (210402, '新抚区', 210400);
INSERT INTO `users_areainfo` VALUES (210403, '东洲区', 210400);
INSERT INTO `users_areainfo` VALUES (210404, '望花区', 210400);
INSERT INTO `users_areainfo` VALUES (210411, '顺城区', 210400);
INSERT INTO `users_areainfo` VALUES (210421, '抚顺县', 210400);
INSERT INTO `users_areainfo` VALUES (210422, '新宾满族自治县', 210400);
INSERT INTO `users_areainfo` VALUES (210423, '清原满族自治县', 210400);
INSERT INTO `users_areainfo` VALUES (210424, '其它区', 210400);
INSERT INTO `users_areainfo` VALUES (210500, '本溪', 210000);
INSERT INTO `users_areainfo` VALUES (210502, '平山区', 210500);
INSERT INTO `users_areainfo` VALUES (210503, '溪湖区', 210500);
INSERT INTO `users_areainfo` VALUES (210504, '明山区', 210500);
INSERT INTO `users_areainfo` VALUES (210505, '南芬区', 210500);
INSERT INTO `users_areainfo` VALUES (210521, '本溪满族自治县', 210500);
INSERT INTO `users_areainfo` VALUES (210522, '桓仁满族自治县', 210500);
INSERT INTO `users_areainfo` VALUES (210523, '其它区', 210500);
INSERT INTO `users_areainfo` VALUES (210600, '丹东', 210000);
INSERT INTO `users_areainfo` VALUES (210602, '元宝区', 210600);
INSERT INTO `users_areainfo` VALUES (210603, '振兴区', 210600);
INSERT INTO `users_areainfo` VALUES (210604, '振安区', 210600);
INSERT INTO `users_areainfo` VALUES (210624, '宽甸满族自治县', 210600);
INSERT INTO `users_areainfo` VALUES (210681, '东港市', 210600);
INSERT INTO `users_areainfo` VALUES (210682, '凤城市', 210600);
INSERT INTO `users_areainfo` VALUES (210683, '其它区', 210600);
INSERT INTO `users_areainfo` VALUES (210700, '锦州', 210000);
INSERT INTO `users_areainfo` VALUES (210702, '古塔区', 210700);
INSERT INTO `users_areainfo` VALUES (210703, '凌河区', 210700);
INSERT INTO `users_areainfo` VALUES (210711, '太和区', 210700);
INSERT INTO `users_areainfo` VALUES (210726, '黑山县', 210700);
INSERT INTO `users_areainfo` VALUES (210727, '义县', 210700);
INSERT INTO `users_areainfo` VALUES (210781, '凌海市', 210700);
INSERT INTO `users_areainfo` VALUES (210782, '北镇市', 210700);
INSERT INTO `users_areainfo` VALUES (210783, '其它区', 210700);
INSERT INTO `users_areainfo` VALUES (210800, '营口', 210000);
INSERT INTO `users_areainfo` VALUES (210802, '站前区', 210800);
INSERT INTO `users_areainfo` VALUES (210803, '西市区', 210800);
INSERT INTO `users_areainfo` VALUES (210804, '鲅鱼圈区', 210800);
INSERT INTO `users_areainfo` VALUES (210811, '老边区', 210800);
INSERT INTO `users_areainfo` VALUES (210881, '盖州市', 210800);
INSERT INTO `users_areainfo` VALUES (210882, '大石桥市', 210800);
INSERT INTO `users_areainfo` VALUES (210883, '其它区', 210800);
INSERT INTO `users_areainfo` VALUES (210900, '阜新', 210000);
INSERT INTO `users_areainfo` VALUES (210902, '海州区', 210900);
INSERT INTO `users_areainfo` VALUES (210903, '新邱区', 210900);
INSERT INTO `users_areainfo` VALUES (210904, '太平区', 210900);
INSERT INTO `users_areainfo` VALUES (210905, '清河门区', 210900);
INSERT INTO `users_areainfo` VALUES (210911, '细河区', 210900);
INSERT INTO `users_areainfo` VALUES (210921, '阜新蒙古族自治县', 210900);
INSERT INTO `users_areainfo` VALUES (210922, '彰武县', 210900);
INSERT INTO `users_areainfo` VALUES (210923, '其它区', 210900);
INSERT INTO `users_areainfo` VALUES (211000, '辽阳', 210000);
INSERT INTO `users_areainfo` VALUES (211002, '白塔区', 211000);
INSERT INTO `users_areainfo` VALUES (211003, '文圣区', 211000);
INSERT INTO `users_areainfo` VALUES (211004, '宏伟区', 211000);
INSERT INTO `users_areainfo` VALUES (211005, '弓长岭区', 211000);
INSERT INTO `users_areainfo` VALUES (211011, '太子河区', 211000);
INSERT INTO `users_areainfo` VALUES (211021, '辽阳县', 211000);
INSERT INTO `users_areainfo` VALUES (211081, '灯塔市', 211000);
INSERT INTO `users_areainfo` VALUES (211082, '其它区', 211000);
INSERT INTO `users_areainfo` VALUES (211100, '盘锦', 210000);
INSERT INTO `users_areainfo` VALUES (211102, '双台子区', 211100);
INSERT INTO `users_areainfo` VALUES (211103, '兴隆台区', 211100);
INSERT INTO `users_areainfo` VALUES (211121, '大洼县', 211100);
INSERT INTO `users_areainfo` VALUES (211122, '盘山县', 211100);
INSERT INTO `users_areainfo` VALUES (211123, '其它区', 211100);
INSERT INTO `users_areainfo` VALUES (211200, '铁岭', 210000);
INSERT INTO `users_areainfo` VALUES (211202, '银州区', 211200);
INSERT INTO `users_areainfo` VALUES (211204, '清河区', 211200);
INSERT INTO `users_areainfo` VALUES (211221, '铁岭县', 211200);
INSERT INTO `users_areainfo` VALUES (211223, '西丰县', 211200);
INSERT INTO `users_areainfo` VALUES (211224, '昌图县', 211200);
INSERT INTO `users_areainfo` VALUES (211281, '调兵山市', 211200);
INSERT INTO `users_areainfo` VALUES (211282, '开原市', 211200);
INSERT INTO `users_areainfo` VALUES (211283, '其它区', 211200);
INSERT INTO `users_areainfo` VALUES (211300, '朝阳', 210000);
INSERT INTO `users_areainfo` VALUES (211302, '双塔区', 211300);
INSERT INTO `users_areainfo` VALUES (211303, '龙城区', 211300);
INSERT INTO `users_areainfo` VALUES (211321, '朝阳县', 211300);
INSERT INTO `users_areainfo` VALUES (211322, '建平县', 211300);
INSERT INTO `users_areainfo` VALUES (211324, '喀喇沁左翼蒙古族自治县', 211300);
INSERT INTO `users_areainfo` VALUES (211381, '北票市', 211300);
INSERT INTO `users_areainfo` VALUES (211382, '凌源市', 211300);
INSERT INTO `users_areainfo` VALUES (211383, '其它区', 211300);
INSERT INTO `users_areainfo` VALUES (211400, '葫芦岛', 210000);
INSERT INTO `users_areainfo` VALUES (211402, '连山区', 211400);
INSERT INTO `users_areainfo` VALUES (211403, '龙港区', 211400);
INSERT INTO `users_areainfo` VALUES (211404, '南票区', 211400);
INSERT INTO `users_areainfo` VALUES (211421, '绥中县', 211400);
INSERT INTO `users_areainfo` VALUES (211422, '建昌县', 211400);
INSERT INTO `users_areainfo` VALUES (211481, '兴城市', 211400);
INSERT INTO `users_areainfo` VALUES (211482, '其它区', 211400);
INSERT INTO `users_areainfo` VALUES (220000, '吉林', 0);
INSERT INTO `users_areainfo` VALUES (220100, '长春', 220000);
INSERT INTO `users_areainfo` VALUES (220102, '南关区', 220100);
INSERT INTO `users_areainfo` VALUES (220103, '宽城区', 220100);
INSERT INTO `users_areainfo` VALUES (220104, '朝阳区', 220100);
INSERT INTO `users_areainfo` VALUES (220105, '二道区', 220100);
INSERT INTO `users_areainfo` VALUES (220106, '绿园区', 220100);
INSERT INTO `users_areainfo` VALUES (220112, '双阳区', 220100);
INSERT INTO `users_areainfo` VALUES (220122, '农安县', 220100);
INSERT INTO `users_areainfo` VALUES (220181, '九台市', 220100);
INSERT INTO `users_areainfo` VALUES (220182, '榆树市', 220100);
INSERT INTO `users_areainfo` VALUES (220183, '德惠市', 220100);
INSERT INTO `users_areainfo` VALUES (220184, '高新技术产业开发区', 220100);
INSERT INTO `users_areainfo` VALUES (220185, '汽车产业开发区', 220100);
INSERT INTO `users_areainfo` VALUES (220186, '经济技术开发区', 220100);
INSERT INTO `users_areainfo` VALUES (220187, '净月旅游开发区', 220100);
INSERT INTO `users_areainfo` VALUES (220188, '其它区', 220100);
INSERT INTO `users_areainfo` VALUES (220200, '吉林', 220000);
INSERT INTO `users_areainfo` VALUES (220202, '昌邑区', 220200);
INSERT INTO `users_areainfo` VALUES (220203, '龙潭区', 220200);
INSERT INTO `users_areainfo` VALUES (220204, '船营区', 220200);
INSERT INTO `users_areainfo` VALUES (220211, '丰满区', 220200);
INSERT INTO `users_areainfo` VALUES (220221, '永吉县', 220200);
INSERT INTO `users_areainfo` VALUES (220281, '蛟河市', 220200);
INSERT INTO `users_areainfo` VALUES (220282, '桦甸市', 220200);
INSERT INTO `users_areainfo` VALUES (220283, '舒兰市', 220200);
INSERT INTO `users_areainfo` VALUES (220284, '磐石市', 220200);
INSERT INTO `users_areainfo` VALUES (220285, '其它区', 220200);
INSERT INTO `users_areainfo` VALUES (220300, '四平', 220000);
INSERT INTO `users_areainfo` VALUES (220302, '铁西区', 220300);
INSERT INTO `users_areainfo` VALUES (220303, '铁东区', 220300);
INSERT INTO `users_areainfo` VALUES (220322, '梨树县', 220300);
INSERT INTO `users_areainfo` VALUES (220323, '伊通满族自治县', 220300);
INSERT INTO `users_areainfo` VALUES (220381, '公主岭市', 220300);
INSERT INTO `users_areainfo` VALUES (220382, '双辽市', 220300);
INSERT INTO `users_areainfo` VALUES (220383, '其它区', 220300);
INSERT INTO `users_areainfo` VALUES (220400, '辽源', 220000);
INSERT INTO `users_areainfo` VALUES (220402, '龙山区', 220400);
INSERT INTO `users_areainfo` VALUES (220403, '西安区', 220400);
INSERT INTO `users_areainfo` VALUES (220421, '东丰县', 220400);
INSERT INTO `users_areainfo` VALUES (220422, '东辽县', 220400);
INSERT INTO `users_areainfo` VALUES (220423, '其它区', 220400);
INSERT INTO `users_areainfo` VALUES (220500, '通化', 220000);
INSERT INTO `users_areainfo` VALUES (220502, '东昌区', 220500);
INSERT INTO `users_areainfo` VALUES (220503, '二道江区', 220500);
INSERT INTO `users_areainfo` VALUES (220521, '通化县', 220500);
INSERT INTO `users_areainfo` VALUES (220523, '辉南县', 220500);
INSERT INTO `users_areainfo` VALUES (220524, '柳河县', 220500);
INSERT INTO `users_areainfo` VALUES (220581, '梅河口市', 220500);
INSERT INTO `users_areainfo` VALUES (220582, '集安市', 220500);
INSERT INTO `users_areainfo` VALUES (220583, '其它区', 220500);
INSERT INTO `users_areainfo` VALUES (220600, '白山', 220000);
INSERT INTO `users_areainfo` VALUES (220602, '八道江区', 220600);
INSERT INTO `users_areainfo` VALUES (220621, '抚松县', 220600);
INSERT INTO `users_areainfo` VALUES (220622, '靖宇县', 220600);
INSERT INTO `users_areainfo` VALUES (220623, '长白朝鲜族自治县', 220600);
INSERT INTO `users_areainfo` VALUES (220625, '江源县', 220600);
INSERT INTO `users_areainfo` VALUES (220681, '临江市', 220600);
INSERT INTO `users_areainfo` VALUES (220682, '其它区', 220600);
INSERT INTO `users_areainfo` VALUES (220700, '松原', 220000);
INSERT INTO `users_areainfo` VALUES (220702, '宁江区', 220700);
INSERT INTO `users_areainfo` VALUES (220721, '前郭尔罗斯蒙古族自治县', 220700);
INSERT INTO `users_areainfo` VALUES (220722, '长岭县', 220700);
INSERT INTO `users_areainfo` VALUES (220723, '乾安县', 220700);
INSERT INTO `users_areainfo` VALUES (220724, '扶余县', 220700);
INSERT INTO `users_areainfo` VALUES (220725, '其它区', 220700);
INSERT INTO `users_areainfo` VALUES (220800, '白城', 220000);
INSERT INTO `users_areainfo` VALUES (220802, '洮北区', 220800);
INSERT INTO `users_areainfo` VALUES (220821, '镇赉县', 220800);
INSERT INTO `users_areainfo` VALUES (220822, '通榆县', 220800);
INSERT INTO `users_areainfo` VALUES (220881, '洮南市', 220800);
INSERT INTO `users_areainfo` VALUES (220882, '大安市', 220800);
INSERT INTO `users_areainfo` VALUES (220883, '其它区', 220800);
INSERT INTO `users_areainfo` VALUES (222400, '延边', 220000);
INSERT INTO `users_areainfo` VALUES (222401, '延吉市', 222400);
INSERT INTO `users_areainfo` VALUES (222402, '图们市', 222400);
INSERT INTO `users_areainfo` VALUES (222403, '敦化市', 222400);
INSERT INTO `users_areainfo` VALUES (222404, '珲春市', 222400);
INSERT INTO `users_areainfo` VALUES (222405, '龙井市', 222400);
INSERT INTO `users_areainfo` VALUES (222406, '和龙市', 222400);
INSERT INTO `users_areainfo` VALUES (222424, '汪清县', 222400);
INSERT INTO `users_areainfo` VALUES (222426, '安图县', 222400);
INSERT INTO `users_areainfo` VALUES (222427, '其它区', 222400);
INSERT INTO `users_areainfo` VALUES (230000, '黑龙江', 0);
INSERT INTO `users_areainfo` VALUES (230100, '哈尔滨', 230000);
INSERT INTO `users_areainfo` VALUES (230102, '道里区', 230100);
INSERT INTO `users_areainfo` VALUES (230103, '南岗区', 230100);
INSERT INTO `users_areainfo` VALUES (230104, '道外区', 230100);
INSERT INTO `users_areainfo` VALUES (230106, '香坊区', 230100);
INSERT INTO `users_areainfo` VALUES (230107, '动力区', 230100);
INSERT INTO `users_areainfo` VALUES (230108, '平房区', 230100);
INSERT INTO `users_areainfo` VALUES (230109, '松北区', 230100);
INSERT INTO `users_areainfo` VALUES (230111, '呼兰区', 230100);
INSERT INTO `users_areainfo` VALUES (230123, '依兰县', 230100);
INSERT INTO `users_areainfo` VALUES (230124, '方正县', 230100);
INSERT INTO `users_areainfo` VALUES (230125, '宾县', 230100);
INSERT INTO `users_areainfo` VALUES (230126, '巴彦县', 230100);
INSERT INTO `users_areainfo` VALUES (230127, '木兰县', 230100);
INSERT INTO `users_areainfo` VALUES (230128, '通河县', 230100);
INSERT INTO `users_areainfo` VALUES (230129, '延寿县', 230100);
INSERT INTO `users_areainfo` VALUES (230181, '阿城市', 230100);
INSERT INTO `users_areainfo` VALUES (230182, '双城市', 230100);
INSERT INTO `users_areainfo` VALUES (230183, '尚志市', 230100);
INSERT INTO `users_areainfo` VALUES (230184, '五常市', 230100);
INSERT INTO `users_areainfo` VALUES (230185, '阿城市', 230100);
INSERT INTO `users_areainfo` VALUES (230186, '其它区', 230100);
INSERT INTO `users_areainfo` VALUES (230200, '齐齐哈尔', 230000);
INSERT INTO `users_areainfo` VALUES (230202, '龙沙区', 230200);
INSERT INTO `users_areainfo` VALUES (230203, '建华区', 230200);
INSERT INTO `users_areainfo` VALUES (230204, '铁锋区', 230200);
INSERT INTO `users_areainfo` VALUES (230205, '昂昂溪区', 230200);
INSERT INTO `users_areainfo` VALUES (230206, '富拉尔基区', 230200);
INSERT INTO `users_areainfo` VALUES (230207, '碾子山区', 230200);
INSERT INTO `users_areainfo` VALUES (230208, '梅里斯达斡尔族区', 230200);
INSERT INTO `users_areainfo` VALUES (230221, '龙江县', 230200);
INSERT INTO `users_areainfo` VALUES (230223, '依安县', 230200);
INSERT INTO `users_areainfo` VALUES (230224, '泰来县', 230200);
INSERT INTO `users_areainfo` VALUES (230225, '甘南县', 230200);
INSERT INTO `users_areainfo` VALUES (230227, '富裕县', 230200);
INSERT INTO `users_areainfo` VALUES (230229, '克山县', 230200);
INSERT INTO `users_areainfo` VALUES (230230, '克东县', 230200);
INSERT INTO `users_areainfo` VALUES (230231, '拜泉县', 230200);
INSERT INTO `users_areainfo` VALUES (230281, '讷河市', 230200);
INSERT INTO `users_areainfo` VALUES (230282, '其它区', 230200);
INSERT INTO `users_areainfo` VALUES (230300, '鸡西', 230000);
INSERT INTO `users_areainfo` VALUES (230302, '鸡冠区', 230300);
INSERT INTO `users_areainfo` VALUES (230303, '恒山区', 230300);
INSERT INTO `users_areainfo` VALUES (230304, '滴道区', 230300);
INSERT INTO `users_areainfo` VALUES (230305, '梨树区', 230300);
INSERT INTO `users_areainfo` VALUES (230306, '城子河区', 230300);
INSERT INTO `users_areainfo` VALUES (230307, '麻山区', 230300);
INSERT INTO `users_areainfo` VALUES (230321, '鸡东县', 230300);
INSERT INTO `users_areainfo` VALUES (230381, '虎林市', 230300);
INSERT INTO `users_areainfo` VALUES (230382, '密山市', 230300);
INSERT INTO `users_areainfo` VALUES (230383, '其它区', 230300);
INSERT INTO `users_areainfo` VALUES (230400, '鹤岗', 230000);
INSERT INTO `users_areainfo` VALUES (230402, '向阳区', 230400);
INSERT INTO `users_areainfo` VALUES (230403, '工农区', 230400);
INSERT INTO `users_areainfo` VALUES (230404, '南山区', 230400);
INSERT INTO `users_areainfo` VALUES (230405, '兴安区', 230400);
INSERT INTO `users_areainfo` VALUES (230406, '东山区', 230400);
INSERT INTO `users_areainfo` VALUES (230407, '兴山区', 230400);
INSERT INTO `users_areainfo` VALUES (230421, '萝北县', 230400);
INSERT INTO `users_areainfo` VALUES (230422, '绥滨县', 230400);
INSERT INTO `users_areainfo` VALUES (230423, '其它区', 230400);
INSERT INTO `users_areainfo` VALUES (230500, '双鸭山', 230000);
INSERT INTO `users_areainfo` VALUES (230502, '尖山区', 230500);
INSERT INTO `users_areainfo` VALUES (230503, '岭东区', 230500);
INSERT INTO `users_areainfo` VALUES (230505, '四方台区', 230500);
INSERT INTO `users_areainfo` VALUES (230506, '宝山区', 230500);
INSERT INTO `users_areainfo` VALUES (230521, '集贤县', 230500);
INSERT INTO `users_areainfo` VALUES (230522, '友谊县', 230500);
INSERT INTO `users_areainfo` VALUES (230523, '宝清县', 230500);
INSERT INTO `users_areainfo` VALUES (230524, '饶河县', 230500);
INSERT INTO `users_areainfo` VALUES (230525, '其它区', 230500);
INSERT INTO `users_areainfo` VALUES (230600, '大庆', 230000);
INSERT INTO `users_areainfo` VALUES (230602, '萨尔图区', 230600);
INSERT INTO `users_areainfo` VALUES (230603, '龙凤区', 230600);
INSERT INTO `users_areainfo` VALUES (230604, '让胡路区', 230600);
INSERT INTO `users_areainfo` VALUES (230605, '红岗区', 230600);
INSERT INTO `users_areainfo` VALUES (230606, '大同区', 230600);
INSERT INTO `users_areainfo` VALUES (230621, '肇州县', 230600);
INSERT INTO `users_areainfo` VALUES (230622, '肇源县', 230600);
INSERT INTO `users_areainfo` VALUES (230623, '林甸县', 230600);
INSERT INTO `users_areainfo` VALUES (230624, '杜尔伯特蒙古族自治县', 230600);
INSERT INTO `users_areainfo` VALUES (230625, '其它区', 230600);
INSERT INTO `users_areainfo` VALUES (230700, '伊春', 230000);
INSERT INTO `users_areainfo` VALUES (230702, '伊春区', 230700);
INSERT INTO `users_areainfo` VALUES (230703, '南岔区', 230700);
INSERT INTO `users_areainfo` VALUES (230704, '友好区', 230700);
INSERT INTO `users_areainfo` VALUES (230705, '西林区', 230700);
INSERT INTO `users_areainfo` VALUES (230706, '翠峦区', 230700);
INSERT INTO `users_areainfo` VALUES (230707, '新青区', 230700);
INSERT INTO `users_areainfo` VALUES (230708, '美溪区', 230700);
INSERT INTO `users_areainfo` VALUES (230709, '金山屯区', 230700);
INSERT INTO `users_areainfo` VALUES (230710, '五营区', 230700);
INSERT INTO `users_areainfo` VALUES (230711, '乌马河区', 230700);
INSERT INTO `users_areainfo` VALUES (230712, '汤旺河区', 230700);
INSERT INTO `users_areainfo` VALUES (230713, '带岭区', 230700);
INSERT INTO `users_areainfo` VALUES (230714, '乌伊岭区', 230700);
INSERT INTO `users_areainfo` VALUES (230715, '红星区', 230700);
INSERT INTO `users_areainfo` VALUES (230716, '上甘岭区', 230700);
INSERT INTO `users_areainfo` VALUES (230722, '嘉荫县', 230700);
INSERT INTO `users_areainfo` VALUES (230781, '铁力市', 230700);
INSERT INTO `users_areainfo` VALUES (230782, '其它区', 230700);
INSERT INTO `users_areainfo` VALUES (230800, '佳木斯', 230000);
INSERT INTO `users_areainfo` VALUES (230802, '永红区', 230800);
INSERT INTO `users_areainfo` VALUES (230803, '向阳区', 230800);
INSERT INTO `users_areainfo` VALUES (230804, '前进区', 230800);
INSERT INTO `users_areainfo` VALUES (230805, '东风区', 230800);
INSERT INTO `users_areainfo` VALUES (230811, '郊区', 230800);
INSERT INTO `users_areainfo` VALUES (230822, '桦南县', 230800);
INSERT INTO `users_areainfo` VALUES (230826, '桦川县', 230800);
INSERT INTO `users_areainfo` VALUES (230828, '汤原县', 230800);
INSERT INTO `users_areainfo` VALUES (230833, '抚远县', 230800);
INSERT INTO `users_areainfo` VALUES (230881, '同江市', 230800);
INSERT INTO `users_areainfo` VALUES (230882, '富锦市', 230800);
INSERT INTO `users_areainfo` VALUES (230883, '其它区', 230800);
INSERT INTO `users_areainfo` VALUES (230900, '七台河', 230000);
INSERT INTO `users_areainfo` VALUES (230902, '新兴区', 230900);
INSERT INTO `users_areainfo` VALUES (230903, '桃山区', 230900);
INSERT INTO `users_areainfo` VALUES (230904, '茄子河区', 230900);
INSERT INTO `users_areainfo` VALUES (230921, '勃利县', 230900);
INSERT INTO `users_areainfo` VALUES (230922, '其它区', 230900);
INSERT INTO `users_areainfo` VALUES (231000, '牡丹江', 230000);
INSERT INTO `users_areainfo` VALUES (231002, '东安区', 231000);
INSERT INTO `users_areainfo` VALUES (231003, '阳明区', 231000);
INSERT INTO `users_areainfo` VALUES (231004, '爱民区', 231000);
INSERT INTO `users_areainfo` VALUES (231005, '西安区', 231000);
INSERT INTO `users_areainfo` VALUES (231024, '东宁县', 231000);
INSERT INTO `users_areainfo` VALUES (231025, '林口县', 231000);
INSERT INTO `users_areainfo` VALUES (231081, '绥芬河市', 231000);
INSERT INTO `users_areainfo` VALUES (231083, '海林市', 231000);
INSERT INTO `users_areainfo` VALUES (231084, '宁安市', 231000);
INSERT INTO `users_areainfo` VALUES (231085, '穆棱市', 231000);
INSERT INTO `users_areainfo` VALUES (231086, '其它区', 231000);
INSERT INTO `users_areainfo` VALUES (231100, '黑河', 230000);
INSERT INTO `users_areainfo` VALUES (231102, '爱辉区', 231100);
INSERT INTO `users_areainfo` VALUES (231121, '嫩江县', 231100);
INSERT INTO `users_areainfo` VALUES (231123, '逊克县', 231100);
INSERT INTO `users_areainfo` VALUES (231124, '孙吴县', 231100);
INSERT INTO `users_areainfo` VALUES (231181, '北安市', 231100);
INSERT INTO `users_areainfo` VALUES (231182, '五大连池市', 231100);
INSERT INTO `users_areainfo` VALUES (231183, '其它区', 231100);
INSERT INTO `users_areainfo` VALUES (231200, '绥化', 230000);
INSERT INTO `users_areainfo` VALUES (231202, '北林区', 231200);
INSERT INTO `users_areainfo` VALUES (231221, '望奎县', 231200);
INSERT INTO `users_areainfo` VALUES (231222, '兰西县', 231200);
INSERT INTO `users_areainfo` VALUES (231223, '青冈县', 231200);
INSERT INTO `users_areainfo` VALUES (231224, '庆安县', 231200);
INSERT INTO `users_areainfo` VALUES (231225, '明水县', 231200);
INSERT INTO `users_areainfo` VALUES (231226, '绥棱县', 231200);
INSERT INTO `users_areainfo` VALUES (231281, '安达市', 231200);
INSERT INTO `users_areainfo` VALUES (231282, '肇东市', 231200);
INSERT INTO `users_areainfo` VALUES (231283, '海伦市', 231200);
INSERT INTO `users_areainfo` VALUES (231284, '其它区', 231200);
INSERT INTO `users_areainfo` VALUES (232700, '大兴安岭', 230000);
INSERT INTO `users_areainfo` VALUES (232721, '呼玛县', 232700);
INSERT INTO `users_areainfo` VALUES (232722, '塔河县', 232700);
INSERT INTO `users_areainfo` VALUES (232723, '漠河县', 232700);
INSERT INTO `users_areainfo` VALUES (232724, '加格达奇区', 232700);
INSERT INTO `users_areainfo` VALUES (232725, '其它区', 232700);
INSERT INTO `users_areainfo` VALUES (310000, '上海', 0);
INSERT INTO `users_areainfo` VALUES (310100, '上海市', 310000);
INSERT INTO `users_areainfo` VALUES (310101, '黄浦', 310100);
INSERT INTO `users_areainfo` VALUES (310103, '卢湾', 310100);
INSERT INTO `users_areainfo` VALUES (310104, '徐汇', 310100);
INSERT INTO `users_areainfo` VALUES (310105, '长宁', 310100);
INSERT INTO `users_areainfo` VALUES (310106, '静安', 310100);
INSERT INTO `users_areainfo` VALUES (310107, '普陀', 310100);
INSERT INTO `users_areainfo` VALUES (310108, '闸北', 310100);
INSERT INTO `users_areainfo` VALUES (310109, '虹口', 310100);
INSERT INTO `users_areainfo` VALUES (310110, '杨浦', 310100);
INSERT INTO `users_areainfo` VALUES (310112, '闵行', 310100);
INSERT INTO `users_areainfo` VALUES (310113, '宝山', 310100);
INSERT INTO `users_areainfo` VALUES (310114, '嘉定', 310100);
INSERT INTO `users_areainfo` VALUES (310115, '浦东新', 310100);
INSERT INTO `users_areainfo` VALUES (310116, '金山', 310100);
INSERT INTO `users_areainfo` VALUES (310117, '松江', 310100);
INSERT INTO `users_areainfo` VALUES (310118, '青浦', 310100);
INSERT INTO `users_areainfo` VALUES (310119, '南汇', 310100);
INSERT INTO `users_areainfo` VALUES (310120, '奉贤', 310100);
INSERT INTO `users_areainfo` VALUES (310152, '川沙', 310100);
INSERT INTO `users_areainfo` VALUES (310230, '崇明', 310100);
INSERT INTO `users_areainfo` VALUES (310231, '其它', 310100);
INSERT INTO `users_areainfo` VALUES (320000, '江苏', 0);
INSERT INTO `users_areainfo` VALUES (320100, '南京', 320000);
INSERT INTO `users_areainfo` VALUES (320102, '玄武区', 320100);
INSERT INTO `users_areainfo` VALUES (320103, '白下区', 320100);
INSERT INTO `users_areainfo` VALUES (320104, '秦淮区', 320100);
INSERT INTO `users_areainfo` VALUES (320105, '建邺区', 320100);
INSERT INTO `users_areainfo` VALUES (320106, '鼓楼区', 320100);
INSERT INTO `users_areainfo` VALUES (320107, '下关区', 320100);
INSERT INTO `users_areainfo` VALUES (320111, '浦口区', 320100);
INSERT INTO `users_areainfo` VALUES (320113, '栖霞区', 320100);
INSERT INTO `users_areainfo` VALUES (320114, '雨花台区', 320100);
INSERT INTO `users_areainfo` VALUES (320115, '江宁区', 320100);
INSERT INTO `users_areainfo` VALUES (320116, '六合区', 320100);
INSERT INTO `users_areainfo` VALUES (320124, '溧水县', 320100);
INSERT INTO `users_areainfo` VALUES (320125, '高淳县', 320100);
INSERT INTO `users_areainfo` VALUES (320126, '其它区', 320100);
INSERT INTO `users_areainfo` VALUES (320200, '无锡', 320000);
INSERT INTO `users_areainfo` VALUES (320202, '崇安区', 320200);
INSERT INTO `users_areainfo` VALUES (320203, '南长区', 320200);
INSERT INTO `users_areainfo` VALUES (320204, '北塘区', 320200);
INSERT INTO `users_areainfo` VALUES (320205, '锡山区', 320200);
INSERT INTO `users_areainfo` VALUES (320206, '惠山区', 320200);
INSERT INTO `users_areainfo` VALUES (320211, '滨湖区', 320200);
INSERT INTO `users_areainfo` VALUES (320281, '江阴市', 320200);
INSERT INTO `users_areainfo` VALUES (320282, '宜兴市', 320200);
INSERT INTO `users_areainfo` VALUES (320296, '新区', 320200);
INSERT INTO `users_areainfo` VALUES (320297, '其它区', 320200);
INSERT INTO `users_areainfo` VALUES (320300, '徐州', 320000);
INSERT INTO `users_areainfo` VALUES (320302, '鼓楼区', 320300);
INSERT INTO `users_areainfo` VALUES (320303, '云龙区', 320300);
INSERT INTO `users_areainfo` VALUES (320304, '九里区', 320300);
INSERT INTO `users_areainfo` VALUES (320305, '贾汪区', 320300);
INSERT INTO `users_areainfo` VALUES (320311, '泉山区', 320300);
INSERT INTO `users_areainfo` VALUES (320321, '丰县', 320300);
INSERT INTO `users_areainfo` VALUES (320322, '沛县', 320300);
INSERT INTO `users_areainfo` VALUES (320323, '铜山县', 320300);
INSERT INTO `users_areainfo` VALUES (320324, '睢宁县', 320300);
INSERT INTO `users_areainfo` VALUES (320381, '新沂市', 320300);
INSERT INTO `users_areainfo` VALUES (320382, '邳州市', 320300);
INSERT INTO `users_areainfo` VALUES (320383, '其它区', 320300);
INSERT INTO `users_areainfo` VALUES (320400, '常州', 320000);
INSERT INTO `users_areainfo` VALUES (320402, '天宁区', 320400);
INSERT INTO `users_areainfo` VALUES (320404, '钟楼区', 320400);
INSERT INTO `users_areainfo` VALUES (320405, '戚墅堰区', 320400);
INSERT INTO `users_areainfo` VALUES (320411, '新北区', 320400);
INSERT INTO `users_areainfo` VALUES (320412, '武进区', 320400);
INSERT INTO `users_areainfo` VALUES (320481, '溧阳市', 320400);
INSERT INTO `users_areainfo` VALUES (320482, '金坛市', 320400);
INSERT INTO `users_areainfo` VALUES (320483, '其它区', 320400);
INSERT INTO `users_areainfo` VALUES (320500, '苏州', 320000);
INSERT INTO `users_areainfo` VALUES (320502, '沧浪区', 320500);
INSERT INTO `users_areainfo` VALUES (320503, '平江区', 320500);
INSERT INTO `users_areainfo` VALUES (320504, '金阊区', 320500);
INSERT INTO `users_areainfo` VALUES (320505, '虎丘区', 320500);
INSERT INTO `users_areainfo` VALUES (320506, '吴中区', 320500);
INSERT INTO `users_areainfo` VALUES (320507, '相城区', 320500);
INSERT INTO `users_areainfo` VALUES (320581, '常熟市', 320500);
INSERT INTO `users_areainfo` VALUES (320582, '张家港市', 320500);
INSERT INTO `users_areainfo` VALUES (320583, '昆山市', 320500);
INSERT INTO `users_areainfo` VALUES (320584, '吴江市', 320500);
INSERT INTO `users_areainfo` VALUES (320585, '太仓市', 320500);
INSERT INTO `users_areainfo` VALUES (320594, '新区', 320500);
INSERT INTO `users_areainfo` VALUES (320595, '园区', 320500);
INSERT INTO `users_areainfo` VALUES (320596, '其它区', 320500);
INSERT INTO `users_areainfo` VALUES (320600, '南通', 320000);
INSERT INTO `users_areainfo` VALUES (320602, '崇川区', 320600);
INSERT INTO `users_areainfo` VALUES (320611, '港闸区', 320600);
INSERT INTO `users_areainfo` VALUES (320621, '海安县', 320600);
INSERT INTO `users_areainfo` VALUES (320623, '如东县', 320600);
INSERT INTO `users_areainfo` VALUES (320681, '启东市', 320600);
INSERT INTO `users_areainfo` VALUES (320682, '如皋市', 320600);
INSERT INTO `users_areainfo` VALUES (320683, '通州市', 320600);
INSERT INTO `users_areainfo` VALUES (320684, '海门市', 320600);
INSERT INTO `users_areainfo` VALUES (320693, '开发区', 320600);
INSERT INTO `users_areainfo` VALUES (320694, '其它区', 320600);
INSERT INTO `users_areainfo` VALUES (320700, '连云港', 320000);
INSERT INTO `users_areainfo` VALUES (320703, '连云区', 320700);
INSERT INTO `users_areainfo` VALUES (320705, '新浦区', 320700);
INSERT INTO `users_areainfo` VALUES (320706, '海州区', 320700);
INSERT INTO `users_areainfo` VALUES (320721, '赣榆县', 320700);
INSERT INTO `users_areainfo` VALUES (320722, '东海县', 320700);
INSERT INTO `users_areainfo` VALUES (320723, '灌云县', 320700);
INSERT INTO `users_areainfo` VALUES (320724, '灌南县', 320700);
INSERT INTO `users_areainfo` VALUES (320725, '其它区', 320700);
INSERT INTO `users_areainfo` VALUES (320800, '淮安', 320000);
INSERT INTO `users_areainfo` VALUES (320802, '清河区', 320800);
INSERT INTO `users_areainfo` VALUES (320803, '楚州区', 320800);
INSERT INTO `users_areainfo` VALUES (320804, '淮阴区', 320800);
INSERT INTO `users_areainfo` VALUES (320811, '清浦区', 320800);
INSERT INTO `users_areainfo` VALUES (320826, '涟水县', 320800);
INSERT INTO `users_areainfo` VALUES (320829, '洪泽县', 320800);
INSERT INTO `users_areainfo` VALUES (320830, '盱眙县', 320800);
INSERT INTO `users_areainfo` VALUES (320831, '金湖县', 320800);
INSERT INTO `users_areainfo` VALUES (320832, '其它区', 320800);
INSERT INTO `users_areainfo` VALUES (320900, '盐城', 320000);
INSERT INTO `users_areainfo` VALUES (320902, '亭湖区', 320900);
INSERT INTO `users_areainfo` VALUES (320903, '盐都区', 320900);
INSERT INTO `users_areainfo` VALUES (320921, '响水县', 320900);
INSERT INTO `users_areainfo` VALUES (320922, '滨海县', 320900);
INSERT INTO `users_areainfo` VALUES (320923, '阜宁县', 320900);
INSERT INTO `users_areainfo` VALUES (320924, '射阳县', 320900);
INSERT INTO `users_areainfo` VALUES (320925, '建湖县', 320900);
INSERT INTO `users_areainfo` VALUES (320981, '东台市', 320900);
INSERT INTO `users_areainfo` VALUES (320982, '大丰市', 320900);
INSERT INTO `users_areainfo` VALUES (320983, '其它区', 320900);
INSERT INTO `users_areainfo` VALUES (321000, '扬州', 320000);
INSERT INTO `users_areainfo` VALUES (321002, '广陵区', 321000);
INSERT INTO `users_areainfo` VALUES (321003, '邗江区', 321000);
INSERT INTO `users_areainfo` VALUES (321011, '维扬区', 321000);
INSERT INTO `users_areainfo` VALUES (321023, '宝应县', 321000);
INSERT INTO `users_areainfo` VALUES (321081, '仪征市', 321000);
INSERT INTO `users_areainfo` VALUES (321084, '高邮市', 321000);
INSERT INTO `users_areainfo` VALUES (321088, '江都市', 321000);
INSERT INTO `users_areainfo` VALUES (321092, '经济开发区', 321000);
INSERT INTO `users_areainfo` VALUES (321093, '其它区', 321000);
INSERT INTO `users_areainfo` VALUES (321100, '镇江', 320000);
INSERT INTO `users_areainfo` VALUES (321102, '京口区', 321100);
INSERT INTO `users_areainfo` VALUES (321111, '润州区', 321100);
INSERT INTO `users_areainfo` VALUES (321112, '丹徒区', 321100);
INSERT INTO `users_areainfo` VALUES (321181, '丹阳市', 321100);
INSERT INTO `users_areainfo` VALUES (321182, '扬中市', 321100);
INSERT INTO `users_areainfo` VALUES (321183, '句容市', 321100);
INSERT INTO `users_areainfo` VALUES (321184, '其它区', 321100);
INSERT INTO `users_areainfo` VALUES (321200, '泰州', 320000);
INSERT INTO `users_areainfo` VALUES (321202, '海陵区', 321200);
INSERT INTO `users_areainfo` VALUES (321203, '高港区', 321200);
INSERT INTO `users_areainfo` VALUES (321281, '兴化市', 321200);
INSERT INTO `users_areainfo` VALUES (321282, '靖江市', 321200);
INSERT INTO `users_areainfo` VALUES (321283, '泰兴市', 321200);
INSERT INTO `users_areainfo` VALUES (321284, '姜堰市', 321200);
INSERT INTO `users_areainfo` VALUES (321285, '其它区', 321200);
INSERT INTO `users_areainfo` VALUES (321300, '宿迁', 320000);
INSERT INTO `users_areainfo` VALUES (321302, '宿城区', 321300);
INSERT INTO `users_areainfo` VALUES (321311, '宿豫区', 321300);
INSERT INTO `users_areainfo` VALUES (321322, '沭阳县', 321300);
INSERT INTO `users_areainfo` VALUES (321323, '泗阳县', 321300);
INSERT INTO `users_areainfo` VALUES (321324, '泗洪县', 321300);
INSERT INTO `users_areainfo` VALUES (321325, '其它区', 321300);
INSERT INTO `users_areainfo` VALUES (330000, '浙江', 0);
INSERT INTO `users_areainfo` VALUES (330100, '杭州', 330000);
INSERT INTO `users_areainfo` VALUES (330102, '上城区', 330100);
INSERT INTO `users_areainfo` VALUES (330103, '下城区', 330100);
INSERT INTO `users_areainfo` VALUES (330104, '江干区', 330100);
INSERT INTO `users_areainfo` VALUES (330105, '拱墅区', 330100);
INSERT INTO `users_areainfo` VALUES (330106, '西湖区', 330100);
INSERT INTO `users_areainfo` VALUES (330108, '滨江区', 330100);
INSERT INTO `users_areainfo` VALUES (330109, '萧山区', 330100);
INSERT INTO `users_areainfo` VALUES (330110, '余杭区', 330100);
INSERT INTO `users_areainfo` VALUES (330122, '桐庐县', 330100);
INSERT INTO `users_areainfo` VALUES (330127, '淳安县', 330100);
INSERT INTO `users_areainfo` VALUES (330182, '建德市', 330100);
INSERT INTO `users_areainfo` VALUES (330183, '富阳市', 330100);
INSERT INTO `users_areainfo` VALUES (330185, '临安市', 330100);
INSERT INTO `users_areainfo` VALUES (330186, '其它区', 330100);
INSERT INTO `users_areainfo` VALUES (330200, '宁波', 330000);
INSERT INTO `users_areainfo` VALUES (330203, '海曙区', 330200);
INSERT INTO `users_areainfo` VALUES (330204, '江东区', 330200);
INSERT INTO `users_areainfo` VALUES (330205, '江北区', 330200);
INSERT INTO `users_areainfo` VALUES (330206, '北仑区', 330200);
INSERT INTO `users_areainfo` VALUES (330211, '镇海区', 330200);
INSERT INTO `users_areainfo` VALUES (330212, '鄞州区', 330200);
INSERT INTO `users_areainfo` VALUES (330225, '象山县', 330200);
INSERT INTO `users_areainfo` VALUES (330226, '宁海县', 330200);
INSERT INTO `users_areainfo` VALUES (330281, '余姚市', 330200);
INSERT INTO `users_areainfo` VALUES (330282, '慈溪市', 330200);
INSERT INTO `users_areainfo` VALUES (330283, '奉化市', 330200);
INSERT INTO `users_areainfo` VALUES (330284, '其它区', 330200);
INSERT INTO `users_areainfo` VALUES (330300, '温州', 330000);
INSERT INTO `users_areainfo` VALUES (330302, '鹿城区', 330300);
INSERT INTO `users_areainfo` VALUES (330303, '龙湾区', 330300);
INSERT INTO `users_areainfo` VALUES (330304, '瓯海区', 330300);
INSERT INTO `users_areainfo` VALUES (330322, '洞头县', 330300);
INSERT INTO `users_areainfo` VALUES (330324, '永嘉县', 330300);
INSERT INTO `users_areainfo` VALUES (330326, '平阳县', 330300);
INSERT INTO `users_areainfo` VALUES (330327, '苍南县', 330300);
INSERT INTO `users_areainfo` VALUES (330328, '文成县', 330300);
INSERT INTO `users_areainfo` VALUES (330329, '泰顺县', 330300);
INSERT INTO `users_areainfo` VALUES (330381, '瑞安市', 330300);
INSERT INTO `users_areainfo` VALUES (330382, '乐清市', 330300);
INSERT INTO `users_areainfo` VALUES (330383, '其它区', 330300);
INSERT INTO `users_areainfo` VALUES (330400, '嘉兴', 330000);
INSERT INTO `users_areainfo` VALUES (330402, '南湖区', 330400);
INSERT INTO `users_areainfo` VALUES (330411, '秀洲区', 330400);
INSERT INTO `users_areainfo` VALUES (330421, '嘉善县', 330400);
INSERT INTO `users_areainfo` VALUES (330424, '海盐县', 330400);
INSERT INTO `users_areainfo` VALUES (330481, '海宁市', 330400);
INSERT INTO `users_areainfo` VALUES (330482, '平湖市', 330400);
INSERT INTO `users_areainfo` VALUES (330483, '桐乡市', 330400);
INSERT INTO `users_areainfo` VALUES (330484, '其它区', 330400);
INSERT INTO `users_areainfo` VALUES (330500, '湖州', 330000);
INSERT INTO `users_areainfo` VALUES (330502, '吴兴区', 330500);
INSERT INTO `users_areainfo` VALUES (330503, '南浔区', 330500);
INSERT INTO `users_areainfo` VALUES (330521, '德清县', 330500);
INSERT INTO `users_areainfo` VALUES (330522, '长兴县', 330500);
INSERT INTO `users_areainfo` VALUES (330523, '安吉县', 330500);
INSERT INTO `users_areainfo` VALUES (330524, '其它区', 330500);
INSERT INTO `users_areainfo` VALUES (330600, '绍兴', 330000);
INSERT INTO `users_areainfo` VALUES (330602, '越城区', 330600);
INSERT INTO `users_areainfo` VALUES (330621, '绍兴县', 330600);
INSERT INTO `users_areainfo` VALUES (330624, '新昌县', 330600);
INSERT INTO `users_areainfo` VALUES (330681, '诸暨市', 330600);
INSERT INTO `users_areainfo` VALUES (330682, '上虞市', 330600);
INSERT INTO `users_areainfo` VALUES (330683, '嵊州市', 330600);
INSERT INTO `users_areainfo` VALUES (330684, '其它区', 330600);
INSERT INTO `users_areainfo` VALUES (330700, '金华', 330000);
INSERT INTO `users_areainfo` VALUES (330702, '婺城区', 330700);
INSERT INTO `users_areainfo` VALUES (330703, '金东区', 330700);
INSERT INTO `users_areainfo` VALUES (330723, '武义县', 330700);
INSERT INTO `users_areainfo` VALUES (330726, '浦江县', 330700);
INSERT INTO `users_areainfo` VALUES (330727, '磐安县', 330700);
INSERT INTO `users_areainfo` VALUES (330781, '兰溪市', 330700);
INSERT INTO `users_areainfo` VALUES (330782, '义乌市', 330700);
INSERT INTO `users_areainfo` VALUES (330783, '东阳市', 330700);
INSERT INTO `users_areainfo` VALUES (330784, '永康市', 330700);
INSERT INTO `users_areainfo` VALUES (330785, '其它区', 330700);
INSERT INTO `users_areainfo` VALUES (330800, '衢州', 330000);
INSERT INTO `users_areainfo` VALUES (330802, '柯城区', 330800);
INSERT INTO `users_areainfo` VALUES (330803, '衢江区', 330800);
INSERT INTO `users_areainfo` VALUES (330822, '常山县', 330800);
INSERT INTO `users_areainfo` VALUES (330824, '开化县', 330800);
INSERT INTO `users_areainfo` VALUES (330825, '龙游县', 330800);
INSERT INTO `users_areainfo` VALUES (330881, '江山市', 330800);
INSERT INTO `users_areainfo` VALUES (330882, '其它区', 330800);
INSERT INTO `users_areainfo` VALUES (330900, '舟山', 330000);
INSERT INTO `users_areainfo` VALUES (330902, '定海区', 330900);
INSERT INTO `users_areainfo` VALUES (330903, '普陀区', 330900);
INSERT INTO `users_areainfo` VALUES (330921, '岱山县', 330900);
INSERT INTO `users_areainfo` VALUES (330922, '嵊泗县', 330900);
INSERT INTO `users_areainfo` VALUES (330923, '其它区', 330900);
INSERT INTO `users_areainfo` VALUES (331000, '台州', 330000);
INSERT INTO `users_areainfo` VALUES (331002, '椒江区', 331000);
INSERT INTO `users_areainfo` VALUES (331003, '黄岩区', 331000);
INSERT INTO `users_areainfo` VALUES (331004, '路桥区', 331000);
INSERT INTO `users_areainfo` VALUES (331021, '玉环县', 331000);
INSERT INTO `users_areainfo` VALUES (331022, '三门县', 331000);
INSERT INTO `users_areainfo` VALUES (331023, '天台县', 331000);
INSERT INTO `users_areainfo` VALUES (331024, '仙居县', 331000);
INSERT INTO `users_areainfo` VALUES (331081, '温岭市', 331000);
INSERT INTO `users_areainfo` VALUES (331082, '临海市', 331000);
INSERT INTO `users_areainfo` VALUES (331083, '其它区', 331000);
INSERT INTO `users_areainfo` VALUES (331100, '丽水', 330000);
INSERT INTO `users_areainfo` VALUES (331102, '莲都区', 331100);
INSERT INTO `users_areainfo` VALUES (331121, '青田县', 331100);
INSERT INTO `users_areainfo` VALUES (331122, '缙云县', 331100);
INSERT INTO `users_areainfo` VALUES (331123, '遂昌县', 331100);
INSERT INTO `users_areainfo` VALUES (331124, '松阳县', 331100);
INSERT INTO `users_areainfo` VALUES (331125, '云和县', 331100);
INSERT INTO `users_areainfo` VALUES (331126, '庆元县', 331100);
INSERT INTO `users_areainfo` VALUES (331127, '景宁畲族自治县', 331100);
INSERT INTO `users_areainfo` VALUES (331181, '龙泉市', 331100);
INSERT INTO `users_areainfo` VALUES (331182, '其它区', 331100);
INSERT INTO `users_areainfo` VALUES (340000, '安徽', 0);
INSERT INTO `users_areainfo` VALUES (340100, '合肥', 340000);
INSERT INTO `users_areainfo` VALUES (340102, '瑶海区', 340100);
INSERT INTO `users_areainfo` VALUES (340103, '庐阳区', 340100);
INSERT INTO `users_areainfo` VALUES (340104, '蜀山区', 340100);
INSERT INTO `users_areainfo` VALUES (340111, '包河区', 340100);
INSERT INTO `users_areainfo` VALUES (340121, '长丰县', 340100);
INSERT INTO `users_areainfo` VALUES (340122, '肥东县', 340100);
INSERT INTO `users_areainfo` VALUES (340123, '肥西县', 340100);
INSERT INTO `users_areainfo` VALUES (340151, '高新区', 340100);
INSERT INTO `users_areainfo` VALUES (340191, '中区', 340100);
INSERT INTO `users_areainfo` VALUES (340192, '其它区', 340100);
INSERT INTO `users_areainfo` VALUES (340200, '芜湖', 340000);
INSERT INTO `users_areainfo` VALUES (340202, '镜湖区', 340200);
INSERT INTO `users_areainfo` VALUES (340203, '弋江区', 340200);
INSERT INTO `users_areainfo` VALUES (340207, '鸠江区', 340200);
INSERT INTO `users_areainfo` VALUES (340208, '三山区', 340200);
INSERT INTO `users_areainfo` VALUES (340221, '芜湖县', 340200);
INSERT INTO `users_areainfo` VALUES (340222, '繁昌县', 340200);
INSERT INTO `users_areainfo` VALUES (340223, '南陵县', 340200);
INSERT INTO `users_areainfo` VALUES (340224, '其它区', 340200);
INSERT INTO `users_areainfo` VALUES (340300, '蚌埠', 340000);
INSERT INTO `users_areainfo` VALUES (340302, '龙子湖区', 340300);
INSERT INTO `users_areainfo` VALUES (340303, '蚌山区', 340300);
INSERT INTO `users_areainfo` VALUES (340304, '禹会区', 340300);
INSERT INTO `users_areainfo` VALUES (340311, '淮上区', 340300);
INSERT INTO `users_areainfo` VALUES (340321, '怀远县', 340300);
INSERT INTO `users_areainfo` VALUES (340322, '五河县', 340300);
INSERT INTO `users_areainfo` VALUES (340323, '固镇县', 340300);
INSERT INTO `users_areainfo` VALUES (340324, '其它区', 340300);
INSERT INTO `users_areainfo` VALUES (340400, '淮南', 340000);
INSERT INTO `users_areainfo` VALUES (340402, '大通区', 340400);
INSERT INTO `users_areainfo` VALUES (340403, '田家庵区', 340400);
INSERT INTO `users_areainfo` VALUES (340404, '谢家集区', 340400);
INSERT INTO `users_areainfo` VALUES (340405, '八公山区', 340400);
INSERT INTO `users_areainfo` VALUES (340406, '潘集区', 340400);
INSERT INTO `users_areainfo` VALUES (340421, '凤台县', 340400);
INSERT INTO `users_areainfo` VALUES (340422, '其它区', 340400);
INSERT INTO `users_areainfo` VALUES (340500, '马鞍山', 340000);
INSERT INTO `users_areainfo` VALUES (340502, '金家庄区', 340500);
INSERT INTO `users_areainfo` VALUES (340503, '花山区', 340500);
INSERT INTO `users_areainfo` VALUES (340504, '雨山区', 340500);
INSERT INTO `users_areainfo` VALUES (340521, '当涂县', 340500);
INSERT INTO `users_areainfo` VALUES (340522, '其它区', 340500);
INSERT INTO `users_areainfo` VALUES (340600, '淮北', 340000);
INSERT INTO `users_areainfo` VALUES (340602, '杜集区', 340600);
INSERT INTO `users_areainfo` VALUES (340603, '相山区', 340600);
INSERT INTO `users_areainfo` VALUES (340604, '烈山区', 340600);
INSERT INTO `users_areainfo` VALUES (340621, '濉溪县', 340600);
INSERT INTO `users_areainfo` VALUES (340622, '其它区', 340600);
INSERT INTO `users_areainfo` VALUES (340700, '铜陵', 340000);
INSERT INTO `users_areainfo` VALUES (340702, '铜官山区', 340700);
INSERT INTO `users_areainfo` VALUES (340703, '狮子山区', 340700);
INSERT INTO `users_areainfo` VALUES (340711, '郊区', 340700);
INSERT INTO `users_areainfo` VALUES (340721, '铜陵县', 340700);
INSERT INTO `users_areainfo` VALUES (340722, '其它区', 340700);
INSERT INTO `users_areainfo` VALUES (340800, '安庆', 340000);
INSERT INTO `users_areainfo` VALUES (340802, '迎江区', 340800);
INSERT INTO `users_areainfo` VALUES (340803, '大观区', 340800);
INSERT INTO `users_areainfo` VALUES (340811, '宜秀区', 340800);
INSERT INTO `users_areainfo` VALUES (340822, '怀宁县', 340800);
INSERT INTO `users_areainfo` VALUES (340823, '枞阳县', 340800);
INSERT INTO `users_areainfo` VALUES (340824, '潜山县', 340800);
INSERT INTO `users_areainfo` VALUES (340825, '太湖县', 340800);
INSERT INTO `users_areainfo` VALUES (340826, '宿松县', 340800);
INSERT INTO `users_areainfo` VALUES (340827, '望江县', 340800);
INSERT INTO `users_areainfo` VALUES (340828, '岳西县', 340800);
INSERT INTO `users_areainfo` VALUES (340881, '桐城市', 340800);
INSERT INTO `users_areainfo` VALUES (340882, '其它区', 340800);
INSERT INTO `users_areainfo` VALUES (341000, '黄山', 340000);
INSERT INTO `users_areainfo` VALUES (341002, '屯溪区', 341000);
INSERT INTO `users_areainfo` VALUES (341003, '黄山区', 341000);
INSERT INTO `users_areainfo` VALUES (341004, '徽州区', 341000);
INSERT INTO `users_areainfo` VALUES (341021, '歙县', 341000);
INSERT INTO `users_areainfo` VALUES (341022, '休宁县', 341000);
INSERT INTO `users_areainfo` VALUES (341023, '黟县', 341000);
INSERT INTO `users_areainfo` VALUES (341024, '祁门县', 341000);
INSERT INTO `users_areainfo` VALUES (341025, '其它区', 341000);
INSERT INTO `users_areainfo` VALUES (341100, '滁州', 340000);
INSERT INTO `users_areainfo` VALUES (341102, '琅琊区', 341100);
INSERT INTO `users_areainfo` VALUES (341103, '南谯区', 341100);
INSERT INTO `users_areainfo` VALUES (341122, '来安县', 341100);
INSERT INTO `users_areainfo` VALUES (341124, '全椒县', 341100);
INSERT INTO `users_areainfo` VALUES (341125, '定远县', 341100);
INSERT INTO `users_areainfo` VALUES (341126, '凤阳县', 341100);
INSERT INTO `users_areainfo` VALUES (341181, '天长市', 341100);
INSERT INTO `users_areainfo` VALUES (341182, '明光市', 341100);
INSERT INTO `users_areainfo` VALUES (341183, '其它区', 341100);
INSERT INTO `users_areainfo` VALUES (341200, '阜阳', 340000);
INSERT INTO `users_areainfo` VALUES (341202, '颍州区', 341200);
INSERT INTO `users_areainfo` VALUES (341203, '颍东区', 341200);
INSERT INTO `users_areainfo` VALUES (341204, '颍泉区', 341200);
INSERT INTO `users_areainfo` VALUES (341221, '临泉县', 341200);
INSERT INTO `users_areainfo` VALUES (341222, '太和县', 341200);
INSERT INTO `users_areainfo` VALUES (341225, '阜南县', 341200);
INSERT INTO `users_areainfo` VALUES (341226, '颍上县', 341200);
INSERT INTO `users_areainfo` VALUES (341282, '界首市', 341200);
INSERT INTO `users_areainfo` VALUES (341283, '其它区', 341200);
INSERT INTO `users_areainfo` VALUES (341300, '宿州', 340000);
INSERT INTO `users_areainfo` VALUES (341302, '埇桥区', 341300);
INSERT INTO `users_areainfo` VALUES (341321, '砀山县', 341300);
INSERT INTO `users_areainfo` VALUES (341322, '萧县', 341300);
INSERT INTO `users_areainfo` VALUES (341323, '灵璧县', 341300);
INSERT INTO `users_areainfo` VALUES (341324, '泗县', 341300);
INSERT INTO `users_areainfo` VALUES (341325, '其它区', 341300);
INSERT INTO `users_areainfo` VALUES (341400, '巢湖', 340000);
INSERT INTO `users_areainfo` VALUES (341402, '居巢区', 341400);
INSERT INTO `users_areainfo` VALUES (341421, '庐江县', 341400);
INSERT INTO `users_areainfo` VALUES (341422, '无为县', 341400);
INSERT INTO `users_areainfo` VALUES (341423, '含山县', 341400);
INSERT INTO `users_areainfo` VALUES (341424, '和县', 341400);
INSERT INTO `users_areainfo` VALUES (341425, '其它区', 341400);
INSERT INTO `users_areainfo` VALUES (341500, '六安', 340000);
INSERT INTO `users_areainfo` VALUES (341502, '金安区', 341500);
INSERT INTO `users_areainfo` VALUES (341503, '裕安区', 341500);
INSERT INTO `users_areainfo` VALUES (341521, '寿县', 341500);
INSERT INTO `users_areainfo` VALUES (341522, '霍邱县', 341500);
INSERT INTO `users_areainfo` VALUES (341523, '舒城县', 341500);
INSERT INTO `users_areainfo` VALUES (341524, '金寨县', 341500);
INSERT INTO `users_areainfo` VALUES (341525, '霍山县', 341500);
INSERT INTO `users_areainfo` VALUES (341526, '其它区', 341500);
INSERT INTO `users_areainfo` VALUES (341600, '亳州', 340000);
INSERT INTO `users_areainfo` VALUES (341602, '谯城区', 341600);
INSERT INTO `users_areainfo` VALUES (341621, '涡阳县', 341600);
INSERT INTO `users_areainfo` VALUES (341622, '蒙城县', 341600);
INSERT INTO `users_areainfo` VALUES (341623, '利辛县', 341600);
INSERT INTO `users_areainfo` VALUES (341624, '其它区', 341600);
INSERT INTO `users_areainfo` VALUES (341700, '池州', 340000);
INSERT INTO `users_areainfo` VALUES (341702, '贵池区', 341700);
INSERT INTO `users_areainfo` VALUES (341721, '东至县', 341700);
INSERT INTO `users_areainfo` VALUES (341722, '石台县', 341700);
INSERT INTO `users_areainfo` VALUES (341723, '青阳县', 341700);
INSERT INTO `users_areainfo` VALUES (341724, '其它区', 341700);
INSERT INTO `users_areainfo` VALUES (341800, '宣城', 340000);
INSERT INTO `users_areainfo` VALUES (341802, '宣州区', 341800);
INSERT INTO `users_areainfo` VALUES (341821, '郎溪县', 341800);
INSERT INTO `users_areainfo` VALUES (341822, '广德县', 341800);
INSERT INTO `users_areainfo` VALUES (341823, '泾县', 341800);
INSERT INTO `users_areainfo` VALUES (341824, '绩溪县', 341800);
INSERT INTO `users_areainfo` VALUES (341825, '旌德县', 341800);
INSERT INTO `users_areainfo` VALUES (341881, '宁国市', 341800);
INSERT INTO `users_areainfo` VALUES (341882, '其它区', 341800);
INSERT INTO `users_areainfo` VALUES (350000, '福建', 0);
INSERT INTO `users_areainfo` VALUES (350100, '福州', 350000);
INSERT INTO `users_areainfo` VALUES (350102, '鼓楼区', 350100);
INSERT INTO `users_areainfo` VALUES (350103, '台江区', 350100);
INSERT INTO `users_areainfo` VALUES (350104, '仓山区', 350100);
INSERT INTO `users_areainfo` VALUES (350105, '马尾区', 350100);
INSERT INTO `users_areainfo` VALUES (350111, '晋安区', 350100);
INSERT INTO `users_areainfo` VALUES (350121, '闽侯县', 350100);
INSERT INTO `users_areainfo` VALUES (350122, '连江县', 350100);
INSERT INTO `users_areainfo` VALUES (350123, '罗源县', 350100);
INSERT INTO `users_areainfo` VALUES (350124, '闽清县', 350100);
INSERT INTO `users_areainfo` VALUES (350125, '永泰县', 350100);
INSERT INTO `users_areainfo` VALUES (350128, '平潭县', 350100);
INSERT INTO `users_areainfo` VALUES (350181, '福清市', 350100);
INSERT INTO `users_areainfo` VALUES (350182, '长乐市', 350100);
INSERT INTO `users_areainfo` VALUES (350183, '其它区', 350100);
INSERT INTO `users_areainfo` VALUES (350200, '厦门', 350000);
INSERT INTO `users_areainfo` VALUES (350203, '思明区', 350200);
INSERT INTO `users_areainfo` VALUES (350205, '海沧区', 350200);
INSERT INTO `users_areainfo` VALUES (350206, '湖里区', 350200);
INSERT INTO `users_areainfo` VALUES (350211, '集美区', 350200);
INSERT INTO `users_areainfo` VALUES (350212, '同安区', 350200);
INSERT INTO `users_areainfo` VALUES (350213, '翔安区', 350200);
INSERT INTO `users_areainfo` VALUES (350214, '其它区', 350200);
INSERT INTO `users_areainfo` VALUES (350300, '莆田', 350000);
INSERT INTO `users_areainfo` VALUES (350302, '城厢区', 350300);
INSERT INTO `users_areainfo` VALUES (350303, '涵江区', 350300);
INSERT INTO `users_areainfo` VALUES (350304, '荔城区', 350300);
INSERT INTO `users_areainfo` VALUES (350305, '秀屿区', 350300);
INSERT INTO `users_areainfo` VALUES (350322, '仙游县', 350300);
INSERT INTO `users_areainfo` VALUES (350323, '其它区', 350300);
INSERT INTO `users_areainfo` VALUES (350400, '三明', 350000);
INSERT INTO `users_areainfo` VALUES (350402, '梅列区', 350400);
INSERT INTO `users_areainfo` VALUES (350403, '三元区', 350400);
INSERT INTO `users_areainfo` VALUES (350421, '明溪县', 350400);
INSERT INTO `users_areainfo` VALUES (350423, '清流县', 350400);
INSERT INTO `users_areainfo` VALUES (350424, '宁化县', 350400);
INSERT INTO `users_areainfo` VALUES (350425, '大田县', 350400);
INSERT INTO `users_areainfo` VALUES (350426, '尤溪县', 350400);
INSERT INTO `users_areainfo` VALUES (350427, '沙县', 350400);
INSERT INTO `users_areainfo` VALUES (350428, '将乐县', 350400);
INSERT INTO `users_areainfo` VALUES (350429, '泰宁县', 350400);
INSERT INTO `users_areainfo` VALUES (350430, '建宁县', 350400);
INSERT INTO `users_areainfo` VALUES (350481, '永安市', 350400);
INSERT INTO `users_areainfo` VALUES (350482, '其它区', 350400);
INSERT INTO `users_areainfo` VALUES (350500, '泉州', 350000);
INSERT INTO `users_areainfo` VALUES (350502, '鲤城区', 350500);
INSERT INTO `users_areainfo` VALUES (350503, '丰泽区', 350500);
INSERT INTO `users_areainfo` VALUES (350504, '洛江区', 350500);
INSERT INTO `users_areainfo` VALUES (350505, '泉港区', 350500);
INSERT INTO `users_areainfo` VALUES (350521, '惠安县', 350500);
INSERT INTO `users_areainfo` VALUES (350524, '安溪县', 350500);
INSERT INTO `users_areainfo` VALUES (350525, '永春县', 350500);
INSERT INTO `users_areainfo` VALUES (350526, '德化县', 350500);
INSERT INTO `users_areainfo` VALUES (350527, '金门县', 350500);
INSERT INTO `users_areainfo` VALUES (350581, '石狮市', 350500);
INSERT INTO `users_areainfo` VALUES (350582, '晋江市', 350500);
INSERT INTO `users_areainfo` VALUES (350583, '南安市', 350500);
INSERT INTO `users_areainfo` VALUES (350584, '其它区', 350500);
INSERT INTO `users_areainfo` VALUES (350600, '漳州', 350000);
INSERT INTO `users_areainfo` VALUES (350602, '芗城区', 350600);
INSERT INTO `users_areainfo` VALUES (350603, '龙文区', 350600);
INSERT INTO `users_areainfo` VALUES (350622, '云霄县', 350600);
INSERT INTO `users_areainfo` VALUES (350623, '漳浦县', 350600);
INSERT INTO `users_areainfo` VALUES (350624, '诏安县', 350600);
INSERT INTO `users_areainfo` VALUES (350625, '长泰县', 350600);
INSERT INTO `users_areainfo` VALUES (350626, '东山县', 350600);
INSERT INTO `users_areainfo` VALUES (350627, '南靖县', 350600);
INSERT INTO `users_areainfo` VALUES (350628, '平和县', 350600);
INSERT INTO `users_areainfo` VALUES (350629, '华安县', 350600);
INSERT INTO `users_areainfo` VALUES (350681, '龙海市', 350600);
INSERT INTO `users_areainfo` VALUES (350682, '其它区', 350600);
INSERT INTO `users_areainfo` VALUES (350700, '南平', 350000);
INSERT INTO `users_areainfo` VALUES (350702, '延平区', 350700);
INSERT INTO `users_areainfo` VALUES (350721, '顺昌县', 350700);
INSERT INTO `users_areainfo` VALUES (350722, '浦城县', 350700);
INSERT INTO `users_areainfo` VALUES (350723, '光泽县', 350700);
INSERT INTO `users_areainfo` VALUES (350724, '松溪县', 350700);
INSERT INTO `users_areainfo` VALUES (350725, '政和县', 350700);
INSERT INTO `users_areainfo` VALUES (350781, '邵武市', 350700);
INSERT INTO `users_areainfo` VALUES (350782, '武夷山市', 350700);
INSERT INTO `users_areainfo` VALUES (350783, '建瓯市', 350700);
INSERT INTO `users_areainfo` VALUES (350784, '建阳市', 350700);
INSERT INTO `users_areainfo` VALUES (350785, '其它区', 350700);
INSERT INTO `users_areainfo` VALUES (350800, '龙岩', 350000);
INSERT INTO `users_areainfo` VALUES (350802, '新罗区', 350800);
INSERT INTO `users_areainfo` VALUES (350821, '长汀县', 350800);
INSERT INTO `users_areainfo` VALUES (350822, '永定县', 350800);
INSERT INTO `users_areainfo` VALUES (350823, '上杭县', 350800);
INSERT INTO `users_areainfo` VALUES (350824, '武平县', 350800);
INSERT INTO `users_areainfo` VALUES (350825, '连城县', 350800);
INSERT INTO `users_areainfo` VALUES (350881, '漳平市', 350800);
INSERT INTO `users_areainfo` VALUES (350882, '其它区', 350800);
INSERT INTO `users_areainfo` VALUES (350900, '宁德', 350000);
INSERT INTO `users_areainfo` VALUES (350902, '蕉城区', 350900);
INSERT INTO `users_areainfo` VALUES (350921, '霞浦县', 350900);
INSERT INTO `users_areainfo` VALUES (350922, '古田县', 350900);
INSERT INTO `users_areainfo` VALUES (350923, '屏南县', 350900);
INSERT INTO `users_areainfo` VALUES (350924, '寿宁县', 350900);
INSERT INTO `users_areainfo` VALUES (350925, '周宁县', 350900);
INSERT INTO `users_areainfo` VALUES (350926, '柘荣县', 350900);
INSERT INTO `users_areainfo` VALUES (350981, '福安市', 350900);
INSERT INTO `users_areainfo` VALUES (350982, '福鼎市', 350900);
INSERT INTO `users_areainfo` VALUES (350983, '其它区', 350900);
INSERT INTO `users_areainfo` VALUES (360000, '江西', 0);
INSERT INTO `users_areainfo` VALUES (360100, '南昌', 360000);
INSERT INTO `users_areainfo` VALUES (360102, '东湖区', 360100);
INSERT INTO `users_areainfo` VALUES (360103, '西湖区', 360100);
INSERT INTO `users_areainfo` VALUES (360104, '青云谱区', 360100);
INSERT INTO `users_areainfo` VALUES (360105, '湾里区', 360100);
INSERT INTO `users_areainfo` VALUES (360111, '青山湖区', 360100);
INSERT INTO `users_areainfo` VALUES (360121, '南昌县', 360100);
INSERT INTO `users_areainfo` VALUES (360122, '新建县', 360100);
INSERT INTO `users_areainfo` VALUES (360123, '安义县', 360100);
INSERT INTO `users_areainfo` VALUES (360124, '进贤县', 360100);
INSERT INTO `users_areainfo` VALUES (360125, '红谷滩新区', 360100);
INSERT INTO `users_areainfo` VALUES (360126, '经济技术开发区', 360100);
INSERT INTO `users_areainfo` VALUES (360127, '昌北区', 360100);
INSERT INTO `users_areainfo` VALUES (360128, '其它区', 360100);
INSERT INTO `users_areainfo` VALUES (360200, '景德镇', 360000);
INSERT INTO `users_areainfo` VALUES (360202, '昌江区', 360200);
INSERT INTO `users_areainfo` VALUES (360203, '珠山区', 360200);
INSERT INTO `users_areainfo` VALUES (360222, '浮梁县', 360200);
INSERT INTO `users_areainfo` VALUES (360281, '乐平市', 360200);
INSERT INTO `users_areainfo` VALUES (360282, '其它区', 360200);
INSERT INTO `users_areainfo` VALUES (360300, '萍乡', 360000);
INSERT INTO `users_areainfo` VALUES (360302, '安源区', 360300);
INSERT INTO `users_areainfo` VALUES (360313, '湘东区', 360300);
INSERT INTO `users_areainfo` VALUES (360321, '莲花县', 360300);
INSERT INTO `users_areainfo` VALUES (360322, '上栗县', 360300);
INSERT INTO `users_areainfo` VALUES (360323, '芦溪县', 360300);
INSERT INTO `users_areainfo` VALUES (360324, '其它区', 360300);
INSERT INTO `users_areainfo` VALUES (360400, '九江', 360000);
INSERT INTO `users_areainfo` VALUES (360402, '庐山区', 360400);
INSERT INTO `users_areainfo` VALUES (360403, '浔阳区', 360400);
INSERT INTO `users_areainfo` VALUES (360421, '九江县', 360400);
INSERT INTO `users_areainfo` VALUES (360423, '武宁县', 360400);
INSERT INTO `users_areainfo` VALUES (360424, '修水县', 360400);
INSERT INTO `users_areainfo` VALUES (360425, '永修县', 360400);
INSERT INTO `users_areainfo` VALUES (360426, '德安县', 360400);
INSERT INTO `users_areainfo` VALUES (360427, '星子县', 360400);
INSERT INTO `users_areainfo` VALUES (360428, '都昌县', 360400);
INSERT INTO `users_areainfo` VALUES (360429, '湖口县', 360400);
INSERT INTO `users_areainfo` VALUES (360430, '彭泽县', 360400);
INSERT INTO `users_areainfo` VALUES (360481, '瑞昌市', 360400);
INSERT INTO `users_areainfo` VALUES (360482, '其它区', 360400);
INSERT INTO `users_areainfo` VALUES (360500, '新余', 360000);
INSERT INTO `users_areainfo` VALUES (360502, '渝水区', 360500);
INSERT INTO `users_areainfo` VALUES (360521, '分宜县', 360500);
INSERT INTO `users_areainfo` VALUES (360522, '其它区', 360500);
INSERT INTO `users_areainfo` VALUES (360600, '鹰潭', 360000);
INSERT INTO `users_areainfo` VALUES (360602, '月湖区', 360600);
INSERT INTO `users_areainfo` VALUES (360622, '余江县', 360600);
INSERT INTO `users_areainfo` VALUES (360681, '贵溪市', 360600);
INSERT INTO `users_areainfo` VALUES (360682, '其它区', 360600);
INSERT INTO `users_areainfo` VALUES (360700, '赣州', 360000);
INSERT INTO `users_areainfo` VALUES (360702, '章贡区', 360700);
INSERT INTO `users_areainfo` VALUES (360721, '赣县', 360700);
INSERT INTO `users_areainfo` VALUES (360722, '信丰县', 360700);
INSERT INTO `users_areainfo` VALUES (360723, '大余县', 360700);
INSERT INTO `users_areainfo` VALUES (360724, '上犹县', 360700);
INSERT INTO `users_areainfo` VALUES (360725, '崇义县', 360700);
INSERT INTO `users_areainfo` VALUES (360726, '安远县', 360700);
INSERT INTO `users_areainfo` VALUES (360727, '龙南县', 360700);
INSERT INTO `users_areainfo` VALUES (360728, '定南县', 360700);
INSERT INTO `users_areainfo` VALUES (360729, '全南县', 360700);
INSERT INTO `users_areainfo` VALUES (360730, '宁都县', 360700);
INSERT INTO `users_areainfo` VALUES (360731, '于都县', 360700);
INSERT INTO `users_areainfo` VALUES (360732, '兴国县', 360700);
INSERT INTO `users_areainfo` VALUES (360733, '会昌县', 360700);
INSERT INTO `users_areainfo` VALUES (360734, '寻乌县', 360700);
INSERT INTO `users_areainfo` VALUES (360735, '石城县', 360700);
INSERT INTO `users_areainfo` VALUES (360751, '黄金区', 360700);
INSERT INTO `users_areainfo` VALUES (360781, '瑞金市', 360700);
INSERT INTO `users_areainfo` VALUES (360782, '南康市', 360700);
INSERT INTO `users_areainfo` VALUES (360783, '其它区', 360700);
INSERT INTO `users_areainfo` VALUES (360800, '吉安', 360000);
INSERT INTO `users_areainfo` VALUES (360802, '吉州区', 360800);
INSERT INTO `users_areainfo` VALUES (360803, '青原区', 360800);
INSERT INTO `users_areainfo` VALUES (360821, '吉安县', 360800);
INSERT INTO `users_areainfo` VALUES (360822, '吉水县', 360800);
INSERT INTO `users_areainfo` VALUES (360823, '峡江县', 360800);
INSERT INTO `users_areainfo` VALUES (360824, '新干县', 360800);
INSERT INTO `users_areainfo` VALUES (360825, '永丰县', 360800);
INSERT INTO `users_areainfo` VALUES (360826, '泰和县', 360800);
INSERT INTO `users_areainfo` VALUES (360827, '遂川县', 360800);
INSERT INTO `users_areainfo` VALUES (360828, '万安县', 360800);
INSERT INTO `users_areainfo` VALUES (360829, '安福县', 360800);
INSERT INTO `users_areainfo` VALUES (360830, '永新县', 360800);
INSERT INTO `users_areainfo` VALUES (360881, '井冈山市', 360800);
INSERT INTO `users_areainfo` VALUES (360882, '其它区', 360800);
INSERT INTO `users_areainfo` VALUES (360900, '宜春', 360000);
INSERT INTO `users_areainfo` VALUES (360902, '袁州区', 360900);
INSERT INTO `users_areainfo` VALUES (360921, '奉新县', 360900);
INSERT INTO `users_areainfo` VALUES (360922, '万载县', 360900);
INSERT INTO `users_areainfo` VALUES (360923, '上高县', 360900);
INSERT INTO `users_areainfo` VALUES (360924, '宜丰县', 360900);
INSERT INTO `users_areainfo` VALUES (360925, '靖安县', 360900);
INSERT INTO `users_areainfo` VALUES (360926, '铜鼓县', 360900);
INSERT INTO `users_areainfo` VALUES (360981, '丰城市', 360900);
INSERT INTO `users_areainfo` VALUES (360982, '樟树市', 360900);
INSERT INTO `users_areainfo` VALUES (360983, '高安市', 360900);
INSERT INTO `users_areainfo` VALUES (360984, '其它区', 360900);
INSERT INTO `users_areainfo` VALUES (361000, '抚州', 360000);
INSERT INTO `users_areainfo` VALUES (361002, '临川区', 361000);
INSERT INTO `users_areainfo` VALUES (361021, '南城县', 361000);
INSERT INTO `users_areainfo` VALUES (361022, '黎川县', 361000);
INSERT INTO `users_areainfo` VALUES (361023, '南丰县', 361000);
INSERT INTO `users_areainfo` VALUES (361024, '崇仁县', 361000);
INSERT INTO `users_areainfo` VALUES (361025, '乐安县', 361000);
INSERT INTO `users_areainfo` VALUES (361026, '宜黄县', 361000);
INSERT INTO `users_areainfo` VALUES (361027, '金溪县', 361000);
INSERT INTO `users_areainfo` VALUES (361028, '资溪县', 361000);
INSERT INTO `users_areainfo` VALUES (361029, '东乡县', 361000);
INSERT INTO `users_areainfo` VALUES (361030, '广昌县', 361000);
INSERT INTO `users_areainfo` VALUES (361031, '其它区', 361000);
INSERT INTO `users_areainfo` VALUES (361100, '上饶', 360000);
INSERT INTO `users_areainfo` VALUES (361102, '信州区', 361100);
INSERT INTO `users_areainfo` VALUES (361121, '上饶县', 361100);
INSERT INTO `users_areainfo` VALUES (361122, '广丰县', 361100);
INSERT INTO `users_areainfo` VALUES (361123, '玉山县', 361100);
INSERT INTO `users_areainfo` VALUES (361124, '铅山县', 361100);
INSERT INTO `users_areainfo` VALUES (361125, '横峰县', 361100);
INSERT INTO `users_areainfo` VALUES (361126, '弋阳县', 361100);
INSERT INTO `users_areainfo` VALUES (361127, '余干县', 361100);
INSERT INTO `users_areainfo` VALUES (361128, '鄱阳县', 361100);
INSERT INTO `users_areainfo` VALUES (361129, '万年县', 361100);
INSERT INTO `users_areainfo` VALUES (361130, '婺源县', 361100);
INSERT INTO `users_areainfo` VALUES (361181, '德兴市', 361100);
INSERT INTO `users_areainfo` VALUES (361182, '其它区', 361100);
INSERT INTO `users_areainfo` VALUES (370000, '山东', 0);
INSERT INTO `users_areainfo` VALUES (370100, '济南', 370000);
INSERT INTO `users_areainfo` VALUES (370102, '历下区', 370100);
INSERT INTO `users_areainfo` VALUES (370103, '市中区', 370100);
INSERT INTO `users_areainfo` VALUES (370104, '槐荫区', 370100);
INSERT INTO `users_areainfo` VALUES (370105, '天桥区', 370100);
INSERT INTO `users_areainfo` VALUES (370112, '历城区', 370100);
INSERT INTO `users_areainfo` VALUES (370113, '长清区', 370100);
INSERT INTO `users_areainfo` VALUES (370124, '平阴县', 370100);
INSERT INTO `users_areainfo` VALUES (370125, '济阳县', 370100);
INSERT INTO `users_areainfo` VALUES (370126, '商河县', 370100);
INSERT INTO `users_areainfo` VALUES (370181, '章丘市', 370100);
INSERT INTO `users_areainfo` VALUES (370182, '其它区', 370100);
INSERT INTO `users_areainfo` VALUES (370200, '青岛', 370000);
INSERT INTO `users_areainfo` VALUES (370202, '市南区', 370200);
INSERT INTO `users_areainfo` VALUES (370203, '市北区', 370200);
INSERT INTO `users_areainfo` VALUES (370205, '四方区', 370200);
INSERT INTO `users_areainfo` VALUES (370211, '黄岛区', 370200);
INSERT INTO `users_areainfo` VALUES (370212, '崂山区', 370200);
INSERT INTO `users_areainfo` VALUES (370213, '李沧区', 370200);
INSERT INTO `users_areainfo` VALUES (370214, '城阳区', 370200);
INSERT INTO `users_areainfo` VALUES (370251, '开发区', 370200);
INSERT INTO `users_areainfo` VALUES (370281, '胶州市', 370200);
INSERT INTO `users_areainfo` VALUES (370282, '即墨市', 370200);
INSERT INTO `users_areainfo` VALUES (370283, '平度市', 370200);
INSERT INTO `users_areainfo` VALUES (370284, '胶南市', 370200);
INSERT INTO `users_areainfo` VALUES (370285, '莱西市', 370200);
INSERT INTO `users_areainfo` VALUES (370286, '其它区', 370200);
INSERT INTO `users_areainfo` VALUES (370300, '淄博', 370000);
INSERT INTO `users_areainfo` VALUES (370302, '淄川区', 370300);
INSERT INTO `users_areainfo` VALUES (370303, '张店区', 370300);
INSERT INTO `users_areainfo` VALUES (370304, '博山区', 370300);
INSERT INTO `users_areainfo` VALUES (370305, '临淄区', 370300);
INSERT INTO `users_areainfo` VALUES (370306, '周村区', 370300);
INSERT INTO `users_areainfo` VALUES (370321, '桓台县', 370300);
INSERT INTO `users_areainfo` VALUES (370322, '高青县', 370300);
INSERT INTO `users_areainfo` VALUES (370323, '沂源县', 370300);
INSERT INTO `users_areainfo` VALUES (370324, '其它区', 370300);
INSERT INTO `users_areainfo` VALUES (370400, '枣庄', 370000);
INSERT INTO `users_areainfo` VALUES (370402, '市中区', 370400);
INSERT INTO `users_areainfo` VALUES (370403, '薛城区', 370400);
INSERT INTO `users_areainfo` VALUES (370404, '峄城区', 370400);
INSERT INTO `users_areainfo` VALUES (370405, '台儿庄区', 370400);
INSERT INTO `users_areainfo` VALUES (370406, '山亭区', 370400);
INSERT INTO `users_areainfo` VALUES (370481, '滕州市', 370400);
INSERT INTO `users_areainfo` VALUES (370482, '其它区', 370400);
INSERT INTO `users_areainfo` VALUES (370500, '东营', 370000);
INSERT INTO `users_areainfo` VALUES (370502, '东营区', 370500);
INSERT INTO `users_areainfo` VALUES (370503, '河口区', 370500);
INSERT INTO `users_areainfo` VALUES (370521, '垦利县', 370500);
INSERT INTO `users_areainfo` VALUES (370522, '利津县', 370500);
INSERT INTO `users_areainfo` VALUES (370523, '广饶县', 370500);
INSERT INTO `users_areainfo` VALUES (370589, '西城区', 370500);
INSERT INTO `users_areainfo` VALUES (370590, '东城区', 370500);
INSERT INTO `users_areainfo` VALUES (370591, '其它区', 370500);
INSERT INTO `users_areainfo` VALUES (370600, '烟台', 370000);
INSERT INTO `users_areainfo` VALUES (370602, '芝罘区', 370600);
INSERT INTO `users_areainfo` VALUES (370611, '福山区', 370600);
INSERT INTO `users_areainfo` VALUES (370612, '牟平区', 370600);
INSERT INTO `users_areainfo` VALUES (370613, '莱山区', 370600);
INSERT INTO `users_areainfo` VALUES (370634, '长岛县', 370600);
INSERT INTO `users_areainfo` VALUES (370681, '龙口市', 370600);
INSERT INTO `users_areainfo` VALUES (370682, '莱阳市', 370600);
INSERT INTO `users_areainfo` VALUES (370683, '莱州市', 370600);
INSERT INTO `users_areainfo` VALUES (370684, '蓬莱市', 370600);
INSERT INTO `users_areainfo` VALUES (370685, '招远市', 370600);
INSERT INTO `users_areainfo` VALUES (370686, '栖霞市', 370600);
INSERT INTO `users_areainfo` VALUES (370687, '海阳市', 370600);
INSERT INTO `users_areainfo` VALUES (370688, '其它区', 370600);
INSERT INTO `users_areainfo` VALUES (370700, '潍坊', 370000);
INSERT INTO `users_areainfo` VALUES (370702, '潍城区', 370700);
INSERT INTO `users_areainfo` VALUES (370703, '寒亭区', 370700);
INSERT INTO `users_areainfo` VALUES (370704, '坊子区', 370700);
INSERT INTO `users_areainfo` VALUES (370705, '奎文区', 370700);
INSERT INTO `users_areainfo` VALUES (370724, '临朐县', 370700);
INSERT INTO `users_areainfo` VALUES (370725, '昌乐县', 370700);
INSERT INTO `users_areainfo` VALUES (370751, '开发区', 370700);
INSERT INTO `users_areainfo` VALUES (370781, '青州市', 370700);
INSERT INTO `users_areainfo` VALUES (370782, '诸城市', 370700);
INSERT INTO `users_areainfo` VALUES (370783, '寿光市', 370700);
INSERT INTO `users_areainfo` VALUES (370784, '安丘市', 370700);
INSERT INTO `users_areainfo` VALUES (370785, '高密市', 370700);
INSERT INTO `users_areainfo` VALUES (370786, '昌邑市', 370700);
INSERT INTO `users_areainfo` VALUES (370787, '其它区', 370700);
INSERT INTO `users_areainfo` VALUES (370800, '济宁', 370000);
INSERT INTO `users_areainfo` VALUES (370802, '市中区', 370800);
INSERT INTO `users_areainfo` VALUES (370811, '任城区', 370800);
INSERT INTO `users_areainfo` VALUES (370826, '微山县', 370800);
INSERT INTO `users_areainfo` VALUES (370827, '鱼台县', 370800);
INSERT INTO `users_areainfo` VALUES (370828, '金乡县', 370800);
INSERT INTO `users_areainfo` VALUES (370829, '嘉祥县', 370800);
INSERT INTO `users_areainfo` VALUES (370830, '汶上县', 370800);
INSERT INTO `users_areainfo` VALUES (370831, '泗水县', 370800);
INSERT INTO `users_areainfo` VALUES (370832, '梁山县', 370800);
INSERT INTO `users_areainfo` VALUES (370881, '曲阜市', 370800);
INSERT INTO `users_areainfo` VALUES (370882, '兖州市', 370800);
INSERT INTO `users_areainfo` VALUES (370883, '邹城市', 370800);
INSERT INTO `users_areainfo` VALUES (370884, '其它区', 370800);
INSERT INTO `users_areainfo` VALUES (370900, '泰安', 370000);
INSERT INTO `users_areainfo` VALUES (370902, '泰山区', 370900);
INSERT INTO `users_areainfo` VALUES (370903, '岱岳区', 370900);
INSERT INTO `users_areainfo` VALUES (370921, '宁阳县', 370900);
INSERT INTO `users_areainfo` VALUES (370923, '东平县', 370900);
INSERT INTO `users_areainfo` VALUES (370982, '新泰市', 370900);
INSERT INTO `users_areainfo` VALUES (370983, '肥城市', 370900);
INSERT INTO `users_areainfo` VALUES (370984, '其它区', 370900);
INSERT INTO `users_areainfo` VALUES (371000, '威海', 370000);
INSERT INTO `users_areainfo` VALUES (371002, '环翠区', 371000);
INSERT INTO `users_areainfo` VALUES (371081, '文登市', 371000);
INSERT INTO `users_areainfo` VALUES (371082, '荣成市', 371000);
INSERT INTO `users_areainfo` VALUES (371083, '乳山市', 371000);
INSERT INTO `users_areainfo` VALUES (371084, '其它区', 371000);
INSERT INTO `users_areainfo` VALUES (371100, '日照', 370000);
INSERT INTO `users_areainfo` VALUES (371102, '东港区', 371100);
INSERT INTO `users_areainfo` VALUES (371103, '岚山区', 371100);
INSERT INTO `users_areainfo` VALUES (371121, '五莲县', 371100);
INSERT INTO `users_areainfo` VALUES (371122, '莒县', 371100);
INSERT INTO `users_areainfo` VALUES (371123, '其它区', 371100);
INSERT INTO `users_areainfo` VALUES (371200, '莱芜', 370000);
INSERT INTO `users_areainfo` VALUES (371202, '莱城区', 371200);
INSERT INTO `users_areainfo` VALUES (371203, '钢城区', 371200);
INSERT INTO `users_areainfo` VALUES (371204, '其它区', 371200);
INSERT INTO `users_areainfo` VALUES (371300, '临沂', 370000);
INSERT INTO `users_areainfo` VALUES (371302, '兰山区', 371300);
INSERT INTO `users_areainfo` VALUES (371311, '罗庄区', 371300);
INSERT INTO `users_areainfo` VALUES (371312, '河东区', 371300);
INSERT INTO `users_areainfo` VALUES (371321, '沂南县', 371300);
INSERT INTO `users_areainfo` VALUES (371322, '郯城县', 371300);
INSERT INTO `users_areainfo` VALUES (371323, '沂水县', 371300);
INSERT INTO `users_areainfo` VALUES (371324, '苍山县', 371300);
INSERT INTO `users_areainfo` VALUES (371325, '费县', 371300);
INSERT INTO `users_areainfo` VALUES (371326, '平邑县', 371300);
INSERT INTO `users_areainfo` VALUES (371327, '莒南县', 371300);
INSERT INTO `users_areainfo` VALUES (371328, '蒙阴县', 371300);
INSERT INTO `users_areainfo` VALUES (371329, '临沭县', 371300);
INSERT INTO `users_areainfo` VALUES (371330, '其它区', 371300);
INSERT INTO `users_areainfo` VALUES (371400, '德州', 370000);
INSERT INTO `users_areainfo` VALUES (371402, '德城区', 371400);
INSERT INTO `users_areainfo` VALUES (371421, '陵县', 371400);
INSERT INTO `users_areainfo` VALUES (371422, '宁津县', 371400);
INSERT INTO `users_areainfo` VALUES (371423, '庆云县', 371400);
INSERT INTO `users_areainfo` VALUES (371424, '临邑县', 371400);
INSERT INTO `users_areainfo` VALUES (371425, '齐河县', 371400);
INSERT INTO `users_areainfo` VALUES (371426, '平原县', 371400);
INSERT INTO `users_areainfo` VALUES (371427, '夏津县', 371400);
INSERT INTO `users_areainfo` VALUES (371428, '武城县', 371400);
INSERT INTO `users_areainfo` VALUES (371451, '开发区', 371400);
INSERT INTO `users_areainfo` VALUES (371481, '乐陵市', 371400);
INSERT INTO `users_areainfo` VALUES (371482, '禹城市', 371400);
INSERT INTO `users_areainfo` VALUES (371483, '其它区', 371400);
INSERT INTO `users_areainfo` VALUES (371500, '聊城', 370000);
INSERT INTO `users_areainfo` VALUES (371502, '东昌府区', 371500);
INSERT INTO `users_areainfo` VALUES (371521, '阳谷县', 371500);
INSERT INTO `users_areainfo` VALUES (371522, '莘县', 371500);
INSERT INTO `users_areainfo` VALUES (371523, '茌平县', 371500);
INSERT INTO `users_areainfo` VALUES (371524, '东阿县', 371500);
INSERT INTO `users_areainfo` VALUES (371525, '冠县', 371500);
INSERT INTO `users_areainfo` VALUES (371526, '高唐县', 371500);
INSERT INTO `users_areainfo` VALUES (371581, '临清市', 371500);
INSERT INTO `users_areainfo` VALUES (371582, '其它区', 371500);
INSERT INTO `users_areainfo` VALUES (371600, '滨州', 370000);
INSERT INTO `users_areainfo` VALUES (371602, '滨城区', 371600);
INSERT INTO `users_areainfo` VALUES (371621, '惠民县', 371600);
INSERT INTO `users_areainfo` VALUES (371622, '阳信县', 371600);
INSERT INTO `users_areainfo` VALUES (371623, '无棣县', 371600);
INSERT INTO `users_areainfo` VALUES (371624, '沾化县', 371600);
INSERT INTO `users_areainfo` VALUES (371625, '博兴县', 371600);
INSERT INTO `users_areainfo` VALUES (371626, '邹平县', 371600);
INSERT INTO `users_areainfo` VALUES (371627, '其它区', 371600);
INSERT INTO `users_areainfo` VALUES (371700, '菏泽', 370000);
INSERT INTO `users_areainfo` VALUES (371702, '牡丹区', 371700);
INSERT INTO `users_areainfo` VALUES (371721, '曹县', 371700);
INSERT INTO `users_areainfo` VALUES (371722, '单县', 371700);
INSERT INTO `users_areainfo` VALUES (371723, '成武县', 371700);
INSERT INTO `users_areainfo` VALUES (371724, '巨野县', 371700);
INSERT INTO `users_areainfo` VALUES (371725, '郓城县', 371700);
INSERT INTO `users_areainfo` VALUES (371726, '鄄城县', 371700);
INSERT INTO `users_areainfo` VALUES (371727, '定陶县', 371700);
INSERT INTO `users_areainfo` VALUES (371728, '东明县', 371700);
INSERT INTO `users_areainfo` VALUES (371729, '其它区', 371700);
INSERT INTO `users_areainfo` VALUES (410000, '河南', 0);
INSERT INTO `users_areainfo` VALUES (410100, '郑州', 410000);
INSERT INTO `users_areainfo` VALUES (410102, '中原区', 410100);
INSERT INTO `users_areainfo` VALUES (410103, '二七区', 410100);
INSERT INTO `users_areainfo` VALUES (410104, '管城回族区', 410100);
INSERT INTO `users_areainfo` VALUES (410105, '金水区', 410100);
INSERT INTO `users_areainfo` VALUES (410106, '上街区', 410100);
INSERT INTO `users_areainfo` VALUES (410108, '惠济区', 410100);
INSERT INTO `users_areainfo` VALUES (410122, '中牟县', 410100);
INSERT INTO `users_areainfo` VALUES (410181, '巩义市', 410100);
INSERT INTO `users_areainfo` VALUES (410182, '荥阳市', 410100);
INSERT INTO `users_areainfo` VALUES (410183, '新密市', 410100);
INSERT INTO `users_areainfo` VALUES (410184, '新郑市', 410100);
INSERT INTO `users_areainfo` VALUES (410185, '登封市', 410100);
INSERT INTO `users_areainfo` VALUES (410186, '郑东新区', 410100);
INSERT INTO `users_areainfo` VALUES (410187, '高新区', 410100);
INSERT INTO `users_areainfo` VALUES (410188, '其它区', 410100);
INSERT INTO `users_areainfo` VALUES (410200, '开封', 410000);
INSERT INTO `users_areainfo` VALUES (410202, '龙亭区', 410200);
INSERT INTO `users_areainfo` VALUES (410203, '顺河回族区', 410200);
INSERT INTO `users_areainfo` VALUES (410204, '鼓楼区', 410200);
INSERT INTO `users_areainfo` VALUES (410205, '禹王台区', 410200);
INSERT INTO `users_areainfo` VALUES (410211, '金明区', 410200);
INSERT INTO `users_areainfo` VALUES (410221, '杞县', 410200);
INSERT INTO `users_areainfo` VALUES (410222, '通许县', 410200);
INSERT INTO `users_areainfo` VALUES (410223, '尉氏县', 410200);
INSERT INTO `users_areainfo` VALUES (410224, '开封县', 410200);
INSERT INTO `users_areainfo` VALUES (410225, '兰考县', 410200);
INSERT INTO `users_areainfo` VALUES (410226, '其它区', 410200);
INSERT INTO `users_areainfo` VALUES (410300, '洛阳', 410000);
INSERT INTO `users_areainfo` VALUES (410302, '老城区', 410300);
INSERT INTO `users_areainfo` VALUES (410303, '西工区', 410300);
INSERT INTO `users_areainfo` VALUES (410304, '廛河回族区', 410300);
INSERT INTO `users_areainfo` VALUES (410305, '涧西区', 410300);
INSERT INTO `users_areainfo` VALUES (410306, '吉利区', 410300);
INSERT INTO `users_areainfo` VALUES (410307, '洛龙区', 410300);
INSERT INTO `users_areainfo` VALUES (410322, '孟津县', 410300);
INSERT INTO `users_areainfo` VALUES (410323, '新安县', 410300);
INSERT INTO `users_areainfo` VALUES (410324, '栾川县', 410300);
INSERT INTO `users_areainfo` VALUES (410325, '嵩县', 410300);
INSERT INTO `users_areainfo` VALUES (410326, '汝阳县', 410300);
INSERT INTO `users_areainfo` VALUES (410327, '宜阳县', 410300);
INSERT INTO `users_areainfo` VALUES (410328, '洛宁县', 410300);
INSERT INTO `users_areainfo` VALUES (410329, '伊川县', 410300);
INSERT INTO `users_areainfo` VALUES (410381, '偃师市', 410300);
INSERT INTO `users_areainfo` VALUES (410400, '平顶山', 410000);
INSERT INTO `users_areainfo` VALUES (410402, '新华区', 410400);
INSERT INTO `users_areainfo` VALUES (410403, '卫东区', 410400);
INSERT INTO `users_areainfo` VALUES (410404, '石龙区', 410400);
INSERT INTO `users_areainfo` VALUES (410411, '湛河区', 410400);
INSERT INTO `users_areainfo` VALUES (410421, '宝丰县', 410400);
INSERT INTO `users_areainfo` VALUES (410422, '叶县', 410400);
INSERT INTO `users_areainfo` VALUES (410423, '鲁山县', 410400);
INSERT INTO `users_areainfo` VALUES (410425, '郏县', 410400);
INSERT INTO `users_areainfo` VALUES (410481, '舞钢市', 410400);
INSERT INTO `users_areainfo` VALUES (410482, '汝州市', 410400);
INSERT INTO `users_areainfo` VALUES (410483, '其它区', 410400);
INSERT INTO `users_areainfo` VALUES (410500, '安阳', 410000);
INSERT INTO `users_areainfo` VALUES (410502, '文峰区', 410500);
INSERT INTO `users_areainfo` VALUES (410503, '北关区', 410500);
INSERT INTO `users_areainfo` VALUES (410505, '殷都区', 410500);
INSERT INTO `users_areainfo` VALUES (410506, '龙安区', 410500);
INSERT INTO `users_areainfo` VALUES (410522, '安阳县', 410500);
INSERT INTO `users_areainfo` VALUES (410523, '汤阴县', 410500);
INSERT INTO `users_areainfo` VALUES (410526, '滑县', 410500);
INSERT INTO `users_areainfo` VALUES (410527, '内黄县', 410500);
INSERT INTO `users_areainfo` VALUES (410581, '林州市', 410500);
INSERT INTO `users_areainfo` VALUES (410582, '其它区', 410500);
INSERT INTO `users_areainfo` VALUES (410600, '鹤壁', 410000);
INSERT INTO `users_areainfo` VALUES (410602, '鹤山区', 410600);
INSERT INTO `users_areainfo` VALUES (410603, '山城区', 410600);
INSERT INTO `users_areainfo` VALUES (410611, '淇滨区', 410600);
INSERT INTO `users_areainfo` VALUES (410621, '浚县', 410600);
INSERT INTO `users_areainfo` VALUES (410622, '淇县', 410600);
INSERT INTO `users_areainfo` VALUES (410623, '其它区', 410600);
INSERT INTO `users_areainfo` VALUES (410700, '新乡', 410000);
INSERT INTO `users_areainfo` VALUES (410702, '红旗区', 410700);
INSERT INTO `users_areainfo` VALUES (410703, '卫滨区', 410700);
INSERT INTO `users_areainfo` VALUES (410704, '凤泉区', 410700);
INSERT INTO `users_areainfo` VALUES (410711, '牧野区', 410700);
INSERT INTO `users_areainfo` VALUES (410721, '新乡县', 410700);
INSERT INTO `users_areainfo` VALUES (410724, '获嘉县', 410700);
INSERT INTO `users_areainfo` VALUES (410725, '原阳县', 410700);
INSERT INTO `users_areainfo` VALUES (410726, '延津县', 410700);
INSERT INTO `users_areainfo` VALUES (410727, '封丘县', 410700);
INSERT INTO `users_areainfo` VALUES (410728, '长垣县', 410700);
INSERT INTO `users_areainfo` VALUES (410781, '卫辉市', 410700);
INSERT INTO `users_areainfo` VALUES (410782, '辉县市', 410700);
INSERT INTO `users_areainfo` VALUES (410783, '其它区', 410700);
INSERT INTO `users_areainfo` VALUES (410800, '焦作', 410000);
INSERT INTO `users_areainfo` VALUES (410802, '解放区', 410800);
INSERT INTO `users_areainfo` VALUES (410803, '中站区', 410800);
INSERT INTO `users_areainfo` VALUES (410804, '马村区', 410800);
INSERT INTO `users_areainfo` VALUES (410811, '山阳区', 410800);
INSERT INTO `users_areainfo` VALUES (410821, '修武县', 410800);
INSERT INTO `users_areainfo` VALUES (410822, '博爱县', 410800);
INSERT INTO `users_areainfo` VALUES (410823, '武陟县', 410800);
INSERT INTO `users_areainfo` VALUES (410825, '温县', 410800);
INSERT INTO `users_areainfo` VALUES (410881, '济源', 410000);
INSERT INTO `users_areainfo` VALUES (410882, '沁阳市', 410800);
INSERT INTO `users_areainfo` VALUES (410883, '孟州市', 410800);
INSERT INTO `users_areainfo` VALUES (410884, '其它区', 410800);
INSERT INTO `users_areainfo` VALUES (410900, '濮阳', 410000);
INSERT INTO `users_areainfo` VALUES (410902, '华龙区', 410900);
INSERT INTO `users_areainfo` VALUES (410922, '清丰县', 410900);
INSERT INTO `users_areainfo` VALUES (410923, '南乐县', 410900);
INSERT INTO `users_areainfo` VALUES (410926, '范县', 410900);
INSERT INTO `users_areainfo` VALUES (410927, '台前县', 410900);
INSERT INTO `users_areainfo` VALUES (410928, '濮阳县', 410900);
INSERT INTO `users_areainfo` VALUES (410929, '其它区', 410900);
INSERT INTO `users_areainfo` VALUES (411000, '许昌', 410000);
INSERT INTO `users_areainfo` VALUES (411002, '魏都区', 411000);
INSERT INTO `users_areainfo` VALUES (411023, '许昌县', 411000);
INSERT INTO `users_areainfo` VALUES (411024, '鄢陵县', 411000);
INSERT INTO `users_areainfo` VALUES (411025, '襄城县', 411000);
INSERT INTO `users_areainfo` VALUES (411081, '禹州市', 411000);
INSERT INTO `users_areainfo` VALUES (411082, '长葛市', 411000);
INSERT INTO `users_areainfo` VALUES (411083, '其它区', 411000);
INSERT INTO `users_areainfo` VALUES (411100, '漯河', 410000);
INSERT INTO `users_areainfo` VALUES (411102, '源汇区', 411100);
INSERT INTO `users_areainfo` VALUES (411103, '郾城区', 411100);
INSERT INTO `users_areainfo` VALUES (411104, '召陵区', 411100);
INSERT INTO `users_areainfo` VALUES (411121, '舞阳县', 411100);
INSERT INTO `users_areainfo` VALUES (411122, '临颍县', 411100);
INSERT INTO `users_areainfo` VALUES (411123, '其它区', 411100);
INSERT INTO `users_areainfo` VALUES (411200, '三门峡', 410000);
INSERT INTO `users_areainfo` VALUES (411202, '湖滨区', 411200);
INSERT INTO `users_areainfo` VALUES (411221, '渑池县', 411200);
INSERT INTO `users_areainfo` VALUES (411222, '陕县', 411200);
INSERT INTO `users_areainfo` VALUES (411224, '卢氏县', 411200);
INSERT INTO `users_areainfo` VALUES (411281, '义马市', 411200);
INSERT INTO `users_areainfo` VALUES (411282, '灵宝市', 411200);
INSERT INTO `users_areainfo` VALUES (411283, '其它区', 411200);
INSERT INTO `users_areainfo` VALUES (411300, '南阳', 410000);
INSERT INTO `users_areainfo` VALUES (411302, '宛城区', 411300);
INSERT INTO `users_areainfo` VALUES (411303, '卧龙区', 411300);
INSERT INTO `users_areainfo` VALUES (411321, '南召县', 411300);
INSERT INTO `users_areainfo` VALUES (411322, '方城县', 411300);
INSERT INTO `users_areainfo` VALUES (411323, '西峡县', 411300);
INSERT INTO `users_areainfo` VALUES (411324, '镇平县', 411300);
INSERT INTO `users_areainfo` VALUES (411325, '内乡县', 411300);
INSERT INTO `users_areainfo` VALUES (411326, '淅川县', 411300);
INSERT INTO `users_areainfo` VALUES (411327, '社旗县', 411300);
INSERT INTO `users_areainfo` VALUES (411328, '唐河县', 411300);
INSERT INTO `users_areainfo` VALUES (411329, '新野县', 411300);
INSERT INTO `users_areainfo` VALUES (411330, '桐柏县', 411300);
INSERT INTO `users_areainfo` VALUES (411381, '邓州市', 411300);
INSERT INTO `users_areainfo` VALUES (411382, '其它区', 411300);
INSERT INTO `users_areainfo` VALUES (411400, '商丘', 410000);
INSERT INTO `users_areainfo` VALUES (411402, '梁园区', 411400);
INSERT INTO `users_areainfo` VALUES (411403, '睢阳区', 411400);
INSERT INTO `users_areainfo` VALUES (411421, '民权县', 411400);
INSERT INTO `users_areainfo` VALUES (411422, '睢县', 411400);
INSERT INTO `users_areainfo` VALUES (411423, '宁陵县', 411400);
INSERT INTO `users_areainfo` VALUES (411424, '柘城县', 411400);
INSERT INTO `users_areainfo` VALUES (411425, '虞城县', 411400);
INSERT INTO `users_areainfo` VALUES (411426, '夏邑县', 411400);
INSERT INTO `users_areainfo` VALUES (411481, '永城市', 411400);
INSERT INTO `users_areainfo` VALUES (411482, '其它区', 411400);
INSERT INTO `users_areainfo` VALUES (411500, '信阳', 410000);
INSERT INTO `users_areainfo` VALUES (411502, '浉河区', 411500);
INSERT INTO `users_areainfo` VALUES (411503, '平桥区', 411500);
INSERT INTO `users_areainfo` VALUES (411521, '罗山县', 411500);
INSERT INTO `users_areainfo` VALUES (411522, '光山县', 411500);
INSERT INTO `users_areainfo` VALUES (411523, '新县', 411500);
INSERT INTO `users_areainfo` VALUES (411524, '商城县', 411500);
INSERT INTO `users_areainfo` VALUES (411525, '固始县', 411500);
INSERT INTO `users_areainfo` VALUES (411526, '潢川县', 411500);
INSERT INTO `users_areainfo` VALUES (411527, '淮滨县', 411500);
INSERT INTO `users_areainfo` VALUES (411528, '息县', 411500);
INSERT INTO `users_areainfo` VALUES (411529, '其它区', 411500);
INSERT INTO `users_areainfo` VALUES (411600, '周口', 410000);
INSERT INTO `users_areainfo` VALUES (411602, '川汇区', 411600);
INSERT INTO `users_areainfo` VALUES (411621, '扶沟县', 411600);
INSERT INTO `users_areainfo` VALUES (411622, '西华县', 411600);
INSERT INTO `users_areainfo` VALUES (411623, '商水县', 411600);
INSERT INTO `users_areainfo` VALUES (411624, '沈丘县', 411600);
INSERT INTO `users_areainfo` VALUES (411625, '郸城县', 411600);
INSERT INTO `users_areainfo` VALUES (411626, '淮阳县', 411600);
INSERT INTO `users_areainfo` VALUES (411627, '太康县', 411600);
INSERT INTO `users_areainfo` VALUES (411628, '鹿邑县', 411600);
INSERT INTO `users_areainfo` VALUES (411681, '项城市', 411600);
INSERT INTO `users_areainfo` VALUES (411682, '其它区', 411600);
INSERT INTO `users_areainfo` VALUES (411700, '驻马店', 410000);
INSERT INTO `users_areainfo` VALUES (411702, '驿城区', 411700);
INSERT INTO `users_areainfo` VALUES (411721, '西平县', 411700);
INSERT INTO `users_areainfo` VALUES (411722, '上蔡县', 411700);
INSERT INTO `users_areainfo` VALUES (411723, '平舆县', 411700);
INSERT INTO `users_areainfo` VALUES (411724, '正阳县', 411700);
INSERT INTO `users_areainfo` VALUES (411725, '确山县', 411700);
INSERT INTO `users_areainfo` VALUES (411726, '泌阳县', 411700);
INSERT INTO `users_areainfo` VALUES (411727, '汝南县', 411700);
INSERT INTO `users_areainfo` VALUES (411728, '遂平县', 411700);
INSERT INTO `users_areainfo` VALUES (411729, '新蔡县', 411700);
INSERT INTO `users_areainfo` VALUES (411730, '其它区', 411700);
INSERT INTO `users_areainfo` VALUES (420000, '湖北', 0);
INSERT INTO `users_areainfo` VALUES (420100, '武汉', 420000);
INSERT INTO `users_areainfo` VALUES (420102, '江岸区', 420100);
INSERT INTO `users_areainfo` VALUES (420103, '江汉区', 420100);
INSERT INTO `users_areainfo` VALUES (420104, '硚口区', 420100);
INSERT INTO `users_areainfo` VALUES (420105, '汉阳区', 420100);
INSERT INTO `users_areainfo` VALUES (420106, '武昌区', 420100);
INSERT INTO `users_areainfo` VALUES (420107, '青山区', 420100);
INSERT INTO `users_areainfo` VALUES (420111, '洪山区', 420100);
INSERT INTO `users_areainfo` VALUES (420112, '东西湖区', 420100);
INSERT INTO `users_areainfo` VALUES (420113, '汉南区', 420100);
INSERT INTO `users_areainfo` VALUES (420114, '蔡甸区', 420100);
INSERT INTO `users_areainfo` VALUES (420115, '江夏区', 420100);
INSERT INTO `users_areainfo` VALUES (420116, '黄陂区', 420100);
INSERT INTO `users_areainfo` VALUES (420117, '新洲区', 420100);
INSERT INTO `users_areainfo` VALUES (420118, '其它区', 420100);
INSERT INTO `users_areainfo` VALUES (420200, '黄石', 420000);
INSERT INTO `users_areainfo` VALUES (420202, '黄石港区', 420200);
INSERT INTO `users_areainfo` VALUES (420203, '西塞山区', 420200);
INSERT INTO `users_areainfo` VALUES (420204, '下陆区', 420200);
INSERT INTO `users_areainfo` VALUES (420205, '铁山区', 420200);
INSERT INTO `users_areainfo` VALUES (420222, '阳新县', 420200);
INSERT INTO `users_areainfo` VALUES (420281, '大冶市', 420200);
INSERT INTO `users_areainfo` VALUES (420282, '其它区', 420200);
INSERT INTO `users_areainfo` VALUES (420300, '十堰', 420000);
INSERT INTO `users_areainfo` VALUES (420302, '茅箭区', 420300);
INSERT INTO `users_areainfo` VALUES (420303, '张湾区', 420300);
INSERT INTO `users_areainfo` VALUES (420321, '郧县', 420300);
INSERT INTO `users_areainfo` VALUES (420322, '郧西县', 420300);
INSERT INTO `users_areainfo` VALUES (420323, '竹山县', 420300);
INSERT INTO `users_areainfo` VALUES (420324, '竹溪县', 420300);
INSERT INTO `users_areainfo` VALUES (420325, '房县', 420300);
INSERT INTO `users_areainfo` VALUES (420381, '丹江口市', 420300);
INSERT INTO `users_areainfo` VALUES (420382, '城区', 420300);
INSERT INTO `users_areainfo` VALUES (420383, '其它区', 420300);
INSERT INTO `users_areainfo` VALUES (420500, '宜昌', 420000);
INSERT INTO `users_areainfo` VALUES (420502, '西陵区', 420500);
INSERT INTO `users_areainfo` VALUES (420503, '伍家岗区', 420500);
INSERT INTO `users_areainfo` VALUES (420504, '点军区', 420500);
INSERT INTO `users_areainfo` VALUES (420505, '猇亭区', 420500);
INSERT INTO `users_areainfo` VALUES (420506, '夷陵区', 420500);
INSERT INTO `users_areainfo` VALUES (420525, '远安县', 420500);
INSERT INTO `users_areainfo` VALUES (420526, '兴山县', 420500);
INSERT INTO `users_areainfo` VALUES (420527, '秭归县', 420500);
INSERT INTO `users_areainfo` VALUES (420528, '长阳土家族自治县', 420500);
INSERT INTO `users_areainfo` VALUES (420529, '五峰土家族自治县', 420500);
INSERT INTO `users_areainfo` VALUES (420551, '葛洲坝区', 420500);
INSERT INTO `users_areainfo` VALUES (420552, '开发区', 420500);
INSERT INTO `users_areainfo` VALUES (420581, '宜都市', 420500);
INSERT INTO `users_areainfo` VALUES (420582, '当阳市', 420500);
INSERT INTO `users_areainfo` VALUES (420583, '枝江市', 420500);
INSERT INTO `users_areainfo` VALUES (420584, '其它区', 420500);
INSERT INTO `users_areainfo` VALUES (420600, '襄樊', 420000);
INSERT INTO `users_areainfo` VALUES (420602, '襄城区', 420600);
INSERT INTO `users_areainfo` VALUES (420606, '樊城区', 420600);
INSERT INTO `users_areainfo` VALUES (420607, '襄阳区', 420600);
INSERT INTO `users_areainfo` VALUES (420624, '南漳县', 420600);
INSERT INTO `users_areainfo` VALUES (420625, '谷城县', 420600);
INSERT INTO `users_areainfo` VALUES (420626, '保康县', 420600);
INSERT INTO `users_areainfo` VALUES (420682, '老河口市', 420600);
INSERT INTO `users_areainfo` VALUES (420683, '枣阳市', 420600);
INSERT INTO `users_areainfo` VALUES (420684, '宜城市', 420600);
INSERT INTO `users_areainfo` VALUES (420685, '其它区', 420600);
INSERT INTO `users_areainfo` VALUES (420700, '鄂州', 420000);
INSERT INTO `users_areainfo` VALUES (420702, '梁子湖区', 420700);
INSERT INTO `users_areainfo` VALUES (420703, '华容区', 420700);
INSERT INTO `users_areainfo` VALUES (420704, '鄂城区', 420700);
INSERT INTO `users_areainfo` VALUES (420705, '其它区', 420700);
INSERT INTO `users_areainfo` VALUES (420800, '荆门', 420000);
INSERT INTO `users_areainfo` VALUES (420802, '东宝区', 420800);
INSERT INTO `users_areainfo` VALUES (420804, '掇刀区', 420800);
INSERT INTO `users_areainfo` VALUES (420821, '京山县', 420800);
INSERT INTO `users_areainfo` VALUES (420822, '沙洋县', 420800);
INSERT INTO `users_areainfo` VALUES (420881, '钟祥市', 420800);
INSERT INTO `users_areainfo` VALUES (420882, '其它区', 420800);
INSERT INTO `users_areainfo` VALUES (420900, '孝感', 420000);
INSERT INTO `users_areainfo` VALUES (420902, '孝南区', 420900);
INSERT INTO `users_areainfo` VALUES (420921, '孝昌县', 420900);
INSERT INTO `users_areainfo` VALUES (420922, '大悟县', 420900);
INSERT INTO `users_areainfo` VALUES (420923, '云梦县', 420900);
INSERT INTO `users_areainfo` VALUES (420981, '应城市', 420900);
INSERT INTO `users_areainfo` VALUES (420982, '安陆市', 420900);
INSERT INTO `users_areainfo` VALUES (420984, '汉川市', 420900);
INSERT INTO `users_areainfo` VALUES (420985, '其它区', 420900);
INSERT INTO `users_areainfo` VALUES (421000, '荆州', 420000);
INSERT INTO `users_areainfo` VALUES (421002, '沙市区', 421000);
INSERT INTO `users_areainfo` VALUES (421003, '荆州区', 421000);
INSERT INTO `users_areainfo` VALUES (421022, '公安县', 421000);
INSERT INTO `users_areainfo` VALUES (421023, '监利县', 421000);
INSERT INTO `users_areainfo` VALUES (421024, '江陵县', 421000);
INSERT INTO `users_areainfo` VALUES (421081, '石首市', 421000);
INSERT INTO `users_areainfo` VALUES (421083, '洪湖市', 421000);
INSERT INTO `users_areainfo` VALUES (421087, '松滋市', 421000);
INSERT INTO `users_areainfo` VALUES (421088, '其它区', 421000);
INSERT INTO `users_areainfo` VALUES (421100, '黄冈', 420000);
INSERT INTO `users_areainfo` VALUES (421102, '黄州区', 421100);
INSERT INTO `users_areainfo` VALUES (421121, '团风县', 421100);
INSERT INTO `users_areainfo` VALUES (421122, '红安县', 421100);
INSERT INTO `users_areainfo` VALUES (421123, '罗田县', 421100);
INSERT INTO `users_areainfo` VALUES (421124, '英山县', 421100);
INSERT INTO `users_areainfo` VALUES (421125, '浠水县', 421100);
INSERT INTO `users_areainfo` VALUES (421126, '蕲春县', 421100);
INSERT INTO `users_areainfo` VALUES (421127, '黄梅县', 421100);
INSERT INTO `users_areainfo` VALUES (421181, '麻城市', 421100);
INSERT INTO `users_areainfo` VALUES (421182, '武穴市', 421100);
INSERT INTO `users_areainfo` VALUES (421183, '其它区', 421100);
INSERT INTO `users_areainfo` VALUES (421200, '咸宁', 420000);
INSERT INTO `users_areainfo` VALUES (421202, '咸安区', 421200);
INSERT INTO `users_areainfo` VALUES (421221, '嘉鱼县', 421200);
INSERT INTO `users_areainfo` VALUES (421222, '通城县', 421200);
INSERT INTO `users_areainfo` VALUES (421223, '崇阳县', 421200);
INSERT INTO `users_areainfo` VALUES (421224, '通山县', 421200);
INSERT INTO `users_areainfo` VALUES (421281, '赤壁市', 421200);
INSERT INTO `users_areainfo` VALUES (421282, '温泉城区', 421200);
INSERT INTO `users_areainfo` VALUES (421283, '其它区', 421200);
INSERT INTO `users_areainfo` VALUES (421300, '随州', 420000);
INSERT INTO `users_areainfo` VALUES (421302, '曾都区', 421300);
INSERT INTO `users_areainfo` VALUES (421381, '广水市', 421300);
INSERT INTO `users_areainfo` VALUES (421382, '其它区', 421300);
INSERT INTO `users_areainfo` VALUES (422800, '恩施', 420000);
INSERT INTO `users_areainfo` VALUES (422801, '恩施市', 422800);
INSERT INTO `users_areainfo` VALUES (422802, '利川市', 422800);
INSERT INTO `users_areainfo` VALUES (422822, '建始县', 422800);
INSERT INTO `users_areainfo` VALUES (422823, '巴东县', 422800);
INSERT INTO `users_areainfo` VALUES (422825, '宣恩县', 422800);
INSERT INTO `users_areainfo` VALUES (422826, '咸丰县', 422800);
INSERT INTO `users_areainfo` VALUES (422827, '来凤县', 422800);
INSERT INTO `users_areainfo` VALUES (422828, '鹤峰县', 422800);
INSERT INTO `users_areainfo` VALUES (422829, '其它区', 422800);
INSERT INTO `users_areainfo` VALUES (429004, '仙桃', 420000);
INSERT INTO `users_areainfo` VALUES (429005, '潜江', 420000);
INSERT INTO `users_areainfo` VALUES (429006, '天门', 420000);
INSERT INTO `users_areainfo` VALUES (429021, '神农架林区', 420000);
INSERT INTO `users_areainfo` VALUES (430000, '湖南', 0);
INSERT INTO `users_areainfo` VALUES (430100, '长沙', 430000);
INSERT INTO `users_areainfo` VALUES (430102, '芙蓉区', 430100);
INSERT INTO `users_areainfo` VALUES (430103, '天心区', 430100);
INSERT INTO `users_areainfo` VALUES (430104, '岳麓区', 430100);
INSERT INTO `users_areainfo` VALUES (430105, '开福区', 430100);
INSERT INTO `users_areainfo` VALUES (430111, '雨花区', 430100);
INSERT INTO `users_areainfo` VALUES (430121, '长沙县', 430100);
INSERT INTO `users_areainfo` VALUES (430122, '望城县', 430100);
INSERT INTO `users_areainfo` VALUES (430124, '宁乡县', 430100);
INSERT INTO `users_areainfo` VALUES (430181, '浏阳市', 430100);
INSERT INTO `users_areainfo` VALUES (430182, '其它区', 430100);
INSERT INTO `users_areainfo` VALUES (430200, '株洲', 430000);
INSERT INTO `users_areainfo` VALUES (430202, '荷塘区', 430200);
INSERT INTO `users_areainfo` VALUES (430203, '芦淞区', 430200);
INSERT INTO `users_areainfo` VALUES (430204, '石峰区', 430200);
INSERT INTO `users_areainfo` VALUES (430211, '天元区', 430200);
INSERT INTO `users_areainfo` VALUES (430221, '株洲县', 430200);
INSERT INTO `users_areainfo` VALUES (430223, '攸县', 430200);
INSERT INTO `users_areainfo` VALUES (430224, '茶陵县', 430200);
INSERT INTO `users_areainfo` VALUES (430225, '炎陵县', 430200);
INSERT INTO `users_areainfo` VALUES (430281, '醴陵市', 430200);
INSERT INTO `users_areainfo` VALUES (430282, '其它区', 430200);
INSERT INTO `users_areainfo` VALUES (430300, '湘潭', 430000);
INSERT INTO `users_areainfo` VALUES (430302, '雨湖区', 430300);
INSERT INTO `users_areainfo` VALUES (430304, '岳塘区', 430300);
INSERT INTO `users_areainfo` VALUES (430321, '湘潭县', 430300);
INSERT INTO `users_areainfo` VALUES (430381, '湘乡市', 430300);
INSERT INTO `users_areainfo` VALUES (430382, '韶山市', 430300);
INSERT INTO `users_areainfo` VALUES (430383, '其它区', 430300);
INSERT INTO `users_areainfo` VALUES (430400, '衡阳', 430000);
INSERT INTO `users_areainfo` VALUES (430405, '珠晖区', 430400);
INSERT INTO `users_areainfo` VALUES (430406, '雁峰区', 430400);
INSERT INTO `users_areainfo` VALUES (430407, '石鼓区', 430400);
INSERT INTO `users_areainfo` VALUES (430408, '蒸湘区', 430400);
INSERT INTO `users_areainfo` VALUES (430412, '南岳区', 430400);
INSERT INTO `users_areainfo` VALUES (430421, '衡阳县', 430400);
INSERT INTO `users_areainfo` VALUES (430422, '衡南县', 430400);
INSERT INTO `users_areainfo` VALUES (430423, '衡山县', 430400);
INSERT INTO `users_areainfo` VALUES (430424, '衡东县', 430400);
INSERT INTO `users_areainfo` VALUES (430426, '祁东县', 430400);
INSERT INTO `users_areainfo` VALUES (430481, '耒阳市', 430400);
INSERT INTO `users_areainfo` VALUES (430482, '常宁市', 430400);
INSERT INTO `users_areainfo` VALUES (430483, '其它区', 430400);
INSERT INTO `users_areainfo` VALUES (430500, '邵阳', 430000);
INSERT INTO `users_areainfo` VALUES (430502, '双清区', 430500);
INSERT INTO `users_areainfo` VALUES (430503, '大祥区', 430500);
INSERT INTO `users_areainfo` VALUES (430511, '北塔区', 430500);
INSERT INTO `users_areainfo` VALUES (430521, '邵东县', 430500);
INSERT INTO `users_areainfo` VALUES (430522, '新邵县', 430500);
INSERT INTO `users_areainfo` VALUES (430523, '邵阳县', 430500);
INSERT INTO `users_areainfo` VALUES (430524, '隆回县', 430500);
INSERT INTO `users_areainfo` VALUES (430525, '洞口县', 430500);
INSERT INTO `users_areainfo` VALUES (430527, '绥宁县', 430500);
INSERT INTO `users_areainfo` VALUES (430528, '新宁县', 430500);
INSERT INTO `users_areainfo` VALUES (430529, '城步苗族自治县', 430500);
INSERT INTO `users_areainfo` VALUES (430581, '武冈市', 430500);
INSERT INTO `users_areainfo` VALUES (430582, '其它区', 430500);
INSERT INTO `users_areainfo` VALUES (430600, '岳阳', 430000);
INSERT INTO `users_areainfo` VALUES (430602, '岳阳楼区', 430600);
INSERT INTO `users_areainfo` VALUES (430603, '云溪区', 430600);
INSERT INTO `users_areainfo` VALUES (430611, '君山区', 430600);
INSERT INTO `users_areainfo` VALUES (430621, '岳阳县', 430600);
INSERT INTO `users_areainfo` VALUES (430623, '华容县', 430600);
INSERT INTO `users_areainfo` VALUES (430624, '湘阴县', 430600);
INSERT INTO `users_areainfo` VALUES (430626, '平江县', 430600);
INSERT INTO `users_areainfo` VALUES (430681, '汨罗市', 430600);
INSERT INTO `users_areainfo` VALUES (430682, '临湘市', 430600);
INSERT INTO `users_areainfo` VALUES (430683, '其它区', 430600);
INSERT INTO `users_areainfo` VALUES (430700, '常德', 430000);
INSERT INTO `users_areainfo` VALUES (430702, '武陵区', 430700);
INSERT INTO `users_areainfo` VALUES (430703, '鼎城区', 430700);
INSERT INTO `users_areainfo` VALUES (430721, '安乡县', 430700);
INSERT INTO `users_areainfo` VALUES (430722, '汉寿县', 430700);
INSERT INTO `users_areainfo` VALUES (430723, '澧县', 430700);
INSERT INTO `users_areainfo` VALUES (430724, '临澧县', 430700);
INSERT INTO `users_areainfo` VALUES (430725, '桃源县', 430700);
INSERT INTO `users_areainfo` VALUES (430726, '石门县', 430700);
INSERT INTO `users_areainfo` VALUES (430781, '津市市', 430700);
INSERT INTO `users_areainfo` VALUES (430782, '其它区', 430700);
INSERT INTO `users_areainfo` VALUES (430800, '张家界', 430000);
INSERT INTO `users_areainfo` VALUES (430802, '永定区', 430800);
INSERT INTO `users_areainfo` VALUES (430811, '武陵源区', 430800);
INSERT INTO `users_areainfo` VALUES (430821, '慈利县', 430800);
INSERT INTO `users_areainfo` VALUES (430822, '桑植县', 430800);
INSERT INTO `users_areainfo` VALUES (430823, '其它区', 430800);
INSERT INTO `users_areainfo` VALUES (430900, '益阳', 430000);
INSERT INTO `users_areainfo` VALUES (430902, '资阳区', 430900);
INSERT INTO `users_areainfo` VALUES (430903, '赫山区', 430900);
INSERT INTO `users_areainfo` VALUES (430921, '南县', 430900);
INSERT INTO `users_areainfo` VALUES (430922, '桃江县', 430900);
INSERT INTO `users_areainfo` VALUES (430923, '安化县', 430900);
INSERT INTO `users_areainfo` VALUES (430981, '沅江市', 430900);
INSERT INTO `users_areainfo` VALUES (430982, '其它区', 430900);
INSERT INTO `users_areainfo` VALUES (431000, '郴州', 430000);
INSERT INTO `users_areainfo` VALUES (431002, '北湖区', 431000);
INSERT INTO `users_areainfo` VALUES (431003, '苏仙区', 431000);
INSERT INTO `users_areainfo` VALUES (431021, '桂阳县', 431000);
INSERT INTO `users_areainfo` VALUES (431022, '宜章县', 431000);
INSERT INTO `users_areainfo` VALUES (431023, '永兴县', 431000);
INSERT INTO `users_areainfo` VALUES (431024, '嘉禾县', 431000);
INSERT INTO `users_areainfo` VALUES (431025, '临武县', 431000);
INSERT INTO `users_areainfo` VALUES (431026, '汝城县', 431000);
INSERT INTO `users_areainfo` VALUES (431027, '桂东县', 431000);
INSERT INTO `users_areainfo` VALUES (431028, '安仁县', 431000);
INSERT INTO `users_areainfo` VALUES (431081, '资兴市', 431000);
INSERT INTO `users_areainfo` VALUES (431082, '其它区', 431000);
INSERT INTO `users_areainfo` VALUES (431100, '永州', 430000);
INSERT INTO `users_areainfo` VALUES (431102, '零陵区', 431100);
INSERT INTO `users_areainfo` VALUES (431103, '冷水滩区', 431100);
INSERT INTO `users_areainfo` VALUES (431121, '祁阳县', 431100);
INSERT INTO `users_areainfo` VALUES (431122, '东安县', 431100);
INSERT INTO `users_areainfo` VALUES (431123, '双牌县', 431100);
INSERT INTO `users_areainfo` VALUES (431124, '道县', 431100);
INSERT INTO `users_areainfo` VALUES (431125, '江永县', 431100);
INSERT INTO `users_areainfo` VALUES (431126, '宁远县', 431100);
INSERT INTO `users_areainfo` VALUES (431127, '蓝山县', 431100);
INSERT INTO `users_areainfo` VALUES (431128, '新田县', 431100);
INSERT INTO `users_areainfo` VALUES (431129, '江华瑶族自治县', 431100);
INSERT INTO `users_areainfo` VALUES (431130, '其它区', 431100);
INSERT INTO `users_areainfo` VALUES (431200, '怀化', 430000);
INSERT INTO `users_areainfo` VALUES (431202, '鹤城区', 431200);
INSERT INTO `users_areainfo` VALUES (431221, '中方县', 431200);
INSERT INTO `users_areainfo` VALUES (431222, '沅陵县', 431200);
INSERT INTO `users_areainfo` VALUES (431223, '辰溪县', 431200);
INSERT INTO `users_areainfo` VALUES (431224, '溆浦县', 431200);
INSERT INTO `users_areainfo` VALUES (431225, '会同县', 431200);
INSERT INTO `users_areainfo` VALUES (431226, '麻阳苗族自治县', 431200);
INSERT INTO `users_areainfo` VALUES (431227, '新晃侗族自治县', 431200);
INSERT INTO `users_areainfo` VALUES (431228, '芷江侗族自治县', 431200);
INSERT INTO `users_areainfo` VALUES (431229, '靖州苗族侗族自治县', 431200);
INSERT INTO `users_areainfo` VALUES (431230, '通道侗族自治县', 431200);
INSERT INTO `users_areainfo` VALUES (431281, '洪江市', 431200);
INSERT INTO `users_areainfo` VALUES (431282, '其它区', 431200);
INSERT INTO `users_areainfo` VALUES (431300, '娄底', 430000);
INSERT INTO `users_areainfo` VALUES (431302, '娄星区', 431300);
INSERT INTO `users_areainfo` VALUES (431321, '双峰县', 431300);
INSERT INTO `users_areainfo` VALUES (431322, '新化县', 431300);
INSERT INTO `users_areainfo` VALUES (431381, '冷水江市', 431300);
INSERT INTO `users_areainfo` VALUES (431382, '涟源市', 431300);
INSERT INTO `users_areainfo` VALUES (431383, '其它区', 431300);
INSERT INTO `users_areainfo` VALUES (433100, '湘西', 430000);
INSERT INTO `users_areainfo` VALUES (433101, '吉首市', 433100);
INSERT INTO `users_areainfo` VALUES (433122, '泸溪县', 433100);
INSERT INTO `users_areainfo` VALUES (433123, '凤凰县', 433100);
INSERT INTO `users_areainfo` VALUES (433124, '花垣县', 433100);
INSERT INTO `users_areainfo` VALUES (433125, '保靖县', 433100);
INSERT INTO `users_areainfo` VALUES (433126, '古丈县', 433100);
INSERT INTO `users_areainfo` VALUES (433127, '永顺县', 433100);
INSERT INTO `users_areainfo` VALUES (433130, '龙山县', 433100);
INSERT INTO `users_areainfo` VALUES (433131, '其它区', 433100);
INSERT INTO `users_areainfo` VALUES (440000, '广东', 0);
INSERT INTO `users_areainfo` VALUES (440100, '广州', 440000);
INSERT INTO `users_areainfo` VALUES (440103, '荔湾区', 440100);
INSERT INTO `users_areainfo` VALUES (440104, '越秀区', 440100);
INSERT INTO `users_areainfo` VALUES (440105, '海珠区', 440100);
INSERT INTO `users_areainfo` VALUES (440106, '天河区', 440100);
INSERT INTO `users_areainfo` VALUES (440111, '白云区', 440100);
INSERT INTO `users_areainfo` VALUES (440112, '黄埔区', 440100);
INSERT INTO `users_areainfo` VALUES (440113, '番禺区', 440100);
INSERT INTO `users_areainfo` VALUES (440114, '花都区', 440100);
INSERT INTO `users_areainfo` VALUES (440115, '南沙区', 440100);
INSERT INTO `users_areainfo` VALUES (440116, '萝岗区', 440100);
INSERT INTO `users_areainfo` VALUES (440183, '增城市', 440100);
INSERT INTO `users_areainfo` VALUES (440184, '从化市', 440100);
INSERT INTO `users_areainfo` VALUES (440188, '东山区', 440100);
INSERT INTO `users_areainfo` VALUES (440189, '其它区', 440100);
INSERT INTO `users_areainfo` VALUES (440200, '韶关', 440000);
INSERT INTO `users_areainfo` VALUES (440203, '武江区', 440200);
INSERT INTO `users_areainfo` VALUES (440204, '浈江区', 440200);
INSERT INTO `users_areainfo` VALUES (440205, '曲江区', 440200);
INSERT INTO `users_areainfo` VALUES (440222, '始兴县', 440200);
INSERT INTO `users_areainfo` VALUES (440224, '仁化县', 440200);
INSERT INTO `users_areainfo` VALUES (440229, '翁源县', 440200);
INSERT INTO `users_areainfo` VALUES (440232, '乳源瑶族自治县', 440200);
INSERT INTO `users_areainfo` VALUES (440233, '新丰县', 440200);
INSERT INTO `users_areainfo` VALUES (440281, '乐昌市', 440200);
INSERT INTO `users_areainfo` VALUES (440282, '南雄市', 440200);
INSERT INTO `users_areainfo` VALUES (440283, '其它区', 440200);
INSERT INTO `users_areainfo` VALUES (440300, '深圳', 440000);
INSERT INTO `users_areainfo` VALUES (440303, '罗湖区', 440300);
INSERT INTO `users_areainfo` VALUES (440304, '福田区', 440300);
INSERT INTO `users_areainfo` VALUES (440305, '南山区', 440300);
INSERT INTO `users_areainfo` VALUES (440306, '宝安区', 440300);
INSERT INTO `users_areainfo` VALUES (440307, '龙岗区', 440300);
INSERT INTO `users_areainfo` VALUES (440308, '盐田区', 440300);
INSERT INTO `users_areainfo` VALUES (440309, '其它区', 440300);
INSERT INTO `users_areainfo` VALUES (440400, '珠海', 440000);
INSERT INTO `users_areainfo` VALUES (440402, '香洲区', 440400);
INSERT INTO `users_areainfo` VALUES (440403, '斗门区', 440400);
INSERT INTO `users_areainfo` VALUES (440404, '金湾区', 440400);
INSERT INTO `users_areainfo` VALUES (440486, '金唐区', 440400);
INSERT INTO `users_areainfo` VALUES (440487, '南湾区', 440400);
INSERT INTO `users_areainfo` VALUES (440488, '其它区', 440400);
INSERT INTO `users_areainfo` VALUES (440500, '汕头', 440000);
INSERT INTO `users_areainfo` VALUES (440507, '龙湖区', 440500);
INSERT INTO `users_areainfo` VALUES (440511, '金平区', 440500);
INSERT INTO `users_areainfo` VALUES (440512, '濠江区', 440500);
INSERT INTO `users_areainfo` VALUES (440513, '潮阳区', 440500);
INSERT INTO `users_areainfo` VALUES (440514, '潮南区', 440500);
INSERT INTO `users_areainfo` VALUES (440515, '澄海区', 440500);
INSERT INTO `users_areainfo` VALUES (440523, '南澳县', 440500);
INSERT INTO `users_areainfo` VALUES (440524, '其它区', 440500);
INSERT INTO `users_areainfo` VALUES (440600, '佛山', 440000);
INSERT INTO `users_areainfo` VALUES (440604, '禅城区', 440600);
INSERT INTO `users_areainfo` VALUES (440605, '南海区', 440600);
INSERT INTO `users_areainfo` VALUES (440606, '顺德区', 440600);
INSERT INTO `users_areainfo` VALUES (440607, '三水区', 440600);
INSERT INTO `users_areainfo` VALUES (440608, '高明区', 440600);
INSERT INTO `users_areainfo` VALUES (440609, '其它区', 440600);
INSERT INTO `users_areainfo` VALUES (440700, '江门', 440000);
INSERT INTO `users_areainfo` VALUES (440703, '蓬江区', 440700);
INSERT INTO `users_areainfo` VALUES (440704, '江海区', 440700);
INSERT INTO `users_areainfo` VALUES (440705, '新会区', 440700);
INSERT INTO `users_areainfo` VALUES (440781, '台山市', 440700);
INSERT INTO `users_areainfo` VALUES (440783, '开平市', 440700);
INSERT INTO `users_areainfo` VALUES (440784, '鹤山市', 440700);
INSERT INTO `users_areainfo` VALUES (440785, '恩平市', 440700);
INSERT INTO `users_areainfo` VALUES (440786, '其它区', 440700);
INSERT INTO `users_areainfo` VALUES (440800, '湛江', 440000);
INSERT INTO `users_areainfo` VALUES (440802, '赤坎区', 440800);
INSERT INTO `users_areainfo` VALUES (440803, '霞山区', 440800);
INSERT INTO `users_areainfo` VALUES (440804, '坡头区', 440800);
INSERT INTO `users_areainfo` VALUES (440811, '麻章区', 440800);
INSERT INTO `users_areainfo` VALUES (440823, '遂溪县', 440800);
INSERT INTO `users_areainfo` VALUES (440825, '徐闻县', 440800);
INSERT INTO `users_areainfo` VALUES (440881, '廉江市', 440800);
INSERT INTO `users_areainfo` VALUES (440882, '雷州市', 440800);
INSERT INTO `users_areainfo` VALUES (440883, '吴川市', 440800);
INSERT INTO `users_areainfo` VALUES (440884, '其它区', 440800);
INSERT INTO `users_areainfo` VALUES (440900, '茂名', 440000);
INSERT INTO `users_areainfo` VALUES (440902, '茂南区', 440900);
INSERT INTO `users_areainfo` VALUES (440903, '茂港区', 440900);
INSERT INTO `users_areainfo` VALUES (440923, '电白县', 440900);
INSERT INTO `users_areainfo` VALUES (440981, '高州市', 440900);
INSERT INTO `users_areainfo` VALUES (440982, '化州市', 440900);
INSERT INTO `users_areainfo` VALUES (440983, '信宜市', 440900);
INSERT INTO `users_areainfo` VALUES (440984, '其它区', 440900);
INSERT INTO `users_areainfo` VALUES (441200, '肇庆', 440000);
INSERT INTO `users_areainfo` VALUES (441202, '端州区', 441200);
INSERT INTO `users_areainfo` VALUES (441203, '鼎湖区', 441200);
INSERT INTO `users_areainfo` VALUES (441223, '广宁县', 441200);
INSERT INTO `users_areainfo` VALUES (441224, '怀集县', 441200);
INSERT INTO `users_areainfo` VALUES (441225, '封开县', 441200);
INSERT INTO `users_areainfo` VALUES (441226, '德庆县', 441200);
INSERT INTO `users_areainfo` VALUES (441283, '高要市', 441200);
INSERT INTO `users_areainfo` VALUES (441284, '四会市', 441200);
INSERT INTO `users_areainfo` VALUES (441285, '其它区', 441200);
INSERT INTO `users_areainfo` VALUES (441300, '惠州', 440000);
INSERT INTO `users_areainfo` VALUES (441302, '惠城区', 441300);
INSERT INTO `users_areainfo` VALUES (441303, '惠阳区', 441300);
INSERT INTO `users_areainfo` VALUES (441322, '博罗县', 441300);
INSERT INTO `users_areainfo` VALUES (441323, '惠东县', 441300);
INSERT INTO `users_areainfo` VALUES (441324, '龙门县', 441300);
INSERT INTO `users_areainfo` VALUES (441325, '其它区', 441300);
INSERT INTO `users_areainfo` VALUES (441400, '梅州', 440000);
INSERT INTO `users_areainfo` VALUES (441402, '梅江区', 441400);
INSERT INTO `users_areainfo` VALUES (441421, '梅县', 441400);
INSERT INTO `users_areainfo` VALUES (441422, '大埔县', 441400);
INSERT INTO `users_areainfo` VALUES (441423, '丰顺县', 441400);
INSERT INTO `users_areainfo` VALUES (441424, '五华县', 441400);
INSERT INTO `users_areainfo` VALUES (441426, '平远县', 441400);
INSERT INTO `users_areainfo` VALUES (441427, '蕉岭县', 441400);
INSERT INTO `users_areainfo` VALUES (441481, '兴宁市', 441400);
INSERT INTO `users_areainfo` VALUES (441482, '其它区', 441400);
INSERT INTO `users_areainfo` VALUES (441500, '汕尾', 440000);
INSERT INTO `users_areainfo` VALUES (441502, '城区', 441500);
INSERT INTO `users_areainfo` VALUES (441521, '海丰县', 441500);
INSERT INTO `users_areainfo` VALUES (441523, '陆河县', 441500);
INSERT INTO `users_areainfo` VALUES (441581, '陆丰市', 441500);
INSERT INTO `users_areainfo` VALUES (441582, '其它区', 441500);
INSERT INTO `users_areainfo` VALUES (441600, '河源', 440000);
INSERT INTO `users_areainfo` VALUES (441602, '源城区', 441600);
INSERT INTO `users_areainfo` VALUES (441621, '紫金县', 441600);
INSERT INTO `users_areainfo` VALUES (441622, '龙川县', 441600);
INSERT INTO `users_areainfo` VALUES (441623, '连平县', 441600);
INSERT INTO `users_areainfo` VALUES (441624, '和平县', 441600);
INSERT INTO `users_areainfo` VALUES (441625, '东源县', 441600);
INSERT INTO `users_areainfo` VALUES (441626, '其它区', 441600);
INSERT INTO `users_areainfo` VALUES (441700, '阳江', 440000);
INSERT INTO `users_areainfo` VALUES (441702, '江城区', 441700);
INSERT INTO `users_areainfo` VALUES (441721, '阳西县', 441700);
INSERT INTO `users_areainfo` VALUES (441723, '阳东县', 441700);
INSERT INTO `users_areainfo` VALUES (441781, '阳春市', 441700);
INSERT INTO `users_areainfo` VALUES (441782, '其它区', 441700);
INSERT INTO `users_areainfo` VALUES (441800, '清远', 440000);
INSERT INTO `users_areainfo` VALUES (441802, '清城区', 441800);
INSERT INTO `users_areainfo` VALUES (441821, '佛冈县', 441800);
INSERT INTO `users_areainfo` VALUES (441823, '阳山县', 441800);
INSERT INTO `users_areainfo` VALUES (441825, '连山壮族瑶族自治县', 441800);
INSERT INTO `users_areainfo` VALUES (441826, '连南瑶族自治县', 441800);
INSERT INTO `users_areainfo` VALUES (441827, '清新县', 441800);
INSERT INTO `users_areainfo` VALUES (441881, '英德市', 441800);
INSERT INTO `users_areainfo` VALUES (441882, '连州市', 441800);
INSERT INTO `users_areainfo` VALUES (441883, '其它区', 441800);
INSERT INTO `users_areainfo` VALUES (441900, '东莞', 440000);
INSERT INTO `users_areainfo` VALUES (442000, '中山', 440000);
INSERT INTO `users_areainfo` VALUES (445100, '潮州', 440000);
INSERT INTO `users_areainfo` VALUES (445102, '湘桥区', 445100);
INSERT INTO `users_areainfo` VALUES (445121, '潮安县', 445100);
INSERT INTO `users_areainfo` VALUES (445122, '饶平县', 445100);
INSERT INTO `users_areainfo` VALUES (445185, '枫溪区', 445100);
INSERT INTO `users_areainfo` VALUES (445186, '其它区', 445100);
INSERT INTO `users_areainfo` VALUES (445200, '揭阳', 440000);
INSERT INTO `users_areainfo` VALUES (445202, '榕城区', 445200);
INSERT INTO `users_areainfo` VALUES (445221, '揭东县', 445200);
INSERT INTO `users_areainfo` VALUES (445222, '揭西县', 445200);
INSERT INTO `users_areainfo` VALUES (445224, '惠来县', 445200);
INSERT INTO `users_areainfo` VALUES (445281, '普宁市', 445200);
INSERT INTO `users_areainfo` VALUES (445284, '东山区', 445200);
INSERT INTO `users_areainfo` VALUES (445285, '其它区', 445200);
INSERT INTO `users_areainfo` VALUES (445300, '云浮', 440000);
INSERT INTO `users_areainfo` VALUES (445302, '云城区', 445300);
INSERT INTO `users_areainfo` VALUES (445321, '新兴县', 445300);
INSERT INTO `users_areainfo` VALUES (445322, '郁南县', 445300);
INSERT INTO `users_areainfo` VALUES (445323, '云安县', 445300);
INSERT INTO `users_areainfo` VALUES (445381, '罗定市', 445300);
INSERT INTO `users_areainfo` VALUES (445382, '其它区', 445300);
INSERT INTO `users_areainfo` VALUES (450000, '广西', 0);
INSERT INTO `users_areainfo` VALUES (450100, '南宁', 450000);
INSERT INTO `users_areainfo` VALUES (450102, '兴宁区', 450100);
INSERT INTO `users_areainfo` VALUES (450103, '青秀区', 450100);
INSERT INTO `users_areainfo` VALUES (450105, '江南区', 450100);
INSERT INTO `users_areainfo` VALUES (450107, '西乡塘区', 450100);
INSERT INTO `users_areainfo` VALUES (450108, '良庆区', 450100);
INSERT INTO `users_areainfo` VALUES (450109, '邕宁区', 450100);
INSERT INTO `users_areainfo` VALUES (450122, '武鸣县', 450100);
INSERT INTO `users_areainfo` VALUES (450123, '隆安县', 450100);
INSERT INTO `users_areainfo` VALUES (450124, '马山县', 450100);
INSERT INTO `users_areainfo` VALUES (450125, '上林县', 450100);
INSERT INTO `users_areainfo` VALUES (450126, '宾阳县', 450100);
INSERT INTO `users_areainfo` VALUES (450127, '横县', 450100);
INSERT INTO `users_areainfo` VALUES (450128, '其它区', 450100);
INSERT INTO `users_areainfo` VALUES (450200, '柳州', 450000);
INSERT INTO `users_areainfo` VALUES (450202, '城中区', 450200);
INSERT INTO `users_areainfo` VALUES (450203, '鱼峰区', 450200);
INSERT INTO `users_areainfo` VALUES (450204, '柳南区', 450200);
INSERT INTO `users_areainfo` VALUES (450205, '柳北区', 450200);
INSERT INTO `users_areainfo` VALUES (450221, '柳江县', 450200);
INSERT INTO `users_areainfo` VALUES (450222, '柳城县', 450200);
INSERT INTO `users_areainfo` VALUES (450223, '鹿寨县', 450200);
INSERT INTO `users_areainfo` VALUES (450224, '融安县', 450200);
INSERT INTO `users_areainfo` VALUES (450225, '融水苗族自治县', 450200);
INSERT INTO `users_areainfo` VALUES (450226, '三江侗族自治县', 450200);
INSERT INTO `users_areainfo` VALUES (450227, '其它区', 450200);
INSERT INTO `users_areainfo` VALUES (450300, '桂林', 450000);
INSERT INTO `users_areainfo` VALUES (450302, '秀峰区', 450300);
INSERT INTO `users_areainfo` VALUES (450303, '叠彩区', 450300);
INSERT INTO `users_areainfo` VALUES (450304, '象山区', 450300);
INSERT INTO `users_areainfo` VALUES (450305, '七星区', 450300);
INSERT INTO `users_areainfo` VALUES (450311, '雁山区', 450300);
INSERT INTO `users_areainfo` VALUES (450321, '阳朔县', 450300);
INSERT INTO `users_areainfo` VALUES (450322, '临桂县', 450300);
INSERT INTO `users_areainfo` VALUES (450323, '灵川县', 450300);
INSERT INTO `users_areainfo` VALUES (450324, '全州县', 450300);
INSERT INTO `users_areainfo` VALUES (450325, '兴安县', 450300);
INSERT INTO `users_areainfo` VALUES (450326, '永福县', 450300);
INSERT INTO `users_areainfo` VALUES (450327, '灌阳县', 450300);
INSERT INTO `users_areainfo` VALUES (450328, '龙胜各族自治县', 450300);
INSERT INTO `users_areainfo` VALUES (450329, '资源县', 450300);
INSERT INTO `users_areainfo` VALUES (450330, '平乐县', 450300);
INSERT INTO `users_areainfo` VALUES (450331, '荔蒲县', 450300);
INSERT INTO `users_areainfo` VALUES (450332, '恭城瑶族自治县', 450300);
INSERT INTO `users_areainfo` VALUES (450333, '其它区', 450300);
INSERT INTO `users_areainfo` VALUES (450400, '梧州', 450000);
INSERT INTO `users_areainfo` VALUES (450403, '万秀区', 450400);
INSERT INTO `users_areainfo` VALUES (450404, '蝶山区', 450400);
INSERT INTO `users_areainfo` VALUES (450405, '长洲区', 450400);
INSERT INTO `users_areainfo` VALUES (450421, '苍梧县', 450400);
INSERT INTO `users_areainfo` VALUES (450422, '藤县', 450400);
INSERT INTO `users_areainfo` VALUES (450423, '蒙山县', 450400);
INSERT INTO `users_areainfo` VALUES (450481, '岑溪市', 450400);
INSERT INTO `users_areainfo` VALUES (450482, '其它区', 450400);
INSERT INTO `users_areainfo` VALUES (450500, '北海', 450000);
INSERT INTO `users_areainfo` VALUES (450502, '海城区', 450500);
INSERT INTO `users_areainfo` VALUES (450503, '银海区', 450500);
INSERT INTO `users_areainfo` VALUES (450512, '铁山港区', 450500);
INSERT INTO `users_areainfo` VALUES (450521, '合浦县', 450500);
INSERT INTO `users_areainfo` VALUES (450522, '其它区', 450500);
INSERT INTO `users_areainfo` VALUES (450600, '防城港', 450000);
INSERT INTO `users_areainfo` VALUES (450602, '港口区', 450600);
INSERT INTO `users_areainfo` VALUES (450603, '防城区', 450600);
INSERT INTO `users_areainfo` VALUES (450621, '上思县', 450600);
INSERT INTO `users_areainfo` VALUES (450681, '东兴市', 450600);
INSERT INTO `users_areainfo` VALUES (450682, '其它区', 450600);
INSERT INTO `users_areainfo` VALUES (450700, '钦州', 450000);
INSERT INTO `users_areainfo` VALUES (450702, '钦南区', 450700);
INSERT INTO `users_areainfo` VALUES (450703, '钦北区', 450700);
INSERT INTO `users_areainfo` VALUES (450721, '灵山县', 450700);
INSERT INTO `users_areainfo` VALUES (450722, '浦北县', 450700);
INSERT INTO `users_areainfo` VALUES (450723, '其它区', 450700);
INSERT INTO `users_areainfo` VALUES (450800, '贵港', 450000);
INSERT INTO `users_areainfo` VALUES (450802, '港北区', 450800);
INSERT INTO `users_areainfo` VALUES (450803, '港南区', 450800);
INSERT INTO `users_areainfo` VALUES (450804, '覃塘区', 450800);
INSERT INTO `users_areainfo` VALUES (450821, '平南县', 450800);
INSERT INTO `users_areainfo` VALUES (450881, '桂平市', 450800);
INSERT INTO `users_areainfo` VALUES (450882, '其它区', 450800);
INSERT INTO `users_areainfo` VALUES (450900, '玉林', 450000);
INSERT INTO `users_areainfo` VALUES (450902, '玉州区', 450900);
INSERT INTO `users_areainfo` VALUES (450921, '容县', 450900);
INSERT INTO `users_areainfo` VALUES (450922, '陆川县', 450900);
INSERT INTO `users_areainfo` VALUES (450923, '博白县', 450900);
INSERT INTO `users_areainfo` VALUES (450924, '兴业县', 450900);
INSERT INTO `users_areainfo` VALUES (450981, '北流市', 450900);
INSERT INTO `users_areainfo` VALUES (450982, '其它区', 450900);
INSERT INTO `users_areainfo` VALUES (451000, '百色', 450000);
INSERT INTO `users_areainfo` VALUES (451002, '右江区', 451000);
INSERT INTO `users_areainfo` VALUES (451021, '田阳县', 451000);
INSERT INTO `users_areainfo` VALUES (451022, '田东县', 451000);
INSERT INTO `users_areainfo` VALUES (451023, '平果县', 451000);
INSERT INTO `users_areainfo` VALUES (451024, '德保县', 451000);
INSERT INTO `users_areainfo` VALUES (451025, '靖西县', 451000);
INSERT INTO `users_areainfo` VALUES (451026, '那坡县', 451000);
INSERT INTO `users_areainfo` VALUES (451027, '凌云县', 451000);
INSERT INTO `users_areainfo` VALUES (451028, '乐业县', 451000);
INSERT INTO `users_areainfo` VALUES (451029, '田林县', 451000);
INSERT INTO `users_areainfo` VALUES (451030, '西林县', 451000);
INSERT INTO `users_areainfo` VALUES (451031, '隆林各族自治县', 451000);
INSERT INTO `users_areainfo` VALUES (451032, '其它区', 451000);
INSERT INTO `users_areainfo` VALUES (451100, '贺州', 450000);
INSERT INTO `users_areainfo` VALUES (451102, '八步区', 451100);
INSERT INTO `users_areainfo` VALUES (451121, '昭平县', 451100);
INSERT INTO `users_areainfo` VALUES (451122, '钟山县', 451100);
INSERT INTO `users_areainfo` VALUES (451123, '富川瑶族自治县', 451100);
INSERT INTO `users_areainfo` VALUES (451124, '其它区', 451100);
INSERT INTO `users_areainfo` VALUES (451200, '河池', 450000);
INSERT INTO `users_areainfo` VALUES (451202, '金城江区', 451200);
INSERT INTO `users_areainfo` VALUES (451221, '南丹县', 451200);
INSERT INTO `users_areainfo` VALUES (451222, '天峨县', 451200);
INSERT INTO `users_areainfo` VALUES (451223, '凤山县', 451200);
INSERT INTO `users_areainfo` VALUES (451224, '东兰县', 451200);
INSERT INTO `users_areainfo` VALUES (451225, '罗城仫佬族自治县', 451200);
INSERT INTO `users_areainfo` VALUES (451226, '环江毛南族自治县', 451200);
INSERT INTO `users_areainfo` VALUES (451227, '巴马瑶族自治县', 451200);
INSERT INTO `users_areainfo` VALUES (451228, '都安瑶族自治县', 451200);
INSERT INTO `users_areainfo` VALUES (451229, '大化瑶族自治县', 451200);
INSERT INTO `users_areainfo` VALUES (451281, '宜州市', 451200);
INSERT INTO `users_areainfo` VALUES (451282, '其它区', 451200);
INSERT INTO `users_areainfo` VALUES (451300, '来宾', 450000);
INSERT INTO `users_areainfo` VALUES (451302, '兴宾区', 451300);
INSERT INTO `users_areainfo` VALUES (451321, '忻城县', 451300);
INSERT INTO `users_areainfo` VALUES (451322, '象州县', 451300);
INSERT INTO `users_areainfo` VALUES (451323, '武宣县', 451300);
INSERT INTO `users_areainfo` VALUES (451324, '金秀瑶族自治县', 451300);
INSERT INTO `users_areainfo` VALUES (451381, '合山市', 451300);
INSERT INTO `users_areainfo` VALUES (451382, '其它区', 451300);
INSERT INTO `users_areainfo` VALUES (451400, '崇左', 450000);
INSERT INTO `users_areainfo` VALUES (451402, '江洲区', 451400);
INSERT INTO `users_areainfo` VALUES (451421, '扶绥县', 451400);
INSERT INTO `users_areainfo` VALUES (451422, '宁明县', 451400);
INSERT INTO `users_areainfo` VALUES (451423, '龙州县', 451400);
INSERT INTO `users_areainfo` VALUES (451424, '大新县', 451400);
INSERT INTO `users_areainfo` VALUES (451425, '天等县', 451400);
INSERT INTO `users_areainfo` VALUES (451481, '凭祥市', 451400);
INSERT INTO `users_areainfo` VALUES (451482, '其它区', 451400);
INSERT INTO `users_areainfo` VALUES (460000, '海南', 0);
INSERT INTO `users_areainfo` VALUES (460100, '海口', 460000);
INSERT INTO `users_areainfo` VALUES (460105, '秀英区', 460100);
INSERT INTO `users_areainfo` VALUES (460106, '龙华区', 460100);
INSERT INTO `users_areainfo` VALUES (460107, '琼山区', 460100);
INSERT INTO `users_areainfo` VALUES (460108, '美兰区', 460100);
INSERT INTO `users_areainfo` VALUES (460109, '其它区', 460100);
INSERT INTO `users_areainfo` VALUES (460200, '三亚', 460000);
INSERT INTO `users_areainfo` VALUES (469001, '五指山', 460000);
INSERT INTO `users_areainfo` VALUES (469002, '琼海', 460000);
INSERT INTO `users_areainfo` VALUES (469003, '儋州', 460000);
INSERT INTO `users_areainfo` VALUES (469005, '文昌', 460000);
INSERT INTO `users_areainfo` VALUES (469006, '万宁', 460000);
INSERT INTO `users_areainfo` VALUES (469007, '东方', 460000);
INSERT INTO `users_areainfo` VALUES (469025, '定安', 460000);
INSERT INTO `users_areainfo` VALUES (469026, '屯昌', 460000);
INSERT INTO `users_areainfo` VALUES (469027, '澄迈', 460000);
INSERT INTO `users_areainfo` VALUES (469028, '临高', 460000);
INSERT INTO `users_areainfo` VALUES (469030, '白沙', 460000);
INSERT INTO `users_areainfo` VALUES (469031, '昌江', 460000);
INSERT INTO `users_areainfo` VALUES (469033, '乐东', 460000);
INSERT INTO `users_areainfo` VALUES (469034, '陵水', 460000);
INSERT INTO `users_areainfo` VALUES (469035, '保亭', 460000);
INSERT INTO `users_areainfo` VALUES (469036, '琼中', 460000);
INSERT INTO `users_areainfo` VALUES (469037, '西沙', 460000);
INSERT INTO `users_areainfo` VALUES (469038, '南沙', 460000);
INSERT INTO `users_areainfo` VALUES (469039, '中沙', 460000);
INSERT INTO `users_areainfo` VALUES (471004, '高新区', 410300);
INSERT INTO `users_areainfo` VALUES (471005, '其它区', 410300);
INSERT INTO `users_areainfo` VALUES (500000, '重庆', 0);
INSERT INTO `users_areainfo` VALUES (500100, '重庆市', 500100);
INSERT INTO `users_areainfo` VALUES (500101, '万州', 500100);
INSERT INTO `users_areainfo` VALUES (500102, '涪陵', 500100);
INSERT INTO `users_areainfo` VALUES (500103, '渝中', 500100);
INSERT INTO `users_areainfo` VALUES (500104, '大渡口', 500100);
INSERT INTO `users_areainfo` VALUES (500105, '江北', 500100);
INSERT INTO `users_areainfo` VALUES (500106, '沙坪坝', 500100);
INSERT INTO `users_areainfo` VALUES (500107, '九龙坡', 500100);
INSERT INTO `users_areainfo` VALUES (500108, '南岸', 500100);
INSERT INTO `users_areainfo` VALUES (500109, '北碚', 500100);
INSERT INTO `users_areainfo` VALUES (500110, '万盛', 500100);
INSERT INTO `users_areainfo` VALUES (500111, '双桥', 500100);
INSERT INTO `users_areainfo` VALUES (500112, '渝北', 500100);
INSERT INTO `users_areainfo` VALUES (500113, '巴南', 500100);
INSERT INTO `users_areainfo` VALUES (500114, '黔江', 500100);
INSERT INTO `users_areainfo` VALUES (500115, '长寿', 500100);
INSERT INTO `users_areainfo` VALUES (500222, '綦江', 500100);
INSERT INTO `users_areainfo` VALUES (500223, '潼南', 500100);
INSERT INTO `users_areainfo` VALUES (500224, '铜梁', 500100);
INSERT INTO `users_areainfo` VALUES (500225, '大足', 500100);
INSERT INTO `users_areainfo` VALUES (500226, '荣昌', 500100);
INSERT INTO `users_areainfo` VALUES (500227, '璧山', 500100);
INSERT INTO `users_areainfo` VALUES (500228, '梁平', 500100);
INSERT INTO `users_areainfo` VALUES (500229, '城口县', 500100);
INSERT INTO `users_areainfo` VALUES (500230, '丰都县', 500100);
INSERT INTO `users_areainfo` VALUES (500231, '垫江县', 500100);
INSERT INTO `users_areainfo` VALUES (500232, '武隆县', 500100);
INSERT INTO `users_areainfo` VALUES (500233, '忠县', 500100);
INSERT INTO `users_areainfo` VALUES (500234, '开县', 500100);
INSERT INTO `users_areainfo` VALUES (500235, '云阳县', 500100);
INSERT INTO `users_areainfo` VALUES (500236, '奉节县', 500100);
INSERT INTO `users_areainfo` VALUES (500237, '巫山县', 500100);
INSERT INTO `users_areainfo` VALUES (500238, '巫溪县', 500100);
INSERT INTO `users_areainfo` VALUES (500240, '石柱土家族自治县', 500100);
INSERT INTO `users_areainfo` VALUES (500241, '秀山土家族苗族自治县', 500100);
INSERT INTO `users_areainfo` VALUES (500242, '酉阳土家族苗族自治县', 500100);
INSERT INTO `users_areainfo` VALUES (500243, '彭水苗族土家族自治县', 500100);
INSERT INTO `users_areainfo` VALUES (500381, '江津市', 500100);
INSERT INTO `users_areainfo` VALUES (500382, '合川区', 500100);
INSERT INTO `users_areainfo` VALUES (500383, '永川市', 500100);
INSERT INTO `users_areainfo` VALUES (500384, '南川市', 500100);
INSERT INTO `users_areainfo` VALUES (500385, '其它区', 500100);
INSERT INTO `users_areainfo` VALUES (510000, '四川', 0);
INSERT INTO `users_areainfo` VALUES (510100, '成都', 510000);
INSERT INTO `users_areainfo` VALUES (510104, '锦江区', 510100);
INSERT INTO `users_areainfo` VALUES (510105, '青羊区', 510100);
INSERT INTO `users_areainfo` VALUES (510106, '金牛区', 510100);
INSERT INTO `users_areainfo` VALUES (510107, '武侯区', 510100);
INSERT INTO `users_areainfo` VALUES (510108, '成华区', 510100);
INSERT INTO `users_areainfo` VALUES (510112, '龙泉驿区', 510100);
INSERT INTO `users_areainfo` VALUES (510113, '青白江区', 510100);
INSERT INTO `users_areainfo` VALUES (510114, '新都区', 510100);
INSERT INTO `users_areainfo` VALUES (510115, '温江区', 510100);
INSERT INTO `users_areainfo` VALUES (510121, '金堂县', 510100);
INSERT INTO `users_areainfo` VALUES (510122, '双流县', 510100);
INSERT INTO `users_areainfo` VALUES (510124, '郫县', 510100);
INSERT INTO `users_areainfo` VALUES (510129, '大邑县', 510100);
INSERT INTO `users_areainfo` VALUES (510131, '蒲江县', 510100);
INSERT INTO `users_areainfo` VALUES (510132, '新津县', 510100);
INSERT INTO `users_areainfo` VALUES (510181, '都江堰市', 510100);
INSERT INTO `users_areainfo` VALUES (510182, '彭州市', 510100);
INSERT INTO `users_areainfo` VALUES (510183, '邛崃市', 510100);
INSERT INTO `users_areainfo` VALUES (510184, '崇州市', 510100);
INSERT INTO `users_areainfo` VALUES (510185, '其它区', 510100);
INSERT INTO `users_areainfo` VALUES (510300, '自贡', 510000);
INSERT INTO `users_areainfo` VALUES (510302, '自流井区', 510300);
INSERT INTO `users_areainfo` VALUES (510303, '贡井区', 510300);
INSERT INTO `users_areainfo` VALUES (510304, '大安区', 510300);
INSERT INTO `users_areainfo` VALUES (510311, '沿滩区', 510300);
INSERT INTO `users_areainfo` VALUES (510321, '荣县', 510300);
INSERT INTO `users_areainfo` VALUES (510322, '富顺县', 510300);
INSERT INTO `users_areainfo` VALUES (510323, '其它区', 510300);
INSERT INTO `users_areainfo` VALUES (510400, '攀枝花', 510000);
INSERT INTO `users_areainfo` VALUES (510402, '东区', 510400);
INSERT INTO `users_areainfo` VALUES (510403, '西区', 510400);
INSERT INTO `users_areainfo` VALUES (510411, '仁和区', 510400);
INSERT INTO `users_areainfo` VALUES (510421, '米易县', 510400);
INSERT INTO `users_areainfo` VALUES (510422, '盐边县', 510400);
INSERT INTO `users_areainfo` VALUES (510423, '其它区', 510400);
INSERT INTO `users_areainfo` VALUES (510500, '泸州', 510000);
INSERT INTO `users_areainfo` VALUES (510502, '江阳区', 510500);
INSERT INTO `users_areainfo` VALUES (510503, '纳溪区', 510500);
INSERT INTO `users_areainfo` VALUES (510504, '龙马潭区', 510500);
INSERT INTO `users_areainfo` VALUES (510521, '泸县', 510500);
INSERT INTO `users_areainfo` VALUES (510522, '合江县', 510500);
INSERT INTO `users_areainfo` VALUES (510524, '叙永县', 510500);
INSERT INTO `users_areainfo` VALUES (510525, '古蔺县', 510500);
INSERT INTO `users_areainfo` VALUES (510526, '其它区', 510500);
INSERT INTO `users_areainfo` VALUES (510600, '德阳', 510000);
INSERT INTO `users_areainfo` VALUES (510603, '旌阳区', 510600);
INSERT INTO `users_areainfo` VALUES (510623, '中江县', 510600);
INSERT INTO `users_areainfo` VALUES (510626, '罗江县', 510600);
INSERT INTO `users_areainfo` VALUES (510681, '广汉市', 510600);
INSERT INTO `users_areainfo` VALUES (510682, '什邡市', 510600);
INSERT INTO `users_areainfo` VALUES (510683, '绵竹市', 510600);
INSERT INTO `users_areainfo` VALUES (510684, '其它区', 510600);
INSERT INTO `users_areainfo` VALUES (510700, '绵阳', 510000);
INSERT INTO `users_areainfo` VALUES (510703, '涪城区', 510700);
INSERT INTO `users_areainfo` VALUES (510704, '游仙区', 510700);
INSERT INTO `users_areainfo` VALUES (510722, '三台县', 510700);
INSERT INTO `users_areainfo` VALUES (510723, '盐亭县', 510700);
INSERT INTO `users_areainfo` VALUES (510724, '安县', 510700);
INSERT INTO `users_areainfo` VALUES (510725, '梓潼县', 510700);
INSERT INTO `users_areainfo` VALUES (510726, '北川羌族自治县', 510700);
INSERT INTO `users_areainfo` VALUES (510727, '平武县', 510700);
INSERT INTO `users_areainfo` VALUES (510751, '高新区', 510700);
INSERT INTO `users_areainfo` VALUES (510781, '江油市', 510700);
INSERT INTO `users_areainfo` VALUES (510782, '其它区', 510700);
INSERT INTO `users_areainfo` VALUES (510800, '广元', 510000);
INSERT INTO `users_areainfo` VALUES (510802, '市中区', 510800);
INSERT INTO `users_areainfo` VALUES (510811, '元坝区', 510800);
INSERT INTO `users_areainfo` VALUES (510812, '朝天区', 510800);
INSERT INTO `users_areainfo` VALUES (510821, '旺苍县', 510800);
INSERT INTO `users_areainfo` VALUES (510822, '青川县', 510800);
INSERT INTO `users_areainfo` VALUES (510823, '剑阁县', 510800);
INSERT INTO `users_areainfo` VALUES (510824, '苍溪县', 510800);
INSERT INTO `users_areainfo` VALUES (510825, '其它区', 510800);
INSERT INTO `users_areainfo` VALUES (510900, '遂宁', 510000);
INSERT INTO `users_areainfo` VALUES (510903, '船山区', 510900);
INSERT INTO `users_areainfo` VALUES (510904, '安居区', 510900);
INSERT INTO `users_areainfo` VALUES (510921, '蓬溪县', 510900);
INSERT INTO `users_areainfo` VALUES (510922, '射洪县', 510900);
INSERT INTO `users_areainfo` VALUES (510923, '大英县', 510900);
INSERT INTO `users_areainfo` VALUES (510924, '其它区', 510900);
INSERT INTO `users_areainfo` VALUES (511000, '内江', 510000);
INSERT INTO `users_areainfo` VALUES (511002, '市中区', 511000);
INSERT INTO `users_areainfo` VALUES (511011, '东兴区', 511000);
INSERT INTO `users_areainfo` VALUES (511024, '威远县', 511000);
INSERT INTO `users_areainfo` VALUES (511025, '资中县', 511000);
INSERT INTO `users_areainfo` VALUES (511028, '隆昌县', 511000);
INSERT INTO `users_areainfo` VALUES (511029, '其它区', 511000);
INSERT INTO `users_areainfo` VALUES (511100, '乐山', 510000);
INSERT INTO `users_areainfo` VALUES (511102, '市中区', 511100);
INSERT INTO `users_areainfo` VALUES (511111, '沙湾区', 511100);
INSERT INTO `users_areainfo` VALUES (511112, '五通桥区', 511100);
INSERT INTO `users_areainfo` VALUES (511113, '金口河区', 511100);
INSERT INTO `users_areainfo` VALUES (511123, '犍为县', 511100);
INSERT INTO `users_areainfo` VALUES (511124, '井研县', 511100);
INSERT INTO `users_areainfo` VALUES (511126, '夹江县', 511100);
INSERT INTO `users_areainfo` VALUES (511129, '沐川县', 511100);
INSERT INTO `users_areainfo` VALUES (511132, '峨边彝族自治县', 511100);
INSERT INTO `users_areainfo` VALUES (511133, '马边彝族自治县', 511100);
INSERT INTO `users_areainfo` VALUES (511181, '峨眉山市', 511100);
INSERT INTO `users_areainfo` VALUES (511182, '其它区', 511100);
INSERT INTO `users_areainfo` VALUES (511300, '南充', 510000);
INSERT INTO `users_areainfo` VALUES (511302, '顺庆区', 511300);
INSERT INTO `users_areainfo` VALUES (511303, '高坪区', 511300);
INSERT INTO `users_areainfo` VALUES (511304, '嘉陵区', 511300);
INSERT INTO `users_areainfo` VALUES (511321, '南部县', 511300);
INSERT INTO `users_areainfo` VALUES (511322, '营山县', 511300);
INSERT INTO `users_areainfo` VALUES (511323, '蓬安县', 511300);
INSERT INTO `users_areainfo` VALUES (511324, '仪陇县', 511300);
INSERT INTO `users_areainfo` VALUES (511325, '西充县', 511300);
INSERT INTO `users_areainfo` VALUES (511381, '阆中市', 511300);
INSERT INTO `users_areainfo` VALUES (511382, '其它区', 511300);
INSERT INTO `users_areainfo` VALUES (511400, '眉山', 510000);
INSERT INTO `users_areainfo` VALUES (511402, '东坡区', 511400);
INSERT INTO `users_areainfo` VALUES (511421, '仁寿县', 511400);
INSERT INTO `users_areainfo` VALUES (511422, '彭山县', 511400);
INSERT INTO `users_areainfo` VALUES (511423, '洪雅县', 511400);
INSERT INTO `users_areainfo` VALUES (511424, '丹棱县', 511400);
INSERT INTO `users_areainfo` VALUES (511425, '青神县', 511400);
INSERT INTO `users_areainfo` VALUES (511426, '其它区', 511400);
INSERT INTO `users_areainfo` VALUES (511500, '宜宾', 510000);
INSERT INTO `users_areainfo` VALUES (511502, '翠屏区', 511500);
INSERT INTO `users_areainfo` VALUES (511521, '宜宾县', 511500);
INSERT INTO `users_areainfo` VALUES (511522, '南溪县', 511500);
INSERT INTO `users_areainfo` VALUES (511523, '江安县', 511500);
INSERT INTO `users_areainfo` VALUES (511524, '长宁县', 511500);
INSERT INTO `users_areainfo` VALUES (511525, '高县', 511500);
INSERT INTO `users_areainfo` VALUES (511526, '珙县', 511500);
INSERT INTO `users_areainfo` VALUES (511527, '筠连县', 511500);
INSERT INTO `users_areainfo` VALUES (511528, '兴文县', 511500);
INSERT INTO `users_areainfo` VALUES (511529, '屏山县', 511500);
INSERT INTO `users_areainfo` VALUES (511530, '其它区', 511500);
INSERT INTO `users_areainfo` VALUES (511600, '广安', 510000);
INSERT INTO `users_areainfo` VALUES (511602, '广安区', 511600);
INSERT INTO `users_areainfo` VALUES (511621, '岳池县', 511600);
INSERT INTO `users_areainfo` VALUES (511622, '武胜县', 511600);
INSERT INTO `users_areainfo` VALUES (511623, '邻水县', 511600);
INSERT INTO `users_areainfo` VALUES (511681, '华蓥市', 511600);
INSERT INTO `users_areainfo` VALUES (511682, '市辖区', 511600);
INSERT INTO `users_areainfo` VALUES (511683, '其它区', 511600);
INSERT INTO `users_areainfo` VALUES (511700, '达州', 510000);
INSERT INTO `users_areainfo` VALUES (511702, '通川区', 511700);
INSERT INTO `users_areainfo` VALUES (511721, '达县', 511700);
INSERT INTO `users_areainfo` VALUES (511722, '宣汉县', 511700);
INSERT INTO `users_areainfo` VALUES (511723, '开江县', 511700);
INSERT INTO `users_areainfo` VALUES (511724, '大竹县', 511700);
INSERT INTO `users_areainfo` VALUES (511725, '渠县', 511700);
INSERT INTO `users_areainfo` VALUES (511781, '万源市', 511700);
INSERT INTO `users_areainfo` VALUES (511782, '其它区', 511700);
INSERT INTO `users_areainfo` VALUES (511800, '雅安', 510000);
INSERT INTO `users_areainfo` VALUES (511802, '雨城区', 511800);
INSERT INTO `users_areainfo` VALUES (511821, '名山县', 511800);
INSERT INTO `users_areainfo` VALUES (511822, '荥经县', 511800);
INSERT INTO `users_areainfo` VALUES (511823, '汉源县', 511800);
INSERT INTO `users_areainfo` VALUES (511824, '石棉县', 511800);
INSERT INTO `users_areainfo` VALUES (511825, '天全县', 511800);
INSERT INTO `users_areainfo` VALUES (511826, '芦山县', 511800);
INSERT INTO `users_areainfo` VALUES (511827, '宝兴县', 511800);
INSERT INTO `users_areainfo` VALUES (511828, '其它区', 511800);
INSERT INTO `users_areainfo` VALUES (511900, '巴中', 510000);
INSERT INTO `users_areainfo` VALUES (511902, '巴州区', 511900);
INSERT INTO `users_areainfo` VALUES (511921, '通江县', 511900);
INSERT INTO `users_areainfo` VALUES (511922, '南江县', 511900);
INSERT INTO `users_areainfo` VALUES (511923, '平昌县', 511900);
INSERT INTO `users_areainfo` VALUES (511924, '其它区', 511900);
INSERT INTO `users_areainfo` VALUES (512000, '资阳', 510000);
INSERT INTO `users_areainfo` VALUES (512002, '雁江区', 512000);
INSERT INTO `users_areainfo` VALUES (512021, '安岳县', 512000);
INSERT INTO `users_areainfo` VALUES (512022, '乐至县', 512000);
INSERT INTO `users_areainfo` VALUES (512081, '简阳市', 512000);
INSERT INTO `users_areainfo` VALUES (512082, '其它区', 512000);
INSERT INTO `users_areainfo` VALUES (513200, '阿坝', 510000);
INSERT INTO `users_areainfo` VALUES (513221, '汶川县', 513200);
INSERT INTO `users_areainfo` VALUES (513222, '理县', 513200);
INSERT INTO `users_areainfo` VALUES (513223, '茂县', 513200);
INSERT INTO `users_areainfo` VALUES (513224, '松潘县', 513200);
INSERT INTO `users_areainfo` VALUES (513225, '九寨沟县', 513200);
INSERT INTO `users_areainfo` VALUES (513226, '金川县', 513200);
INSERT INTO `users_areainfo` VALUES (513227, '小金县', 513200);
INSERT INTO `users_areainfo` VALUES (513228, '黑水县', 513200);
INSERT INTO `users_areainfo` VALUES (513229, '马尔康县', 513200);
INSERT INTO `users_areainfo` VALUES (513230, '壤塘县', 513200);
INSERT INTO `users_areainfo` VALUES (513231, '阿坝县', 513200);
INSERT INTO `users_areainfo` VALUES (513232, '若尔盖县', 513200);
INSERT INTO `users_areainfo` VALUES (513233, '红原县', 513200);
INSERT INTO `users_areainfo` VALUES (513234, '其它区', 513200);
INSERT INTO `users_areainfo` VALUES (513300, '甘孜', 510000);
INSERT INTO `users_areainfo` VALUES (513321, '康定县', 513300);
INSERT INTO `users_areainfo` VALUES (513322, '泸定县', 513300);
INSERT INTO `users_areainfo` VALUES (513323, '丹巴县', 513300);
INSERT INTO `users_areainfo` VALUES (513324, '九龙县', 513300);
INSERT INTO `users_areainfo` VALUES (513325, '雅江县', 513300);
INSERT INTO `users_areainfo` VALUES (513326, '道孚县', 513300);
INSERT INTO `users_areainfo` VALUES (513327, '炉霍县', 513300);
INSERT INTO `users_areainfo` VALUES (513328, '甘孜县', 513300);
INSERT INTO `users_areainfo` VALUES (513329, '新龙县', 513300);
INSERT INTO `users_areainfo` VALUES (513330, '德格县', 513300);
INSERT INTO `users_areainfo` VALUES (513331, '白玉县', 513300);
INSERT INTO `users_areainfo` VALUES (513332, '石渠县', 513300);
INSERT INTO `users_areainfo` VALUES (513333, '色达县', 513300);
INSERT INTO `users_areainfo` VALUES (513334, '理塘县', 513300);
INSERT INTO `users_areainfo` VALUES (513335, '巴塘县', 513300);
INSERT INTO `users_areainfo` VALUES (513336, '乡城县', 513300);
INSERT INTO `users_areainfo` VALUES (513337, '稻城县', 513300);
INSERT INTO `users_areainfo` VALUES (513338, '得荣县', 513300);
INSERT INTO `users_areainfo` VALUES (513339, '其它区', 513300);
INSERT INTO `users_areainfo` VALUES (513400, '凉山', 510000);
INSERT INTO `users_areainfo` VALUES (513401, '西昌市', 513400);
INSERT INTO `users_areainfo` VALUES (513422, '木里藏族自治县', 513400);
INSERT INTO `users_areainfo` VALUES (513423, '盐源县', 513400);
INSERT INTO `users_areainfo` VALUES (513424, '德昌县', 513400);
INSERT INTO `users_areainfo` VALUES (513425, '会理县', 513400);
INSERT INTO `users_areainfo` VALUES (513426, '会东县', 513400);
INSERT INTO `users_areainfo` VALUES (513427, '宁南县', 513400);
INSERT INTO `users_areainfo` VALUES (513428, '普格县', 513400);
INSERT INTO `users_areainfo` VALUES (513429, '布拖县', 513400);
INSERT INTO `users_areainfo` VALUES (513430, '金阳县', 513400);
INSERT INTO `users_areainfo` VALUES (513431, '昭觉县', 513400);
INSERT INTO `users_areainfo` VALUES (513432, '喜德县', 513400);
INSERT INTO `users_areainfo` VALUES (513433, '冕宁县', 513400);
INSERT INTO `users_areainfo` VALUES (513434, '越西县', 513400);
INSERT INTO `users_areainfo` VALUES (513435, '甘洛县', 513400);
INSERT INTO `users_areainfo` VALUES (513436, '美姑县', 513400);
INSERT INTO `users_areainfo` VALUES (513437, '雷波县', 513400);
INSERT INTO `users_areainfo` VALUES (513438, '其它区', 513400);
INSERT INTO `users_areainfo` VALUES (520000, '贵州', 0);
INSERT INTO `users_areainfo` VALUES (520100, '贵阳', 520000);
INSERT INTO `users_areainfo` VALUES (520102, '南明区', 520100);
INSERT INTO `users_areainfo` VALUES (520103, '云岩区', 520100);
INSERT INTO `users_areainfo` VALUES (520111, '花溪区', 520100);
INSERT INTO `users_areainfo` VALUES (520112, '乌当区', 520100);
INSERT INTO `users_areainfo` VALUES (520113, '白云区', 520100);
INSERT INTO `users_areainfo` VALUES (520114, '小河区', 520100);
INSERT INTO `users_areainfo` VALUES (520121, '开阳县', 520100);
INSERT INTO `users_areainfo` VALUES (520122, '息烽县', 520100);
INSERT INTO `users_areainfo` VALUES (520123, '修文县', 520100);
INSERT INTO `users_areainfo` VALUES (520151, '金阳开发区', 520100);
INSERT INTO `users_areainfo` VALUES (520181, '清镇市', 520100);
INSERT INTO `users_areainfo` VALUES (520182, '其它区', 520100);
INSERT INTO `users_areainfo` VALUES (520200, '六盘水', 520000);
INSERT INTO `users_areainfo` VALUES (520201, '钟山区', 520200);
INSERT INTO `users_areainfo` VALUES (520203, '六枝特区', 520200);
INSERT INTO `users_areainfo` VALUES (520221, '水城县', 520200);
INSERT INTO `users_areainfo` VALUES (520222, '盘县', 520200);
INSERT INTO `users_areainfo` VALUES (520223, '其它区', 520200);
INSERT INTO `users_areainfo` VALUES (520300, '遵义', 520000);
INSERT INTO `users_areainfo` VALUES (520302, '红花岗区', 520300);
INSERT INTO `users_areainfo` VALUES (520303, '汇川区', 520300);
INSERT INTO `users_areainfo` VALUES (520321, '遵义县', 520300);
INSERT INTO `users_areainfo` VALUES (520322, '桐梓县', 520300);
INSERT INTO `users_areainfo` VALUES (520323, '绥阳县', 520300);
INSERT INTO `users_areainfo` VALUES (520324, '正安县', 520300);
INSERT INTO `users_areainfo` VALUES (520325, '道真仡佬族苗族自治县', 520300);
INSERT INTO `users_areainfo` VALUES (520326, '务川仡佬族苗族自治县', 520300);
INSERT INTO `users_areainfo` VALUES (520327, '凤冈县', 520300);
INSERT INTO `users_areainfo` VALUES (520328, '湄潭县', 520300);
INSERT INTO `users_areainfo` VALUES (520329, '余庆县', 520300);
INSERT INTO `users_areainfo` VALUES (520330, '习水县', 520300);
INSERT INTO `users_areainfo` VALUES (520381, '赤水市', 520300);
INSERT INTO `users_areainfo` VALUES (520382, '仁怀市', 520300);
INSERT INTO `users_areainfo` VALUES (520383, '其它区', 520300);
INSERT INTO `users_areainfo` VALUES (520400, '安顺', 520000);
INSERT INTO `users_areainfo` VALUES (520402, '西秀区', 520400);
INSERT INTO `users_areainfo` VALUES (520421, '平坝县', 520400);
INSERT INTO `users_areainfo` VALUES (520422, '普定县', 520400);
INSERT INTO `users_areainfo` VALUES (520423, '镇宁布依族苗族自治县', 520400);
INSERT INTO `users_areainfo` VALUES (520424, '关岭布依族苗族自治县', 520400);
INSERT INTO `users_areainfo` VALUES (520425, '紫云苗族布依族自治县', 520400);
INSERT INTO `users_areainfo` VALUES (520426, '其它区', 520400);
INSERT INTO `users_areainfo` VALUES (522200, '铜仁', 520000);
INSERT INTO `users_areainfo` VALUES (522201, '铜仁市', 522200);
INSERT INTO `users_areainfo` VALUES (522222, '江口县', 522200);
INSERT INTO `users_areainfo` VALUES (522223, '玉屏侗族自治县', 522200);
INSERT INTO `users_areainfo` VALUES (522224, '石阡县', 522200);
INSERT INTO `users_areainfo` VALUES (522225, '思南县', 522200);
INSERT INTO `users_areainfo` VALUES (522226, '印江土家族苗族自治县', 522200);
INSERT INTO `users_areainfo` VALUES (522227, '德江县', 522200);
INSERT INTO `users_areainfo` VALUES (522228, '沿河土家族自治县', 522200);
INSERT INTO `users_areainfo` VALUES (522229, '松桃苗族自治县', 522200);
INSERT INTO `users_areainfo` VALUES (522230, '万山特区', 522200);
INSERT INTO `users_areainfo` VALUES (522231, '其它区', 522200);
INSERT INTO `users_areainfo` VALUES (522300, '黔西', 520000);
INSERT INTO `users_areainfo` VALUES (522301, '兴义市', 522300);
INSERT INTO `users_areainfo` VALUES (522322, '兴仁县', 522300);
INSERT INTO `users_areainfo` VALUES (522323, '普安县', 522300);
INSERT INTO `users_areainfo` VALUES (522324, '晴隆县', 522300);
INSERT INTO `users_areainfo` VALUES (522325, '贞丰县', 522300);
INSERT INTO `users_areainfo` VALUES (522326, '望谟县', 522300);
INSERT INTO `users_areainfo` VALUES (522327, '册亨县', 522300);
INSERT INTO `users_areainfo` VALUES (522328, '安龙县', 522300);
INSERT INTO `users_areainfo` VALUES (522329, '其它区', 522300);
INSERT INTO `users_areainfo` VALUES (522400, '毕节', 520000);
INSERT INTO `users_areainfo` VALUES (522401, '毕节市', 522400);
INSERT INTO `users_areainfo` VALUES (522422, '大方县', 522400);
INSERT INTO `users_areainfo` VALUES (522423, '黔西县', 522400);
INSERT INTO `users_areainfo` VALUES (522424, '金沙县', 522400);
INSERT INTO `users_areainfo` VALUES (522425, '织金县', 522400);
INSERT INTO `users_areainfo` VALUES (522426, '纳雍县', 522400);
INSERT INTO `users_areainfo` VALUES (522427, '威宁彝族回族苗族自治县', 522400);
INSERT INTO `users_areainfo` VALUES (522428, '赫章县', 522400);
INSERT INTO `users_areainfo` VALUES (522429, '其它区', 522400);
INSERT INTO `users_areainfo` VALUES (522600, '黔东', 520000);
INSERT INTO `users_areainfo` VALUES (522601, '凯里市', 522600);
INSERT INTO `users_areainfo` VALUES (522622, '黄平县', 522600);
INSERT INTO `users_areainfo` VALUES (522623, '施秉县', 522600);
INSERT INTO `users_areainfo` VALUES (522624, '三穗县', 522600);
INSERT INTO `users_areainfo` VALUES (522625, '镇远县', 522600);
INSERT INTO `users_areainfo` VALUES (522626, '岑巩县', 522600);
INSERT INTO `users_areainfo` VALUES (522627, '天柱县', 522600);
INSERT INTO `users_areainfo` VALUES (522628, '锦屏县', 522600);
INSERT INTO `users_areainfo` VALUES (522629, '剑河县', 522600);
INSERT INTO `users_areainfo` VALUES (522630, '台江县', 522600);
INSERT INTO `users_areainfo` VALUES (522631, '黎平县', 522600);
INSERT INTO `users_areainfo` VALUES (522632, '榕江县', 522600);
INSERT INTO `users_areainfo` VALUES (522633, '从江县', 522600);
INSERT INTO `users_areainfo` VALUES (522634, '雷山县', 522600);
INSERT INTO `users_areainfo` VALUES (522635, '麻江县', 522600);
INSERT INTO `users_areainfo` VALUES (522636, '丹寨县', 522600);
INSERT INTO `users_areainfo` VALUES (522637, '其它区', 522600);
INSERT INTO `users_areainfo` VALUES (522700, '黔南', 520000);
INSERT INTO `users_areainfo` VALUES (522701, '都匀市', 522700);
INSERT INTO `users_areainfo` VALUES (522702, '福泉市', 522700);
INSERT INTO `users_areainfo` VALUES (522722, '荔波县', 522700);
INSERT INTO `users_areainfo` VALUES (522723, '贵定县', 522700);
INSERT INTO `users_areainfo` VALUES (522725, '瓮安县', 522700);
INSERT INTO `users_areainfo` VALUES (522726, '独山县', 522700);
INSERT INTO `users_areainfo` VALUES (522727, '平塘县', 522700);
INSERT INTO `users_areainfo` VALUES (522728, '罗甸县', 522700);
INSERT INTO `users_areainfo` VALUES (522729, '长顺县', 522700);
INSERT INTO `users_areainfo` VALUES (522730, '龙里县', 522700);
INSERT INTO `users_areainfo` VALUES (522731, '惠水县', 522700);
INSERT INTO `users_areainfo` VALUES (522732, '三都水族自治县', 522700);
INSERT INTO `users_areainfo` VALUES (522733, '其它区', 522700);
INSERT INTO `users_areainfo` VALUES (530000, '云南', 0);
INSERT INTO `users_areainfo` VALUES (530100, '昆明', 530000);
INSERT INTO `users_areainfo` VALUES (530102, '五华区', 530100);
INSERT INTO `users_areainfo` VALUES (530103, '盘龙区', 530100);
INSERT INTO `users_areainfo` VALUES (530111, '官渡区', 530100);
INSERT INTO `users_areainfo` VALUES (530112, '西山区', 530100);
INSERT INTO `users_areainfo` VALUES (530113, '东川区', 530100);
INSERT INTO `users_areainfo` VALUES (530121, '呈贡县', 530100);
INSERT INTO `users_areainfo` VALUES (530122, '晋宁县', 530100);
INSERT INTO `users_areainfo` VALUES (530124, '富民县', 530100);
INSERT INTO `users_areainfo` VALUES (530125, '宜良县', 530100);
INSERT INTO `users_areainfo` VALUES (530126, '石林彝族自治县', 530100);
INSERT INTO `users_areainfo` VALUES (530127, '嵩明县', 530100);
INSERT INTO `users_areainfo` VALUES (530128, '禄劝彝族苗族自治县', 530100);
INSERT INTO `users_areainfo` VALUES (530129, '寻甸回族彝族自治县', 530100);
INSERT INTO `users_areainfo` VALUES (530181, '安宁市', 530100);
INSERT INTO `users_areainfo` VALUES (530182, '其它区', 530100);
INSERT INTO `users_areainfo` VALUES (530300, '曲靖', 530000);
INSERT INTO `users_areainfo` VALUES (530302, '麒麟区', 530300);
INSERT INTO `users_areainfo` VALUES (530321, '马龙县', 530300);
INSERT INTO `users_areainfo` VALUES (530322, '陆良县', 530300);
INSERT INTO `users_areainfo` VALUES (530323, '师宗县', 530300);
INSERT INTO `users_areainfo` VALUES (530324, '罗平县', 530300);
INSERT INTO `users_areainfo` VALUES (530325, '富源县', 530300);
INSERT INTO `users_areainfo` VALUES (530326, '会泽县', 530300);
INSERT INTO `users_areainfo` VALUES (530328, '沾益县', 530300);
INSERT INTO `users_areainfo` VALUES (530381, '宣威市', 530300);
INSERT INTO `users_areainfo` VALUES (530382, '其它区', 530300);
INSERT INTO `users_areainfo` VALUES (530400, '玉溪', 530000);
INSERT INTO `users_areainfo` VALUES (530402, '红塔区', 530400);
INSERT INTO `users_areainfo` VALUES (530421, '江川县', 530400);
INSERT INTO `users_areainfo` VALUES (530422, '澄江县', 530400);
INSERT INTO `users_areainfo` VALUES (530423, '通海县', 530400);
INSERT INTO `users_areainfo` VALUES (530424, '华宁县', 530400);
INSERT INTO `users_areainfo` VALUES (530425, '易门县', 530400);
INSERT INTO `users_areainfo` VALUES (530426, '峨山彝族自治县', 530400);
INSERT INTO `users_areainfo` VALUES (530427, '新平彝族傣族自治县', 530400);
INSERT INTO `users_areainfo` VALUES (530428, '元江哈尼族彝族傣族自治县', 530400);
INSERT INTO `users_areainfo` VALUES (530429, '其它区', 530400);
INSERT INTO `users_areainfo` VALUES (530500, '保山', 530000);
INSERT INTO `users_areainfo` VALUES (530502, '隆阳区', 530500);
INSERT INTO `users_areainfo` VALUES (530521, '施甸县', 530500);
INSERT INTO `users_areainfo` VALUES (530522, '腾冲县', 530500);
INSERT INTO `users_areainfo` VALUES (530523, '龙陵县', 530500);
INSERT INTO `users_areainfo` VALUES (530524, '昌宁县', 530500);
INSERT INTO `users_areainfo` VALUES (530525, '其它区', 530500);
INSERT INTO `users_areainfo` VALUES (530600, '昭通', 530000);
INSERT INTO `users_areainfo` VALUES (530602, '昭阳区', 530600);
INSERT INTO `users_areainfo` VALUES (530621, '鲁甸县', 530600);
INSERT INTO `users_areainfo` VALUES (530622, '巧家县', 530600);
INSERT INTO `users_areainfo` VALUES (530623, '盐津县', 530600);
INSERT INTO `users_areainfo` VALUES (530624, '大关县', 530600);
INSERT INTO `users_areainfo` VALUES (530625, '永善县', 530600);
INSERT INTO `users_areainfo` VALUES (530626, '绥江县', 530600);
INSERT INTO `users_areainfo` VALUES (530627, '镇雄县', 530600);
INSERT INTO `users_areainfo` VALUES (530628, '彝良县', 530600);
INSERT INTO `users_areainfo` VALUES (530629, '威信县', 530600);
INSERT INTO `users_areainfo` VALUES (530630, '水富县', 530600);
INSERT INTO `users_areainfo` VALUES (530631, '其它区', 530600);
INSERT INTO `users_areainfo` VALUES (530700, '丽江', 530000);
INSERT INTO `users_areainfo` VALUES (530702, '古城区', 530700);
INSERT INTO `users_areainfo` VALUES (530721, '玉龙纳西族自治县', 530700);
INSERT INTO `users_areainfo` VALUES (530722, '永胜县', 530700);
INSERT INTO `users_areainfo` VALUES (530723, '华坪县', 530700);
INSERT INTO `users_areainfo` VALUES (530724, '宁蒗彝族自治县', 530700);
INSERT INTO `users_areainfo` VALUES (530725, '其它区', 530700);
INSERT INTO `users_areainfo` VALUES (530800, '思茅', 530000);
INSERT INTO `users_areainfo` VALUES (530802, '翠云区', 530800);
INSERT INTO `users_areainfo` VALUES (530821, '普洱哈尼族彝族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530822, '墨江哈尼族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530823, '景东彝族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530824, '景谷傣族彝族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530825, '镇沅彝族哈尼族拉祜族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530826, '江城哈尼族彝族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530827, '孟连傣族拉祜族佤族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530828, '澜沧拉祜族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530829, '西盟佤族自治县', 530800);
INSERT INTO `users_areainfo` VALUES (530830, '其它区', 530800);
INSERT INTO `users_areainfo` VALUES (530900, '临沧', 530000);
INSERT INTO `users_areainfo` VALUES (530902, '临翔区', 530900);
INSERT INTO `users_areainfo` VALUES (530921, '凤庆县', 530900);
INSERT INTO `users_areainfo` VALUES (530922, '云县', 530900);
INSERT INTO `users_areainfo` VALUES (530923, '永德县', 530900);
INSERT INTO `users_areainfo` VALUES (530924, '镇康县', 530900);
INSERT INTO `users_areainfo` VALUES (530925, '双江拉祜族佤族布朗族傣族自治县', 530900);
INSERT INTO `users_areainfo` VALUES (530926, '耿马傣族佤族自治县', 530900);
INSERT INTO `users_areainfo` VALUES (530927, '沧源佤族自治县', 530900);
INSERT INTO `users_areainfo` VALUES (530928, '其它区', 530900);
INSERT INTO `users_areainfo` VALUES (532300, '楚雄', 530000);
INSERT INTO `users_areainfo` VALUES (532301, '楚雄市', 532300);
INSERT INTO `users_areainfo` VALUES (532322, '双柏县', 532300);
INSERT INTO `users_areainfo` VALUES (532323, '牟定县', 532300);
INSERT INTO `users_areainfo` VALUES (532324, '南华县', 532300);
INSERT INTO `users_areainfo` VALUES (532325, '姚安县', 532300);
INSERT INTO `users_areainfo` VALUES (532326, '大姚县', 532300);
INSERT INTO `users_areainfo` VALUES (532327, '永仁县', 532300);
INSERT INTO `users_areainfo` VALUES (532328, '元谋县', 532300);
INSERT INTO `users_areainfo` VALUES (532329, '武定县', 532300);
INSERT INTO `users_areainfo` VALUES (532331, '禄丰县', 532300);
INSERT INTO `users_areainfo` VALUES (532332, '其它区', 532300);
INSERT INTO `users_areainfo` VALUES (532500, '红河', 530000);
INSERT INTO `users_areainfo` VALUES (532501, '个旧市', 532500);
INSERT INTO `users_areainfo` VALUES (532502, '开远市', 532500);
INSERT INTO `users_areainfo` VALUES (532522, '蒙自县', 532500);
INSERT INTO `users_areainfo` VALUES (532523, '屏边苗族自治县', 532500);
INSERT INTO `users_areainfo` VALUES (532524, '建水县', 532500);
INSERT INTO `users_areainfo` VALUES (532525, '石屏县', 532500);
INSERT INTO `users_areainfo` VALUES (532526, '弥勒县', 532500);
INSERT INTO `users_areainfo` VALUES (532527, '泸西县', 532500);
INSERT INTO `users_areainfo` VALUES (532528, '元阳县', 532500);
INSERT INTO `users_areainfo` VALUES (532529, '红河县', 532500);
INSERT INTO `users_areainfo` VALUES (532530, '金平苗族瑶族傣族自治县', 532500);
INSERT INTO `users_areainfo` VALUES (532531, '绿春县', 532500);
INSERT INTO `users_areainfo` VALUES (532532, '河口瑶族自治县', 532500);
INSERT INTO `users_areainfo` VALUES (532533, '其它区', 532500);
INSERT INTO `users_areainfo` VALUES (532600, '文山', 530000);
INSERT INTO `users_areainfo` VALUES (532621, '文山县', 532600);
INSERT INTO `users_areainfo` VALUES (532622, '砚山县', 532600);
INSERT INTO `users_areainfo` VALUES (532623, '西畴县', 532600);
INSERT INTO `users_areainfo` VALUES (532624, '麻栗坡县', 532600);
INSERT INTO `users_areainfo` VALUES (532625, '马关县', 532600);
INSERT INTO `users_areainfo` VALUES (532626, '丘北县', 532600);
INSERT INTO `users_areainfo` VALUES (532627, '广南县', 532600);
INSERT INTO `users_areainfo` VALUES (532628, '富宁县', 532600);
INSERT INTO `users_areainfo` VALUES (532629, '其它区', 532600);
INSERT INTO `users_areainfo` VALUES (532800, '西双版纳', 530000);
INSERT INTO `users_areainfo` VALUES (532801, '景洪市', 532800);
INSERT INTO `users_areainfo` VALUES (532822, '勐海县', 532800);
INSERT INTO `users_areainfo` VALUES (532823, '勐腊县', 532800);
INSERT INTO `users_areainfo` VALUES (532824, '其它区', 532800);
INSERT INTO `users_areainfo` VALUES (532900, '大理', 530000);
INSERT INTO `users_areainfo` VALUES (532901, '大理市', 532900);
INSERT INTO `users_areainfo` VALUES (532922, '漾濞彝族自治县', 532900);
INSERT INTO `users_areainfo` VALUES (532923, '祥云县', 532900);
INSERT INTO `users_areainfo` VALUES (532924, '宾川县', 532900);
INSERT INTO `users_areainfo` VALUES (532925, '弥渡县', 532900);
INSERT INTO `users_areainfo` VALUES (532926, '南涧彝族自治县', 532900);
INSERT INTO `users_areainfo` VALUES (532927, '巍山彝族回族自治县', 532900);
INSERT INTO `users_areainfo` VALUES (532928, '永平县', 532900);
INSERT INTO `users_areainfo` VALUES (532929, '云龙县', 532900);
INSERT INTO `users_areainfo` VALUES (532930, '洱源县', 532900);
INSERT INTO `users_areainfo` VALUES (532931, '剑川县', 532900);
INSERT INTO `users_areainfo` VALUES (532932, '鹤庆县', 532900);
INSERT INTO `users_areainfo` VALUES (532933, '其它区', 532900);
INSERT INTO `users_areainfo` VALUES (533100, '德宏', 530000);
INSERT INTO `users_areainfo` VALUES (533102, '瑞丽市', 533100);
INSERT INTO `users_areainfo` VALUES (533103, '潞西市', 533100);
INSERT INTO `users_areainfo` VALUES (533122, '梁河县', 533100);
INSERT INTO `users_areainfo` VALUES (533123, '盈江县', 533100);
INSERT INTO `users_areainfo` VALUES (533124, '陇川县', 533100);
INSERT INTO `users_areainfo` VALUES (533125, '其它区', 533100);
INSERT INTO `users_areainfo` VALUES (533300, '怒江', 530000);
INSERT INTO `users_areainfo` VALUES (533321, '泸水县', 533300);
INSERT INTO `users_areainfo` VALUES (533323, '福贡县', 533300);
INSERT INTO `users_areainfo` VALUES (533324, '贡山独龙族怒族自治县', 533300);
INSERT INTO `users_areainfo` VALUES (533325, '兰坪白族普米族自治县', 533300);
INSERT INTO `users_areainfo` VALUES (533326, '其它区', 533300);
INSERT INTO `users_areainfo` VALUES (533400, '迪庆', 530000);
INSERT INTO `users_areainfo` VALUES (533421, '香格里拉县', 533400);
INSERT INTO `users_areainfo` VALUES (533422, '德钦县', 533400);
INSERT INTO `users_areainfo` VALUES (533423, '维西傈僳族自治县', 533400);
INSERT INTO `users_areainfo` VALUES (533424, '其它区', 533400);
INSERT INTO `users_areainfo` VALUES (540000, '西藏', 0);
INSERT INTO `users_areainfo` VALUES (540100, '拉萨', 540000);
INSERT INTO `users_areainfo` VALUES (540102, '城关区', 540100);
INSERT INTO `users_areainfo` VALUES (540121, '林周县', 540100);
INSERT INTO `users_areainfo` VALUES (540122, '当雄县', 540100);
INSERT INTO `users_areainfo` VALUES (540123, '尼木县', 540100);
INSERT INTO `users_areainfo` VALUES (540124, '曲水县', 540100);
INSERT INTO `users_areainfo` VALUES (540125, '堆龙德庆县', 540100);
INSERT INTO `users_areainfo` VALUES (540126, '达孜县', 540100);
INSERT INTO `users_areainfo` VALUES (540127, '墨竹工卡县', 540100);
INSERT INTO `users_areainfo` VALUES (540128, '其它区', 540100);
INSERT INTO `users_areainfo` VALUES (542100, '昌都', 540000);
INSERT INTO `users_areainfo` VALUES (542121, '昌都县', 542100);
INSERT INTO `users_areainfo` VALUES (542122, '江达县', 542100);
INSERT INTO `users_areainfo` VALUES (542123, '贡觉县', 542100);
INSERT INTO `users_areainfo` VALUES (542124, '类乌齐县', 542100);
INSERT INTO `users_areainfo` VALUES (542125, '丁青县', 542100);
INSERT INTO `users_areainfo` VALUES (542126, '察雅县', 542100);
INSERT INTO `users_areainfo` VALUES (542127, '八宿县', 542100);
INSERT INTO `users_areainfo` VALUES (542128, '左贡县', 542100);
INSERT INTO `users_areainfo` VALUES (542129, '芒康县', 542100);
INSERT INTO `users_areainfo` VALUES (542132, '洛隆县', 542100);
INSERT INTO `users_areainfo` VALUES (542133, '边坝县', 542100);
INSERT INTO `users_areainfo` VALUES (542134, '其它区', 542100);
INSERT INTO `users_areainfo` VALUES (542200, '山南', 540000);
INSERT INTO `users_areainfo` VALUES (542221, '乃东县', 542200);
INSERT INTO `users_areainfo` VALUES (542222, '扎囊县', 542200);
INSERT INTO `users_areainfo` VALUES (542223, '贡嘎县', 542200);
INSERT INTO `users_areainfo` VALUES (542224, '桑日县', 542200);
INSERT INTO `users_areainfo` VALUES (542225, '琼结县', 542200);
INSERT INTO `users_areainfo` VALUES (542226, '曲松县', 542200);
INSERT INTO `users_areainfo` VALUES (542227, '措美县', 542200);
INSERT INTO `users_areainfo` VALUES (542228, '洛扎县', 542200);
INSERT INTO `users_areainfo` VALUES (542229, '加查县', 542200);
INSERT INTO `users_areainfo` VALUES (542231, '隆子县', 542200);
INSERT INTO `users_areainfo` VALUES (542232, '错那县', 542200);
INSERT INTO `users_areainfo` VALUES (542233, '浪卡子县', 542200);
INSERT INTO `users_areainfo` VALUES (542234, '其它区', 542200);
INSERT INTO `users_areainfo` VALUES (542300, '日喀则', 540000);
INSERT INTO `users_areainfo` VALUES (542301, '日喀则市', 542300);
INSERT INTO `users_areainfo` VALUES (542322, '南木林县', 542300);
INSERT INTO `users_areainfo` VALUES (542323, '江孜县', 542300);
INSERT INTO `users_areainfo` VALUES (542324, '定日县', 542300);
INSERT INTO `users_areainfo` VALUES (542325, '萨迦县', 542300);
INSERT INTO `users_areainfo` VALUES (542326, '拉孜县', 542300);
INSERT INTO `users_areainfo` VALUES (542327, '昂仁县', 542300);
INSERT INTO `users_areainfo` VALUES (542328, '谢通门县', 542300);
INSERT INTO `users_areainfo` VALUES (542329, '白朗县', 542300);
INSERT INTO `users_areainfo` VALUES (542330, '仁布县', 542300);
INSERT INTO `users_areainfo` VALUES (542331, '康马县', 542300);
INSERT INTO `users_areainfo` VALUES (542332, '定结县', 542300);
INSERT INTO `users_areainfo` VALUES (542333, '仲巴县', 542300);
INSERT INTO `users_areainfo` VALUES (542334, '亚东县', 542300);
INSERT INTO `users_areainfo` VALUES (542335, '吉隆县', 542300);
INSERT INTO `users_areainfo` VALUES (542336, '聂拉木县', 542300);
INSERT INTO `users_areainfo` VALUES (542337, '萨嘎县', 542300);
INSERT INTO `users_areainfo` VALUES (542338, '岗巴县', 542300);
INSERT INTO `users_areainfo` VALUES (542339, '其它区', 542300);
INSERT INTO `users_areainfo` VALUES (542400, '那曲', 540000);
INSERT INTO `users_areainfo` VALUES (542421, '那曲县', 542400);
INSERT INTO `users_areainfo` VALUES (542422, '嘉黎县', 542400);
INSERT INTO `users_areainfo` VALUES (542423, '比如县', 542400);
INSERT INTO `users_areainfo` VALUES (542424, '聂荣县', 542400);
INSERT INTO `users_areainfo` VALUES (542425, '安多县', 542400);
INSERT INTO `users_areainfo` VALUES (542426, '申扎县', 542400);
INSERT INTO `users_areainfo` VALUES (542427, '索县', 542400);
INSERT INTO `users_areainfo` VALUES (542428, '班戈县', 542400);
INSERT INTO `users_areainfo` VALUES (542429, '巴青县', 542400);
INSERT INTO `users_areainfo` VALUES (542430, '尼玛县', 542400);
INSERT INTO `users_areainfo` VALUES (542431, '其它区', 542400);
INSERT INTO `users_areainfo` VALUES (542500, '阿里', 540000);
INSERT INTO `users_areainfo` VALUES (542521, '普兰县', 542500);
INSERT INTO `users_areainfo` VALUES (542522, '札达县', 542500);
INSERT INTO `users_areainfo` VALUES (542523, '噶尔县', 542500);
INSERT INTO `users_areainfo` VALUES (542524, '日土县', 542500);
INSERT INTO `users_areainfo` VALUES (542525, '革吉县', 542500);
INSERT INTO `users_areainfo` VALUES (542526, '改则县', 542500);
INSERT INTO `users_areainfo` VALUES (542527, '措勤县', 542500);
INSERT INTO `users_areainfo` VALUES (542528, '其它区', 542500);
INSERT INTO `users_areainfo` VALUES (542600, '林芝', 540000);
INSERT INTO `users_areainfo` VALUES (542621, '林芝县', 542600);
INSERT INTO `users_areainfo` VALUES (542622, '工布江达县', 542600);
INSERT INTO `users_areainfo` VALUES (542623, '米林县', 542600);
INSERT INTO `users_areainfo` VALUES (542624, '墨脱县', 542600);
INSERT INTO `users_areainfo` VALUES (542625, '波密县', 542600);
INSERT INTO `users_areainfo` VALUES (542626, '察隅县', 542600);
INSERT INTO `users_areainfo` VALUES (542627, '朗县', 542600);
INSERT INTO `users_areainfo` VALUES (542628, '其它区', 542600);
INSERT INTO `users_areainfo` VALUES (610000, '陕西', 0);
INSERT INTO `users_areainfo` VALUES (610100, '西安', 610000);
INSERT INTO `users_areainfo` VALUES (610102, '新城区', 610100);
INSERT INTO `users_areainfo` VALUES (610103, '碑林区', 610100);
INSERT INTO `users_areainfo` VALUES (610104, '莲湖区', 610100);
INSERT INTO `users_areainfo` VALUES (610111, '灞桥区', 610100);
INSERT INTO `users_areainfo` VALUES (610112, '未央区', 610100);
INSERT INTO `users_areainfo` VALUES (610113, '雁塔区', 610100);
INSERT INTO `users_areainfo` VALUES (610114, '阎良区', 610100);
INSERT INTO `users_areainfo` VALUES (610115, '临潼区', 610100);
INSERT INTO `users_areainfo` VALUES (610116, '长安区', 610100);
INSERT INTO `users_areainfo` VALUES (610122, '蓝田县', 610100);
INSERT INTO `users_areainfo` VALUES (610124, '周至县', 610100);
INSERT INTO `users_areainfo` VALUES (610125, '户县', 610100);
INSERT INTO `users_areainfo` VALUES (610126, '高陵县', 610100);
INSERT INTO `users_areainfo` VALUES (610127, '其它区', 610100);
INSERT INTO `users_areainfo` VALUES (610200, '铜川', 610000);
INSERT INTO `users_areainfo` VALUES (610202, '王益区', 610200);
INSERT INTO `users_areainfo` VALUES (610203, '印台区', 610200);
INSERT INTO `users_areainfo` VALUES (610204, '耀州区', 610200);
INSERT INTO `users_areainfo` VALUES (610222, '宜君县', 610200);
INSERT INTO `users_areainfo` VALUES (610223, '其它区', 610200);
INSERT INTO `users_areainfo` VALUES (610300, '宝鸡', 610000);
INSERT INTO `users_areainfo` VALUES (610302, '渭滨区', 610300);
INSERT INTO `users_areainfo` VALUES (610303, '金台区', 610300);
INSERT INTO `users_areainfo` VALUES (610304, '陈仓区', 610300);
INSERT INTO `users_areainfo` VALUES (610322, '凤翔县', 610300);
INSERT INTO `users_areainfo` VALUES (610323, '岐山县', 610300);
INSERT INTO `users_areainfo` VALUES (610324, '扶风县', 610300);
INSERT INTO `users_areainfo` VALUES (610326, '眉县', 610300);
INSERT INTO `users_areainfo` VALUES (610327, '陇县', 610300);
INSERT INTO `users_areainfo` VALUES (610328, '千阳县', 610300);
INSERT INTO `users_areainfo` VALUES (610329, '麟游县', 610300);
INSERT INTO `users_areainfo` VALUES (610330, '凤县', 610300);
INSERT INTO `users_areainfo` VALUES (610331, '太白县', 610300);
INSERT INTO `users_areainfo` VALUES (610332, '其它区', 610300);
INSERT INTO `users_areainfo` VALUES (610400, '咸阳', 610000);
INSERT INTO `users_areainfo` VALUES (610402, '秦都区', 610400);
INSERT INTO `users_areainfo` VALUES (610403, '杨凌区', 610400);
INSERT INTO `users_areainfo` VALUES (610404, '渭城区', 610400);
INSERT INTO `users_areainfo` VALUES (610422, '三原县', 610400);
INSERT INTO `users_areainfo` VALUES (610423, '泾阳县', 610400);
INSERT INTO `users_areainfo` VALUES (610424, '乾县', 610400);
INSERT INTO `users_areainfo` VALUES (610425, '礼泉县', 610400);
INSERT INTO `users_areainfo` VALUES (610426, '永寿县', 610400);
INSERT INTO `users_areainfo` VALUES (610427, '彬县', 610400);
INSERT INTO `users_areainfo` VALUES (610428, '长武县', 610400);
INSERT INTO `users_areainfo` VALUES (610429, '旬邑县', 610400);
INSERT INTO `users_areainfo` VALUES (610430, '淳化县', 610400);
INSERT INTO `users_areainfo` VALUES (610431, '武功县', 610400);
INSERT INTO `users_areainfo` VALUES (610481, '兴平市', 610400);
INSERT INTO `users_areainfo` VALUES (610482, '其它区', 610400);
INSERT INTO `users_areainfo` VALUES (610500, '渭南', 610000);
INSERT INTO `users_areainfo` VALUES (610502, '临渭区', 610500);
INSERT INTO `users_areainfo` VALUES (610521, '华县', 610500);
INSERT INTO `users_areainfo` VALUES (610522, '潼关县', 610500);
INSERT INTO `users_areainfo` VALUES (610523, '大荔县', 610500);
INSERT INTO `users_areainfo` VALUES (610524, '合阳县', 610500);
INSERT INTO `users_areainfo` VALUES (610525, '澄城县', 610500);
INSERT INTO `users_areainfo` VALUES (610526, '蒲城县', 610500);
INSERT INTO `users_areainfo` VALUES (610527, '白水县', 610500);
INSERT INTO `users_areainfo` VALUES (610528, '富平县', 610500);
INSERT INTO `users_areainfo` VALUES (610581, '韩城市', 610500);
INSERT INTO `users_areainfo` VALUES (610582, '华阴市', 610500);
INSERT INTO `users_areainfo` VALUES (610583, '其它区', 610500);
INSERT INTO `users_areainfo` VALUES (610600, '延安', 610000);
INSERT INTO `users_areainfo` VALUES (610602, '宝塔区', 610600);
INSERT INTO `users_areainfo` VALUES (610621, '延长县', 610600);
INSERT INTO `users_areainfo` VALUES (610622, '延川县', 610600);
INSERT INTO `users_areainfo` VALUES (610623, '子长县', 610600);
INSERT INTO `users_areainfo` VALUES (610624, '安塞县', 610600);
INSERT INTO `users_areainfo` VALUES (610625, '志丹县', 610600);
INSERT INTO `users_areainfo` VALUES (610626, '吴起县', 610600);
INSERT INTO `users_areainfo` VALUES (610627, '甘泉县', 610600);
INSERT INTO `users_areainfo` VALUES (610628, '富县', 610600);
INSERT INTO `users_areainfo` VALUES (610629, '洛川县', 610600);
INSERT INTO `users_areainfo` VALUES (610630, '宜川县', 610600);
INSERT INTO `users_areainfo` VALUES (610631, '黄龙县', 610600);
INSERT INTO `users_areainfo` VALUES (610632, '黄陵县', 610600);
INSERT INTO `users_areainfo` VALUES (610633, '其它区', 610600);
INSERT INTO `users_areainfo` VALUES (610700, '汉中', 610000);
INSERT INTO `users_areainfo` VALUES (610702, '汉台区', 610700);
INSERT INTO `users_areainfo` VALUES (610721, '南郑县', 610700);
INSERT INTO `users_areainfo` VALUES (610722, '城固县', 610700);
INSERT INTO `users_areainfo` VALUES (610723, '洋县', 610700);
INSERT INTO `users_areainfo` VALUES (610724, '西乡县', 610700);
INSERT INTO `users_areainfo` VALUES (610725, '勉县', 610700);
INSERT INTO `users_areainfo` VALUES (610726, '宁强县', 610700);
INSERT INTO `users_areainfo` VALUES (610727, '略阳县', 610700);
INSERT INTO `users_areainfo` VALUES (610728, '镇巴县', 610700);
INSERT INTO `users_areainfo` VALUES (610729, '留坝县', 610700);
INSERT INTO `users_areainfo` VALUES (610730, '佛坪县', 610700);
INSERT INTO `users_areainfo` VALUES (610731, '其它区', 610700);
INSERT INTO `users_areainfo` VALUES (610800, '榆林', 610000);
INSERT INTO `users_areainfo` VALUES (610802, '榆阳区', 610800);
INSERT INTO `users_areainfo` VALUES (610821, '神木县', 610800);
INSERT INTO `users_areainfo` VALUES (610822, '府谷县', 610800);
INSERT INTO `users_areainfo` VALUES (610823, '横山县', 610800);
INSERT INTO `users_areainfo` VALUES (610824, '靖边县', 610800);
INSERT INTO `users_areainfo` VALUES (610825, '定边县', 610800);
INSERT INTO `users_areainfo` VALUES (610826, '绥德县', 610800);
INSERT INTO `users_areainfo` VALUES (610827, '米脂县', 610800);
INSERT INTO `users_areainfo` VALUES (610828, '佳县', 610800);
INSERT INTO `users_areainfo` VALUES (610829, '吴堡县', 610800);
INSERT INTO `users_areainfo` VALUES (610830, '清涧县', 610800);
INSERT INTO `users_areainfo` VALUES (610831, '子洲县', 610800);
INSERT INTO `users_areainfo` VALUES (610832, '其它区', 610800);
INSERT INTO `users_areainfo` VALUES (610900, '安康', 610000);
INSERT INTO `users_areainfo` VALUES (610902, '汉滨区', 610900);
INSERT INTO `users_areainfo` VALUES (610921, '汉阴县', 610900);
INSERT INTO `users_areainfo` VALUES (610922, '石泉县', 610900);
INSERT INTO `users_areainfo` VALUES (610923, '宁陕县', 610900);
INSERT INTO `users_areainfo` VALUES (610924, '紫阳县', 610900);
INSERT INTO `users_areainfo` VALUES (610925, '岚皋县', 610900);
INSERT INTO `users_areainfo` VALUES (610926, '平利县', 610900);
INSERT INTO `users_areainfo` VALUES (610927, '镇坪县', 610900);
INSERT INTO `users_areainfo` VALUES (610928, '旬阳县', 610900);
INSERT INTO `users_areainfo` VALUES (610929, '白河县', 610900);
INSERT INTO `users_areainfo` VALUES (610930, '其它区', 610900);
INSERT INTO `users_areainfo` VALUES (611000, '商洛', 610000);
INSERT INTO `users_areainfo` VALUES (611002, '商州区', 611000);
INSERT INTO `users_areainfo` VALUES (611021, '洛南县', 611000);
INSERT INTO `users_areainfo` VALUES (611022, '丹凤县', 611000);
INSERT INTO `users_areainfo` VALUES (611023, '商南县', 611000);
INSERT INTO `users_areainfo` VALUES (611024, '山阳县', 611000);
INSERT INTO `users_areainfo` VALUES (611025, '镇安县', 611000);
INSERT INTO `users_areainfo` VALUES (611026, '柞水县', 611000);
INSERT INTO `users_areainfo` VALUES (611027, '其它区', 611000);
INSERT INTO `users_areainfo` VALUES (620000, '甘肃', 0);
INSERT INTO `users_areainfo` VALUES (620100, '兰州', 620000);
INSERT INTO `users_areainfo` VALUES (620102, '城关区', 620100);
INSERT INTO `users_areainfo` VALUES (620103, '七里河区', 620100);
INSERT INTO `users_areainfo` VALUES (620104, '西固区', 620100);
INSERT INTO `users_areainfo` VALUES (620105, '安宁区', 620100);
INSERT INTO `users_areainfo` VALUES (620111, '红古区', 620100);
INSERT INTO `users_areainfo` VALUES (620121, '永登县', 620100);
INSERT INTO `users_areainfo` VALUES (620122, '皋兰县', 620100);
INSERT INTO `users_areainfo` VALUES (620123, '榆中县', 620100);
INSERT INTO `users_areainfo` VALUES (620124, '其它区', 620100);
INSERT INTO `users_areainfo` VALUES (620200, '嘉峪关', 620000);
INSERT INTO `users_areainfo` VALUES (620300, '金昌', 620000);
INSERT INTO `users_areainfo` VALUES (620302, '金川区', 620300);
INSERT INTO `users_areainfo` VALUES (620321, '永昌县', 620300);
INSERT INTO `users_areainfo` VALUES (620322, '其它区', 620300);
INSERT INTO `users_areainfo` VALUES (620400, '白银', 620000);
INSERT INTO `users_areainfo` VALUES (620402, '白银区', 620400);
INSERT INTO `users_areainfo` VALUES (620403, '平川区', 620400);
INSERT INTO `users_areainfo` VALUES (620421, '靖远县', 620400);
INSERT INTO `users_areainfo` VALUES (620422, '会宁县', 620400);
INSERT INTO `users_areainfo` VALUES (620423, '景泰县', 620400);
INSERT INTO `users_areainfo` VALUES (620424, '其它区', 620400);
INSERT INTO `users_areainfo` VALUES (620500, '天水', 620000);
INSERT INTO `users_areainfo` VALUES (620502, '秦州区', 620500);
INSERT INTO `users_areainfo` VALUES (620503, '麦积区', 620500);
INSERT INTO `users_areainfo` VALUES (620521, '清水县', 620500);
INSERT INTO `users_areainfo` VALUES (620522, '秦安县', 620500);
INSERT INTO `users_areainfo` VALUES (620523, '甘谷县', 620500);
INSERT INTO `users_areainfo` VALUES (620524, '武山县', 620500);
INSERT INTO `users_areainfo` VALUES (620525, '张家川回族自治县', 620500);
INSERT INTO `users_areainfo` VALUES (620526, '其它区', 620500);
INSERT INTO `users_areainfo` VALUES (620600, '武威', 620000);
INSERT INTO `users_areainfo` VALUES (620602, '凉州区', 620600);
INSERT INTO `users_areainfo` VALUES (620621, '民勤县', 620600);
INSERT INTO `users_areainfo` VALUES (620622, '古浪县', 620600);
INSERT INTO `users_areainfo` VALUES (620623, '天祝藏族自治县', 620600);
INSERT INTO `users_areainfo` VALUES (620624, '其它区', 620600);
INSERT INTO `users_areainfo` VALUES (620700, '张掖', 620000);
INSERT INTO `users_areainfo` VALUES (620702, '甘州区', 620700);
INSERT INTO `users_areainfo` VALUES (620721, '肃南裕固族自治县', 620700);
INSERT INTO `users_areainfo` VALUES (620722, '民乐县', 620700);
INSERT INTO `users_areainfo` VALUES (620723, '临泽县', 620700);
INSERT INTO `users_areainfo` VALUES (620724, '高台县', 620700);
INSERT INTO `users_areainfo` VALUES (620725, '山丹县', 620700);
INSERT INTO `users_areainfo` VALUES (620726, '其它区', 620700);
INSERT INTO `users_areainfo` VALUES (620800, '平凉', 620000);
INSERT INTO `users_areainfo` VALUES (620802, '崆峒区', 620800);
INSERT INTO `users_areainfo` VALUES (620821, '泾川县', 620800);
INSERT INTO `users_areainfo` VALUES (620822, '灵台县', 620800);
INSERT INTO `users_areainfo` VALUES (620823, '崇信县', 620800);
INSERT INTO `users_areainfo` VALUES (620824, '华亭县', 620800);
INSERT INTO `users_areainfo` VALUES (620825, '庄浪县', 620800);
INSERT INTO `users_areainfo` VALUES (620826, '静宁县', 620800);
INSERT INTO `users_areainfo` VALUES (620827, '其它区', 620800);
INSERT INTO `users_areainfo` VALUES (620900, '酒泉', 620000);
INSERT INTO `users_areainfo` VALUES (620902, '肃州区', 620900);
INSERT INTO `users_areainfo` VALUES (620921, '金塔县', 620900);
INSERT INTO `users_areainfo` VALUES (620922, '安西县', 620900);
INSERT INTO `users_areainfo` VALUES (620923, '肃北蒙古族自治县', 620900);
INSERT INTO `users_areainfo` VALUES (620924, '阿克塞哈萨克族自治县', 620900);
INSERT INTO `users_areainfo` VALUES (620981, '玉门市', 620900);
INSERT INTO `users_areainfo` VALUES (620982, '敦煌市', 620900);
INSERT INTO `users_areainfo` VALUES (620983, '其它区', 620900);
INSERT INTO `users_areainfo` VALUES (621000, '庆阳', 620000);
INSERT INTO `users_areainfo` VALUES (621002, '西峰区', 621000);
INSERT INTO `users_areainfo` VALUES (621021, '庆城县', 621000);
INSERT INTO `users_areainfo` VALUES (621022, '环县', 621000);
INSERT INTO `users_areainfo` VALUES (621023, '华池县', 621000);
INSERT INTO `users_areainfo` VALUES (621024, '合水县', 621000);
INSERT INTO `users_areainfo` VALUES (621025, '正宁县', 621000);
INSERT INTO `users_areainfo` VALUES (621026, '宁县', 621000);
INSERT INTO `users_areainfo` VALUES (621027, '镇原县', 621000);
INSERT INTO `users_areainfo` VALUES (621028, '其它区', 621000);
INSERT INTO `users_areainfo` VALUES (621100, '定西', 620000);
INSERT INTO `users_areainfo` VALUES (621102, '安定区', 621100);
INSERT INTO `users_areainfo` VALUES (621121, '通渭县', 621100);
INSERT INTO `users_areainfo` VALUES (621122, '陇西县', 621100);
INSERT INTO `users_areainfo` VALUES (621123, '渭源县', 621100);
INSERT INTO `users_areainfo` VALUES (621124, '临洮县', 621100);
INSERT INTO `users_areainfo` VALUES (621125, '漳县', 621100);
INSERT INTO `users_areainfo` VALUES (621126, '岷县', 621100);
INSERT INTO `users_areainfo` VALUES (621127, '其它区', 621100);
INSERT INTO `users_areainfo` VALUES (621200, '陇南', 620000);
INSERT INTO `users_areainfo` VALUES (621202, '武都区', 621200);
INSERT INTO `users_areainfo` VALUES (621221, '成县', 621200);
INSERT INTO `users_areainfo` VALUES (621222, '文县', 621200);
INSERT INTO `users_areainfo` VALUES (621223, '宕昌县', 621200);
INSERT INTO `users_areainfo` VALUES (621224, '康县', 621200);
INSERT INTO `users_areainfo` VALUES (621225, '西和县', 621200);
INSERT INTO `users_areainfo` VALUES (621226, '礼县', 621200);
INSERT INTO `users_areainfo` VALUES (621227, '徽县', 621200);
INSERT INTO `users_areainfo` VALUES (621228, '两当县', 621200);
INSERT INTO `users_areainfo` VALUES (621229, '其它区', 621200);
INSERT INTO `users_areainfo` VALUES (622900, '临夏', 620000);
INSERT INTO `users_areainfo` VALUES (622901, '临夏市', 622900);
INSERT INTO `users_areainfo` VALUES (622921, '临夏县', 622900);
INSERT INTO `users_areainfo` VALUES (622922, '康乐县', 622900);
INSERT INTO `users_areainfo` VALUES (622923, '永靖县', 622900);
INSERT INTO `users_areainfo` VALUES (622924, '广河县', 622900);
INSERT INTO `users_areainfo` VALUES (622925, '和政县', 622900);
INSERT INTO `users_areainfo` VALUES (622926, '东乡族自治县', 622900);
INSERT INTO `users_areainfo` VALUES (622927, '积石山保安族东乡族撒拉族自治县', 622900);
INSERT INTO `users_areainfo` VALUES (622928, '其它区', 622900);
INSERT INTO `users_areainfo` VALUES (623000, '甘南', 620000);
INSERT INTO `users_areainfo` VALUES (623001, '合作市', 623000);
INSERT INTO `users_areainfo` VALUES (623021, '临潭县', 623000);
INSERT INTO `users_areainfo` VALUES (623022, '卓尼县', 623000);
INSERT INTO `users_areainfo` VALUES (623023, '舟曲县', 623000);
INSERT INTO `users_areainfo` VALUES (623024, '迭部县', 623000);
INSERT INTO `users_areainfo` VALUES (623025, '玛曲县', 623000);
INSERT INTO `users_areainfo` VALUES (623026, '碌曲县', 623000);
INSERT INTO `users_areainfo` VALUES (623027, '夏河县', 623000);
INSERT INTO `users_areainfo` VALUES (623028, '其它区', 623000);
INSERT INTO `users_areainfo` VALUES (630000, '青海', 0);
INSERT INTO `users_areainfo` VALUES (630100, '西宁', 630000);
INSERT INTO `users_areainfo` VALUES (630102, '城东区', 630100);
INSERT INTO `users_areainfo` VALUES (630103, '城中区', 630100);
INSERT INTO `users_areainfo` VALUES (630104, '城西区', 630100);
INSERT INTO `users_areainfo` VALUES (630105, '城北区', 630100);
INSERT INTO `users_areainfo` VALUES (630121, '大通回族土族自治县', 630100);
INSERT INTO `users_areainfo` VALUES (630122, '湟中县', 630100);
INSERT INTO `users_areainfo` VALUES (630123, '湟源县', 630100);
INSERT INTO `users_areainfo` VALUES (630124, '其它区', 630100);
INSERT INTO `users_areainfo` VALUES (632100, '海东', 630000);
INSERT INTO `users_areainfo` VALUES (632121, '平安县', 632100);
INSERT INTO `users_areainfo` VALUES (632122, '民和回族土族自治县', 632100);
INSERT INTO `users_areainfo` VALUES (632123, '乐都县', 632100);
INSERT INTO `users_areainfo` VALUES (632126, '互助土族自治县', 632100);
INSERT INTO `users_areainfo` VALUES (632127, '化隆回族自治县', 632100);
INSERT INTO `users_areainfo` VALUES (632128, '循化撒拉族自治县', 632100);
INSERT INTO `users_areainfo` VALUES (632129, '其它区', 632100);
INSERT INTO `users_areainfo` VALUES (632200, '海北', 630000);
INSERT INTO `users_areainfo` VALUES (632221, '门源回族自治县', 632200);
INSERT INTO `users_areainfo` VALUES (632222, '祁连县', 632200);
INSERT INTO `users_areainfo` VALUES (632223, '海晏县', 632200);
INSERT INTO `users_areainfo` VALUES (632224, '刚察县', 632200);
INSERT INTO `users_areainfo` VALUES (632225, '其它区', 632200);
INSERT INTO `users_areainfo` VALUES (632300, '黄南', 630000);
INSERT INTO `users_areainfo` VALUES (632321, '同仁县', 632300);
INSERT INTO `users_areainfo` VALUES (632322, '尖扎县', 632300);
INSERT INTO `users_areainfo` VALUES (632323, '泽库县', 632300);
INSERT INTO `users_areainfo` VALUES (632324, '河南蒙古族自治县', 632300);
INSERT INTO `users_areainfo` VALUES (632325, '其它区', 632300);
INSERT INTO `users_areainfo` VALUES (632500, '海南', 630000);
INSERT INTO `users_areainfo` VALUES (632521, '共和县', 632500);
INSERT INTO `users_areainfo` VALUES (632522, '同德县', 632500);
INSERT INTO `users_areainfo` VALUES (632523, '贵德县', 632500);
INSERT INTO `users_areainfo` VALUES (632524, '兴海县', 632500);
INSERT INTO `users_areainfo` VALUES (632525, '贵南县', 632500);
INSERT INTO `users_areainfo` VALUES (632526, '其它区', 632500);
INSERT INTO `users_areainfo` VALUES (632600, '果洛', 630000);
INSERT INTO `users_areainfo` VALUES (632621, '玛沁县', 632600);
INSERT INTO `users_areainfo` VALUES (632622, '班玛县', 632600);
INSERT INTO `users_areainfo` VALUES (632623, '甘德县', 632600);
INSERT INTO `users_areainfo` VALUES (632624, '达日县', 632600);
INSERT INTO `users_areainfo` VALUES (632625, '久治县', 632600);
INSERT INTO `users_areainfo` VALUES (632626, '玛多县', 632600);
INSERT INTO `users_areainfo` VALUES (632627, '其它区', 632600);
INSERT INTO `users_areainfo` VALUES (632700, '玉树', 630000);
INSERT INTO `users_areainfo` VALUES (632721, '玉树县', 632700);
INSERT INTO `users_areainfo` VALUES (632722, '杂多县', 632700);
INSERT INTO `users_areainfo` VALUES (632723, '称多县', 632700);
INSERT INTO `users_areainfo` VALUES (632724, '治多县', 632700);
INSERT INTO `users_areainfo` VALUES (632725, '囊谦县', 632700);
INSERT INTO `users_areainfo` VALUES (632726, '曲麻莱县', 632700);
INSERT INTO `users_areainfo` VALUES (632727, '其它区', 632700);
INSERT INTO `users_areainfo` VALUES (632800, '海西', 630000);
INSERT INTO `users_areainfo` VALUES (632801, '格尔木市', 632800);
INSERT INTO `users_areainfo` VALUES (632802, '德令哈市', 632800);
INSERT INTO `users_areainfo` VALUES (632821, '乌兰县', 632800);
INSERT INTO `users_areainfo` VALUES (632822, '都兰县', 632800);
INSERT INTO `users_areainfo` VALUES (632823, '天峻县', 632800);
INSERT INTO `users_areainfo` VALUES (632824, '其它区', 632800);
INSERT INTO `users_areainfo` VALUES (640000, '宁夏', 0);
INSERT INTO `users_areainfo` VALUES (640100, '银川', 640000);
INSERT INTO `users_areainfo` VALUES (640104, '兴庆区', 640100);
INSERT INTO `users_areainfo` VALUES (640105, '西夏区', 640100);
INSERT INTO `users_areainfo` VALUES (640106, '金凤区', 640100);
INSERT INTO `users_areainfo` VALUES (640121, '永宁县', 640100);
INSERT INTO `users_areainfo` VALUES (640122, '贺兰县', 640100);
INSERT INTO `users_areainfo` VALUES (640181, '灵武市', 640100);
INSERT INTO `users_areainfo` VALUES (640182, '其它区', 640100);
INSERT INTO `users_areainfo` VALUES (640200, '石嘴山', 640000);
INSERT INTO `users_areainfo` VALUES (640202, '大武口区', 640200);
INSERT INTO `users_areainfo` VALUES (640205, '惠农区', 640200);
INSERT INTO `users_areainfo` VALUES (640221, '平罗县', 640200);
INSERT INTO `users_areainfo` VALUES (640222, '其它区', 640200);
INSERT INTO `users_areainfo` VALUES (640300, '吴忠', 640000);
INSERT INTO `users_areainfo` VALUES (640302, '利通区', 640300);
INSERT INTO `users_areainfo` VALUES (640323, '盐池县', 640300);
INSERT INTO `users_areainfo` VALUES (640324, '同心县', 640300);
INSERT INTO `users_areainfo` VALUES (640381, '青铜峡市', 640300);
INSERT INTO `users_areainfo` VALUES (640382, '其它区', 640300);
INSERT INTO `users_areainfo` VALUES (640400, '固原', 640000);
INSERT INTO `users_areainfo` VALUES (640402, '原州区', 640400);
INSERT INTO `users_areainfo` VALUES (640422, '西吉县', 640400);
INSERT INTO `users_areainfo` VALUES (640423, '隆德县', 640400);
INSERT INTO `users_areainfo` VALUES (640424, '泾源县', 640400);
INSERT INTO `users_areainfo` VALUES (640425, '彭阳县', 640400);
INSERT INTO `users_areainfo` VALUES (640426, '其它区', 640400);
INSERT INTO `users_areainfo` VALUES (640500, '中卫', 640000);
INSERT INTO `users_areainfo` VALUES (640502, '沙坡头区', 640500);
INSERT INTO `users_areainfo` VALUES (640521, '中宁县', 640500);
INSERT INTO `users_areainfo` VALUES (640522, '海原县', 640500);
INSERT INTO `users_areainfo` VALUES (640523, '其它区', 640500);
INSERT INTO `users_areainfo` VALUES (650000, '新疆', 0);
INSERT INTO `users_areainfo` VALUES (650100, '乌鲁木齐', 650000);
INSERT INTO `users_areainfo` VALUES (650102, '天山区', 650100);
INSERT INTO `users_areainfo` VALUES (650103, '沙依巴克区', 650100);
INSERT INTO `users_areainfo` VALUES (650104, '新市区', 650100);
INSERT INTO `users_areainfo` VALUES (650105, '水磨沟区', 650100);
INSERT INTO `users_areainfo` VALUES (650106, '头屯河区', 650100);
INSERT INTO `users_areainfo` VALUES (650107, '达坂城区', 650100);
INSERT INTO `users_areainfo` VALUES (650108, '东山区', 650100);
INSERT INTO `users_areainfo` VALUES (650121, '乌鲁木齐县', 650100);
INSERT INTO `users_areainfo` VALUES (650122, '其它区', 650100);
INSERT INTO `users_areainfo` VALUES (650200, '克拉玛依', 650000);
INSERT INTO `users_areainfo` VALUES (650202, '独山子区', 650200);
INSERT INTO `users_areainfo` VALUES (650203, '克拉玛依区', 650200);
INSERT INTO `users_areainfo` VALUES (650204, '白碱滩区', 650200);
INSERT INTO `users_areainfo` VALUES (650205, '乌尔禾区', 650200);
INSERT INTO `users_areainfo` VALUES (650206, '其它区', 650200);
INSERT INTO `users_areainfo` VALUES (652100, '吐鲁番', 650000);
INSERT INTO `users_areainfo` VALUES (652101, '吐鲁番市', 652100);
INSERT INTO `users_areainfo` VALUES (652122, '鄯善县', 652100);
INSERT INTO `users_areainfo` VALUES (652123, '托克逊县', 652100);
INSERT INTO `users_areainfo` VALUES (652124, '其它区', 652100);
INSERT INTO `users_areainfo` VALUES (652200, '哈密', 650000);
INSERT INTO `users_areainfo` VALUES (652201, '哈密市', 652200);
INSERT INTO `users_areainfo` VALUES (652222, '巴里坤哈萨克自治县', 652200);
INSERT INTO `users_areainfo` VALUES (652223, '伊吾县', 652200);
INSERT INTO `users_areainfo` VALUES (652224, '其它区', 652200);
INSERT INTO `users_areainfo` VALUES (652300, '昌吉', 650000);
INSERT INTO `users_areainfo` VALUES (652301, '昌吉市', 652300);
INSERT INTO `users_areainfo` VALUES (652302, '阜康市', 652300);
INSERT INTO `users_areainfo` VALUES (652303, '米泉市', 652300);
INSERT INTO `users_areainfo` VALUES (652323, '呼图壁县', 652300);
INSERT INTO `users_areainfo` VALUES (652324, '玛纳斯县', 652300);
INSERT INTO `users_areainfo` VALUES (652325, '奇台县', 652300);
INSERT INTO `users_areainfo` VALUES (652327, '吉木萨尔县', 652300);
INSERT INTO `users_areainfo` VALUES (652328, '木垒哈萨克自治县', 652300);
INSERT INTO `users_areainfo` VALUES (652329, '其它区', 652300);
INSERT INTO `users_areainfo` VALUES (652700, '博尔塔拉', 650000);
INSERT INTO `users_areainfo` VALUES (652701, '博乐市', 652700);
INSERT INTO `users_areainfo` VALUES (652722, '精河县', 652700);
INSERT INTO `users_areainfo` VALUES (652723, '温泉县', 652700);
INSERT INTO `users_areainfo` VALUES (652724, '其它区', 652700);
INSERT INTO `users_areainfo` VALUES (652800, '巴音郭楞', 650000);
INSERT INTO `users_areainfo` VALUES (652801, '库尔勒市', 652800);
INSERT INTO `users_areainfo` VALUES (652822, '轮台县', 652800);
INSERT INTO `users_areainfo` VALUES (652823, '尉犁县', 652800);
INSERT INTO `users_areainfo` VALUES (652824, '若羌县', 652800);
INSERT INTO `users_areainfo` VALUES (652825, '且末县', 652800);
INSERT INTO `users_areainfo` VALUES (652826, '焉耆回族自治县', 652800);
INSERT INTO `users_areainfo` VALUES (652827, '和静县', 652800);
INSERT INTO `users_areainfo` VALUES (652828, '和硕县', 652800);
INSERT INTO `users_areainfo` VALUES (652829, '博湖县', 652800);
INSERT INTO `users_areainfo` VALUES (652830, '其它区', 652800);
INSERT INTO `users_areainfo` VALUES (652900, '阿克苏', 650000);
INSERT INTO `users_areainfo` VALUES (652901, '阿克苏市', 652900);
INSERT INTO `users_areainfo` VALUES (652922, '温宿县', 652900);
INSERT INTO `users_areainfo` VALUES (652923, '库车县', 652900);
INSERT INTO `users_areainfo` VALUES (652924, '沙雅县', 652900);
INSERT INTO `users_areainfo` VALUES (652925, '新和县', 652900);
INSERT INTO `users_areainfo` VALUES (652926, '拜城县', 652900);
INSERT INTO `users_areainfo` VALUES (652927, '乌什县', 652900);
INSERT INTO `users_areainfo` VALUES (652928, '阿瓦提县', 652900);
INSERT INTO `users_areainfo` VALUES (652929, '柯坪县', 652900);
INSERT INTO `users_areainfo` VALUES (652930, '其它区', 652900);
INSERT INTO `users_areainfo` VALUES (653000, '克孜勒苏柯尔克孜', 650000);
INSERT INTO `users_areainfo` VALUES (653001, '阿图什市', 653000);
INSERT INTO `users_areainfo` VALUES (653022, '阿克陶县', 653000);
INSERT INTO `users_areainfo` VALUES (653023, '阿合奇县', 653000);
INSERT INTO `users_areainfo` VALUES (653024, '乌恰县', 653000);
INSERT INTO `users_areainfo` VALUES (653025, '其它区', 653000);
INSERT INTO `users_areainfo` VALUES (653100, '喀什', 650000);
INSERT INTO `users_areainfo` VALUES (653101, '喀什市', 653100);
INSERT INTO `users_areainfo` VALUES (653121, '疏附县', 653100);
INSERT INTO `users_areainfo` VALUES (653122, '疏勒县', 653100);
INSERT INTO `users_areainfo` VALUES (653123, '英吉沙县', 653100);
INSERT INTO `users_areainfo` VALUES (653124, '泽普县', 653100);
INSERT INTO `users_areainfo` VALUES (653125, '莎车县', 653100);
INSERT INTO `users_areainfo` VALUES (653126, '叶城县', 653100);
INSERT INTO `users_areainfo` VALUES (653127, '麦盖提县', 653100);
INSERT INTO `users_areainfo` VALUES (653128, '岳普湖县', 653100);
INSERT INTO `users_areainfo` VALUES (653129, '伽师县', 653100);
INSERT INTO `users_areainfo` VALUES (653130, '巴楚县', 653100);
INSERT INTO `users_areainfo` VALUES (653131, '塔什库尔干塔吉克自治县', 653100);
INSERT INTO `users_areainfo` VALUES (653132, '其它区', 653100);
INSERT INTO `users_areainfo` VALUES (653200, '和田', 650000);
INSERT INTO `users_areainfo` VALUES (653201, '和田市', 653200);
INSERT INTO `users_areainfo` VALUES (653221, '和田县', 653200);
INSERT INTO `users_areainfo` VALUES (653222, '墨玉县', 653200);
INSERT INTO `users_areainfo` VALUES (653223, '皮山县', 653200);
INSERT INTO `users_areainfo` VALUES (653224, '洛浦县', 653200);
INSERT INTO `users_areainfo` VALUES (653225, '策勒县', 653200);
INSERT INTO `users_areainfo` VALUES (653226, '于田县', 653200);
INSERT INTO `users_areainfo` VALUES (653227, '民丰县', 653200);
INSERT INTO `users_areainfo` VALUES (653228, '其它区', 653200);
INSERT INTO `users_areainfo` VALUES (654000, '伊犁', 650000);
INSERT INTO `users_areainfo` VALUES (654002, '伊宁市', 654000);
INSERT INTO `users_areainfo` VALUES (654003, '奎屯市', 654000);
INSERT INTO `users_areainfo` VALUES (654021, '伊宁县', 654000);
INSERT INTO `users_areainfo` VALUES (654022, '察布查尔锡伯自治县', 654000);
INSERT INTO `users_areainfo` VALUES (654023, '霍城县', 654000);
INSERT INTO `users_areainfo` VALUES (654024, '巩留县', 654000);
INSERT INTO `users_areainfo` VALUES (654025, '新源县', 654000);
INSERT INTO `users_areainfo` VALUES (654026, '昭苏县', 654000);
INSERT INTO `users_areainfo` VALUES (654027, '特克斯县', 654000);
INSERT INTO `users_areainfo` VALUES (654028, '尼勒克县', 654000);
INSERT INTO `users_areainfo` VALUES (654029, '其它区', 654000);
INSERT INTO `users_areainfo` VALUES (654200, '塔城', 650000);
INSERT INTO `users_areainfo` VALUES (654201, '塔城市', 654200);
INSERT INTO `users_areainfo` VALUES (654202, '乌苏市', 654200);
INSERT INTO `users_areainfo` VALUES (654221, '额敏县', 654200);
INSERT INTO `users_areainfo` VALUES (654223, '沙湾县', 654200);
INSERT INTO `users_areainfo` VALUES (654224, '托里县', 654200);
INSERT INTO `users_areainfo` VALUES (654225, '裕民县', 654200);
INSERT INTO `users_areainfo` VALUES (654226, '和布克赛尔蒙古自治县', 654200);
INSERT INTO `users_areainfo` VALUES (654227, '其它区', 654200);
INSERT INTO `users_areainfo` VALUES (654300, '阿勒泰', 650000);
INSERT INTO `users_areainfo` VALUES (654301, '阿勒泰市', 654300);
INSERT INTO `users_areainfo` VALUES (654321, '布尔津县', 654300);
INSERT INTO `users_areainfo` VALUES (654322, '富蕴县', 654300);
INSERT INTO `users_areainfo` VALUES (654323, '福海县', 654300);
INSERT INTO `users_areainfo` VALUES (654324, '哈巴河县', 654300);
INSERT INTO `users_areainfo` VALUES (654325, '青河县', 654300);
INSERT INTO `users_areainfo` VALUES (654326, '吉木乃县', 654300);
INSERT INTO `users_areainfo` VALUES (654327, '其它区', 654300);
INSERT INTO `users_areainfo` VALUES (659001, '石河子', 650000);
INSERT INTO `users_areainfo` VALUES (659002, '阿拉尔', 650000);
INSERT INTO `users_areainfo` VALUES (659003, '图木舒克', 650000);
INSERT INTO `users_areainfo` VALUES (659004, '五家渠', 650000);
INSERT INTO `users_areainfo` VALUES (710000, '台湾', 0);
INSERT INTO `users_areainfo` VALUES (710100, '台北', 710000);
INSERT INTO `users_areainfo` VALUES (710101, '中正区', 710100);
INSERT INTO `users_areainfo` VALUES (710102, '大同区', 710100);
INSERT INTO `users_areainfo` VALUES (710103, '中山区', 710100);
INSERT INTO `users_areainfo` VALUES (710104, '松山区', 710100);
INSERT INTO `users_areainfo` VALUES (710105, '大安区', 710100);
INSERT INTO `users_areainfo` VALUES (710106, '万华区', 710100);
INSERT INTO `users_areainfo` VALUES (710107, '信义区', 710100);
INSERT INTO `users_areainfo` VALUES (710108, '士林区', 710100);
INSERT INTO `users_areainfo` VALUES (710109, '北投区', 710100);
INSERT INTO `users_areainfo` VALUES (710110, '内湖区', 710100);
INSERT INTO `users_areainfo` VALUES (710111, '南港区', 710100);
INSERT INTO `users_areainfo` VALUES (710112, '文山区', 710100);
INSERT INTO `users_areainfo` VALUES (710113, '其它区', 710100);
INSERT INTO `users_areainfo` VALUES (710200, '高雄', 710000);
INSERT INTO `users_areainfo` VALUES (710201, '新兴区', 710200);
INSERT INTO `users_areainfo` VALUES (710202, '前金区', 710200);
INSERT INTO `users_areainfo` VALUES (710203, '芩雅区', 710200);
INSERT INTO `users_areainfo` VALUES (710204, '盐埕区', 710200);
INSERT INTO `users_areainfo` VALUES (710205, '鼓山区', 710200);
INSERT INTO `users_areainfo` VALUES (710206, '旗津区', 710200);
INSERT INTO `users_areainfo` VALUES (710207, '前镇区', 710200);
INSERT INTO `users_areainfo` VALUES (710208, '三民区', 710200);
INSERT INTO `users_areainfo` VALUES (710209, '左营区', 710200);
INSERT INTO `users_areainfo` VALUES (710210, '楠梓区', 710200);
INSERT INTO `users_areainfo` VALUES (710211, '小港区', 710200);
INSERT INTO `users_areainfo` VALUES (710212, '其它区', 710200);
INSERT INTO `users_areainfo` VALUES (710300, '台南', 710000);
INSERT INTO `users_areainfo` VALUES (710301, '中西区', 710300);
INSERT INTO `users_areainfo` VALUES (710302, '东区', 710300);
INSERT INTO `users_areainfo` VALUES (710303, '南区', 710300);
INSERT INTO `users_areainfo` VALUES (710304, '北区', 710300);
INSERT INTO `users_areainfo` VALUES (710305, '安平区', 710300);
INSERT INTO `users_areainfo` VALUES (710306, '安南区', 710300);
INSERT INTO `users_areainfo` VALUES (710307, '其它区', 710300);
INSERT INTO `users_areainfo` VALUES (710400, '台中', 710000);
INSERT INTO `users_areainfo` VALUES (710401, '中区', 710400);
INSERT INTO `users_areainfo` VALUES (710402, '东区', 710400);
INSERT INTO `users_areainfo` VALUES (710403, '南区', 710400);
INSERT INTO `users_areainfo` VALUES (710404, '西区', 710400);
INSERT INTO `users_areainfo` VALUES (710405, '北区', 710400);
INSERT INTO `users_areainfo` VALUES (710406, '北屯区', 710400);
INSERT INTO `users_areainfo` VALUES (710407, '西屯区', 710400);
INSERT INTO `users_areainfo` VALUES (710408, '南屯区', 710400);
INSERT INTO `users_areainfo` VALUES (710409, '其它区', 710400);
INSERT INTO `users_areainfo` VALUES (710500, '金门', 710000);
INSERT INTO `users_areainfo` VALUES (710600, '南投', 710000);
INSERT INTO `users_areainfo` VALUES (710700, '基隆', 710000);
INSERT INTO `users_areainfo` VALUES (710701, '仁爱区', 710700);
INSERT INTO `users_areainfo` VALUES (710702, '信义区', 710700);
INSERT INTO `users_areainfo` VALUES (710703, '中正区', 710700);
INSERT INTO `users_areainfo` VALUES (710704, '中山区', 710700);
INSERT INTO `users_areainfo` VALUES (710705, '安乐区', 710700);
INSERT INTO `users_areainfo` VALUES (710706, '暖暖区', 710700);
INSERT INTO `users_areainfo` VALUES (710707, '七堵区', 710700);
INSERT INTO `users_areainfo` VALUES (710708, '其它区', 710700);
INSERT INTO `users_areainfo` VALUES (710800, '新竹', 710000);
INSERT INTO `users_areainfo` VALUES (710801, '东区', 710800);
INSERT INTO `users_areainfo` VALUES (710802, '北区', 710800);
INSERT INTO `users_areainfo` VALUES (710803, '香山区', 710800);
INSERT INTO `users_areainfo` VALUES (710804, '其它区', 710800);
INSERT INTO `users_areainfo` VALUES (710900, '嘉义', 710000);
INSERT INTO `users_areainfo` VALUES (710901, '东区', 710900);
INSERT INTO `users_areainfo` VALUES (710902, '西区', 710900);
INSERT INTO `users_areainfo` VALUES (710903, '其它区', 710900);
INSERT INTO `users_areainfo` VALUES (711100, '台北', 710000);
INSERT INTO `users_areainfo` VALUES (711200, '宜兰', 710000);
INSERT INTO `users_areainfo` VALUES (711300, '新竹', 710000);
INSERT INTO `users_areainfo` VALUES (711400, '桃园', 710000);
INSERT INTO `users_areainfo` VALUES (711500, '苗栗', 710000);
INSERT INTO `users_areainfo` VALUES (711600, '台中', 710000);
INSERT INTO `users_areainfo` VALUES (711700, '彰化', 710000);
INSERT INTO `users_areainfo` VALUES (711900, '嘉义', 710000);
INSERT INTO `users_areainfo` VALUES (712100, '云林', 710000);
INSERT INTO `users_areainfo` VALUES (712200, '台南', 710000);
INSERT INTO `users_areainfo` VALUES (712300, '高雄', 710000);
INSERT INTO `users_areainfo` VALUES (712400, '屏东', 710000);
INSERT INTO `users_areainfo` VALUES (712500, '台东', 710000);
INSERT INTO `users_areainfo` VALUES (712600, '花莲', 710000);
INSERT INTO `users_areainfo` VALUES (712700, '澎湖', 710000);
INSERT INTO `users_areainfo` VALUES (810000, '香港', 0);
INSERT INTO `users_areainfo` VALUES (810100, '香港岛', 810000);
INSERT INTO `users_areainfo` VALUES (810200, '九龙', 810000);
INSERT INTO `users_areainfo` VALUES (810300, '新界', 810000);
INSERT INTO `users_areainfo` VALUES (820000, '澳门', 0);
INSERT INTO `users_areainfo` VALUES (820100, '澳门', 820000);
INSERT INTO `users_areainfo` VALUES (820200, '离岛', 820000);
INSERT INTO `users_areainfo` VALUES (990000, '海外', 0);
INSERT INTO `users_areainfo` VALUES (990100, '海外', 990000);

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, '宽窄巷子', 'banner/2018/11/b1.png', '/scenicspots/scenic_detail/4/', '2019-01-30 13:50:00.000000');
INSERT INTO `users_banner` VALUES (2, '熊猫', 'banner/2018/11/b2.png', '/diarys/details/3/', '2019-01-30 13:55:00.000000');
INSERT INTO `users_banner` VALUES (3, '锦里', 'banner/2018/11/b3.jpg', '/shop/detail/1/', '2019-01-30 13:56:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_myuser
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser`;
CREATE TABLE `users_myuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  `nickname` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_addr` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NOT NULL,
  `signature` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `portrait` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `integral` int(11) NOT NULL,
  `check_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_myuser
-- ----------------------------
INSERT INTO `users_myuser` VALUES (1, 'pbkdf2_sha256$150000$QIeFLlwKGgcM$XBq4NGVWsqsxvIbV+DBozrQ3oJDQGSt5ryFo4jLYrAk=', '2019-04-13 09:17:14.460790', 1, 'ganin', '', '', 'agamgn@163.com', 1, 1, '2019-01-30 11:09:15.103530', 'agamgn', 'male', '410302', '1997-10-28', '', 'image/default.jpg', 6360, '2019-01-30');
INSERT INTO `users_myuser` VALUES (25, 'pbkdf2_sha256$150000$QIeFLlwKGgcM$XBq4NGVWsqsxvIbV+DBozrQ3oJDQGSt5ryFo4jLYrAk=', '2019-04-12 21:02:40.574978', 1, 'ganin2', '', '', 'agamgn@163.com', 0, 1, '2019-04-12 21:02:23.202913', '', 'secret', '410302', '1970-01-01', '', 'image/default.jpg', 40, '2019-04-13');

-- ----------------------------
-- Table structure for users_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser_groups`;
CREATE TABLE `users_myuser_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_myuser_groups_myuser_id_group_id_701de95c_uniq`(`myuser_id`, `group_id`) USING BTREE,
  INDEX `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_myuser_groups_myuser_id_6c79e2c5_fk_users_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser_user_permissions`;
CREATE TABLE `users_myuser_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_myuser_user_permis_myuser_id_permission_id_bfff4a24_uniq`(`myuser_id`, `permission_id`) USING BTREE,
  INDEX `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_myuser_user_pe_myuser_id_7135c2f9_fk_users_myu` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_thecontact
-- ----------------------------
DROP TABLE IF EXISTS `users_thecontact`;
CREATE TABLE `users_thecontact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_addr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_thecontact_user_id_41dc7913_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `users_thecontact_user_id_41dc7913_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);
INSERT INTO `xadmin_usersettings` VALUES (3, 'dashboard:home:pos', '', 25);
INSERT INTO `xadmin_usersettings` VALUES (4, 'site-theme', 'https://bootswatch.com/3/yeti/bootstrap.min.css', 25);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
