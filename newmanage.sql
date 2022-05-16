/*
 Navicat Premium Data Transfer

 Source Server         : Manage
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : newmanage

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 20/07/2021 09:42:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buildings
-- ----------------------------
DROP TABLE IF EXISTS `buildings`;
CREATE TABLE `buildings`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `buildName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `buildId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `buildFloor` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `buildName`(`buildName`) USING BTREE,
  UNIQUE INDEX `buildId`(`buildId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buildings
-- ----------------------------
INSERT INTO `buildings` VALUES (1, '北一', 'N1', 6);
INSERT INTO `buildings` VALUES (2, '北二', 'N2', 6);
INSERT INTO `buildings` VALUES (3, '北三', 'N3', 6);
INSERT INTO `buildings` VALUES (4, '北四', 'N4', 6);
INSERT INTO `buildings` VALUES (5, '北五', 'N5', 6);
INSERT INTO `buildings` VALUES (6, '北六', 'N6', 6);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `schoolId` int(0) NULL DEFAULT NULL,
  `noticeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `noticeContent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `noticeTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `noticeForBuildId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告可查看范围',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (13, 18053227, 'xvc', 'xzczxc', '2021-07-11', 'N4');
INSERT INTO `notice` VALUES (14, 18053227, 'xvc', 'xzczxc', '2021-07-11', 'N4');
INSERT INTO `notice` VALUES (15, 18053227, 'xvc', 'xzczxc', '2021-07-11', 'N4');
INSERT INTO `notice` VALUES (23, 18053227, 'xvc', 'xzczxc', '2021-07-11', 'N4');
INSERT INTO `notice` VALUES (45, 18053227, '测试', '测试', '2021-07-11', 'N4');
INSERT INTO `notice` VALUES (80, 18053227, '关于做好2021年暑假期间有关工作的通知', '学校各部门、各单位：\n\n按照应急管理大学（筹）临时党委工作安排，根据校历并结合学校实际，现将2021年暑假期间有关工作通知如下。\n\n一、休假相关要求\n\n（一）为确保暑假期间大学筹建及融合工作不断线，随时接受教育部高评委专家进校考察，休假要求如下：\n\n1.学校党政领导班子全体成员不休假，原则上应在校在岗，负责组织有关部门落实大学筹建和融合的各项工作任务。如遇出差、培训、事假、病假等，按照《应急管理大学（筹）党政领导班子成员外出审批制度》办理请销假手续。\n\n2.筹建专项工作组成员原则上不休假，按照临时党委工作部署和要求，认真落实大学筹建相关工作，利用假期查漏补缺、提升质量。如因故请假，严格按干部请销假程序办理相关手续，通过钉钉移动办公平台填报干部外出报告，获得批准后向所在专项工作组组长请假，并报筹建工作组办公室备案。各筹建专项工作组下设的工作小组成员，由各工作组自行确定休假原则。\n\n3.有接受专家进校考察任务的单位主要负责人、教学单位实验室主任原则上不休假，相关工作人员休假从严控制，并保证随叫随到。\n\n4.全体教职员工暑期保持24小时信息畅通，离开常住地需通过钉钉移动办公平台填报职工假期外出备案表。如有工作任务，必须在规定时间内返回岗位。各部门（单位）主要负责人要全面掌握所辖教职员工情况，从严审批假期外出。\n\n（二）教职工7月19日（周一）开始，按临时党委工作安排和本通知要求进行轮休，8月30日（周一）正式上班。\n\n（三）在校生9月3日返校，9月6日开始课堂教学；2020级学生8月23日—9月1日军训；2021级新生9月4日报到，9月5日—18日入学教育及军训，9月22日开始课堂教学。\n\n二、常抓不懈集中实习和校园安全\n\n（一）教务处认真做好夏季学期集中实习教学安排。各教学单位扎实做好学生安全教育工作，排查校外实习路线安全隐患。各部门（单位）应加强对留校学生的服务保障和安全管理。\n\n（二）加强公共场所服务和管理。\n\n1.校内有实习实训教学安排的教学楼、实验楼等，全部按时开放。如有特殊使用需求，请提前与安全工作处联系。大学生创业基地（东平房）封闭。\n\n2.图书馆阅览室周一至周日8:00—21：30分层开放。书库每周五8:00—11:00开放。\n\n3.南、北校区综合运动场开放；体育馆每日13：00—15：00、16：00—18：00开放；游泳馆开放时间另行通知。\n\n（三）各部门（单位）假前认真进行安全自查，做好记录，假期期间关好门窗、水电、设备等，不使用的实验室、办公室封闭，确保安全。安全工作处、后勤管理处负责巡查校园公共区域，发现问题及时处置。信息化管理中心做好网络服务保障。\n\n三、慎终如始做好常态化疫情防控\n\n（一）严格遵守居住地及学校疫情防控要求，按照“应接尽接”原则，尽快完成新冠肺炎疫苗接种。学校疫情防控领导小组办公室将根据实际情况，适时组织集中疫苗接种，具体时间另行通知。\n\n（二）减少出行，禁止前往疫情中高风险地区；慎重前往洪涝灾害严重、泥石流地质灾害频发地区。\n\n（三）离开常住地后，如遇当地疫情发生变化升级，应及时返回，并配合上级部门和学校进行旅居史排查。\n\n（四）后勤管理处关注食品安全尤其是冷链食品安全监管；安全工作处严格校区出入管理，加强校园巡逻，确保安全稳定。\n\n四、扎实做好值班值守\n\n严格落实值班制度，强化岗位责任，保证各项工作正常运转。各部门（单位）负责人和值班人员须保持通讯畅通，遇到问题及时妥善处置，发生紧急情况和突发事件要在第一时间上报主管领导。所有值班人员应按照值班时间到岗，严禁擅离职守，杜绝迟到、早退、空岗等现象。\n\n（一）学校24小时值班室设在承基楼一楼监控室，电话为010-61596144；白天干部值班室设在明德楼320室，电话为010-61596250；夜间值班室设在明德楼108室，电话为010-61596234。\n\n（二）学校安排校领导带班、干部值班。请值班干部做好时间安排，详见《2021年暑假干部值班安排》（附件1），因特殊原因确需调整值班时间的，由本人与其他同级人员协商调换，详见《干部值班调换表》（附件2），并于7月16日17:00前填写值班调换表，报送学校办公室备案（联系人：尹婷）。\n\n（三）用印、开具介绍信及收发报纸、信件的时间为周二、周五9：00—11：00、15:00-17:00，涉及印信申请等业务时，请提前完成申办流程。\n\n（四）各部门（单位）安排好部门（单位）的值班工作，并于7月16日17：00前将暑假期间值班安排发布到部门网站，并填写《各部门（单位）暑假值班表》（附件3），发送至邮箱bgs@cidp.edu.cn，报送学校办公室备案（联系人：尹婷）。\n\n五、加强服务保障工作\n\n做好食堂、公寓及水、电、暖等方面的保障服务，为在校师生员工提供良好的生活和工作条件。\n\n（一）餐饮安排:南校区思源餐厅一层及二层面包房、民族餐厅开放，北校区望舒餐厅一层、水吧、面包房开放；教工餐厅正常开放。\n\n（二）学生公寓：假期学生公寓不封闭，正常开放。\n\n（三）开水及洗浴服务:南、北校区浴室及开水房按常规时间段开放。\n\n（四）商贸服务：天猫超市（南校医务室店）（北校区店）9:00—18:00正常营业。防灾驿站9:00—18:00正常营业。\n\n（五）医疗服务：南校区医务所每日工作时间9：00—11：00、15:00—17:00。\n\n（六）日常维修：水暖、电力、木工维修人员正常上班。\n\n物业报修方式：拨打电话010-58412811（上班时间）；填报钉钉办公平台—防灾学院—物业报事报修；微信“防灾学院微服务”公众号—微服务—我要报修。\n\n（七）家属区电表充值及一卡通业务。\n\n\n\n \n\n以上通知要求，将根据疫情形势及学校工作实际适时调整', '2021-07-16', '0');
INSERT INTO `notice` VALUES (81, 18053227, '测试', '测试\n   测试\n       测试\n撒大声地\n佛挡杀佛', '2021-07-16', '0');
INSERT INTO `notice` VALUES (82, 18053227, '擦', '测\n测', '2021-07-16', '0');
INSERT INTO `notice` VALUES (83, 18053227, '测试', '撒大大\n市大安市大的', '2021-07-16', '0');
INSERT INTO `notice` VALUES (85, 18053227, '刚刚', '滚滚滚<br/>啊实打实', '2021-07-16', '0');
INSERT INTO `notice` VALUES (87, 18053227, '关于做好2021年暑假期间有关工作的通知', '学校各部门、各单位：<br/><br/>按照应急管理大学（筹）临时党委工作安排，根据校历并结合学校实际，现将2021年暑假期间有关工作通知如下。<br/><br/>一、休假相关要求<br/><br/>（一）为确保暑假期间大学筹建及融合工作不断线，随时接受教育部高评委专家进校考察，休假要求如下：<br/><br/>1.学校党政领导班子全体成员不休假，原则上应在校在岗，负责组织有关部门落实大学筹建和融合的各项工作任务。如遇出差、培训、事假、病假等，按照《应急管理大学（筹）党政领导班子成员外出审批制度》办理请销假手续。<br/><br/>2.筹建专项工作组成员原则上不休假，按照临时党委工作部署和要求，认真落实大学筹建相关工作，利用假期查漏补缺、提升质量。如因故请假，严格按干部请销假程序办理相关手续，通过钉钉移动办公平台填报干部外出报告，获得批准后向所在专项工作组组长请假，并报筹建工作组办公室备案。各筹建专项工作组下设的工作小组成员，由各工作组自行确定休假原则。<br/><br/>3.有接受专家进校考察任务的单位主要负责人、教学单位实验室主任原则上不休假，相关工作人员休假从严控制，并保证随叫随到。<br/><br/>4.全体教职员工暑期保持24小时信息畅通，离开常住地需通过钉钉移动办公平台填报职工假期外出备案表。如有工作任务，必须在规定时间内返回岗位。各部门（单位）主要负责人要全面掌握所辖教职员工情况，从严审批假期外出。<br/><br/>（二）教职工7月19日（周一）开始，按临时党委工作安排和本通知要求进行轮休，8月30日（周一）正式上班。<br/><br/>（三）在校生9月3日返校，9月6日开始课堂教学；2020级学生8月23日—9月1日军训；2021级新生9月4日报到，9月5日—18日入学教育及军训，9月22日开始课堂教学。<br/><br/>二、常抓不懈集中实习和校园安全<br/><br/>（一）教务处认真做好夏季学期集中实习教学安排。各教学单位扎实做好学生安全教育工作，排查校外实习路线安全隐患。各部门（单位）应加强对留校学生的服务保障和安全管理。<br/><br/>（二）加强公共场所服务和管理。<br/><br/>1.校内有实习实训教学安排的教学楼、实验楼等，全部按时开放。如有特殊使用需求，请提前与安全工作处联系。大学生创业基地（东平房）封闭。<br/><br/>2.图书馆阅览室周一至周日8:00—21：30分层开放。书库每周五8:00—11:00开放。<br/><br/>3.南、北校区综合运动场开放；体育馆每日13：00—15：00、16：00—18：00开放；游泳馆开放时间另行通知。<br/><br/>（三）各部门（单位）假前认真进行安全自查，做好记录，假期期间关好门窗、水电、设备等，不使用的实验室、办公室封闭，确保安全。安全工作处、后勤管理处负责巡查校园公共区域，发现问题及时处置。信息化管理中心做好网络服务保障。<br/><br/>三、慎终如始做好常态化疫情防控<br/><br/>（一）严格遵守居住地及学校疫情防控要求，按照“应接尽接”原则，尽快完成新冠肺炎疫苗接种。学校疫情防控领导小组办公室将根据实际情况，适时组织集中疫苗接种，具体时间另行通知。<br/><br/>（二）减少出行，禁止前往疫情中高风险地区；慎重前往洪涝灾害严重、泥石流地质灾害频发地区。<br/><br/>（三）离开常住地后，如遇当地疫情发生变化升级，应及时返回，并配合上级部门和学校进行旅居史排查。<br/><br/>（四）后勤管理处关注食品安全尤其是冷链食品安全监管；安全工作处严格校区出入管理，加强校园巡逻，确保安全稳定。<br/><br/>四、扎实做好值班值守<br/><br/>严格落实值班制度，强化岗位责任，保证各项工作正常运转。各部门（单位）负责人和值班人员须保持通讯畅通，遇到问题及时妥善处置，发生紧急情况和突发事件要在第一时间上报主管领导。所有值班人员应按照值班时间到岗，严禁擅离职守，杜绝迟到、早退、空岗等现象。<br/><br/>（一）学校24小时值班室设在承基楼一楼监控室，电话为010-61596144；白天干部值班室设在明德楼320室，电话为010-61596250；夜间值班室设在明德楼108室，电话为010-61596234。<br/><br/>（二）学校安排校领导带班、干部值班。请值班干部做好时间安排，详见《2021年暑假干部值班安排》（附件1），因特殊原因确需调整值班时间的，由本人与其他同级人员协商调换，详见《干部值班调换表》（附件2），并于7月16日17:00前填写值班调换表，报送学校办公室备案（联系人：尹婷）。<br/><br/>（三）用印、开具介绍信及收发报纸、信件的时间为周二、周五9：00—11：00、15:00-17:00，涉及印信申请等业务时，请提前完成申办流程。<br/><br/>（四）各部门（单位）安排好部门（单位）的值班工作，并于7月16日17：00前将暑假期间值班安排发布到部门网站，并填写《各部门（单位）暑假值班表》（附件3），发送至邮箱bgs@cidp.edu.cn，报送学校办公室备案（联系人：尹婷）。<br/><br/>五、加强服务保障工作<br/><br/>做好食堂、公寓及水、电、暖等方面的保障服务，为在校师生员工提供良好的生活和工作条件。<br/><br/>（一）餐饮安排:南校区思源餐厅一层及二层面包房、民族餐厅开放，北校区望舒餐厅一层、水吧、面包房开放；教工餐厅正常开放。<br/><br/>（二）学生公寓：假期学生公寓不封闭，正常开放。<br/><br/>（三）开水及洗浴服务:南、北校区浴室及开水房按常规时间段开放。<br/><br/>（四）商贸服务：天猫超市（南校医务室店）（北校区店）9:00—18:00正常营业。防灾驿站9:00—18:00正常营业。<br/><br/>（五）医疗服务：南校区医务所每日工作时间9：00—11：00、15:00—17:00。<br/><br/>（六）日常维修：水暖、电力、木工维修人员正常上班。<br/><br/>物业报修方式：拨打电话010-58412811（上班时间）；填报钉钉办公平台—防灾学院—物业报事报修；微信“防灾学院微服务”公众号—微服务—我要报修。<br/><br/>（七）家属区电表充值及一卡通业务。<br/><br/><br/><br/><br/><br/><br/>以上通知要求，将根据疫情形势及学校工作实际适时调整', '2021-07-16', '0');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `repairTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `repairGoods` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `repairReason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buildId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `roomId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int(0) NOT NULL COMMENT '0未处理 1已处理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (1, '2021-07-19', '宿舍', '没了', 'N1', 'N1342', 1);
INSERT INTO `repair` VALUES (2, '2021-07-19', '桌子', '坏了', 'N2', 'N2342', 0);

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `roomId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `buildId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `floor` int(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `peopleNum` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES (1, 'N1101', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (2, 'N1102', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (3, 'N1103', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (4, 'N1104', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (5, 'N1105', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (6, 'N1106', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (7, 'N1107', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (8, 'N1108', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (9, 'N1109', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (10, 'N1110', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (11, 'N1111', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (12, 'N1112', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (13, 'N1113', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (14, 'N1114', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (15, 'N1115', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (16, 'N1116', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (17, 'N1117', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (18, 'N1118', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (19, 'N1119', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (20, 'N1120', 'N1', 1, 1, 6);
INSERT INTO `rooms` VALUES (21, 'N1201', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (22, 'N1202', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (23, 'N1203', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (24, 'N1204', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (25, 'N1205', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (26, 'N1206', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (27, 'N1207', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (28, 'N1208', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (29, 'N1209', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (30, 'N1210', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (31, 'N1211', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (32, 'N1212', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (33, 'N1213', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (34, 'N1214', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (35, 'N1215', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (36, 'N1216', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (37, 'N1217', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (38, 'N1218', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (39, 'N1219', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (40, 'N1220', 'N1', 2, 1, 6);
INSERT INTO `rooms` VALUES (41, 'N1301', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (42, 'N1302', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (43, 'N1303', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (44, 'N1304', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (45, 'N1305', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (46, 'N1306', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (47, 'N1307', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (48, 'N1308', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (49, 'N1309', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (50, 'N1310', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (51, 'N1311', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (52, 'N1312', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (53, 'N1313', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (54, 'N1314', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (55, 'N1315', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (56, 'N1316', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (57, 'N1317', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (58, 'N1318', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (59, 'N1319', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (60, 'N1320', 'N1', 3, 1, 6);
INSERT INTO `rooms` VALUES (61, 'N1401', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (62, 'N1402', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (63, 'N1403', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (64, 'N1404', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (65, 'N1405', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (66, 'N1406', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (67, 'N1407', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (68, 'N1408', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (69, 'N1409', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (70, 'N1410', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (71, 'N1411', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (72, 'N1412', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (73, 'N1413', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (74, 'N1414', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (75, 'N1415', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (76, 'N1416', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (77, 'N1417', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (78, 'N1418', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (79, 'N1419', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (80, 'N1420', 'N1', 4, 1, 6);
INSERT INTO `rooms` VALUES (81, 'N1501', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (82, 'N1502', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (83, 'N1503', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (84, 'N1504', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (85, 'N1505', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (86, 'N1506', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (87, 'N1507', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (88, 'N1508', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (89, 'N1509', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (90, 'N1510', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (91, 'N1511', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (92, 'N1512', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (93, 'N1513', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (94, 'N1514', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (95, 'N1515', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (96, 'N1516', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (97, 'N1517', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (98, 'N1518', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (99, 'N1519', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (100, 'N1520', 'N1', 5, 1, 6);
INSERT INTO `rooms` VALUES (101, 'N1601', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (102, 'N1602', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (103, 'N1603', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (104, 'N1604', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (105, 'N1605', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (106, 'N1606', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (107, 'N1607', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (108, 'N1608', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (109, 'N1609', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (110, 'N1610', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (111, 'N1611', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (112, 'N1612', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (113, 'N1613', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (114, 'N1614', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (115, 'N1615', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (116, 'N1616', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (117, 'N1617', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (118, 'N1618', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (119, 'N1619', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (120, 'N1620', 'N1', 6, 1, 6);
INSERT INTO `rooms` VALUES (121, 'N2101', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (122, 'N2102', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (123, 'N2103', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (124, 'N2104', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (125, 'N2105', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (126, 'N2106', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (127, 'N2107', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (128, 'N2108', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (129, 'N2109', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (130, 'N2110', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (131, 'N2111', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (132, 'N2112', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (133, 'N2113', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (134, 'N2114', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (135, 'N2115', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (136, 'N2116', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (137, 'N2117', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (138, 'N2118', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (139, 'N2119', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (140, 'N2120', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (141, 'N2121', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (142, 'N2122', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (143, 'N2123', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (144, 'N2124', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (145, 'N2125', 'N2', 1, 1, 6);
INSERT INTO `rooms` VALUES (146, 'N2201', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (147, 'N2202', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (148, 'N2203', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (149, 'N2204', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (150, 'N2205', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (151, 'N2206', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (152, 'N2207', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (153, 'N2208', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (154, 'N2209', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (155, 'N2210', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (156, 'N2211', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (157, 'N2212', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (158, 'N2213', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (159, 'N2214', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (160, 'N2215', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (161, 'N2216', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (162, 'N2217', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (163, 'N2218', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (164, 'N2219', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (165, 'N2220', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (166, 'N2221', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (167, 'N2222', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (168, 'N2223', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (169, 'N2224', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (170, 'N2225', 'N2', 2, 1, 6);
INSERT INTO `rooms` VALUES (171, 'N2301', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (172, 'N2302', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (173, 'N2303', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (174, 'N2304', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (175, 'N2305', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (176, 'N2306', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (177, 'N2307', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (178, 'N2308', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (179, 'N2309', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (180, 'N2310', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (181, 'N2311', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (182, 'N2312', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (183, 'N2313', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (184, 'N2314', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (185, 'N2315', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (186, 'N2316', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (187, 'N2317', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (188, 'N2318', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (189, 'N2319', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (190, 'N2320', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (191, 'N2321', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (192, 'N2322', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (193, 'N2323', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (194, 'N2324', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (195, 'N2325', 'N2', 3, 1, 6);
INSERT INTO `rooms` VALUES (196, 'N2401', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (197, 'N2402', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (198, 'N2403', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (199, 'N2404', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (200, 'N2405', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (201, 'N2406', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (202, 'N2407', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (203, 'N2408', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (204, 'N2409', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (205, 'N2410', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (206, 'N2411', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (207, 'N2412', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (208, 'N2413', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (209, 'N2414', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (210, 'N2415', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (211, 'N2416', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (212, 'N2417', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (213, 'N2418', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (214, 'N2419', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (215, 'N2420', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (216, 'N2421', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (217, 'N2422', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (218, 'N2423', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (219, 'N2424', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (220, 'N2425', 'N2', 4, 1, 6);
INSERT INTO `rooms` VALUES (221, 'N2501', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (222, 'N2502', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (223, 'N2503', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (224, 'N2504', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (225, 'N2505', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (226, 'N2506', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (227, 'N2507', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (228, 'N2508', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (229, 'N2509', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (230, 'N2510', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (231, 'N2511', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (232, 'N2512', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (233, 'N2513', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (234, 'N2514', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (235, 'N2515', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (236, 'N2516', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (237, 'N2517', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (238, 'N2518', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (239, 'N2519', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (240, 'N2520', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (241, 'N2521', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (242, 'N2522', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (243, 'N2523', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (244, 'N2524', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (245, 'N2525', 'N2', 5, 1, 6);
INSERT INTO `rooms` VALUES (246, 'N2601', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (247, 'N2602', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (248, 'N2603', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (249, 'N2604', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (250, 'N2605', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (251, 'N2606', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (252, 'N2607', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (253, 'N2608', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (254, 'N2609', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (255, 'N2610', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (256, 'N2611', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (257, 'N2612', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (258, 'N2613', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (259, 'N2614', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (260, 'N2615', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (261, 'N2616', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (262, 'N2617', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (263, 'N2618', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (264, 'N2619', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (265, 'N2620', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (266, 'N2621', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (267, 'N2622', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (268, 'N2623', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (269, 'N2624', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (270, 'N2625', 'N2', 6, 1, 6);
INSERT INTO `rooms` VALUES (271, 'N3101', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (272, 'N3102', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (273, 'N3103', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (274, 'N3104', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (275, 'N3105', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (276, 'N3106', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (277, 'N3107', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (278, 'N3108', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (279, 'N3109', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (280, 'N3110', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (281, 'N3111', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (282, 'N3112', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (283, 'N3113', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (284, 'N3114', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (285, 'N3115', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (286, 'N3116', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (287, 'N3117', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (288, 'N3118', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (289, 'N3119', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (290, 'N3120', 'N3', 1, 1, 6);
INSERT INTO `rooms` VALUES (291, 'N3201', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (292, 'N3202', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (293, 'N3203', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (294, 'N3204', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (295, 'N3205', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (296, 'N3206', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (297, 'N3207', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (298, 'N3208', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (299, 'N3209', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (300, 'N3210', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (301, 'N3211', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (302, 'N3212', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (303, 'N3213', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (304, 'N3214', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (305, 'N3215', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (306, 'N3216', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (307, 'N3217', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (308, 'N3218', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (309, 'N3219', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (310, 'N3220', 'N3', 2, 1, 6);
INSERT INTO `rooms` VALUES (311, 'N3301', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (312, 'N3302', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (313, 'N3303', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (314, 'N3304', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (315, 'N3305', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (316, 'N3306', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (317, 'N3307', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (318, 'N3308', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (319, 'N3309', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (320, 'N3310', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (321, 'N3311', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (322, 'N3312', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (323, 'N3313', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (324, 'N3314', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (325, 'N3315', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (326, 'N3316', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (327, 'N3317', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (328, 'N3318', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (329, 'N3319', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (330, 'N3320', 'N3', 3, 1, 6);
INSERT INTO `rooms` VALUES (331, 'N3401', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (332, 'N3402', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (333, 'N3403', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (334, 'N3404', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (335, 'N3405', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (336, 'N3406', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (337, 'N3407', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (338, 'N3408', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (339, 'N3409', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (340, 'N3410', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (341, 'N3411', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (342, 'N3412', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (343, 'N3413', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (344, 'N3414', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (345, 'N3415', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (346, 'N3416', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (347, 'N3417', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (348, 'N3418', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (349, 'N3419', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (350, 'N3420', 'N3', 4, 1, 6);
INSERT INTO `rooms` VALUES (351, 'N3501', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (352, 'N3502', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (353, 'N3503', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (354, 'N3504', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (355, 'N3505', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (356, 'N3506', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (357, 'N3507', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (358, 'N3508', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (359, 'N3509', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (360, 'N3510', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (361, 'N3511', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (362, 'N3512', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (363, 'N3513', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (364, 'N3514', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (365, 'N3515', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (366, 'N3516', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (367, 'N3517', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (368, 'N3518', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (369, 'N3519', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (370, 'N3520', 'N3', 5, 1, 6);
INSERT INTO `rooms` VALUES (371, 'N3601', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (372, 'N3602', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (373, 'N3603', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (374, 'N3604', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (375, 'N3605', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (376, 'N3606', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (377, 'N3607', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (378, 'N3608', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (379, 'N3609', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (380, 'N3610', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (381, 'N3611', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (382, 'N3612', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (383, 'N3613', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (384, 'N3614', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (385, 'N3615', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (386, 'N3616', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (387, 'N3617', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (388, 'N3618', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (389, 'N3619', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (390, 'N3620', 'N3', 6, 1, 6);
INSERT INTO `rooms` VALUES (391, 'N4101', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (392, 'N4102', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (393, 'N4103', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (394, 'N4104', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (395, 'N4105', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (396, 'N4106', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (397, 'N4107', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (398, 'N4108', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (399, 'N4109', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (400, 'N4110', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (401, 'N4111', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (402, 'N4112', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (403, 'N4113', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (404, 'N4114', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (405, 'N4115', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (406, 'N4116', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (407, 'N4117', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (408, 'N4118', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (409, 'N4119', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (410, 'N4120', 'N4', 1, 1, 6);
INSERT INTO `rooms` VALUES (411, 'N4201', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (412, 'N4202', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (413, 'N4203', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (414, 'N4204', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (415, 'N4205', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (416, 'N4206', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (417, 'N4207', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (418, 'N4208', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (419, 'N4209', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (420, 'N4210', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (421, 'N4211', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (422, 'N4212', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (423, 'N4213', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (424, 'N4214', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (425, 'N4215', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (426, 'N4216', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (427, 'N4217', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (428, 'N4218', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (429, 'N4219', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (430, 'N4220', 'N4', 2, 1, 6);
INSERT INTO `rooms` VALUES (431, 'N4301', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (432, 'N4302', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (433, 'N4303', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (434, 'N4304', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (435, 'N4305', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (436, 'N4306', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (437, 'N4307', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (438, 'N4308', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (439, 'N4309', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (440, 'N4310', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (441, 'N4311', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (442, 'N4312', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (443, 'N4313', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (444, 'N4314', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (445, 'N4315', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (446, 'N4316', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (447, 'N4317', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (448, 'N4318', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (449, 'N4319', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (450, 'N4320', 'N4', 3, 1, 6);
INSERT INTO `rooms` VALUES (451, 'N4401', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (452, 'N4402', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (453, 'N4403', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (454, 'N4404', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (455, 'N4405', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (456, 'N4406', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (457, 'N4407', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (458, 'N4408', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (459, 'N4409', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (460, 'N4410', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (461, 'N4411', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (462, 'N4412', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (463, 'N4413', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (464, 'N4414', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (465, 'N4415', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (466, 'N4416', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (467, 'N4417', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (468, 'N4418', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (469, 'N4419', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (470, 'N4420', 'N4', 4, 1, 6);
INSERT INTO `rooms` VALUES (471, 'N4501', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (472, 'N4502', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (473, 'N4503', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (474, 'N4504', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (475, 'N4505', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (476, 'N4506', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (477, 'N4507', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (478, 'N4508', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (479, 'N4509', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (480, 'N4510', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (481, 'N4511', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (482, 'N4512', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (483, 'N4513', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (484, 'N4514', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (485, 'N4515', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (486, 'N4516', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (487, 'N4517', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (488, 'N4518', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (489, 'N4519', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (490, 'N4520', 'N4', 5, 1, 6);
INSERT INTO `rooms` VALUES (491, 'N4601', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (492, 'N4602', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (493, 'N4603', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (494, 'N4604', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (495, 'N4605', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (496, 'N4606', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (497, 'N4607', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (498, 'N4608', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (499, 'N4609', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (500, 'N4610', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (501, 'N4611', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (502, 'N4612', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (503, 'N4613', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (504, 'N4614', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (505, 'N4615', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (506, 'N4616', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (507, 'N4617', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (508, 'N4618', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (509, 'N4619', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (510, 'N4620', 'N4', 6, 1, 6);
INSERT INTO `rooms` VALUES (511, 'N5101', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (512, 'N5102', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (513, 'N5103', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (514, 'N5104', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (515, 'N5105', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (516, 'N5106', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (517, 'N5107', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (518, 'N5108', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (519, 'N5109', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (520, 'N5110', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (521, 'N5111', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (522, 'N5112', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (523, 'N5113', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (524, 'N5114', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (525, 'N5115', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (526, 'N5116', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (527, 'N5117', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (528, 'N5118', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (529, 'N5119', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (530, 'N5120', 'N5', 1, 1, 6);
INSERT INTO `rooms` VALUES (531, 'N5201', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (532, 'N5202', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (533, 'N5203', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (534, 'N5204', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (535, 'N5205', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (536, 'N5206', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (537, 'N5207', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (538, 'N5208', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (539, 'N5209', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (540, 'N5210', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (541, 'N5211', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (542, 'N5212', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (543, 'N5213', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (544, 'N5214', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (545, 'N5215', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (546, 'N5216', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (547, 'N5217', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (548, 'N5218', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (549, 'N5219', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (550, 'N5220', 'N5', 2, 1, 6);
INSERT INTO `rooms` VALUES (551, 'N5301', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (552, 'N5302', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (553, 'N5303', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (554, 'N5304', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (555, 'N5305', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (556, 'N5306', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (557, 'N5307', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (558, 'N5308', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (559, 'N5309', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (560, 'N5310', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (561, 'N5311', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (562, 'N5312', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (563, 'N5313', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (564, 'N5314', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (565, 'N5315', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (566, 'N5316', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (567, 'N5317', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (568, 'N5318', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (569, 'N5319', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (570, 'N5320', 'N5', 3, 1, 6);
INSERT INTO `rooms` VALUES (571, 'N5401', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (572, 'N5402', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (573, 'N5403', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (574, 'N5404', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (575, 'N5405', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (576, 'N5406', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (577, 'N5407', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (578, 'N5408', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (579, 'N5409', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (580, 'N5410', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (581, 'N5411', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (582, 'N5412', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (583, 'N5413', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (584, 'N5414', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (585, 'N5415', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (586, 'N5416', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (587, 'N5417', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (588, 'N5418', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (589, 'N5419', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (590, 'N5420', 'N5', 4, 1, 6);
INSERT INTO `rooms` VALUES (591, 'N5501', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (592, 'N5502', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (593, 'N5503', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (594, 'N5504', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (595, 'N5505', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (596, 'N5506', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (597, 'N5507', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (598, 'N5508', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (599, 'N5509', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (600, 'N5510', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (601, 'N5511', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (602, 'N5512', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (603, 'N5513', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (604, 'N5514', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (605, 'N5515', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (606, 'N5516', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (607, 'N5517', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (608, 'N5518', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (609, 'N5519', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (610, 'N5520', 'N5', 5, 1, 6);
INSERT INTO `rooms` VALUES (611, 'N5601', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (612, 'N5602', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (613, 'N5603', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (614, 'N5604', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (615, 'N5605', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (616, 'N5606', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (617, 'N5607', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (618, 'N5608', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (619, 'N5609', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (620, 'N5610', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (621, 'N5611', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (622, 'N5612', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (623, 'N5613', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (624, 'N5614', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (625, 'N5615', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (626, 'N5616', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (627, 'N5617', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (628, 'N5618', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (629, 'N5619', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (630, 'N5620', 'N5', 6, 1, 6);
INSERT INTO `rooms` VALUES (631, 'N6101', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (632, 'N6102', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (633, 'N6103', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (634, 'N6104', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (635, 'N6105', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (636, 'N6106', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (637, 'N6107', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (638, 'N6108', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (639, 'N6109', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (640, 'N6110', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (641, 'N6111', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (642, 'N6112', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (643, 'N6113', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (644, 'N6114', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (645, 'N6115', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (646, 'N6116', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (647, 'N6117', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (648, 'N6118', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (649, 'N6119', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (650, 'N6120', 'N6', 1, 1, 6);
INSERT INTO `rooms` VALUES (651, 'N6201', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (652, 'N6202', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (653, 'N6203', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (654, 'N6204', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (655, 'N6205', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (656, 'N6206', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (657, 'N6207', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (658, 'N6208', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (659, 'N6209', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (660, 'N6210', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (661, 'N6211', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (662, 'N6212', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (663, 'N6213', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (664, 'N6214', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (665, 'N6215', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (666, 'N6216', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (667, 'N6217', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (668, 'N6218', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (669, 'N6219', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (670, 'N6220', 'N6', 2, 1, 6);
INSERT INTO `rooms` VALUES (671, 'N6301', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (672, 'N6302', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (673, 'N6303', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (674, 'N6304', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (675, 'N6305', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (676, 'N6306', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (677, 'N6307', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (678, 'N6308', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (679, 'N6309', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (680, 'N6310', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (681, 'N6311', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (682, 'N6312', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (683, 'N6313', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (684, 'N6314', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (685, 'N6315', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (686, 'N6316', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (687, 'N6317', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (688, 'N6318', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (689, 'N6319', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (690, 'N6320', 'N6', 3, 1, 6);
INSERT INTO `rooms` VALUES (691, 'N6401', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (692, 'N6402', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (693, 'N6403', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (694, 'N6404', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (695, 'N6405', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (696, 'N6406', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (697, 'N6407', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (698, 'N6408', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (699, 'N6409', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (700, 'N6410', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (701, 'N6411', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (702, 'N6412', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (703, 'N6413', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (704, 'N6414', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (705, 'N6415', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (706, 'N6416', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (707, 'N6417', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (708, 'N6418', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (709, 'N6419', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (710, 'N6420', 'N6', 4, 1, 6);
INSERT INTO `rooms` VALUES (711, 'N6501', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (712, 'N6502', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (713, 'N6503', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (714, 'N6504', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (715, 'N6505', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (716, 'N6506', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (717, 'N6507', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (718, 'N6508', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (719, 'N6509', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (720, 'N6510', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (721, 'N6511', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (722, 'N6512', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (723, 'N6513', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (724, 'N6514', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (725, 'N6515', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (726, 'N6516', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (727, 'N6517', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (728, 'N6518', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (729, 'N6519', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (730, 'N6520', 'N6', 5, 1, 6);
INSERT INTO `rooms` VALUES (731, 'N6601', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (732, 'N6602', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (733, 'N6603', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (734, 'N6604', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (735, 'N6605', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (736, 'N6606', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (737, 'N6607', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (738, 'N6608', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (739, 'N6609', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (740, 'N6610', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (741, 'N6611', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (742, 'N6612', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (743, 'N6613', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (744, 'N6614', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (745, 'N6615', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (746, 'N6616', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (747, 'N6617', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (748, 'N6618', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (749, 'N6619', 'N6', 6, 1, 6);
INSERT INTO `rooms` VALUES (750, 'N6620', 'N6', 6, 1, 6);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `schoolId` int(0) NOT NULL COMMENT '学号/工号',
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `passWord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` int(0) NOT NULL COMMENT '用户权限 0 系统管理员 1 宿舍管理员 2 学生',
  `trueName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `checkTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '注册时间',
  `roomId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宿舍房间号 0表示无',
  `buildId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '楼号',
  `updateTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '入住时间',
  `deleteTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '离校时间',
  PRIMARY KEY (`id`, `schoolId`, `userName`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `userName`(`userName`) USING BTREE,
  UNIQUE INDEX `schooId`(`schoolId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 18053227, 'zhy', '123', 0, '周浩宇', '18811713109', '2018-09-01', '', '', '2018-09-01', '2018-09-01');
INSERT INTO `user` VALUES (2, 18061211, 'cs1', '123', 1, '测试', '12345678912', '2018-09-01', '', 'N4', '2018-11-01', '2022-06-01');
INSERT INTO `user` VALUES (3, 18061345, 'cs2', '123', 2, 'sad1', '18877789853', '2019-09-01', 'N1342', 'N1', '2018-11-01', '2022-06-01');
INSERT INTO `user` VALUES (4, 18061201, 't', '123', 1, 'zzz', '18811713109', '2021-07-16', NULL, 'N4', NULL, NULL);
INSERT INTO `user` VALUES (5, 1805455, 'zzz', 'zzz', 1, 'zzz', 'zzz', '2021-07-16', NULL, 'N6', NULL, NULL);
INSERT INTO `user` VALUES (6, 1, '1', '1', 1, '1', '1', '2021-07-16', NULL, 'N6', NULL, NULL);
INSERT INTO `user` VALUES (15, 18053228, 'cs3', '123', 1, '测试3', '18877744444', '2021-07-17', NULL, 'N6', NULL, NULL);
INSERT INTO `user` VALUES (16, 18061343, 'cs4', '123', 2, 'sad2', '18877789853', '2019-09-01', 'N2342', 'N2', '2018-11-01', '2022-06-01');
INSERT INTO `user` VALUES (17, 18061387, 'cs5', '123', 2, 'sad3', '18877789853', '2019-09-01', 'N3342', 'N3', '2018-11-01', '2022-06-01');
INSERT INTO `user` VALUES (18, 18061347, 'cs6', '123', 2, 'sad4', '18877789853', '2019-09-01', 'N4342', 'N4', NULL, NULL);
INSERT INTO `user` VALUES (19, 1801111, 'csy', '123', 2, '测试员', '18811111111', '2021-07-19', '111', 'N6', '2021-07-19', NULL);

SET FOREIGN_KEY_CHECKS = 1;
