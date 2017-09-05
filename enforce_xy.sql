/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : enforce_xy

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 936

Date: 2017-09-03 11:01:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `area_dep`
-- ----------------------------
DROP TABLE IF EXISTS `area_dep`;
CREATE TABLE `area_dep` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `proid` int(11) DEFAULT '1' COMMENT '暂不用，固定填1',
  `fatherareaid` int(11) NOT NULL COMMENT '部门父ID',
  `areaname` varchar(128) NOT NULL COMMENT '区域(部门)名称',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '部门代码',
  `rperson` varchar(64) DEFAULT NULL,
  `rphone` varchar(32) DEFAULT NULL,
  `is_read` int(1) NOT NULL DEFAULT '1' COMMENT '部门权限；1:读写,0:只读;父级是0，子级必须是0;',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '部门序号',
  PRIMARY KEY (`areaid`),
  UNIQUE KEY `idx_areacode` (`areacode`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=668 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of area_dep
-- ----------------------------
INSERT INTO `area_dep` VALUES ('196', '1', '0', '河南省公安厅', '41', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('197', '1', '196', '信阳市公安局', '4115', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('198', '1', '197', '老城分局', '411501', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('199', '1', '197', '浉河分局', '411502', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('200', '1', '197', '羊山分局', '411503', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('201', '1', '197', '明港分局', '411504', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('202', '1', '197', '洋河分局', '411505', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('203', '1', '197', '平桥分局', '411506', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('204', '1', '197', '上天梯分局', '411507', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('205', '1', '197', '高新分局', '411508', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('206', '1', '197', '鸡公山分局', '411509', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('207', '1', '197', '南湾分局', '411510', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('208', '1', '197', '淮滨县公安局', '411511', '姜树豪', '13949159672', '0', '1');
INSERT INTO `area_dep` VALUES ('209', '1', '197', '直属分局', '411512', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('210', '1', '197', '新县公安局', '411513', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('211', '1', '197', '光山县公安局', '411514', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('212', '1', '197', '潢川县公安局', '411515', '张局长', null, '0', '1');
INSERT INTO `area_dep` VALUES ('213', '1', '197', '罗山县公安局', '411516', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('214', '1', '197', '商城县公安局', '411517', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('215', '1', '197', '息县公安局', '411518', '邢磊', '13937666277', '0', '1');
INSERT INTO `area_dep` VALUES ('216', '1', '198', '老城分局-老城派出所', '41150101', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('217', '1', '198', '老城分局-民权派出所', '41150102', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('218', '1', '198', '老城分局-车站派出所', '41150103', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('219', '1', '198', '老城分局-五里墩派出所', '41150104', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('220', '1', '198', '老城分局-金牛山派出所', '41150105', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('221', '1', '198', '老城分局-工区派出所', '41150106', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('222', '1', '198', '老城分局-产业集聚区派出所', '41150107', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('223', '1', '198', '老城分局-公交派出所', '41150108', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('224', '1', '198', '老城分局-公园派出所', '41150109', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('225', '1', '198', '老城分局-老城分局警务综合室', '41150110', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('226', '1', '198', '老城分局-老城分局社区警务大队', '41150111', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('227', '1', '198', '老城分局-老城分局执法执纪监督室', '41150112', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('228', '1', '198', '老城分局-老城分局治安管理大队', '41150113', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('229', '1', '198', '老城分局-老城分局案件侦办大队', '41150114', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('230', '1', '198', '老城分局-老城分局巡逻防控大队', '41150115', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('231', '1', '199', '浉河分局-五星派出所', '41150201', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('232', '1', '199', '浉河分局-湖东派出所', '41150202', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('233', '1', '199', '浉河分局-游河派出所', '41150203', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('234', '1', '199', '浉河分局-东双河派出所', '41150204', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('235', '1', '199', '浉河分局-谭家河派出所', '41150205', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('236', '1', '199', '浉河分局-十三里桥派出所', '41150206', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('237', '1', '199', '浉河分局-董家河派出所', '41150207', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('238', '1', '199', '浉河分局-吴家店派出所', '41150208', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('239', '1', '199', '浉河分局-浉河港派出所', '41150209', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('240', '1', '199', '浉河分局-柳林派出所', '41150210', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('241', '1', '199', '浉河分局-浉河分局警务综合室', '41150211', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('242', '1', '199', '浉河分局-浉河分局执法执纪监督室', '41150212', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('243', '1', '199', '浉河分局-浉河分局法制大队', '41150213', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('244', '1', '199', '浉河分局-浉河分局案件侦办大队', '41150214', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('245', '1', '199', '浉河分局-浉河分局交管巡防大队', '41150215', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('246', '1', '199', '浉河分局-浉河分局社区警务大队', '41150216', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('247', '1', '199', '浉河分局-浉河分局治安管理大队', '41150217', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('248', '1', '200', '羊山分局-楚王城派出所', '41150301', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('249', '1', '200', '羊山分局-前进派出所', '41150302', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('250', '1', '200', '羊山分局-龙飞山派出所', '41150303', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('251', '1', '200', '羊山分局-羊山派出所', '41150304', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('252', '1', '200', '羊山分局-行政中心派出所', '41150305', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('253', '1', '200', '羊山分局-北湖派出所', '41150306', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('254', '1', '200', '羊山分局-羊山分局治安大队', '41150307', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('255', '1', '200', '羊山分局-羊山分局案件侦办大队', '41150308', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('256', '1', '200', '羊山分局-羊山分局特勤大队', '41150309', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('257', '1', '200', '羊山分局-羊山分局巡逻防控大队', '41150310', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('258', '1', '200', '羊山分局-羊山分局警务综合室', '41150311', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('259', '1', '200', '羊山分局-羊山分局家居小镇警务室', '41150312', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('260', '1', '200', '羊山分局-羊山派出所社区警务大队', '41150313', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('261', '1', '200', '羊山分局-羊山分局执法执纪监督室', '41150314', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('262', '1', '201', '明港分局-明港派出所', '41150401', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('263', '1', '201', '明港分局-铁东派出所', '41150402', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('264', '1', '201', '明港分局-铁西派出所', '41150403', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('265', '1', '201', '明港分局-兰店派出所', '41150404', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('266', '1', '201', '明港分局-刑集派出所', '41150405', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('267', '1', '201', '明港分局-王岗派出所', '41150406', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('268', '1', '201', '明港分局-甘岸派出所', '41150407', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('269', '1', '201', '明港分局-长台关派出所', '41150408', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('270', '1', '201', '明港分局-城阳城址派出所', '41150409', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('271', '1', '201', '明港分局-明港分局执法执纪监督室', '41150410', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('272', '1', '201', '明港分局-明港分局案件侦办大队', '41150411', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('273', '1', '201', '明港分局-明港分局治安管理大队', '41150412', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('274', '1', '201', '明港分局-明港分局巡防大队', '41150413', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('275', '1', '201', '明港分局-明港分局社区警务大队', '41150414', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('276', '1', '201', '明港分局-明港分局警务综合室', '41150415', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('277', '1', '201', '明港分局-平昌关派出所', '41150416', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('278', '1', '201', '明港分局-查山派出所', '41150417', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('279', '1', '201', '明港分局-高粱店派出所', '41150418', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('280', '1', '202', '洋河分局-洋河派出所', '41150501', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('281', '1', '202', '洋河分局-九店派出所', '41150502', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('282', '1', '202', '洋河分局-彭家湾派出所', '41150503', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('283', '1', '202', '洋河分局-胡店派出所', '41150504', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('284', '1', '202', '洋河分局-肖王派出所', '41150505', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('285', '1', '202', '洋河分局-肖店派出所', '41150506', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('286', '1', '202', '洋河分局-龙井派出所', '41150507', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('287', '1', '202', '洋河分局-洋河分局警务综合室', '41150508', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('288', '1', '202', '洋河分局-洋河分局执法执纪室', '41150509', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('289', '1', '202', '洋河分局-洋河分局案件侦办大队', '41150510', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('290', '1', '202', '洋河分局-洋河分局社区警务大队', '41150511', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('291', '1', '202', '洋河分局-洋河分局巡逻防控大队', '41150512', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('292', '1', '203', '平桥分局-平桥派出所', '41150601', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('293', '1', '203', '平桥分局-工业园派出所', '41150602', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('294', '1', '203', '平桥分局-震雷山派出所', '41150603', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('295', '1', '203', '平桥分局-平西派出所', '41150604', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('296', '1', '203', '平桥分局-五里派出所', '41150605', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('297', '1', '203', '平桥分局-平桥分局警务综合室', '41150606', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('298', '1', '203', '平桥分局-平桥分局执法执纪监督室', '41150607', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('299', '1', '203', '平桥分局-平桥分局治安管理大队', '41150608', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('300', '1', '203', '平桥分局-平桥分局案件侦办大队', '41150609', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('301', '1', '203', '平桥分局-平桥分局交管巡防大队', '41150610', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('302', '1', '203', '平桥分局-平桥分局社区警务大队', '41150611', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('303', '1', '204', '上天梯分局-土城派出所', '41150701', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('304', '1', '204', '上天梯分局-上天梯分局社区警务大队', '41150702', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('305', '1', '204', '上天梯分局-上天梯分局案件侦办大队', '41150703', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('306', '1', '204', '上天梯分局-上天梯分局警务综合室', '41150704', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('307', '1', '204', '上天梯分局-上天梯分局执法执纪监督室', '41150705', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('308', '1', '204', '上天梯分局-上天梯分局', '41150706', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('309', '1', '205', '高新分局-珍珠路派出所', '41150801', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('310', '1', '205', '高新分局-城东派出所', '41150802', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('311', '1', '205', '高新分局-高新分局警务综合室', '41150803', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('312', '1', '205', '高新分局-高新分局社区警务大队', '41150804', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('313', '1', '205', '高新分局-高新分局案件侦办大队', '41150805', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('314', '1', '206', '鸡公山分局-李家寨派出所', '41150901', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('315', '1', '206', '鸡公山分局-鸡公山派出所', '41150902', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('316', '1', '206', '鸡公山分局-鸡公山分局警务综合室', '41150903', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('317', '1', '206', '鸡公山分局-鸡公山分局案件侦办大队', '41150904', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('318', '1', '206', '鸡公山分局-鸡公山分局社区警务大队', '41150905', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('319', '1', '207', '南湾分局-南湾派出所', '41151001', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('320', '1', '207', '南湾分局-贤山派出所', '41151002', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('321', '1', '207', '南湾分局-南湾分局警务综合室', '41151003', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('322', '1', '207', '南湾分局-南湾分局案件侦办大队', '41151004', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('323', '1', '207', '南湾分局-南湾分局社区警务大队', '41151005', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('324', '1', '208', '淮滨县公安局-城关派出所', '41151101', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('325', '1', '208', '淮滨县公安局-北城派出所', '41151102', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('326', '1', '208', '淮滨县公安局-张里派出所', '41151103', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('327', '1', '208', '淮滨县公安局-防胡派出所', '41151104', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('328', '1', '208', '淮滨县公安局-新里派出所', '41151105', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('329', '1', '208', '淮滨县公安局-马集派出所', '41151106', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('330', '1', '208', '淮滨县公安局-芦集派出所', '41151107', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('331', '1', '208', '淮滨县公安局-邓湾派出所', '41151108', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('332', '1', '208', '淮滨县公安局-台头派出所', '41151109', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('333', '1', '208', '淮滨县公安局-巡特警大队', '41151110', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('334', '1', '208', '淮滨县公安局-治安大队', '41151111', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('335', '1', '208', '淮滨县公安局-经侦大队', '41151112', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('336', '1', '208', '淮滨县公安局-刑警大队', '41151113', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('337', '1', '208', '淮滨县公安局-工业园派出所', '41151114', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('338', '1', '208', '淮滨县公安局-期思派出所', '41151115', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('339', '1', '208', '淮滨县公安局-谷堆派出所', '41151116', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('340', '1', '208', '淮滨县公安局-王店派出所', '41151117', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('341', '1', '208', '淮滨县公安局-麻里派出所', '41151118', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('342', '1', '208', '淮滨县公安局-张庄派出所', '41151119', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('343', '1', '208', '淮滨县公安局-固城派出所', '41151120', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('344', '1', '208', '淮滨县公安局-三空桥派出所', '41151121', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('345', '1', '208', '淮滨县公安局-赵集派出所', '41151122', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('346', '1', '208', '淮滨县公安局-栏杆派出所', '41151123', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('347', '1', '208', '淮滨县公安局-王家岗派出所', '41151124', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('348', '1', '209', '信阳市公安局-出入境大队', '41151201', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('349', '1', '209', '信阳市公安局-刑警支队', '41151202', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('350', '1', '209', '信阳市公安局-110勤务大队', '41151203', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('351', '1', '209', '信阳市公安局-法制支队', '41151204', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('352', '1', '209', '信阳市公安局-巡特警支队', '41151205', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('353', '1', '209', '信阳市公安局-国保支队', '41151206', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('354', '1', '209', '信阳市公安局-禁毒支队', '41151207', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('355', '1', '209', '信阳市公安局-经侦支队', '41151208', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('356', '1', '209', '信阳市公安局-治安支队', '41151209', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('357', '1', '209', '信阳市公安局-网监支队', '41151210', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('358', '1', '209', '信阳市公安局-反恐怖支队', '41151211', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('359', '1', '209', '信阳市公安局-监管支队', '41151212', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('360', '1', '209', '信阳市公安局-交通警察支队', '41151213', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('545', '1', '350', '110勤务大队-110步行街勤务站', '4115120301', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('361', '1', '210', '新县公安局-巡特警大队', '41151301', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('362', '1', '210', '新县公安局-刑警大队', '41151302', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('363', '1', '210', '新县公安局-办案中心', '41151303', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('364', '1', '210', '新县公安局-城关派出所', '41151304', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('365', '1', '210', '新县公安局-产业集聚区派出所', '41151305', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('366', '1', '210', '新县公安局-新集派出所', '41151306', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('367', '1', '210', '新县公安局-浒湾派出所', '41151307', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('368', '1', '210', '新县公安局-八里贩派出所', '41151308', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('369', '1', '210', '新县公安局-沙窝派出所', '41151309', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('370', '1', '210', '新县公安局-周河派出所', '41151310', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('371', '1', '210', '新县公安局-吴陈河派出所', '41151311', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('372', '1', '210', '新县公安局-千斤派出所', '41151312', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('373', '1', '210', '新县公安局-苏河派出所', '41151313', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('374', '1', '210', '新县公安局-卡房派出所', '41151314', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('375', '1', '210', '新县公安局-陡山河派出所', '41151315', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('376', '1', '210', '新县公安局-郭家河派出所', '41151316', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('377', '1', '210', '新县公安局-陈店派出所', '41151317', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('378', '1', '210', '新县公安局-箭厂河派出所', '41151318', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('379', '1', '210', '新县公安局-泗店派出所', '41151319', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('380', '1', '210', '新县公安局-田铺派出所', '41151320', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('381', '1', '210', '新县公安局-香山湖派出所', '41151321', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('382', '1', '211', '光山县公安局-巡特警大队', '41151401', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('383', '1', '211', '光山县公安局-十里派出所', '41151402', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('384', '1', '211', '光山县公安局-弦山派出所', '41151403', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('385', '1', '211', '光山县公安局-交警大队', '41151404', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('386', '1', '211', '光山县公安局-紫水派出所', '41151405', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('387', '1', '211', '光山县公安局-治安大队', '41151406', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('388', '1', '211', '光山县公安局-寨河派出所', '41151407', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('389', '1', '211', '光山县公安局-槐店派出所', '41151408', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('390', '1', '211', '光山县公安局-晏河派出所', '41151409', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('391', '1', '211', '光山县公安局-孙铁铺派出所', '41151410', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('392', '1', '211', '光山县公安局-泼河派出所', '41151411', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('393', '1', '211', '光山县公安局-马畈派出所', '41151412', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('394', '1', '211', '光山县公安局-白雀派出所', '41151413', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('395', '1', '211', '光山县公安局-刑警大队', '41151414', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('396', '1', '211', '光山县公安局-北项店派出所', '41151415', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('397', '1', '211', '光山县公安局-仙居派出所', '41151416', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('398', '1', '211', '光山县公安局-文殊派出所', '41151417', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('399', '1', '212', '潢川县公安局-北城派出所', '41151501', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('400', '1', '212', '潢川县公安局-南城派出所', '41151502', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('401', '1', '212', '潢川县公安局-环城派出所', '41151503', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('402', '1', '212', '潢川县公安局-东城派出所', '41151504', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('403', '1', '212', '潢川县公安局-产业集聚区派出所', '41151505', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('404', '1', '212', '潢川县公安局-伞陂派出所', '41151506', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('405', '1', '212', '潢川县公安局-付店派出所', '41151507', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('406', '1', '212', '潢川县公安局-魏岗派出所', '41151508', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('407', '1', '212', '潢川县公安局-牛岗派出所', '41151509', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('408', '1', '212', '潢川县公安局-黄岗派出所', '41151510', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('409', '1', '212', '潢川县公安局-110专业勤务大队', '41151511', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('410', '1', '212', '潢川县公安局-办案中心', '41151512', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('411', '1', '212', '潢川县公安局-巡特警大队', '41151513', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('412', '1', '212', '潢川县公安局-交警大队', '41151514', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('413', '1', '212', '潢川县公安局-刑警大队', '41151515', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('414', '1', '212', '潢川县公安局-森林派出所', '41151516', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('415', '1', '212', '潢川县公安局-隆古派出所', '41151517', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('416', '1', '212', '潢川县公安局-双柳派出所', '41151518', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('417', '1', '212', '潢川县公安局-谈店派出所', '41151519', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('418', '1', '212', '潢川县公安局-小吕店派出所', '41151520', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('419', '1', '212', '潢川县公安局-来龙派出所', '41151521', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('420', '1', '212', '潢川县公安局-踅孜派出所', '41151522', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('421', '1', '212', '潢川县公安局-白店派出所', '41151523', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('422', '1', '212', '潢川县公安局-仁和派出所', '41151524', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('423', '1', '212', '潢川县公安局-卜集派出所', '41151525', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('424', '1', '212', '潢川县公安局-彭店派出所', '41151526', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('425', '1', '212', '潢川县公安局-上油岗派出所', '41151527', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('426', '1', '212', '潢川县公安局-江集派出所', '41151528', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('427', '1', '212', '潢川县公安局-张集派出所', '41151529', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('428', '1', '212', '潢川县公安局-桃林派出所', '41151530', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('429', '1', '212', '潢川县公安局-传流店派出所', '41151531', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('430', '1', '212', '潢川县公安局-新办案中心', '41151532', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('431', '1', '213', '罗山县公安局-宝城派出所', '41151601', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('432', '1', '213', '罗山县公安局-龙山派出所', '41151602', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('433', '1', '213', '罗山县公安局-刑警大队', '41151603', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('434', '1', '213', '罗山县公安局-丽水派出所', '41151604', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('435', '1', '213', '罗山县公安局-网监大队', '41151605', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('436', '1', '213', '罗山县公安局-巡特警大队', '41151606', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('437', '1', '213', '罗山县公安局-国保大队', '41151607', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('438', '1', '213', '罗山县公安局-治安大队', '41151608', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('439', '1', '213', '罗山县公安局-执法办案中心', '41151609', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('440', '1', '213', '罗山县公安局-看守所', '41151610', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('441', '1', '213', '罗山县公安局-拘留所', '41151611', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('442', '1', '213', '罗山县公安局-竹竿派出所', '41151612', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('443', '1', '213', '罗山县公安局-东铺派出所', '41151613', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('444', '1', '213', '罗山县公安局-尤店派出所', '41151614', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('445', '1', '213', '罗山县公安局-高店派出所', '41151615', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('446', '1', '213', '罗山县公安局-楠杆派出所', '41151616', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('447', '1', '213', '罗山县公安局-五一派出所', '41151617', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('448', '1', '213', '罗山县公安局-子路派出所', '41151618', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('449', '1', '213', '罗山县公安局-青山派出所', '41151619', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('450', '1', '213', '罗山县公安局-庙仙派出所', '41151620', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('451', '1', '213', '罗山县公安局-莽张派出所', '41151621', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('452', '1', '213', '罗山县公安局-周党派出所', '41151622', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('453', '1', '213', '罗山县公安局-定远派出所', '41151623', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('454', '1', '213', '罗山县公安局-山店派出所', '41151624', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('455', '1', '213', '罗山县公安局-潘新派出所', '41151625', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('456', '1', '213', '罗山县公安局-彭新派出所', '41151626', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('457', '1', '213', '罗山县公安局-灵山派出所', '41151627', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('458', '1', '213', '罗山县公安局-灵山寺派出所', '41151628', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('459', '1', '213', '罗山县公安局-铁铺派出所', '41151629', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('460', '1', '213', '罗山县公安局-朱堂派出所', '41151630', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('461', '1', '213', '罗山县公安局-城关派出所', '41151631', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('462', '1', '213', '罗山县公安局-反恐大队', '41151632', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('463', '1', '213', '罗山县公安局-规范信访秩序执法大队', '41151633', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('464', '1', '213', '罗山县公安局-经侦大队', '41151634', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('465', '1', '213', '罗山县公安局-禁毒大队', '41151635', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('466', '1', '214', '商城县公安局-法制大队', '41151701', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('467', '1', '214', '商城县公安局-巡特警大队', '41151702', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('468', '1', '214', '商城县公安局-城关派出所', '41151703', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('469', '1', '214', '商城县公安局-鲇鱼山派出所', '41151704', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('470', '1', '214', '商城县公安局-上石桥派出所', '41151705', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('471', '1', '214', '商城县公安局-汪桥派出所', '41151706', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('472', '1', '214', '商城县公安局-刑警大队', '41151707', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('473', '1', '214', '商城县公安局-治安大队', '41151708', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('474', '1', '214', '商城县公安局-双椿铺派出所', '41151709', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('475', '1', '214', '商城县公安局-余集派出所', '41151710', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('476', '1', '214', '商城县公安局-汪岗派出所', '41151711', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('477', '1', '214', '商城县公安局-鄢岗派出所', '41151712', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('478', '1', '214', '商城县公安局-观庙派出所', '41151713', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('479', '1', '214', '商城县公安局-河凤桥派出所', '41151714', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('480', '1', '214', '商城县公安局-伏山派出所', '41151715', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('481', '1', '214', '商城县公安局-达权店派出所', '41151716', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('482', '1', '214', '商城县公安局-禁毒大队', '41151717', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('483', '1', '214', '商城县公安局-金刚台派出所', '41151718', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('484', '1', '214', '商城县公安局-李集派出所', '41151719', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('485', '1', '214', '商城县公安局-吴河派出所', '41151720', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('486', '1', '214', '商城县公安局-丰集派出所', '41151721', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('487', '1', '214', '商城县公安局-冯店派出所', '41151722', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('488', '1', '214', '商城县公安局-产业集聚区派出所', '41151723', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('489', '1', '214', '商城县公安局-长竹园派出所', '41151724', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('490', '1', '214', '商城县公安局-苏仙石派出所', '41151725', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('491', '1', '214', '商城县公安局-汤泉池派出所', '41151726', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('492', '1', '214', '商城县公安局-白塔集派出所', '41151727', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('493', '1', '214', '商城县公安局-经侦大队', '41151728', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('494', '1', '214', '商城县公安局-国保大队', '41151729', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('495', '1', '214', '商城县公安局-出入境管理大队', '41151730', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('496', '1', '214', '商城县公安局-黄柏山国家森林公园派出所', '41151731', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('497', '1', '214', '商城县公安局-网监大队', '41151732', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('498', '1', '214', '商城公安局-鲇水派出所', '41151733', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('499', '1', '215', '息县公安局-经侦大队', '41151801', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('500', '1', '215', '息县公安局-刑警大队', '41151802', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('501', '1', '215', '息县公安局-治安大队', '41151803', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('502', '1', '215', '息县公安局-巡特警大队', '41151804', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('503', '1', '215', '息县公安局-网监大队', '41151805', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('504', '1', '215', '息县公安局-出入境管理股', '41151806', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('505', '1', '215', '息县公安局-国保大队', '41151807', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('506', '1', '215', '息县公安局-禁毒大队', '41151808', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('507', '1', '215', '息县公安局-龙湖派出所', '41151809', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('508', '1', '215', '息县公安局-户政股', '41151810', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('509', '1', '215', '息县公安局-纪委', '41151811', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('510', '1', '215', '息县公安局-督察大队', '41151812', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('511', '1', '215', '息县公安局-警令部', '41151813', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('512', '1', '215', '息县公安局-拘留所', '41151814', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('513', '1', '215', '息县公安局-看守所', '41151815', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('514', '1', '215', '息县公安局-视频监控', '41151816', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('515', '1', '215', '息县公安局-控申股', '41151817', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('516', '1', '215', '息县公安局-情报中心', '41151818', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('517', '1', '215', '息县公安局-通信股', '41151819', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('518', '1', '215', '息县公安局-政治处', '41151820', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('519', '1', '215', '息县公安局-装备财务科', '41151821', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('520', '1', '215', '息县公安局-淮河派出所', '41151822', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('521', '1', '215', '息县公安局-谯楼派出所', '41151823', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('522', '1', '215', '息县公安局-中渡店派出所', '41151824', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('523', '1', '215', '息县公安局-八里岔派出所', '41151825', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('524', '1', '215', '息县公安局-曹黄林派出所', '41151826', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('525', '1', '215', '息县公安局-关店派出所', '41151827', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('526', '1', '215', '息县公安局-杨店派出所', '41151828', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('527', '1', '215', '息县公安局-彭店派出所', '41151829', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('528', '1', '215', '息县公安局-张陶派出所', '41151830', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('529', '1', '215', '息县公安局-东岳派出所', '41151831', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('530', '1', '215', '息县公安局-路口派出所', '41151832', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('531', '1', '215', '息县公安局-白土店派出所', '41151833', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('532', '1', '215', '息县公安局-孙庙派出所', '41151834', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('533', '1', '215', '息县公安局-项店派出所', '41151835', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('534', '1', '215', '息县公安局-夏庄派出所', '41151836', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('535', '1', '215', '息县公安局-小茴派出所', '41151837', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('536', '1', '215', '息县公安局-包信派出所', '41151838', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('537', '1', '215', '息县公安局-岗李店派出所', '41151839', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('538', '1', '215', '息县公安局-陈棚派出所', '41151840', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('539', '1', '215', '息县公安局-长陵派出所', '41151841', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('540', '1', '215', '息县公安局-临河派出所', '41151842', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('541', '1', '215', '息县公安局-金地派出所', '41151843', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('542', '1', '215', '息县公安局-许店派出所', '41151844', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('543', '1', '215', '息县公安局-法制大队', '41151845', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('544', '1', '215', '息县公安局-消防大队', '41151846', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('546', '1', '350', '110勤务大队-110浉河勤务站', '4115120302', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('547', '1', '350', '110勤务大队-110平桥勤务站', '4115120303', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('548', '1', '350', '110勤务大队-110羊山勤务站', '4115120304', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('549', '1', '350', '110勤务大队-110领秀城勤务站', '4115120305', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('550', '1', '350', '110勤务大队-110军韵花园勤务站', '4115120306', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('551', '1', '350', '110勤务大队-110小南门勤务站', '4115120307', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('552', '1', '350', '110勤务大队-110文化中心勤务站', '4115120308', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('553', '1', '350', '110勤务大队-110国际商城勤务站', '4115120309', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('554', '1', '350', '110勤务大队-110农林学院勤务站', '4115120310', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('555', '1', '350', '110勤务大队-110博士名城勤务站', '4115120311', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('556', '1', '350', '110勤务大队-110消防队勤务站', '4115120312', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('557', '1', '350', '110勤务大队-110丽宝广场勤务站', '4115120313', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('558', '1', '351', '法制支队案审大队', '4115120401', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('559', '1', '351', '法制支队执法管理大队', '4115120402', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('560', '1', '351', '法制支队办案中心', '4115120403', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('561', '1', '352', '巡特警支队机关', '4115120501', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('562', '1', '352', '巡特警支队案件大队', '4115120502', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('563', '1', '352', '巡特警支队突击大队', '4115120503', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('564', '1', '352', '巡特警支队特警大队', '4115120504', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('565', '1', '352', '巡特警支队机动大队', '4115120505', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('566', '1', '359', '监管支队看守所', '4115121201', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('567', '1', '360', '浉河勤务大队', '4115121301', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('568', '1', '360', '平桥勤务大队', '4115121302', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('569', '1', '360', '明港勤务大队', '4115121303', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('570', '1', '360', '公路巡逻民警大队', '4115121304', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('571', '1', '360', '交通事故处理大队', '4115121305', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('572', '1', '360', '交通管理综合执法大队', '4115121306', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('573', '1', '360', '车管所', '4115121307', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('574', '1', '360', '考训科', '4115121308', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('575', '1', '360', '法制科', '4115121309', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('576', '1', '360', '交通秩序科', '4115121310', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('577', '1', '360', '事故处理指导科', '4115121311', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('578', '1', '360', '政治处', '4115121312', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('579', '1', '360', '宣传科', '4115121313', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('580', '1', '360', '装备财务科', '4115121314', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('581', '1', '360', '秘书科', '4115121315', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('582', '1', '360', '纪委', '4115121316', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('583', '1', '360', '交通设施管理科', '4115121317', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('584', '1', '360', '老干科', '4115121318', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('585', '1', '360', '机动大队', '4115121319', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('586', '1', '360', '光山县交警大队', '4115121320', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('587', '1', '360', '新县交警大队', '4115121321', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('593', '1', '567', '东风中队', '411512130101', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('588', '1', '360', '商城县交警大队', '4115121322', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('589', '1', '360', '淮滨县交警大队', '4115121323', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('590', '1', '360', '息县公安交通警察大队', '4115121324', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('591', '1', '360', '潢川县公安交通警察大队', '4115121325', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('592', '1', '360', '罗山县公安交通警察大队', '4115121326', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('594', '1', '567', '中山中队', '411512130102', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('595', '1', '567', '车站中队', '411512130103', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('596', '1', '586', '罗成中队', '411512132001', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('597', '1', '586', '白雀中队', '411512132002', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('598', '1', '586', '光山事故中队', '411512132003', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('599', '1', '586', '泼河中队', '411512132004', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('600', '1', '587', '箭厂河公安检查站', '411512132101', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('614', '1', '590', '二中队', '411512132403', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('601', '1', '589', '城关中队', '411512132301', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('602', '1', '589', '法制办', '411512132302', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('603', '1', '589', '源头办', '411512132303', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('604', '1', '589', '机动中队', '411512132304', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('605', '1', '589', '淮滨办公室', '411512132305', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('606', '1', '589', '淮滨县交警大队车管所', '411512132306', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('607', '1', '589', '赵集中队', '411512132307', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('608', '1', '589', '马集中队', '411512132308', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('609', '1', '589', '王店中队', '411512132309', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('610', '1', '589', '淮滨事故中队', '411512132310', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('611', '1', '589', '治超中队', '411512132311', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('612', '1', '590', '城关中队', '411512132401', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('613', '1', '590', '一中队', '411512132402', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('615', '1', '590', '三中队', '411512132404', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('616', '1', '590', '包信中队', '411512132405', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('617', '1', '590', '事故中队', '411512132406', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('618', '1', '590', '治超中队', '411512132407', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('619', '1', '590', '处理办', '411512132408', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('620', '1', '590', '车管所', '411512132409', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('621', '1', '591', '桃林中队', '411512132501', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('622', '1', '591', '付店中队', '411512132502', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('623', '1', '591', '城关中队', '411512132503', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('624', '1', '591', '巍岗中队', '411512132504', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('625', '1', '591', '仁和中队', '411512132505', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('626', '1', '591', '伞陂中队', '411512132506', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('627', '1', '591', '机动中队', '411512132507', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('628', '1', '591', '打黑队', '411512132508', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('629', '1', '591', '科技中队', '411512132509', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('630', '1', '591', '事故中队', '411512132510', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('631', '1', '591', '车驾管', '411512132511', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('632', '1', '591', '违法处理', '411512132512', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('633', '1', '592', '办公室', '411512132601', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('635', '1', '592', '技术中队', '411512132603', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('634', '1', '592', '事故处理中队', '411512132602', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('636', '1', '592', '沙管中队', '411512132604', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('637', '1', '592', '科技中队', '411512132605', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('638', '1', '592', '宣教室', '411512132606', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('639', '1', '592', '车管所', '411512132607', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('640', '1', '592', '城关中队', '411512132608', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('641', '1', '592', '伍家坡中队', '411512132609', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('642', '1', '592', '竹竿中队', '411512132610', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('643', '1', '592', '周党中队', '411512132611', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('644', '1', '592', '涩港中队', '411512132612', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('645', '1', '592', '机动中队', '411512132613', null, null, '0', '1');
INSERT INTO `area_dep` VALUES ('647', '1', '228', '老城分局治安管理大队二中队', '4115011302', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('648', '1', '228', '老城分局治安管理大队三中队', '4115011303', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('646', '1', '228', '老城分局治安管理大队一中队', '4115011301', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('649', '1', '229', '老城分局案件侦办大队一中队', '4115011401', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('650', '1', '229', '老城分局案件侦办大队二中队', '4115011402', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('651', '1', '229', '老城分局案件侦办大队三中队', '4115011403', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('652', '1', '229', '老城分局案件侦办大队四中队', '4115011404', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('653', '1', '229', '老城分局案件侦办大队五中队', '4115011405', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('654', '1', '229', '老城分局案件侦办大队六中队', '4115011406', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('655', '1', '229', '老城分局案件侦办大队七中队', '4115011407', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('656', '1', '229', '老城分局案件侦办大队八中队', '4115011408', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('657', '1', '229', '老城分局案件侦办大队九中队', '4115011409', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('658', '1', '230', '老城分局巡逻防控大队一中队', '4115011501', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('659', '1', '230', '老城分局巡逻防控大队二中队', '4115011502', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('660', '1', '230', '老城分局巡逻防控大队三中队', '4115011503', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('661', '1', '230', '老城分局巡逻防控大队四中队', '4115011504', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('662', '1', '566', '看守所管教一中队', '411512120101', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('663', '1', '566', '看守所管教二中队', '411512120102', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('664', '1', '566', '看守所巡视监控中队', '411512120103', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('665', '1', '566', '看守所收押提讯中队', '411512120104', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('666', '1', '566', '看守所后勤保障中队', '411512120105', null, null, '1', '1');
INSERT INTO `area_dep` VALUES ('667', '1', '566', '看守所女子管理中队', '411512120106', null, null, '1', '1');

-- ----------------------------
-- Table structure for `area_pro`
-- ----------------------------
DROP TABLE IF EXISTS `area_pro`;
CREATE TABLE `area_pro` (
  `proid` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(32) NOT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area_pro
-- ----------------------------
INSERT INTO `area_pro` VALUES ('1', '部门');

-- ----------------------------
-- Table structure for `case_201706`
-- ----------------------------
DROP TABLE IF EXISTS `case_201706`;
CREATE TABLE `case_201706` (
  `case_key` varchar(64) NOT NULL COMMENT '案件标识,格式：<yyyymmddHHmiss>_<警号>_<areacode>;不能编辑,内外提供视频时都自动生成;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标题;',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '案件开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '案件结束时间',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '第1出警人警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '第1出警人警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '第1出警人单位编号',
  `areaname` varchar(128) DEFAULT '' COMMENT '第1出警人单位名称',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '警情编号',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '案事件名称',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '警情类型;0:未编辑(3个月);1:一般警情(6个月);2:重大警情(永久);3:阻碍民警执法妨碍公务(永久);4:行政强制执行(永久);5:当场盘问检查(6个月);6:无效数据(7天);7:其他(6个月)',
  `case_no` varchar(40) DEFAULT '' COMMENT '案件编号',
  `case_name` varchar(128) DEFAULT '' COMMENT '案件名称(描述)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '案件类型;0:未知,1:刑事案件(永久),2:行政案件(永久)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '办案单位',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '办案警员',
  `remark` varchar(256) DEFAULT '' COMMENT '备注',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '案件申请警员编号',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '案件申请警员名',
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '案件申请人部门ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '案件申请人部门名',
  `apply_time` datetime DEFAULT '2017-01-01 00:00:00' COMMENT '移交日期',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '申请状态，0:初始态;1:待审核;2:移交完成',
  `source` int(1) DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '编辑人',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201706
-- ----------------------------
INSERT INTO `case_201706` VALUES ('20170623093621_086338_4115', '20170623093621_申忠', '2017-06-23 09:36:21', '2017-06-23 09:36:54', '2017-08-12 11:18:57', '申忠', '086338', '4115', '信阳市公安局', '111222333', 'test', '', '7', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-08-25 17:35:22', '超级管理员', '0');

-- ----------------------------
-- Table structure for `case_201707`
-- ----------------------------
DROP TABLE IF EXISTS `case_201707`;
CREATE TABLE `case_201707` (
  `case_key` varchar(64) NOT NULL COMMENT '案件标识,格式：<yyyymmddHHmiss>_<警号>_<areacode>;不能编辑,内外提供视频时都自动生成;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标题;',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '案件开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '案件结束时间',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '第1出警人警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '第1出警人警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '第1出警人单位编号',
  `areaname` varchar(128) DEFAULT '' COMMENT '第1出警人单位名称',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '警情编号',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '案事件名称',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '警情类型;0:未编辑(3个月);1:一般警情(6个月);2:重大警情(永久);3:阻碍民警执法妨碍公务(永久);4:行政强制执行(永久);5:当场盘问检查(6个月);6:无效数据(7天);7:其他(6个月)',
  `case_no` varchar(40) DEFAULT '' COMMENT '案件编号',
  `case_name` varchar(128) DEFAULT '' COMMENT '案件名称(描述)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '案件类型;0:未知,1:刑事案件(永久),2:行政案件(永久)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '办案单位',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '办案警员',
  `remark` varchar(256) DEFAULT '' COMMENT '备注',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '案件申请警员编号',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '案件申请警员名',
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '案件申请人部门ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '案件申请人部门名',
  `apply_time` datetime DEFAULT '2017-01-01 00:00:00' COMMENT '移交日期',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '申请状态，0:初始态;1:待审核;2:移交完成',
  `source` int(1) DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '编辑人',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201707
-- ----------------------------

-- ----------------------------
-- Table structure for `case_201708`
-- ----------------------------
DROP TABLE IF EXISTS `case_201708`;
CREATE TABLE `case_201708` (
  `case_key` varchar(64) NOT NULL COMMENT '案件标识,格式：<yyyymmddHHmiss>_<警号>_<areacode>;不能编辑,内外提供视频时都自动生成;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标题;',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '案件开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '案件结束时间',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '第1出警人警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '第1出警人警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '第1出警人单位编号',
  `areaname` varchar(128) DEFAULT '' COMMENT '第1出警人单位名称',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '警情编号',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '案事件名称',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '警情类型;0:未编辑(3个月);1:一般警情(6个月);2:重大警情(永久);3:阻碍民警执法妨碍公务(永久);4:行政强制执行(永久);5:当场盘问检查(6个月);6:无效数据(7天);7:其他(6个月)',
  `case_no` varchar(40) DEFAULT '' COMMENT '案件编号',
  `case_name` varchar(128) DEFAULT '' COMMENT '案件名称(描述)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '案件类型;0:未知,1:刑事案件(永久),2:行政案件(永久)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '办案单位',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '办案警员',
  `remark` varchar(256) DEFAULT '' COMMENT '备注',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '案件申请警员编号',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '案件申请警员名',
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '案件申请人部门ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '案件申请人部门名',
  `apply_time` datetime DEFAULT '2017-01-01 00:00:00' COMMENT '移交日期',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '申请状态，0:初始态;1:待审核;2:移交完成',
  `source` int(1) DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '编辑人',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201708
-- ----------------------------
INSERT INTO `case_201708` VALUES ('20170819054036_085907_41151106', '2017-08-19 05:40:36 王垒 data', '2017-08-19 05:40:36', '2017-08-19 06:02:37', '2017-01-01 00:00:00', '王垒', '085907', '41151106', '淮滨县公安局-马集派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819072259_185065_41151115', '2017-08-19 07:22:59 张安安 data', '2017-08-19 07:22:59', '2017-08-19 07:49:08', '2017-01-01 00:00:00', '张安安', '185065', '41151115', '淮滨县公安局-期思派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819085954_085442_411512132406', '2017-08-19 08:59:54 彭明豪 data', '2017-08-19 08:59:54', '2017-08-19 09:26:09', '2017-01-01 00:00:00', '彭明豪', '085442', '411512132406', '事故中队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819130923_087374_41150102', '2017-08-19 13:09:23 谷灏 data', '2017-08-19 13:09:23', '2017-08-19 13:38:25', '2017-01-01 00:00:00', '谷灏', '087374', '41150102', '老城分局-民权派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819205627_087981_41150115', '2017-08-19 20:56:27 李光友 data', '2017-08-19 20:56:27', '2017-08-19 21:24:17', '2017-01-01 00:00:00', '李光友', '087981', '41150115', '老城分局-老城分局巡逻防控大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819215140_087851_41150605', '2017-08-19 21:51:40 张向阳 data', '2017-08-19 21:51:40', '2017-08-19 22:16:14', '2017-01-01 00:00:00', '张向阳', '087851', '41150605', '平桥分局-五里派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819215336_088633_41151725', '2017-08-19 21:53:36 丁纪峰 data', '2017-08-19 21:53:36', '2017-08-19 22:12:40', '2017-01-01 00:00:00', '丁纪峰', '088633', '41151725', '商城县公安局-苏仙石派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819234241_187998_41151635', '2017-08-19 23:42:41 袁博 data', '2017-08-19 23:42:41', '2017-08-20 00:07:56', '2017-01-01 00:00:00', '袁博', '187998', '41151635', '罗山县公安局-禁毒大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170819234506_087251_41150213', '2017-08-19 23:45:06 张言才 data', '2017-08-19 23:45:06', '2017-08-20 00:14:20', '2017-01-01 00:00:00', '张言才', '087251', '41150213', '浉河分局-浉河分局法制大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820012335_085701_41151103', '2017-08-20 01:23:35 李杰 data', '2017-08-20 01:23:35', '2017-08-20 01:43:15', '2017-01-01 00:00:00', '李杰', '085701', '41151103', '淮滨县公安局-张里派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820060604_087903_41150412', '2017-08-20 06:06:04 张翅飞 data', '2017-08-20 06:06:04', '2017-08-20 06:25:31', '2017-01-01 00:00:00', '张翅飞', '087903', '41150412', '明港分局-明港分局治安管理大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820065012_037621_4115121302', '2017-08-20 06:50:12 学员21 data', '2017-08-20 06:50:12', '2017-08-20 07:18:56', '2017-01-01 00:00:00', '学员21', '037621', '4115121302', '平桥勤务大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820070840_084776_41151527', '2017-08-20 07:08:40 张涛 data', '2017-08-20 07:08:40', '2017-08-20 07:31:10', '2017-01-01 00:00:00', '张涛', '084776', '41151527', '潢川县公安局-上油岗派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820075557_085744_41151124', '2017-08-20 07:55:57 刘潜海 data', '2017-08-20 07:55:57', '2017-08-20 08:22:11', '2017-01-01 00:00:00', '刘潜海', '085744', '41151124', '淮滨县公安局-王家岗派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820103001_088587_41151707', '2017-08-20 10:30:01 周祥松 data', '2017-08-20 10:30:01', '2017-08-20 10:57:58', '2017-01-01 00:00:00', '周祥松', '088587', '41151707', '商城县公安局-刑警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820103926_088083_41151403', '2017-08-20 10:39:26 余家胜 data', '2017-08-20 10:39:26', '2017-08-20 11:07:07', '2017-01-01 00:00:00', '余家胜', '088083', '41151403', '光山县公安局-弦山派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820105503_189409_41151829', '2017-08-20 10:55:03 李浩 data', '2017-08-20 10:55:03', '2017-08-20 11:22:55', '2017-01-01 00:00:00', '李浩', '189409', '41151829', '息县公安局-彭店派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820105759_187759_41150901', '2017-08-20 10:57:59 刘骏 data', '2017-08-20 10:57:59', '2017-08-20 11:22:12', '2017-01-01 00:00:00', '刘骏', '187759', '41150901', '鸡公山分局-李家寨派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820110614_088021_41150105', '2017-08-20 11:06:14 樊敬洋 data', '2017-08-20 11:06:14', '2017-08-20 11:26:15', '2017-01-01 00:00:00', '樊敬洋', '088021', '41150105', '老城分局-金牛山派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170820232532_088380_41151412', '2017-08-20 23:25:32 方梁 data', '2017-08-20 23:25:32', '2017-08-20 23:53:41', '2017-01-01 00:00:00', '方梁', '088380', '41151412', '光山县公安局-马畈派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821002548_187701_41150411', '2017-08-21 00:25:48 张欢 data', '2017-08-21 00:25:48', '2017-08-21 00:44:21', '2017-01-01 00:00:00', '张欢', '187701', '41150411', '明港分局-明港分局案件侦办大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821021716_087285_4115121304', '2017-08-21 02:17:16 褚衡 data', '2017-08-21 02:17:16', '2017-08-21 02:43:17', '2017-01-01 00:00:00', '褚衡', '087285', '4115121304', '公路巡逻民警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821052936_084086_41150311', '2017-08-21 05:29:36 罗璇 data', '2017-08-21 05:29:36', '2017-08-21 05:52:36', '2017-01-01 00:00:00', '罗璇', '084086', '41150311', '羊山分局-羊山分局警务综合室', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821065409_0000000_411514', '20170821065409_胡建国', '2017-08-21 06:54:09', null, '2017-08-26 14:52:52', '胡建国', '088268', '411514', '光山县公安局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821081625_087852_41150604', '2017-08-21 08:16:25 吴津 data', '2017-08-21 08:16:25', '2017-08-21 08:35:14', '2017-01-01 00:00:00', '吴津', '087852', '41150604', '平桥分局-平西派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821082412_087753_41150405', '2017-08-21 08:24:12 严加坤 data', '2017-08-21 08:24:12', '2017-08-21 08:46:27', '2017-01-01 00:00:00', '严加坤', '087753', '41150405', '明港分局-刑集派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821091325_086990_4115121311', '2017-08-21 09:13:25 沈星宏 data', '2017-08-21 09:13:25', '2017-08-21 09:37:59', '2017-01-01 00:00:00', '沈星宏', '086990', '4115121311', '事故处理指导科', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821124247_187531_41150601', '2017-08-21 12:42:47 陈玮东 data', '2017-08-21 12:42:47', '2017-08-21 13:04:39', '2017-01-01 00:00:00', '陈玮东', '187531', '41150601', '平桥分局-平桥派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821143802_087928_41151205', '2017-08-21 14:38:02 许文刚 data', '2017-08-21 14:38:02', '2017-08-21 15:04:20', '2017-01-01 00:00:00', '许文刚', '087928', '41151205', '信阳市公安局-巡特警支队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821145409_088268_411514', '2017-08-21 14:54:09 胡建国 data', '2017-08-21 14:54:09', '2017-08-21 15:11:48', '2017-01-01 00:00:00', '胡建国', '088268', '411514', '光山县公安局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821162702_088079_4115121320', '2017-08-21 16:27:02 曾勇 data', '2017-08-21 16:27:02', '2017-08-21 16:56:27', '2017-01-01 00:00:00', '曾勇', '088079', '4115121320', '光山县交警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821195646_003-SA_411512120103', '2017-08-21 19:56:46 孙安 data', '2017-08-21 19:56:46', '2017-08-21 20:25:44', '2017-01-01 00:00:00', '孙安', '003-SA', '411512120103', '看守所巡视监控中队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170821225022_086412_41151203', '2017-08-21 22:50:22 吴军 data', '2017-08-21 22:50:22', '2017-08-21 23:17:39', '2017-01-01 00:00:00', '吴军', '086412', '41151203', '信阳市公安局-110勤务大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822012858_186328_4115120505', '2017-08-22 01:28:58 王龙翔 data', '2017-08-22 01:28:58', '2017-08-22 01:49:42', '2017-01-01 00:00:00', '王龙翔', '186328', '4115120505', '巡特警支队机动大队', '', '', '', '0', '', '', '0', '', '', '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-08-26 15:37:56', null, '0');
INSERT INTO `case_201708` VALUES ('20170822024730_186209_41151202', '2017-08-22 02:47:30 朱浩然 data', '2017-08-22 02:47:30', '2017-08-22 03:09:36', '2017-01-01 00:00:00', '朱浩然', '186209', '41151202', '信阳市公安局-刑警支队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822084535_HBJJ_4115121323', '2017-08-22 08:45:35 淮滨交警 data', '2017-08-22 08:45:35', '2017-08-22 09:14:47', '2017-01-01 00:00:00', '淮滨交警', 'HBJJ', '4115121323', '淮滨县交警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822104909_087906_41150401', '2017-08-22 10:49:09 张永祥 data', '2017-08-22 10:49:09', '2017-08-22 11:14:01', '2017-01-01 00:00:00', '张永祥', '087906', '41150401', '明港分局-明港派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822132104_084982_41150309', '2017-08-22 13:21:04 唐为民 data', '2017-08-22 13:21:04', '2017-08-22 13:47:30', '2017-01-01 00:00:00', '唐为民', '084982', '41150309', '羊山分局-羊山分局特勤大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822135627_087294_41150216', '2017-08-22 13:56:27 王艳 data', '2017-08-22 13:56:27', '2017-08-22 14:17:53', '2017-01-01 00:00:00', '王艳', '087294', '41150216', '浉河分局-浉河分局社区警务大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822143852_087013_411501', '2017-08-22 14:38:52 潘焕斌 data', '2017-08-22 14:38:52', '2017-08-24 17:46:52', '2017-01-01 00:00:00', '潘焕斌', '087013', '411501', '老城分局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-08-26 20:44:02', null, '0');
INSERT INTO `case_201708` VALUES ('20170822181754_TC_411518', '2017-08-22 18:17:54 tc data', '2017-08-22 18:17:54', '2017-08-22 18:44:48', '2017-01-01 00:00:00', 'tc', 'TC', '411518', '息县公安局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822195319_ZA0019_41151804', '2017-08-22 19:53:19 付龙 data', '2017-08-22 19:53:19', '2017-08-22 20:16:52', '2017-01-01 00:00:00', '付龙', 'ZA0019', '41151804', '息县公安局-巡特警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822203426_SAKURA_41151213', '2017-08-22 20:34:26 王艺 data', '2017-08-22 20:34:26', '2017-08-22 21:00:19', '2017-01-01 00:00:00', '王艺', 'SAKURA', '41151213', '信阳市公安局-交通警察支队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170822223419_186026_4115120303', '2017-08-22 22:34:19 白杨 data', '2017-08-22 22:34:19', '2017-08-22 23:02:25', '2017-01-01 00:00:00', '白杨', '186026', '4115120303', '110勤务大队-110平桥勤务站', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823012736_ZA0065_41151804', '2017-08-23 01:27:36 秦浩然 data', '2017-08-23 01:27:36', '2017-08-23 01:48:32', '2017-01-01 00:00:00', '秦浩然', 'ZA0065', '41151804', '息县公安局-巡特警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823020636_999999_41150706', '2017-08-23 02:06:36 公用 data', '2017-08-23 02:06:36', '2017-08-23 02:35:53', '2017-01-01 00:00:00', '公用', '999999', '41150706', '上天梯分局-上天梯分局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823022914_188052_41151624', '2017-08-23 02:29:14 郑超 data', '2017-08-23 02:29:14', '2017-08-23 02:50:22', '2017-01-01 00:00:00', '郑超', '188052', '41151624', '罗山县公安局-山店派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823024345_187679_41150402', '2017-08-23 02:43:45 李颖志 data', '2017-08-23 02:43:45', '2017-08-23 03:08:42', '2017-01-01 00:00:00', '李颖志', '187679', '41150402', '明港分局-铁东派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823065937_189622_41151834', '2017-08-23 06:59:37 冉宏伟 data', '2017-08-23 06:59:37', '2017-08-23 07:24:39', '2017-01-01 00:00:00', '冉宏伟', '189622', '41151834', '息县公安局-孙庙派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823070823_088878_4115121321', '2017-08-23 07:08:23 章伟 data', '2017-08-23 07:08:23', '2017-08-23 07:34:46', '2017-01-01 00:00:00', '章伟', '088878', '4115121321', '新县交警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823084614_ZA0012_41151804', '2017-08-23 08:46:14 杨光 data', '2017-08-23 08:46:14', '2017-08-23 09:11:02', '2017-01-01 00:00:00', '杨光', 'ZA0012', '41151804', '息县公安局-巡特警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823154110_084781_41151515', '2017-08-23 15:41:10 邹磊 data', '2017-08-23 15:41:10', '2017-08-23 16:04:03', '2017-01-01 00:00:00', '邹磊', '084781', '41151515', '潢川县公安局-刑警大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823190349_188401_41151504', '2017-08-23 19:03:49 桂军利 data', '2017-08-23 19:03:49', '2017-08-23 19:21:21', '2017-01-01 00:00:00', '桂军利', '188401', '41151504', '潢川县公安局-东城派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823195610_189485_41151839', '2017-08-23 19:56:10 李一初 data', '2017-08-23 19:56:10', '2017-08-23 20:20:31', '2017-01-01 00:00:00', '李一初', '189485', '41151839', '息县公安局-岗李店派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170823235734_188168_41151604', '2017-08-23 23:57:34 高爽 data', '2017-08-23 23:57:34', '2017-08-24 00:15:09', '2017-01-01 00:00:00', '高爽', '188168', '41151604', '罗山县公安局-丽水派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824002746_084349_41151608', '2017-08-24 00:27:46 秦祥 data', '2017-08-24 00:27:46', '2017-08-24 00:47:48', '2017-01-01 00:00:00', '秦祥', '084349', '41151608', '罗山县公安局-治安大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824034644_086401_411510', '2017-08-24 03:46:44 于培 data', '2017-08-24 03:46:44', '2017-08-24 04:13:45', '2017-01-01 00:00:00', '于培', '086401', '411510', '南湾分局', '22', '22', '', '1', '', '', '0', '', '', '', '084790', '刘晶', '41151205', '信阳市公安局-巡特警支队', '2017-01-01 00:00:00', '2', '1', '2017-08-27 20:05:16', '超级管理员', '0');
INSERT INTO `case_201708` VALUES ('20170824035539_085919_41151111', '2017-08-24 03:55:39 陈淮 data', '2017-08-24 03:55:39', '2017-08-24 04:15:00', '2017-01-01 00:00:00', '陈淮', '085919', '41151111', '淮滨县公安局-治安大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824073935_XF0002_41151613', '2017-08-24 07:39:35 张为明 data', '2017-08-24 07:39:35', '2017-08-24 08:05:46', '2017-01-01 00:00:00', '张为明', 'XF0002', '41151613', '罗山县公安局-东铺派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824093120_ZSM_4115121301', '2017-08-24 09:31:20 张世明 data', '2017-08-24 09:31:20', '2017-08-24 09:52:32', '2017-01-01 00:00:00', '张世明', 'ZSM', '4115121301', '浉河勤务大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824094305_086435_41151208', '2017-08-24 09:43:05 李洁 data', '2017-08-24 09:43:05', '2017-08-24 10:01:02', '2017-01-01 00:00:00', '李洁', '086435', '41151208', '信阳市公安局-经侦支队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824104939_084017_41151634', '2017-08-24 10:49:39 郑祥国 data', '2017-08-24 10:49:39', '2017-08-24 11:15:31', '2017-01-01 00:00:00', '郑祥国', '084017', '41151634', '罗山县公安局-经侦大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824112958_185765_41151703', '2017-08-24 11:29:58 杨允成 data', '2017-08-24 11:29:58', '2017-08-24 11:55:21', '2017-01-01 00:00:00', '杨允成', '185765', '41151703', '商城县公安局-城关派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824122406_087787_411504', '2017-08-24 12:24:06 刘赞 data', '2017-08-24 12:24:06', '2017-08-24 12:47:00', '2017-01-01 00:00:00', '刘赞', '087787', '411504', '明港分局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824122932_087468_41150201', '2017-08-24 12:29:32 施云山 data', '2017-08-24 12:29:32', '2017-08-24 12:56:15', '2017-01-01 00:00:00', '施云山', '087468', '41150201', '浉河分局-五星派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824124838_085640_41151813', '2017-08-24 12:48:38 杨梅 data', '2017-08-24 12:48:38', '2017-08-24 13:07:45', '2017-01-01 00:00:00', '杨梅', '085640', '41151813', '息县公安局-警令部', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824135509_189587_41151842', '2017-08-24 13:55:09 张文全 data', '2017-08-24 13:55:09', '2017-08-24 14:17:28', '2017-01-01 00:00:00', '张文全', '189587', '41151842', '息县公安局-临河派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824143059_187011_41150214', '2017-08-24 14:30:59 李祥洋 data', '2017-08-24 14:30:59', '2017-08-24 14:59:36', '2017-01-01 00:00:00', '李祥洋', '187011', '41150214', '浉河分局-浉河分局案件侦办大队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824160222_188031_411512132613', '2017-08-24 16:02:22 屈守乾 data', '2017-08-24 16:02:22', '2017-08-24 16:29:01', '2017-01-01 00:00:00', '屈守乾', '188031', '411512132613', '机动中队', '', '', '', '0', '', '', '0', '', '', '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-08-26 11:35:29', null, '0');
INSERT INTO `case_201708` VALUES ('20170824174439_087388_41150208', '2017-08-24 17:44:39 周兴建 data', '2017-08-24 17:44:39', '2017-08-24 18:04:05', '2017-01-01 00:00:00', '周兴建', '087388', '41150208', '浉河分局-吴家店派出所', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824174539_085532_411501', '20170824174539_陈勇', '2017-08-24 17:45:39', '2017-08-24 17:46:52', '2017-08-27 19:34:57', '陈勇', '085532', '411501', '老城分局', '333', '333', '', '2', '444', '333', '1', null, null, '', '123123', 'ceshi', '4115', '信阳市公安局', '2017-01-01 00:00:00', '2', '1', '2017-08-28 14:57:46', '申忠', '0');
INSERT INTO `case_201708` VALUES ('20170824174539_T11366_411501', '20170824174539_陈勇', '2017-08-24 17:45:39', '2017-08-26 20:30:19', '2017-08-26 20:55:36', '陈勇', '085532', '411501', '老城分局', '111', '111', '', '1', '', '', '0', '', '', '', '085532', '陈勇', '411501', '老城分局', '2017-01-01 00:00:00', '0', '1', '2017-08-28 17:43:05', '超级管理员', '0');
INSERT INTO `case_201708` VALUES ('20170824192757_086991_41151202', '2017-08-24 19:27:57 吴  浩 data', '2017-08-24 19:27:57', '2017-08-24 19:50:33', '2017-01-01 00:00:00', '吴  浩', '086991', '41151202', '信阳市公安局-刑警支队', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170824213355_008_4115120306', '2017-08-24 21:33:55 涂小亮 data', '2017-08-24 21:33:55', '2017-08-24 21:58:25', '2017-01-01 00:00:00', '涂小亮', '008', '4115120306', '110勤务大队-110军韵花园勤务站', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-01-01 00:00:00', null, '0');
INSERT INTO `case_201708` VALUES ('20170826110630_cpxhpe_41', '2017-08-26 11:05:07 超级管理员 数据', '2017-08-26 11:06:30', null, '2017-08-26 11:05:07', '超级管理员', 'admin', '41', '河南省公安厅', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-08-26 14:49:51', '超级管理员', '0');
INSERT INTO `case_201708` VALUES ('20170826113314_085532_411501', '20170826113314_陈勇', '2017-08-26 11:33:14', '2017-08-27 19:27:50', '2017-08-27 19:34:58', '陈勇', '085532', '411501', '老城分局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-08-30 09:26:54', null, '0');
INSERT INTO `case_201708` VALUES ('20170827192725_T11366_411501', '20170827192725_陈勇', '2017-08-27 19:27:25', '2017-08-27 19:27:50', '2017-08-30 09:35:05', '陈勇', '085532', '411501', '老城分局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '1', '2017-08-27 19:35:01', null, '0');
INSERT INTO `case_201708` VALUES ('20170829102710_cpxhpe_4115', '2017-08-29 10:26:52 ceshi 数据', '2017-08-29 10:27:10', null, '2017-08-29 10:26:52', 'ceshi', '123123', '4115', '信阳市公安局', '', '', '', '0', '', '', '0', null, null, '', '', '', '', '', '2017-01-01 00:00:00', '0', '3', '2017-08-29 15:17:58', 'ceshi', '0');

-- ----------------------------
-- Table structure for `case_201709`
-- ----------------------------
DROP TABLE IF EXISTS `case_201709`;
CREATE TABLE `case_201709` (
  `case_key` varchar(64) NOT NULL COMMENT '案件标识,格式：<yyyymmddHHmiss>_<警号>_<areacode>;不能编辑,内外提供视频时都自动生成;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标题;',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '案件开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '案件结束时间',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '第1出警人警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '第1出警人警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '第1出警人单位编号',
  `areaname` varchar(128) DEFAULT '' COMMENT '第1出警人单位名称',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '警情编号',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '案事件名称',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '警情类型;0:未编辑(3个月);1:一般警情(6个月);2:重大警情(永久);3:阻碍民警执法妨碍公务(永久);4:行政强制执行(永久);5:当场盘问检查(6个月);6:无效数据(7天);7:其他(6个月)',
  `case_no` varchar(40) DEFAULT '' COMMENT '案件编号',
  `case_name` varchar(128) DEFAULT '' COMMENT '案件名称(描述)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '案件类型;0:未知,1:刑事案件(永久),2:行政案件(永久)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '办案单位',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '办案警员',
  `remark` varchar(256) DEFAULT '' COMMENT '备注',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '案件申请警员编号',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '案件申请警员名',
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '案件申请人部门ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '案件申请人部门名',
  `apply_time` datetime DEFAULT '2017-01-01 00:00:00' COMMENT '移交日期',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '申请状态，0:初始态;1:待审核;2:移交完成',
  `source` int(1) DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '编辑人',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201709
-- ----------------------------

-- ----------------------------
-- Table structure for `case_video_201706`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201706`;
CREATE TABLE `case_video_201706` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '文件编号 <产口序号>_<警号>_<年月日时分秒>.<类型>',
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标识，同case_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '拍摄时间',
  `end_time` datetime DEFAULT NULL COMMENT '视频结束时间',
  `wjcd` int(11) DEFAULT '0' COMMENT '文件长度',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:未知,1:视频,2:音频,3:图片',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '单位名称',
  `cpxh` varchar(12) NOT NULL DEFAULT '0000000' COMMENT '产品序号(执法仪编号),文件由人工提供时统一填99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '存储服务器',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '存储位置',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '播放位置',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '物理位置,绝对路径',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `bzlx` int(2) DEFAULT '0' COMMENT '标注类型,0:未标注,1:标注(典型案例)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '工作站IP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:不上传，1：上传到中心服务器(重要视频)',
  `video_type` int(2) DEFAULT '9' COMMENT '视频分类(1:酒驾、2:事故、3:毒驾、4:违法、9:其他)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `remark` varchar(256) DEFAULT '',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201706
-- ----------------------------
INSERT INTO `case_video_201706` VALUES ('TA00716_086338_20170623093621.MOV', '20170623093621_086338_4115', '2017-06-23 09:36:21', '2017-06-23 09:36:54', '33', '1', '申忠', '086338', '4115', '信阳市公安局', 'TA00716', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/TA00716/20170623/TA00716_086338_20170623093621.MOV', null, '2017-08-23 11:18:57', '0', '192.168.3.108', '0', '9', '1', '2017-08-23 11:18:57', '', '0');

-- ----------------------------
-- Table structure for `case_video_201707`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201707`;
CREATE TABLE `case_video_201707` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '文件编号 <产口序号>_<警号>_<年月日时分秒>.<类型>',
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标识，同case_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '拍摄时间',
  `end_time` datetime DEFAULT NULL COMMENT '视频结束时间',
  `wjcd` int(11) DEFAULT '0' COMMENT '文件长度',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:未知,1:视频,2:音频,3:图片',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '单位名称',
  `cpxh` varchar(12) NOT NULL DEFAULT '0000000' COMMENT '产品序号(执法仪编号),文件由人工提供时统一填99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '存储服务器',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '存储位置',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '播放位置',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '物理位置,绝对路径',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `bzlx` int(2) DEFAULT '0' COMMENT '标注类型,0:未标注,1:标注(典型案例)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '工作站IP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:不上传，1：上传到中心服务器(重要视频)',
  `video_type` int(2) DEFAULT '9' COMMENT '视频分类(1:酒驾、2:事故、3:毒驾、4:违法、9:其他)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `remark` varchar(256) DEFAULT '',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201707
-- ----------------------------

-- ----------------------------
-- Table structure for `case_video_201708`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201708`;
CREATE TABLE `case_video_201708` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '文件编号 <产口序号>_<警号>_<年月日时分秒>.<类型>',
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标识，同case_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '拍摄时间',
  `end_time` datetime DEFAULT NULL COMMENT '视频结束时间',
  `wjcd` int(11) DEFAULT '0' COMMENT '文件长度',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:未知,1:视频,2:音频,3:图片',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '单位名称',
  `cpxh` varchar(12) NOT NULL DEFAULT '0000000' COMMENT '产品序号(执法仪编号),文件由人工提供时统一填99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '存储服务器',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '存储位置',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '播放位置',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '物理位置,绝对路径',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `bzlx` int(2) DEFAULT '0' COMMENT '标注类型,0:未标注,1:标注(典型案例)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '工作站IP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:不上传，1：上传到中心服务器(重要视频)',
  `video_type` int(2) DEFAULT '9' COMMENT '视频分类(1:酒驾、2:事故、3:毒驾、4:违法、9:其他)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `remark` varchar(256) DEFAULT '',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201708
-- ----------------------------
INSERT INTO `case_video_201708` VALUES ('@2017081821403627731', '20170819054036_085907_41151106', '2017-08-18 21:40:36', '2017-08-18 21:45:26', '290', '1', '王垒', '085907', '41151106', '淮滨县公安局-马集派出所', '0000000', null, 'file/1503092436.0/@2017081821403627731', 'http://192.168.77.33/file/1503092436.0/@2017081821403627731', null, '2017-08-19 13:58:52', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081821403628326', '20170819054036_085907_41151106', '2017-08-18 21:40:36', null, '0', '0', '王垒', '085907', '41151106', '淮滨县公安局-马集派出所', '0000000', null, 'file/1503092436.0/@2017081821403628326', 'http://192.168.77.33/file/1503092436.0/@2017081821403628326', null, '2017-08-19 14:42:36', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081821403644730', '20170819054036_085907_41151106', '2017-08-18 21:40:36', null, '0', '2', '王垒', '085907', '41151106', '淮滨县公安局-马集派出所', '0000000', null, 'file/1503092436.0/@2017081821403644730', 'http://192.168.77.33/file/1503092436.0/@2017081821403644730', null, '2017-08-19 14:29:33', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081823225924454', '20170819072259_185065_41151115', '2017-08-18 23:22:59', null, '0', '0', '张安安', '185065', '41151115', '淮滨县公安局-期思派出所', '0000000', null, 'file/1503098579.0/@2017081823225924454', 'http://192.168.77.33/file/1503098579.0/@2017081823225924454', null, '2017-08-19 15:52:44', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081823225938549', '20170819072259_185065_41151115', '2017-08-18 23:22:59', '2017-08-18 23:25:00', '121', '1', '张安安', '185065', '41151115', '淮滨县公安局-期思派出所', '0000000', null, 'file/1503098579.0/@2017081823225938549', 'http://192.168.77.33/file/1503098579.0/@2017081823225938549', null, '2017-08-19 16:06:16', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081823225938874', '20170819072259_185065_41151115', '2017-08-18 23:22:59', null, '0', '0', '张安安', '185065', '41151115', '淮滨县公安局-期思派出所', '0000000', null, 'file/1503098579.0/@2017081823225938874', 'http://192.168.77.33/file/1503098579.0/@2017081823225938874', null, '2017-08-19 15:30:33', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081900595419233', '20170819085954_085442_411512132406', '2017-08-19 00:59:54', '2017-08-19 01:03:27', '213', '1', '彭明豪', '085442', '411512132406', '事故中队', '0000000', null, 'file/1503104394.0/@2017081900595419233', 'http://192.168.77.33/file/1503104394.0/@2017081900595419233', null, '2017-08-19 17:13:51', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081900595424716', '20170819085954_085442_411512132406', '2017-08-19 00:59:54', null, '0', '2', '彭明豪', '085442', '411512132406', '事故中队', '0000000', null, 'file/1503104394.0/@2017081900595424716', 'http://192.168.77.33/file/1503104394.0/@2017081900595424716', null, '2017-08-19 17:12:22', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081900595440810', '20170819085954_085442_411512132406', '2017-08-19 00:59:54', null, '0', '2', '彭明豪', '085442', '411512132406', '事故中队', '0000000', null, 'file/1503104394.0/@2017081900595440810', 'http://192.168.77.33/file/1503104394.0/@2017081900595440810', null, '2017-08-19 18:15:13', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081905092333783', '20170819130923_087374_41150102', '2017-08-19 05:09:23', null, '0', '0', '谷灏', '087374', '41150102', '老城分局-民权派出所', '0000000', null, 'file/1503119363.0/@2017081905092333783', 'http://192.168.77.33/file/1503119363.0/@2017081905092333783', null, '2017-08-19 21:41:27', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081905092343409', '20170819130923_087374_41150102', '2017-08-19 05:09:23', null, '0', '2', '谷灏', '087374', '41150102', '老城分局-民权派出所', '0000000', null, 'file/1503119363.0/@2017081905092343409', 'http://192.168.77.33/file/1503119363.0/@2017081905092343409', null, '2017-08-19 23:00:09', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081905092344296', '20170819130923_087374_41150102', '2017-08-19 05:09:23', null, '0', '2', '谷灏', '087374', '41150102', '老城分局-民权派出所', '0000000', null, 'file/1503119363.0/@2017081905092344296', 'http://192.168.77.33/file/1503119363.0/@2017081905092344296', null, '2017-08-19 22:33:33', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081912562724984', '20170819205627_087981_41150115', '2017-08-19 12:56:27', null, '0', '2', '李光友', '087981', '41150115', '老城分局-老城分局巡逻防控大队', '0000000', null, 'file/1503147387.0/@2017081912562724984', 'http://192.168.77.33/file/1503147387.0/@2017081912562724984', null, '2017-08-20 06:21:14', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081912562740481', '20170819205627_087981_41150115', '2017-08-19 12:56:27', null, '0', '2', '李光友', '087981', '41150115', '老城分局-老城分局巡逻防控大队', '0000000', null, 'file/1503147387.0/@2017081912562740481', 'http://192.168.77.33/file/1503147387.0/@2017081912562740481', null, '2017-08-20 05:42:29', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081912562754655', '20170819205627_087981_41150115', '2017-08-19 12:56:27', null, '0', '3', '李光友', '087981', '41150115', '老城分局-老城分局巡逻防控大队', '0000000', null, 'file/1503147387.0/@2017081912562754655', 'http://192.168.77.33/file/1503147387.0/@2017081912562754655', null, '2017-08-20 06:54:05', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081913514032676', '20170819215140_087851_41150605', '2017-08-19 13:51:40', '2017-08-19 13:54:44', '184', '1', '张向阳', '087851', '41150605', '平桥分局-五里派出所', '0000000', null, 'file/1503150700.0/@2017081913514032676', 'http://192.168.77.33/file/1503150700.0/@2017081913514032676', null, '2017-08-20 07:33:06', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081913514041211', '20170819215140_087851_41150605', '2017-08-19 13:51:40', null, '0', '2', '张向阳', '087851', '41150605', '平桥分局-五里派出所', '0000000', null, 'file/1503150700.0/@2017081913514041211', 'http://192.168.77.33/file/1503150700.0/@2017081913514041211', null, '2017-08-20 06:42:59', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081913514055771', '20170819215140_087851_41150605', '2017-08-19 13:51:40', null, '0', '2', '张向阳', '087851', '41150605', '平桥分局-五里派出所', '0000000', null, 'file/1503150700.0/@2017081913514055771', 'http://192.168.77.33/file/1503150700.0/@2017081913514055771', null, '2017-08-20 06:00:55', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081913533621421', '20170819215336_088633_41151725', '2017-08-19 13:53:36', null, '0', '0', '丁纪峰', '088633', '41151725', '商城县公安局-苏仙石派出所', '0000000', null, 'file/1503150816.0/@2017081913533621421', 'http://192.168.77.33/file/1503150816.0/@2017081913533621421', null, '2017-08-20 06:29:31', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081913533628303', '20170819215336_088633_41151725', '2017-08-19 13:53:36', '2017-08-19 13:56:24', '168', '1', '丁纪峰', '088633', '41151725', '商城县公安局-苏仙石派出所', '0000000', null, 'file/1503150816.0/@2017081913533628303', 'http://192.168.77.33/file/1503150816.0/@2017081913533628303', null, '2017-08-20 06:07:24', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081913533655643', '20170819215336_088633_41151725', '2017-08-19 13:53:36', null, '0', '3', '丁纪峰', '088633', '41151725', '商城县公安局-苏仙石派出所', '0000000', null, 'file/1503150816.0/@2017081913533655643', 'http://192.168.77.33/file/1503150816.0/@2017081913533655643', null, '2017-08-20 07:28:59', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081915424116104', '20170819234241_187998_41151635', '2017-08-19 15:42:41', null, '0', '0', '袁博', '187998', '41151635', '罗山县公安局-禁毒大队', '0000000', null, 'file/1503157361.0/@2017081915424116104', 'http://192.168.77.33/file/1503157361.0/@2017081915424116104', null, '2017-08-20 08:34:34', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081915424127098', '20170819234241_187998_41151635', '2017-08-19 15:42:41', null, '0', '0', '袁博', '187998', '41151635', '罗山县公安局-禁毒大队', '0000000', null, 'file/1503157361.0/@2017081915424127098', 'http://192.168.77.33/file/1503157361.0/@2017081915424127098', null, '2017-08-20 07:52:19', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081915424154122', '20170819234241_187998_41151635', '2017-08-19 15:42:41', '2017-08-19 15:46:08', '207', '1', '袁博', '187998', '41151635', '罗山县公安局-禁毒大队', '0000000', null, 'file/1503157361.0/@2017081915424154122', 'http://192.168.77.33/file/1503157361.0/@2017081915424154122', null, '2017-08-20 08:48:41', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081915450621088', '20170819234506_087251_41150213', '2017-08-19 15:45:06', null, '0', '2', '张言才', '087251', '41150213', '浉河分局-浉河分局法制大队', '0000000', null, 'file/1503157506.0/@2017081915450621088', 'http://192.168.77.33/file/1503157506.0/@2017081915450621088', null, '2017-08-20 09:29:03', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081915450629545', '20170819234506_087251_41150213', '2017-08-19 15:45:06', null, '0', '3', '张言才', '087251', '41150213', '浉河分局-浉河分局法制大队', '0000000', null, 'file/1503157506.0/@2017081915450629545', 'http://192.168.77.33/file/1503157506.0/@2017081915450629545', null, '2017-08-20 08:10:58', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708191545068679', '20170819234506_087251_41150213', '2017-08-19 15:45:06', null, '0', '2', '张言才', '087251', '41150213', '浉河分局-浉河分局法制大队', '0000000', null, 'file/1503157506.0/@201708191545068679', 'http://192.168.77.33/file/1503157506.0/@201708191545068679', null, '2017-08-20 07:47:26', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081917233510786', '20170820012335_085701_41151103', '2017-08-19 17:23:35', null, '0', '2', '李杰', '085701', '41151103', '淮滨县公安局-张里派出所', '0000000', null, 'file/1503163415.0/@2017081917233510786', 'http://192.168.77.33/file/1503163415.0/@2017081917233510786', null, '2017-08-20 10:09:47', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081917233533778', '20170820012335_085701_41151103', '2017-08-19 17:23:35', null, '0', '3', '李杰', '085701', '41151103', '淮滨县公安局-张里派出所', '0000000', null, 'file/1503163415.0/@2017081917233533778', 'http://192.168.77.33/file/1503163415.0/@2017081917233533778', null, '2017-08-20 10:14:40', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081917233548607', '20170820012335_085701_41151103', '2017-08-19 17:23:35', null, '0', '3', '李杰', '085701', '41151103', '淮滨县公安局-张里派出所', '0000000', null, 'file/1503163415.0/@2017081917233548607', 'http://192.168.77.33/file/1503163415.0/@2017081917233548607', null, '2017-08-20 09:39:02', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081922060443041', '20170820060604_087903_41150412', '2017-08-19 22:06:04', null, '0', '2', '张翅飞', '087903', '41150412', '明港分局-明港分局治安管理大队', '0000000', null, 'file/1503180364.0/@2017081922060443041', 'http://192.168.77.33/file/1503180364.0/@2017081922060443041', null, '2017-08-20 15:31:19', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081922060455043', '20170820060604_087903_41150412', '2017-08-19 22:06:04', null, '0', '0', '张翅飞', '087903', '41150412', '明港分局-明港分局治安管理大队', '0000000', null, 'file/1503180364.0/@2017081922060455043', 'http://192.168.77.33/file/1503180364.0/@2017081922060455043', null, '2017-08-20 14:38:39', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708192206046744', '20170820060604_087903_41150412', '2017-08-19 22:06:04', null, '0', '2', '张翅飞', '087903', '41150412', '明港分局-明港分局治安管理大队', '0000000', null, 'file/1503180364.0/@201708192206046744', 'http://192.168.77.33/file/1503180364.0/@201708192206046744', null, '2017-08-20 14:39:42', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081922501212602', '20170820065012_037621_4115121302', '2017-08-19 22:50:12', null, '0', '0', '学员21', '037621', '4115121302', '平桥勤务大队', '0000000', null, 'file/1503183012.0/@2017081922501212602', 'http://192.168.77.33/file/1503183012.0/@2017081922501212602', null, '2017-08-20 15:20:16', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081922501219077', '20170820065012_037621_4115121302', '2017-08-19 22:50:12', null, '0', '2', '学员21', '037621', '4115121302', '平桥勤务大队', '0000000', null, 'file/1503183012.0/@2017081922501219077', 'http://192.168.77.33/file/1503183012.0/@2017081922501219077', null, '2017-08-20 15:03:38', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081922501236048', '20170820065012_037621_4115121302', '2017-08-19 22:50:12', null, '0', '2', '学员21', '037621', '4115121302', '平桥勤务大队', '0000000', null, 'file/1503183012.0/@2017081922501236048', 'http://192.168.77.33/file/1503183012.0/@2017081922501236048', null, '2017-08-20 15:02:53', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081923084017008', '20170820070840_084776_41151527', '2017-08-19 23:08:40', '2017-08-19 23:12:11', '211', '1', '张涛', '084776', '41151527', '潢川县公安局-上油岗派出所', '0000000', null, 'file/1503184120.0/@2017081923084017008', 'http://192.168.77.33/file/1503184120.0/@2017081923084017008', null, '2017-08-20 16:30:18', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081923084027252', '20170820070840_084776_41151527', '2017-08-19 23:08:40', null, '0', '3', '张涛', '084776', '41151527', '潢川县公安局-上油岗派出所', '0000000', null, 'file/1503184120.0/@2017081923084027252', 'http://192.168.77.33/file/1503184120.0/@2017081923084027252', null, '2017-08-20 16:12:25', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081923084035786', '20170820070840_084776_41151527', '2017-08-19 23:08:40', '2017-08-19 23:11:50', '190', '1', '张涛', '084776', '41151527', '潢川县公安局-上油岗派出所', '0000000', null, 'file/1503184120.0/@2017081923084035786', 'http://192.168.77.33/file/1503184120.0/@2017081923084035786', null, '2017-08-20 16:10:18', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081923555726942', '20170820075557_085744_41151124', '2017-08-19 23:55:57', '2017-08-19 23:59:43', '226', '1', '刘潜海', '085744', '41151124', '淮滨县公安局-王家岗派出所', '0000000', null, 'file/1503186957.0/@2017081923555726942', 'http://192.168.77.33/file/1503186957.0/@2017081923555726942', null, '2017-08-20 16:20:58', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081923555734881', '20170820075557_085744_41151124', '2017-08-19 23:55:57', null, '0', '3', '刘潜海', '085744', '41151124', '淮滨县公安局-王家岗派出所', '0000000', null, 'file/1503186957.0/@2017081923555734881', 'http://192.168.77.33/file/1503186957.0/@2017081923555734881', null, '2017-08-20 16:37:32', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017081923555740391', '20170820075557_085744_41151124', '2017-08-19 23:55:57', null, '0', '0', '刘潜海', '085744', '41151124', '淮滨县公安局-王家岗派出所', '0000000', null, 'file/1503186957.0/@2017081923555740391', 'http://192.168.77.33/file/1503186957.0/@2017081923555740391', null, '2017-08-20 17:00:20', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002300137768', '20170820103001_088587_41151707', '2017-08-20 02:30:01', null, '0', '0', '周祥松', '088587', '41151707', '商城县公安局-刑警大队', '0000000', null, 'file/1503196201.0/@2017082002300137768', 'http://192.168.77.33/file/1503196201.0/@2017082002300137768', null, '2017-08-20 19:04:44', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002300160267', '20170820103001_088587_41151707', '2017-08-20 02:30:01', null, '0', '0', '周祥松', '088587', '41151707', '商城县公安局-刑警大队', '0000000', null, 'file/1503196201.0/@2017082002300160267', 'http://192.168.77.33/file/1503196201.0/@2017082002300160267', null, '2017-08-20 20:16:37', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708200230016514', '20170820103001_088587_41151707', '2017-08-20 02:30:01', '2017-08-20 02:33:46', '225', '1', '周祥松', '088587', '41151707', '商城县公安局-刑警大队', '0000000', null, 'file/1503196201.0/@201708200230016514', 'http://192.168.77.33/file/1503196201.0/@201708200230016514', null, '2017-08-20 19:50:34', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002392616146', '20170820103926_088083_41151403', '2017-08-20 02:39:26', null, '0', '3', '余家胜', '088083', '41151403', '光山县公安局-弦山派出所', '0000000', null, 'file/1503196766.0/@2017082002392616146', 'http://192.168.77.33/file/1503196766.0/@2017082002392616146', null, '2017-08-20 20:05:59', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002392645028', '20170820103926_088083_41151403', '2017-08-20 02:39:26', '2017-08-20 02:43:59', '273', '1', '余家胜', '088083', '41151403', '光山县公安局-弦山派出所', '0000000', null, 'file/1503196766.0/@2017082002392645028', 'http://192.168.77.33/file/1503196766.0/@2017082002392645028', null, '2017-08-20 20:11:37', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002392647022', '20170820103926_088083_41151403', '2017-08-20 02:39:26', null, '0', '0', '余家胜', '088083', '41151403', '光山县公安局-弦山派出所', '0000000', null, 'file/1503196766.0/@2017082002392647022', 'http://192.168.77.33/file/1503196766.0/@2017082002392647022', null, '2017-08-20 19:53:38', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002550344538', '20170820105503_189409_41151829', '2017-08-20 02:55:03', null, '0', '0', '李浩', '189409', '41151829', '息县公安局-彭店派出所', '0000000', null, 'file/1503197703.0/@2017082002550344538', 'http://192.168.77.33/file/1503197703.0/@2017082002550344538', null, '2017-08-20 20:54:18', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002550354163', '20170820105503_189409_41151829', '2017-08-20 02:55:03', null, '0', '3', '李浩', '189409', '41151829', '息县公安局-彭店派出所', '0000000', null, 'file/1503197703.0/@2017082002550354163', 'http://192.168.77.33/file/1503197703.0/@2017082002550354163', null, '2017-08-20 19:56:53', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708200255038769', '20170820105503_189409_41151829', '2017-08-20 02:55:03', null, '0', '2', '李浩', '189409', '41151829', '息县公安局-彭店派出所', '0000000', null, 'file/1503197703.0/@201708200255038769', 'http://192.168.77.33/file/1503197703.0/@201708200255038769', null, '2017-08-20 20:39:02', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002575919661', '20170820105759_187759_41150901', '2017-08-20 02:57:59', null, '0', '0', '刘骏', '187759', '41150901', '鸡公山分局-李家寨派出所', '0000000', null, 'file/1503197879.0/@2017082002575919661', 'http://192.168.77.33/file/1503197879.0/@2017082002575919661', null, '2017-08-20 20:06:28', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002575921089', '20170820105759_187759_41150901', '2017-08-20 02:57:59', null, '0', '0', '刘骏', '187759', '41150901', '鸡公山分局-李家寨派出所', '0000000', null, 'file/1503197879.0/@2017082002575921089', 'http://192.168.77.33/file/1503197879.0/@2017082002575921089', null, '2017-08-20 19:21:04', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082002575930600', '20170820105759_187759_41150901', '2017-08-20 02:57:59', null, '0', '0', '刘骏', '187759', '41150901', '鸡公山分局-李家寨派出所', '0000000', null, 'file/1503197879.0/@2017082002575930600', 'http://192.168.77.33/file/1503197879.0/@2017082002575930600', null, '2017-08-20 19:18:18', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082003061431673', '20170820110614_088021_41150105', '2017-08-20 03:06:14', '2017-08-20 03:09:05', '171', '1', '樊敬洋', '088021', '41150105', '老城分局-金牛山派出所', '0000000', null, 'file/1503198374.0/@2017082003061431673', 'http://192.168.77.33/file/1503198374.0/@2017082003061431673', null, '2017-08-20 19:22:20', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082003061448483', '20170820110614_088021_41150105', '2017-08-20 03:06:14', null, '0', '3', '樊敬洋', '088021', '41150105', '老城分局-金牛山派出所', '0000000', null, 'file/1503198374.0/@2017082003061448483', 'http://192.168.77.33/file/1503198374.0/@2017082003061448483', null, '2017-08-20 19:42:21', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082003061458165', '20170820110614_088021_41150105', '2017-08-20 03:06:14', null, '0', '3', '樊敬洋', '088021', '41150105', '老城分局-金牛山派出所', '0000000', null, 'file/1503198374.0/@2017082003061458165', 'http://192.168.77.33/file/1503198374.0/@2017082003061458165', null, '2017-08-20 20:27:04', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082015253250957', '20170820232532_088380_41151412', '2017-08-20 15:25:32', null, '0', '3', '方梁', '088380', '41151412', '光山县公安局-马畈派出所', '0000000', null, 'file/1503242732.0/@2017082015253250957', 'http://192.168.77.33/file/1503242732.0/@2017082015253250957', null, '2017-08-21 08:24:18', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082015253253113', '20170820232532_088380_41151412', '2017-08-20 15:25:32', null, '0', '3', '方梁', '088380', '41151412', '光山县公安局-马畈派出所', '0000000', null, 'file/1503242732.0/@2017082015253253113', 'http://192.168.77.33/file/1503242732.0/@2017082015253253113', null, '2017-08-21 07:40:36', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082015253262841', '20170820232532_088380_41151412', '2017-08-20 15:25:32', null, '0', '3', '方梁', '088380', '41151412', '光山县公安局-马畈派出所', '0000000', null, 'file/1503242732.0/@2017082015253262841', 'http://192.168.77.33/file/1503242732.0/@2017082015253262841', null, '2017-08-21 07:46:19', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082016254812429', '20170821002548_187701_41150411', '2017-08-20 16:25:48', null, '0', '0', '张欢', '187701', '41150411', '明港分局-明港分局案件侦办大队', '0000000', null, 'file/1503246348.0/@2017082016254812429', 'http://192.168.77.33/file/1503246348.0/@2017082016254812429', null, '2017-08-21 09:00:06', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082016254814326', '20170821002548_187701_41150411', '2017-08-20 16:25:48', '2017-08-20 16:28:57', '189', '1', '张欢', '187701', '41150411', '明港分局-明港分局案件侦办大队', '0000000', null, 'file/1503246348.0/@2017082016254814326', 'http://192.168.77.33/file/1503246348.0/@2017082016254814326', null, '2017-08-21 09:28:50', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082016254860965', '20170821002548_187701_41150411', '2017-08-20 16:25:48', null, '0', '2', '张欢', '187701', '41150411', '明港分局-明港分局案件侦办大队', '0000000', null, 'file/1503246348.0/@2017082016254860965', 'http://192.168.77.33/file/1503246348.0/@2017082016254860965', null, '2017-08-21 09:57:54', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082018171614438', '20170821021716_087285_4115121304', '2017-08-20 18:17:16', null, '0', '2', '褚衡', '087285', '4115121304', '公路巡逻民警大队', '0000000', null, 'file/1503253036.0/@2017082018171614438', 'http://192.168.77.33/file/1503253036.0/@2017082018171614438', null, '2017-08-21 12:16:15', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708201817167139', '20170821021716_087285_4115121304', '2017-08-20 18:17:16', null, '0', '3', '褚衡', '087285', '4115121304', '公路巡逻民警大队', '0000000', null, 'file/1503253036.0/@201708201817167139', 'http://192.168.77.33/file/1503253036.0/@201708201817167139', null, '2017-08-21 10:57:57', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708201817167931', '20170821021716_087285_4115121304', '2017-08-20 18:17:16', null, '0', '2', '褚衡', '087285', '4115121304', '公路巡逻民警大队', '0000000', null, 'file/1503253036.0/@201708201817167931', 'http://192.168.77.33/file/1503253036.0/@201708201817167931', null, '2017-08-21 11:37:00', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082021293617588', '20170821052936_084086_41150311', '2017-08-20 21:29:36', null, '0', '0', '罗璇', '084086', '41150311', '羊山分局-羊山分局警务综合室', '0000000', null, 'file/1503264576.0/@2017082021293617588', 'http://192.168.77.33/file/1503264576.0/@2017082021293617588', null, '2017-08-21 14:54:39', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082021293630020', '20170821052936_084086_41150311', '2017-08-20 21:29:36', null, '0', '3', '罗璇', '084086', '41150311', '羊山分局-羊山分局警务综合室', '0000000', null, 'file/1503264576.0/@2017082021293630020', 'http://192.168.77.33/file/1503264576.0/@2017082021293630020', null, '2017-08-21 13:52:13', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082021293653191', '20170821052936_084086_41150311', '2017-08-20 21:29:36', '2017-08-20 21:34:01', '265', '1', '罗璇', '084086', '41150311', '羊山分局-羊山分局警务综合室', '0000000', null, 'file/1503264576.0/@2017082021293653191', 'http://192.168.77.33/file/1503264576.0/@2017082021293653191', null, '2017-08-21 14:04:02', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082100162544910', '20170821081625_087852_41150604', '2017-08-21 00:16:25', '2017-08-21 00:18:30', '125', '1', '吴津', '087852', '41150604', '平桥分局-平西派出所', '0000000', null, 'file/1503274585.0/@2017082100162544910', 'http://192.168.77.33/file/1503274585.0/@2017082100162544910', null, '2017-08-21 17:01:18', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082100162546045', '20170821081625_087852_41150604', '2017-08-21 00:16:25', null, '0', '0', '吴津', '087852', '41150604', '平桥分局-平西派出所', '0000000', null, 'file/1503274585.0/@2017082100162546045', 'http://192.168.77.33/file/1503274585.0/@2017082100162546045', null, '2017-08-21 18:05:08', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082100162556268', '20170821081625_087852_41150604', '2017-08-21 00:16:25', null, '0', '3', '吴津', '087852', '41150604', '平桥分局-平西派出所', '0000000', null, 'file/1503274585.0/@2017082100162556268', 'http://192.168.77.33/file/1503274585.0/@2017082100162556268', null, '2017-08-21 16:30:35', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082100241231382', '20170821082412_087753_41150405', '2017-08-21 00:24:12', null, '0', '0', '严加坤', '087753', '41150405', '明港分局-刑集派出所', '0000000', null, 'file/1503275052.0/@2017082100241231382', 'http://192.168.77.33/file/1503275052.0/@2017082100241231382', null, '2017-08-21 18:13:20', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082100241242014', '20170821082412_087753_41150405', '2017-08-21 00:24:12', '2017-08-21 00:29:06', '294', '1', '严加坤', '087753', '41150405', '明港分局-刑集派出所', '0000000', null, 'file/1503275052.0/@2017082100241242014', 'http://192.168.77.33/file/1503275052.0/@2017082100241242014', null, '2017-08-21 18:08:55', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082100241262222', '20170821082412_087753_41150405', '2017-08-21 00:24:12', '2017-08-21 00:26:20', '128', '1', '严加坤', '087753', '41150405', '明港分局-刑集派出所', '0000000', null, 'file/1503275052.0/@2017082100241262222', 'http://192.168.77.33/file/1503275052.0/@2017082100241262222', null, '2017-08-21 16:26:46', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082101132512146', '20170821091325_086990_4115121311', '2017-08-21 01:13:25', '2017-08-21 01:18:06', '281', '1', '沈星宏', '086990', '4115121311', '事故处理指导科', '0000000', null, 'file/1503278005.0/@2017082101132512146', 'http://192.168.77.33/file/1503278005.0/@2017082101132512146', null, '2017-08-21 19:02:53', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082101132517434', '20170821091325_086990_4115121311', '2017-08-21 01:13:25', null, '0', '3', '沈星宏', '086990', '4115121311', '事故处理指导科', '0000000', null, 'file/1503278005.0/@2017082101132517434', 'http://192.168.77.33/file/1503278005.0/@2017082101132517434', null, '2017-08-21 17:52:50', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082101132531554', '20170821091325_086990_4115121311', '2017-08-21 01:13:25', null, '0', '0', '沈星宏', '086990', '4115121311', '事故处理指导科', '0000000', null, 'file/1503278005.0/@2017082101132531554', 'http://192.168.77.33/file/1503278005.0/@2017082101132531554', null, '2017-08-21 18:21:11', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082104424743635', '20170821124247_187531_41150601', '2017-08-21 04:42:47', null, '0', '3', '陈玮东', '187531', '41150601', '平桥分局-平桥派出所', '0000000', null, 'file/1503290567.0/@2017082104424743635', 'http://192.168.77.33/file/1503290567.0/@2017082104424743635', null, '2017-08-21 20:42:59', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082104424756063', '20170821124247_187531_41150601', '2017-08-21 04:42:47', null, '0', '0', '陈玮东', '187531', '41150601', '平桥分局-平桥派出所', '0000000', null, 'file/1503290567.0/@2017082104424756063', 'http://192.168.77.33/file/1503290567.0/@2017082104424756063', null, '2017-08-21 21:57:44', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082104424764370', '20170821124247_187531_41150601', '2017-08-21 04:42:47', null, '0', '0', '陈玮东', '187531', '41150601', '平桥分局-平桥派出所', '0000000', null, 'file/1503290567.0/@2017082104424764370', 'http://192.168.77.33/file/1503290567.0/@2017082104424764370', null, '2017-08-21 21:21:08', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082106380215206', '20170821143802_087928_41151205', '2017-08-21 06:38:02', null, '0', '0', '许文刚', '087928', '41151205', '信阳市公安局-巡特警支队', '0000000', null, 'file/1503297482.0/@2017082106380215206', 'http://192.168.77.33/file/1503297482.0/@2017082106380215206', null, '2017-08-21 23:34:50', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082106380229501', '20170821143802_087928_41151205', '2017-08-21 06:38:02', null, '0', '3', '许文刚', '087928', '41151205', '信阳市公安局-巡特警支队', '0000000', null, 'file/1503297482.0/@2017082106380229501', 'http://192.168.77.33/file/1503297482.0/@2017082106380229501', null, '2017-08-21 22:55:56', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082106380247131', '20170821143802_087928_41151205', '2017-08-21 06:38:02', null, '0', '2', '许文刚', '087928', '41151205', '信阳市公安局-巡特警支队', '0000000', null, 'file/1503297482.0/@2017082106380247131', 'http://192.168.77.33/file/1503297482.0/@2017082106380247131', null, '2017-08-22 00:23:52', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082106540944823', '20170821145409_088268_411514', '2017-08-21 06:54:09', '2017-08-21 06:56:34', '145', '1', '胡建国', '088268', '411514', '光山县公安局', '0000000', null, 'file/1503298449.0/@2017082106540944823', 'http://192.168.77.33/file/1503298449.0/@2017082106540944823', null, '2017-08-21 23:31:23', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082106540957693', '20170821065409_0000000_411514', '2017-08-21 06:54:09', null, '0', '0', '胡建国', '088268', '411514', '光山县公安局', '0000000', null, 'file/1503298449.0/@2017082106540957693', 'http://192.168.77.33/file/1503298449.0/@2017082106540957693', null, '2017-08-22 00:42:16', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082108270240867', '20170821162702_088079_4115121320', '2017-08-21 08:27:02', null, '0', '0', '曾勇', '088079', '4115121320', '光山县交警大队', '0000000', null, 'file/1503304022.0/@2017082108270240867', 'http://192.168.77.33/file/1503304022.0/@2017082108270240867', null, '2017-08-22 02:01:02', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082108270251008', '20170821162702_088079_4115121320', '2017-08-21 08:27:02', null, '0', '3', '曾勇', '088079', '4115121320', '光山县交警大队', '0000000', null, 'file/1503304022.0/@2017082108270251008', 'http://192.168.77.33/file/1503304022.0/@2017082108270251008', null, '2017-08-22 01:50:42', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082108270259631', '20170821162702_088079_4115121320', '2017-08-21 08:27:02', '2017-08-21 08:31:09', '247', '1', '曾勇', '088079', '4115121320', '光山县交警大队', '0000000', null, 'file/1503304022.0/@2017082108270259631', 'http://192.168.77.33/file/1503304022.0/@2017082108270259631', null, '2017-08-22 01:20:59', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082111564617007', '20170821195646_003-SA_411512120103', '2017-08-21 11:56:46', null, '0', '0', '孙安', '003-SA', '411512120103', '看守所巡视监控中队', '0000000', null, 'file/1503316606.0/@2017082111564617007', 'http://192.168.77.33/file/1503316606.0/@2017082111564617007', null, '2017-08-22 05:28:20', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082111564636119', '20170821195646_003-SA_411512120103', '2017-08-21 11:56:46', null, '0', '3', '孙安', '003-SA', '411512120103', '看守所巡视监控中队', '0000000', null, 'file/1503316606.0/@2017082111564636119', 'http://192.168.77.33/file/1503316606.0/@2017082111564636119', null, '2017-08-22 04:18:44', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082111564640892', '20170821195646_003-SA_411512120103', '2017-08-21 11:56:46', null, '0', '3', '孙安', '003-SA', '411512120103', '看守所巡视监控中队', '0000000', null, 'file/1503316606.0/@2017082111564640892', 'http://192.168.77.33/file/1503316606.0/@2017082111564640892', null, '2017-08-22 04:54:50', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082114502215839', '20170821225022_086412_41151203', '2017-08-21 14:50:22', '2017-08-21 14:52:30', '128', '1', '吴军', '086412', '41151203', '信阳市公安局-110勤务大队', '0000000', null, 'file/1503327022.0/@2017082114502215839', 'http://192.168.77.33/file/1503327022.0/@2017082114502215839', null, '2017-08-22 07:03:35', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708211450224711', '20170821225022_086412_41151203', '2017-08-21 14:50:22', '2017-08-21 14:53:45', '203', '1', '吴军', '086412', '41151203', '信阳市公安局-110勤务大队', '0000000', null, 'file/1503327022.0/@201708211450224711', 'http://192.168.77.33/file/1503327022.0/@201708211450224711', null, '2017-08-22 08:22:48', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082114502250864', '20170821225022_086412_41151203', '2017-08-21 14:50:22', null, '0', '2', '吴军', '086412', '41151203', '信阳市公安局-110勤务大队', '0000000', null, 'file/1503327022.0/@2017082114502250864', 'http://192.168.77.33/file/1503327022.0/@2017082114502250864', null, '2017-08-22 08:39:21', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082118473010669', '20170822024730_186209_41151202', '2017-08-21 18:47:30', null, '0', '2', '朱浩然', '186209', '41151202', '信阳市公安局-刑警支队', '0000000', null, 'file/1503341250.0/@2017082118473010669', 'http://192.168.77.33/file/1503341250.0/@2017082118473010669', null, '2017-08-22 11:26:33', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082118473012286', '20170822024730_186209_41151202', '2017-08-21 18:47:30', null, '0', '2', '朱浩然', '186209', '41151202', '信阳市公安局-刑警支队', '0000000', null, 'file/1503341250.0/@2017082118473012286', 'http://192.168.77.33/file/1503341250.0/@2017082118473012286', null, '2017-08-22 11:01:15', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082118473026597', '20170822024730_186209_41151202', '2017-08-21 18:47:30', null, '0', '3', '朱浩然', '186209', '41151202', '信阳市公安局-刑警支队', '0000000', null, 'file/1503341250.0/@2017082118473026597', 'http://192.168.77.33/file/1503341250.0/@2017082118473026597', null, '2017-08-22 11:35:56', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082200453522339', '20170822084535_HBJJ_4115121323', '2017-08-22 00:45:35', '2017-08-22 00:49:31', '236', '1', '淮滨交警', 'HBJJ', '4115121323', '淮滨县交警大队', '0000000', null, 'file/1503362735.0/@2017082200453522339', 'http://192.168.77.33/file/1503362735.0/@2017082200453522339', null, '2017-08-22 17:27:33', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082200453530130', '20170822084535_HBJJ_4115121323', '2017-08-22 00:45:35', null, '0', '2', '淮滨交警', 'HBJJ', '4115121323', '淮滨县交警大队', '0000000', null, 'file/1503362735.0/@2017082200453530130', 'http://192.168.77.33/file/1503362735.0/@2017082200453530130', null, '2017-08-22 18:30:32', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082200453539426', '20170822084535_HBJJ_4115121323', '2017-08-22 00:45:35', null, '0', '3', '淮滨交警', 'HBJJ', '4115121323', '淮滨县交警大队', '0000000', null, 'file/1503362735.0/@2017082200453539426', 'http://192.168.77.33/file/1503362735.0/@2017082200453539426', null, '2017-08-22 17:13:38', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082202490912004', '20170822104909_087906_41150401', '2017-08-22 02:49:09', null, '0', '3', '张永祥', '087906', '41150401', '明港分局-明港派出所', '0000000', null, 'file/1503370149.0/@2017082202490912004', 'http://192.168.77.33/file/1503370149.0/@2017082202490912004', null, '2017-08-22 19:04:11', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082202490936704', '20170822104909_087906_41150401', '2017-08-22 02:49:09', '2017-08-22 02:53:31', '262', '1', '张永祥', '087906', '41150401', '明港分局-明港派出所', '0000000', null, 'file/1503370149.0/@2017082202490936704', 'http://192.168.77.33/file/1503370149.0/@2017082202490936704', null, '2017-08-22 19:22:02', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082202490940797', '20170822104909_087906_41150401', '2017-08-22 02:49:09', null, '0', '3', '张永祥', '087906', '41150401', '明港分局-明港派出所', '0000000', null, 'file/1503370149.0/@2017082202490940797', 'http://192.168.77.33/file/1503370149.0/@2017082202490940797', null, '2017-08-22 19:28:17', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082205210422606', '20170822132104_084982_41150309', '2017-08-22 05:21:04', null, '0', '3', '唐为民', '084982', '41150309', '羊山分局-羊山分局特勤大队', '0000000', null, 'file/1503379264.0/@2017082205210422606', 'http://192.168.77.33/file/1503379264.0/@2017082205210422606', null, '2017-08-22 21:43:24', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082205210449162', '20170822132104_084982_41150309', '2017-08-22 05:21:04', '2017-08-22 05:25:23', '259', '1', '唐为民', '084982', '41150309', '羊山分局-羊山分局特勤大队', '0000000', null, 'file/1503379264.0/@2017082205210449162', 'http://192.168.77.33/file/1503379264.0/@2017082205210449162', null, '2017-08-22 23:17:09', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708220521047141', '20170822132104_084982_41150309', '2017-08-22 05:21:04', null, '0', '3', '唐为民', '084982', '41150309', '羊山分局-羊山分局特勤大队', '0000000', null, 'file/1503379264.0/@201708220521047141', 'http://192.168.77.33/file/1503379264.0/@201708220521047141', null, '2017-08-22 22:41:38', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082205562718906', '20170822135627_087294_41150216', '2017-08-22 05:56:27', null, '0', '2', '王艳', '087294', '41150216', '浉河分局-浉河分局社区警务大队', '0000000', null, 'file/1503381387.0/@2017082205562718906', 'http://192.168.77.33/file/1503381387.0/@2017082205562718906', null, '2017-08-22 21:59:37', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082205562743030', '20170822135627_087294_41150216', '2017-08-22 05:56:27', null, '0', '0', '王艳', '087294', '41150216', '浉河分局-浉河分局社区警务大队', '0000000', null, 'file/1503381387.0/@2017082205562743030', 'http://192.168.77.33/file/1503381387.0/@2017082205562743030', null, '2017-08-22 23:15:11', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082205562762788', '20170822135627_087294_41150216', '2017-08-22 05:56:27', null, '0', '0', '王艳', '087294', '41150216', '浉河分局-浉河分局社区警务大队', '0000000', null, 'file/1503381387.0/@2017082205562762788', 'http://192.168.77.33/file/1503381387.0/@2017082205562762788', null, '2017-08-22 22:59:14', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082206385252934', '20170822143852_087013_411501', '2017-08-22 06:38:52', null, '0', '0', '潘焕斌', '087013', '411501', '老城分局', '0000000', null, 'file/1503383932.0/@2017082206385252934', 'http://192.168.77.33/file/1503383932.0/@2017082206385252934', null, '2017-08-22 23:24:00', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082206385262821', '20170822143852_087013_411501', '2017-08-22 06:38:52', null, '0', '0', '潘焕斌', '087013', '411501', '老城分局', '0000000', null, 'file/1503383932.0/@2017082206385262821', 'http://192.168.77.33/file/1503383932.0/@2017082206385262821', null, '2017-08-22 23:39:06', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082206385264042', '20170822143852_087013_411501', '2017-08-22 06:38:52', null, '0', '2', '潘焕斌', '087013', '411501', '老城分局', '0000000', null, 'file/1503383932.0/@2017082206385264042', 'http://192.168.77.33/file/1503383932.0/@2017082206385264042', null, '2017-08-23 00:24:12', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082210175423866', '20170822181754_TC_411518', '2017-08-22 10:17:54', '2017-08-22 10:22:51', '297', '1', 'tc', 'TC', '411518', '息县公安局', '0000000', null, 'file/1503397074.0/@2017082210175423866', 'http://192.168.77.33/file/1503397074.0/@2017082210175423866', null, '2017-08-23 03:03:20', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082210175435244', '20170822181754_TC_411518', '2017-08-22 10:17:54', null, '0', '3', 'tc', 'TC', '411518', '息县公安局', '0000000', null, 'file/1503397074.0/@2017082210175435244', 'http://192.168.77.33/file/1503397074.0/@2017082210175435244', null, '2017-08-23 02:51:05', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082210175443442', '20170822181754_TC_411518', '2017-08-22 10:17:54', null, '0', '0', 'tc', 'TC', '411518', '息县公安局', '0000000', null, 'file/1503397074.0/@2017082210175443442', 'http://192.168.77.33/file/1503397074.0/@2017082210175443442', null, '2017-08-23 03:26:58', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082211531922464', '20170822195319_ZA0019_41151804', '2017-08-22 11:53:19', null, '0', '2', '付龙', 'ZA0019', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503402799.0/@2017082211531922464', 'http://192.168.77.33/file/1503402799.0/@2017082211531922464', null, '2017-08-23 05:24:36', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082211531931822', '20170822195319_ZA0019_41151804', '2017-08-22 11:53:19', null, '0', '2', '付龙', 'ZA0019', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503402799.0/@2017082211531931822', 'http://192.168.77.33/file/1503402799.0/@2017082211531931822', null, '2017-08-23 05:39:14', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708221153198175', '20170822195319_ZA0019_41151804', '2017-08-22 11:53:19', '2017-08-22 11:56:43', '204', '1', '付龙', 'ZA0019', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503402799.0/@201708221153198175', 'http://192.168.77.33/file/1503402799.0/@201708221153198175', null, '2017-08-23 04:15:41', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082212342612046', '20170822203426_SAKURA_41151213', '2017-08-22 12:34:26', null, '0', '3', '王艺', 'SAKURA', '41151213', '信阳市公安局-交通警察支队', '0000000', null, 'file/1503405266.0/@2017082212342612046', 'http://192.168.77.33/file/1503405266.0/@2017082212342612046', null, '2017-08-23 04:50:42', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082212342631014', '20170822203426_SAKURA_41151213', '2017-08-22 12:34:26', null, '0', '2', '王艺', 'SAKURA', '41151213', '信阳市公安局-交通警察支队', '0000000', null, 'file/1503405266.0/@2017082212342631014', 'http://192.168.77.33/file/1503405266.0/@2017082212342631014', null, '2017-08-23 05:49:44', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082212342653992', '20170822203426_SAKURA_41151213', '2017-08-22 12:34:26', '2017-08-22 12:37:25', '179', '1', '王艺', 'SAKURA', '41151213', '信阳市公安局-交通警察支队', '0000000', null, 'file/1503405266.0/@2017082212342653992', 'http://192.168.77.33/file/1503405266.0/@2017082212342653992', null, '2017-08-23 05:12:40', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082214341956033', '20170822223419_186026_4115120303', '2017-08-22 14:34:19', null, '0', '3', '白杨', '186026', '4115120303', '110勤务大队-110平桥勤务站', '0000000', null, 'file/1503412459.0/@2017082214341956033', 'http://192.168.77.33/file/1503412459.0/@2017082214341956033', null, '2017-08-23 06:40:27', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082214341959333', '20170822223419_186026_4115120303', '2017-08-22 14:34:19', null, '0', '0', '白杨', '186026', '4115120303', '110勤务大队-110平桥勤务站', '0000000', null, 'file/1503412459.0/@2017082214341959333', 'http://192.168.77.33/file/1503412459.0/@2017082214341959333', null, '2017-08-23 07:16:23', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082214341961076', '20170822223419_186026_4115120303', '2017-08-22 14:34:19', null, '0', '3', '白杨', '186026', '4115120303', '110勤务大队-110平桥勤务站', '0000000', null, 'file/1503412459.0/@2017082214341961076', 'http://192.168.77.33/file/1503412459.0/@2017082214341961076', null, '2017-08-23 07:28:54', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082217273644594', '20170823012736_ZA0065_41151804', '2017-08-22 17:27:36', null, '0', '2', '秦浩然', 'ZA0065', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503422856.0/@2017082217273644594', 'http://192.168.77.33/file/1503422856.0/@2017082217273644594', null, '2017-08-23 10:53:41', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082217273650633', '20170823012736_ZA0065_41151804', '2017-08-22 17:27:36', '2017-08-22 17:31:46', '250', '1', '秦浩然', 'ZA0065', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503422856.0/@2017082217273650633', 'http://192.168.77.33/file/1503422856.0/@2017082217273650633', null, '2017-08-23 10:46:35', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082217273652810', '20170823012736_ZA0065_41151804', '2017-08-22 17:27:36', null, '0', '0', '秦浩然', 'ZA0065', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503422856.0/@2017082217273652810', 'http://192.168.77.33/file/1503422856.0/@2017082217273652810', null, '2017-08-23 09:50:09', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218063622472', '20170823020636_999999_41150706', '2017-08-22 18:06:36', null, '0', '2', '公用', '999999', '41150706', '上天梯分局-上天梯分局', '0000000', null, 'file/1503425196.0/@2017082218063622472', 'http://192.168.77.33/file/1503425196.0/@2017082218063622472', null, '2017-08-23 11:40:04', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218063638297', '20170823020636_999999_41150706', '2017-08-22 18:06:36', '2017-08-22 18:09:24', '168', '1', '公用', '999999', '41150706', '上天梯分局-上天梯分局', '0000000', null, 'file/1503425196.0/@2017082218063638297', 'http://192.168.77.33/file/1503425196.0/@2017082218063638297', null, '2017-08-23 11:21:20', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218063654188', '20170823020636_999999_41150706', '2017-08-22 18:06:36', null, '0', '2', '公用', '999999', '41150706', '上天梯分局-上天梯分局', '0000000', null, 'file/1503425196.0/@2017082218063654188', 'http://192.168.77.33/file/1503425196.0/@2017082218063654188', null, '2017-08-23 10:34:25', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218291422275', '20170823022914_188052_41151624', '2017-08-22 18:29:14', null, '0', '0', '郑超', '188052', '41151624', '罗山县公安局-山店派出所', '0000000', null, 'file/1503426554.0/@2017082218291422275', 'http://192.168.77.33/file/1503426554.0/@2017082218291422275', null, '2017-08-23 10:55:06', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218291439288', '20170823022914_188052_41151624', '2017-08-22 18:29:14', null, '0', '0', '郑超', '188052', '41151624', '罗山县公安局-山店派出所', '0000000', null, 'file/1503426554.0/@2017082218291439288', 'http://192.168.77.33/file/1503426554.0/@2017082218291439288', null, '2017-08-23 10:47:41', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218291441673', '20170823022914_188052_41151624', '2017-08-22 18:29:14', null, '0', '3', '郑超', '188052', '41151624', '罗山县公安局-山店派出所', '0000000', null, 'file/1503426554.0/@2017082218291441673', 'http://192.168.77.33/file/1503426554.0/@2017082218291441673', null, '2017-08-23 11:37:08', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218434534419', '20170823024345_187679_41150402', '2017-08-22 18:43:45', null, '0', '0', '李颖志', '187679', '41150402', '明港分局-铁东派出所', '0000000', null, 'file/1503427425.0/@2017082218434534419', 'http://192.168.77.33/file/1503427425.0/@2017082218434534419', null, '2017-08-23 12:08:27', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218434543208', '20170823024345_187679_41150402', '2017-08-22 18:43:45', null, '0', '3', '李颖志', '187679', '41150402', '明港分局-铁东派出所', '0000000', null, 'file/1503427425.0/@2017082218434543208', 'http://192.168.77.33/file/1503427425.0/@2017082218434543208', null, '2017-08-23 12:20:24', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082218434560691', '20170823024345_187679_41150402', '2017-08-22 18:43:45', null, '0', '2', '李颖志', '187679', '41150402', '明港分局-铁东派出所', '0000000', null, 'file/1503427425.0/@2017082218434560691', 'http://192.168.77.33/file/1503427425.0/@2017082218434560691', null, '2017-08-23 12:06:09', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082222593712351', '20170823065937_189622_41151834', '2017-08-22 22:59:37', null, '0', '0', '冉宏伟', '189622', '41151834', '息县公安局-孙庙派出所', '0000000', null, 'file/1503442777.0/@2017082222593712351', 'http://192.168.77.33/file/1503442777.0/@2017082222593712351', null, '2017-08-23 15:36:35', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082222593730535', '20170823065937_189622_41151834', '2017-08-22 22:59:37', null, '0', '2', '冉宏伟', '189622', '41151834', '息县公安局-孙庙派出所', '0000000', null, 'file/1503442777.0/@2017082222593730535', 'http://192.168.77.33/file/1503442777.0/@2017082222593730535', null, '2017-08-23 16:04:21', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708222259375554', '20170823065937_189622_41151834', '2017-08-22 22:59:37', null, '0', '3', '冉宏伟', '189622', '41151834', '息县公安局-孙庙派出所', '0000000', null, 'file/1503442777.0/@201708222259375554', 'http://192.168.77.33/file/1503442777.0/@201708222259375554', null, '2017-08-23 15:39:40', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082223082320119', '20170823070823_088878_4115121321', '2017-08-22 23:08:23', null, '0', '3', '章伟', '088878', '4115121321', '新县交警大队', '0000000', null, 'file/1503443303.0/@2017082223082320119', 'http://192.168.77.33/file/1503443303.0/@2017082223082320119', null, '2017-08-23 16:34:55', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082223082331319', '20170823070823_088878_4115121321', '2017-08-22 23:08:23', null, '0', '3', '章伟', '088878', '4115121321', '新县交警大队', '0000000', null, 'file/1503443303.0/@2017082223082331319', 'http://192.168.77.33/file/1503443303.0/@2017082223082331319', null, '2017-08-23 15:36:57', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082223082355552', '20170823070823_088878_4115121321', '2017-08-22 23:08:23', null, '0', '3', '章伟', '088878', '4115121321', '新县交警大队', '0000000', null, 'file/1503443303.0/@2017082223082355552', 'http://192.168.77.33/file/1503443303.0/@2017082223082355552', null, '2017-08-23 16:37:19', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082300461437063', '20170823084614_ZA0012_41151804', '2017-08-23 00:46:14', null, '0', '2', '杨光', 'ZA0012', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503449174.0/@2017082300461437063', 'http://192.168.77.33/file/1503449174.0/@2017082300461437063', null, '2017-08-23 17:33:31', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082300461458562', '20170823084614_ZA0012_41151804', '2017-08-23 00:46:14', null, '0', '0', '杨光', 'ZA0012', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503449174.0/@2017082300461458562', 'http://192.168.77.33/file/1503449174.0/@2017082300461458562', null, '2017-08-23 18:19:42', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082300461464487', '20170823084614_ZA0012_41151804', '2017-08-23 00:46:14', '2017-08-23 00:48:36', '142', '1', '杨光', 'ZA0012', '41151804', '息县公安局-巡特警大队', '0000000', null, 'file/1503449174.0/@2017082300461464487', 'http://192.168.77.33/file/1503449174.0/@2017082300461464487', null, '2017-08-23 18:15:05', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082307411026412', '20170823154110_084781_41151515', '2017-08-23 07:41:10', null, '0', '0', '邹磊', '084781', '41151515', '潢川县公安局-刑警大队', '0000000', null, 'file/1503474070.0/@2017082307411026412', 'http://192.168.77.33/file/1503474070.0/@2017082307411026412', null, '2017-08-24 01:28:22', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082307411030899', '20170823154110_084781_41151515', '2017-08-23 07:41:10', null, '0', '2', '邹磊', '084781', '41151515', '潢川县公安局-刑警大队', '0000000', null, 'file/1503474070.0/@2017082307411030899', 'http://192.168.77.33/file/1503474070.0/@2017082307411030899', null, '2017-08-24 01:10:11', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082307411047807', '20170823154110_084781_41151515', '2017-08-23 07:41:10', null, '0', '2', '邹磊', '084781', '41151515', '潢川县公安局-刑警大队', '0000000', null, 'file/1503474070.0/@2017082307411047807', 'http://192.168.77.33/file/1503474070.0/@2017082307411047807', null, '2017-08-24 01:39:59', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082311034940029', '20170823190349_188401_41151504', '2017-08-23 11:03:49', '2017-08-23 11:08:46', '297', '1', '桂军利', '188401', '41151504', '潢川县公安局-东城派出所', '0000000', null, 'file/1503486229.0/@2017082311034940029', 'http://192.168.77.33/file/1503486229.0/@2017082311034940029', null, '2017-08-24 04:58:38', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082311034943977', '20170823190349_188401_41151504', '2017-08-23 11:03:49', '2017-08-23 11:07:42', '233', '1', '桂军利', '188401', '41151504', '潢川县公安局-东城派出所', '0000000', null, 'file/1503486229.0/@2017082311034943977', 'http://192.168.77.33/file/1503486229.0/@2017082311034943977', null, '2017-08-24 04:54:19', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082311034951658', '20170823190349_188401_41151504', '2017-08-23 11:03:49', null, '0', '3', '桂军利', '188401', '41151504', '潢川县公安局-东城派出所', '0000000', null, 'file/1503486229.0/@2017082311034951658', 'http://192.168.77.33/file/1503486229.0/@2017082311034951658', null, '2017-08-24 04:35:18', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082311561037517', '20170823195610_189485_41151839', '2017-08-23 11:56:10', null, '0', '3', '李一初', '189485', '41151839', '息县公安局-岗李店派出所', '0000000', null, 'file/1503489370.0/@2017082311561037517', 'http://192.168.77.33/file/1503489370.0/@2017082311561037517', null, '2017-08-24 05:53:55', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082311561056184', '20170823195610_189485_41151839', '2017-08-23 11:56:10', null, '0', '2', '李一初', '189485', '41151839', '息县公安局-岗李店派出所', '0000000', null, 'file/1503489370.0/@2017082311561056184', 'http://192.168.77.33/file/1503489370.0/@2017082311561056184', null, '2017-08-24 05:02:48', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708231156107065', '20170823195610_189485_41151839', '2017-08-23 11:56:10', '2017-08-23 11:58:29', '139', '1', '李一初', '189485', '41151839', '息县公安局-岗李店派出所', '0000000', null, 'file/1503489370.0/@201708231156107065', 'http://192.168.77.33/file/1503489370.0/@201708231156107065', null, '2017-08-24 04:11:25', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082315573410075', '20170823235734_188168_41151604', '2017-08-23 15:57:34', '2017-08-23 16:01:49', '255', '1', '高爽', '188168', '41151604', '罗山县公安局-丽水派出所', '0000000', null, 'file/1503503854.0/@2017082315573410075', 'http://192.168.77.33/file/1503503854.0/@2017082315573410075', null, '2017-08-24 08:52:08', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082315573439975', '20170823235734_188168_41151604', '2017-08-23 15:57:34', null, '0', '3', '高爽', '188168', '41151604', '罗山县公安局-丽水派出所', '0000000', null, 'file/1503503854.0/@2017082315573439975', 'http://192.168.77.33/file/1503503854.0/@2017082315573439975', null, '2017-08-24 08:39:10', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082315573446032', '20170823235734_188168_41151604', '2017-08-23 15:57:34', null, '0', '2', '高爽', '188168', '41151604', '罗山县公安局-丽水派出所', '0000000', null, 'file/1503503854.0/@2017082315573446032', 'http://192.168.77.33/file/1503503854.0/@2017082315573446032', null, '2017-08-24 08:40:05', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082316274612854', '20170824002746_084349_41151608', '2017-08-23 16:27:46', null, '0', '2', '秦祥', '084349', '41151608', '罗山县公安局-治安大队', '0000000', null, 'file/1503505666.0/@2017082316274612854', 'http://192.168.77.33/file/1503505666.0/@2017082316274612854', null, '2017-08-24 08:46:34', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082316274647365', '20170824002746_084349_41151608', '2017-08-23 16:27:46', null, '0', '0', '秦祥', '084349', '41151608', '罗山县公安局-治安大队', '0000000', null, 'file/1503505666.0/@2017082316274647365', 'http://192.168.77.33/file/1503505666.0/@2017082316274647365', null, '2017-08-24 09:47:03', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082316274650038', '20170824002746_084349_41151608', '2017-08-23 16:27:46', null, '0', '2', '秦祥', '084349', '41151608', '罗山县公安局-治安大队', '0000000', null, 'file/1503505666.0/@2017082316274650038', 'http://192.168.77.33/file/1503505666.0/@2017082316274650038', null, '2017-08-24 09:58:58', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708231946444082', '20170824034644_086401_411510', '2017-08-23 19:46:44', null, '0', '2', '于培', '086401', '411510', '南湾分局', '0000000', null, 'file/1503517604.0/@201708231946444082', 'http://192.168.77.33/file/1503517604.0/@201708231946444082', null, '2017-08-24 13:39:26', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082319464447889', '20170824034644_086401_411510', '2017-08-23 19:46:44', null, '0', '0', '于培', '086401', '411510', '南湾分局', '0000000', null, 'file/1503517604.0/@2017082319464447889', 'http://192.168.77.33/file/1503517604.0/@2017082319464447889', null, '2017-08-24 13:13:35', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082319464462573', '', '2017-08-23 19:46:44', null, '0', '0', '于培', '086401', '411510', '南湾分局', '0000000', null, 'file/1503517604.0/@2017082319464462573', 'http://192.168.77.33/file/1503517604.0/@2017082319464462573', null, '2017-08-24 12:44:18', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082319553913493', '20170824035539_085919_41151111', '2017-08-23 19:55:39', '2017-08-23 19:59:32', '233', '1', '陈淮', '085919', '41151111', '淮滨县公安局-治安大队', '0000000', null, 'file/1503518139.0/@2017082319553913493', 'http://192.168.77.33/file/1503518139.0/@2017082319553913493', null, '2017-08-24 13:40:30', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082319553935890', '20170824035539_085919_41151111', '2017-08-23 19:55:39', null, '0', '2', '陈淮', '085919', '41151111', '淮滨县公安局-治安大队', '0000000', null, 'file/1503518139.0/@2017082319553935890', 'http://192.168.77.33/file/1503518139.0/@2017082319553935890', null, '2017-08-24 13:21:29', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082319553952167', '20170824035539_085919_41151111', '2017-08-23 19:55:39', '2017-08-23 20:00:14', '275', '1', '陈淮', '085919', '41151111', '淮滨县公安局-治安大队', '0000000', null, 'file/1503518139.0/@2017082319553952167', 'http://192.168.77.33/file/1503518139.0/@2017082319553952167', null, '2017-08-24 13:44:17', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082323393550863', '20170824073935_XF0002_41151613', '2017-08-23 23:39:35', '2017-08-23 23:41:52', '137', '1', '张为明', 'XF0002', '41151613', '罗山县公安局-东铺派出所', '0000000', null, 'file/1503531575.0/@2017082323393550863', 'http://192.168.77.33/file/1503531575.0/@2017082323393550863', null, '2017-08-24 16:53:16', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082323393559557', '20170824073935_XF0002_41151613', '2017-08-23 23:39:35', null, '0', '3', '张为明', 'XF0002', '41151613', '罗山县公安局-东铺派出所', '0000000', null, 'file/1503531575.0/@2017082323393559557', 'http://192.168.77.33/file/1503531575.0/@2017082323393559557', null, '2017-08-24 16:36:26', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082323393559959', '20170824073935_XF0002_41151613', '2017-08-23 23:39:35', null, '0', '2', '张为明', 'XF0002', '41151613', '罗山县公安局-东铺派出所', '0000000', null, 'file/1503531575.0/@2017082323393559959', 'http://192.168.77.33/file/1503531575.0/@2017082323393559959', null, '2017-08-24 17:04:27', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082401312011113', '20170824093120_ZSM_4115121301', '2017-08-24 01:31:20', '2017-08-24 01:33:32', '132', '1', '张世明', 'ZSM', '4115121301', '浉河勤务大队', '0000000', null, 'file/1503538280.0/@2017082401312011113', 'http://192.168.77.33/file/1503538280.0/@2017082401312011113', null, '2017-08-24 18:57:28', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082401312027607', '20170824093120_ZSM_4115121301', '2017-08-24 01:31:20', null, '0', '0', '张世明', 'ZSM', '4115121301', '浉河勤务大队', '0000000', null, 'file/1503538280.0/@2017082401312027607', 'http://192.168.77.33/file/1503538280.0/@2017082401312027607', null, '2017-08-24 19:21:12', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082401430521267', '20170824094305_086435_41151208', '2017-08-24 01:43:05', null, '0', '3', '李洁', '086435', '41151208', '信阳市公安局-经侦支队', '0000000', null, 'file/1503538985.0/@2017082401430521267', 'http://192.168.77.33/file/1503538985.0/@2017082401430521267', null, '2017-08-24 18:12:33', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082401430523497', '20170824094305_086435_41151208', '2017-08-24 01:43:05', null, '0', '0', '李洁', '086435', '41151208', '信阳市公安局-经侦支队', '0000000', null, 'file/1503538985.0/@2017082401430523497', 'http://192.168.77.33/file/1503538985.0/@2017082401430523497', null, '2017-08-24 18:46:48', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082401430526564', '20170824094305_086435_41151208', '2017-08-24 01:43:05', null, '0', '2', '李洁', '086435', '41151208', '信阳市公安局-经侦支队', '0000000', null, 'file/1503538985.0/@2017082401430526564', 'http://192.168.77.33/file/1503538985.0/@2017082401430526564', null, '2017-08-24 19:37:44', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082402493912670', '20170824104939_084017_41151634', '2017-08-24 02:49:39', null, '0', '0', '郑祥国', '084017', '41151634', '罗山县公安局-经侦大队', '0000000', null, 'file/1503542979.0/@2017082402493912670', 'http://192.168.77.33/file/1503542979.0/@2017082402493912670', null, '2017-08-24 18:54:19', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082402493919840', '20170824104939_084017_41151634', '2017-08-24 02:49:39', null, '0', '3', '郑祥国', '084017', '41151634', '罗山县公安局-经侦大队', '0000000', null, 'file/1503542979.0/@2017082402493919840', 'http://192.168.77.33/file/1503542979.0/@2017082402493919840', null, '2017-08-24 20:37:23', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082402493932072', '20170824104939_084017_41151634', '2017-08-24 02:49:39', null, '0', '3', '郑祥国', '084017', '41151634', '罗山县公安局-经侦大队', '0000000', null, 'file/1503542979.0/@2017082402493932072', 'http://192.168.77.33/file/1503542979.0/@2017082402493932072', null, '2017-08-24 20:21:52', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082403295810321', '20170824112958_185765_41151703', '2017-08-24 03:29:58', '2017-08-24 03:32:39', '161', '1', '杨允成', '185765', '41151703', '商城县公安局-城关派出所', '0000000', null, 'file/1503545398.0/@2017082403295810321', 'http://192.168.77.33/file/1503545398.0/@2017082403295810321', null, '2017-08-24 20:33:52', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082403295828833', '20170824112958_185765_41151703', '2017-08-24 03:29:58', null, '0', '2', '杨允成', '185765', '41151703', '商城县公安局-城关派出所', '0000000', null, 'file/1503545398.0/@2017082403295828833', 'http://192.168.77.33/file/1503545398.0/@2017082403295828833', null, '2017-08-24 19:33:31', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082403295860695', '20170824112958_185765_41151703', '2017-08-24 03:29:58', null, '0', '0', '杨允成', '185765', '41151703', '商城县公安局-城关派出所', '0000000', null, 'file/1503545398.0/@2017082403295860695', 'http://192.168.77.33/file/1503545398.0/@2017082403295860695', null, '2017-08-24 20:12:54', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082404240625682', '20170824122406_087787_411504', '2017-08-24 04:24:06', '2017-08-24 04:26:36', '150', '1', '刘赞', '087787', '411504', '明港分局', '0000000', null, 'file/1503548646.0/@2017082404240625682', 'http://192.168.77.33/file/1503548646.0/@2017082404240625682', null, '2017-08-24 20:49:53', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082404240631233', '20170824122406_087787_411504', '2017-08-24 04:24:06', null, '0', '3', '刘赞', '087787', '411504', '明港分局', '0000000', null, 'file/1503548646.0/@2017082404240631233', 'http://192.168.77.33/file/1503548646.0/@2017082404240631233', null, '2017-08-24 21:25:53', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082404240659951', '20170824122406_087787_411504', '2017-08-24 04:24:06', null, '0', '2', '刘赞', '087787', '411504', '明港分局', '0000000', null, 'file/1503548646.0/@2017082404240659951', 'http://192.168.77.33/file/1503548646.0/@2017082404240659951', null, '2017-08-24 21:42:10', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082404293225073', '20170824122932_087468_41150201', '2017-08-24 04:29:32', null, '0', '0', '施云山', '087468', '41150201', '浉河分局-五星派出所', '0000000', null, 'file/1503548972.0/@2017082404293225073', 'http://192.168.77.33/file/1503548972.0/@2017082404293225073', null, '2017-08-24 22:25:43', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708240429328328', '20170824122932_087468_41150201', '2017-08-24 04:29:32', '2017-08-24 04:31:36', '124', '1', '施云山', '087468', '41150201', '浉河分局-五星派出所', '0000000', null, 'file/1503548972.0/@201708240429328328', 'http://192.168.77.33/file/1503548972.0/@201708240429328328', null, '2017-08-24 20:35:53', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708240429329855', '20170824122932_087468_41150201', '2017-08-24 04:29:32', null, '0', '3', '施云山', '087468', '41150201', '浉河分局-五星派出所', '0000000', null, 'file/1503548972.0/@201708240429329855', 'http://192.168.77.33/file/1503548972.0/@201708240429329855', null, '2017-08-24 21:24:33', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082404483825812', '20170824124838_085640_41151813', '2017-08-24 04:48:38', '2017-08-24 04:53:00', '262', '1', '杨梅', '085640', '41151813', '息县公安局-警令部', '0000000', null, 'file/1503550118.0/@2017082404483825812', 'http://192.168.77.33/file/1503550118.0/@2017082404483825812', null, '2017-08-24 22:39:24', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082404483834106', '20170824124838_085640_41151813', '2017-08-24 04:48:38', null, '0', '0', '杨梅', '085640', '41151813', '息县公安局-警令部', '0000000', null, 'file/1503550118.0/@2017082404483834106', 'http://192.168.77.33/file/1503550118.0/@2017082404483834106', null, '2017-08-24 20:53:49', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082404483835674', '20170824124838_085640_41151813', '2017-08-24 04:48:38', '2017-08-24 04:50:50', '132', '1', '杨梅', '085640', '41151813', '息县公安局-警令部', '0000000', null, 'file/1503550118.0/@2017082404483835674', 'http://192.168.77.33/file/1503550118.0/@2017082404483835674', null, '2017-08-24 21:46:00', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082405550922857', '20170824135509_189587_41151842', '2017-08-24 05:55:09', '2017-08-24 05:57:18', '129', '1', '张文全', '189587', '41151842', '息县公安局-临河派出所', '0000000', null, 'file/1503554109.0/@2017082405550922857', 'http://192.168.77.33/file/1503554109.0/@2017082405550922857', null, '2017-08-24 23:46:37', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082405550934055', '20170824135509_189587_41151842', '2017-08-24 05:55:09', '2017-08-24 05:59:31', '262', '1', '张文全', '189587', '41151842', '息县公安局-临河派出所', '0000000', null, 'file/1503554109.0/@2017082405550934055', 'http://192.168.77.33/file/1503554109.0/@2017082405550934055', null, '2017-08-24 22:31:19', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082405550938646', '20170824135509_189587_41151842', '2017-08-24 05:55:09', '2017-08-24 05:58:39', '210', '1', '张文全', '189587', '41151842', '息县公安局-临河派出所', '0000000', null, 'file/1503554109.0/@2017082405550938646', 'http://192.168.77.33/file/1503554109.0/@2017082405550938646', null, '2017-08-24 22:06:21', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082406305915349', '20170824143059_187011_41150214', '2017-08-24 06:30:59', null, '0', '3', '李祥洋', '187011', '41150214', '浉河分局-浉河分局案件侦办大队', '0000000', null, 'file/1503556259.0/@2017082406305915349', 'http://192.168.77.33/file/1503556259.0/@2017082406305915349', null, '2017-08-24 23:33:32', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@201708240630595269', '20170824143059_187011_41150214', '2017-08-24 06:30:59', null, '0', '0', '李祥洋', '187011', '41150214', '浉河分局-浉河分局案件侦办大队', '0000000', null, 'file/1503556259.0/@201708240630595269', 'http://192.168.77.33/file/1503556259.0/@201708240630595269', null, '2017-08-24 23:34:08', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082406305963819', '20170824143059_187011_41150214', '2017-08-24 06:30:59', '2017-08-24 06:34:22', '203', '1', '李祥洋', '187011', '41150214', '浉河分局-浉河分局案件侦办大队', '0000000', null, 'file/1503556259.0/@2017082406305963819', 'http://192.168.77.33/file/1503556259.0/@2017082406305963819', null, '2017-08-24 23:20:11', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082408022231712', '20170824160222_188031_411512132613', '2017-08-24 08:02:22', null, '0', '2', '屈守乾', '188031', '411512132613', '机动中队', '0000000', null, 'file/1503561742.0/@2017082408022231712', 'http://192.168.77.33/file/1503561742.0/@2017082408022231712', null, '2017-08-25 00:39:34', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082408022241021', '20170824160222_188031_411512132613', '2017-08-24 08:02:22', null, '0', '0', '屈守乾', '188031', '411512132613', '机动中队', '0000000', null, 'file/1503561742.0/@2017082408022241021', 'http://192.168.77.33/file/1503561742.0/@2017082408022241021', null, '2017-08-25 01:48:01', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082408022245696', '20170824160222_188031_411512132613', '2017-08-24 08:02:22', null, '0', '3', '屈守乾', '188031', '411512132613', '机动中队', '0000000', null, 'file/1503561742.0/@2017082408022245696', 'http://192.168.77.33/file/1503561742.0/@2017082408022245696', null, '2017-08-25 00:54:06', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082409443910041', '20170824174439_087388_41150208', '2017-08-24 09:44:39', null, '0', '2', '周兴建', '087388', '41150208', '浉河分局-吴家店派出所', '0000000', null, 'file/1503567879.0/@2017082409443910041', 'http://192.168.77.33/file/1503567879.0/@2017082409443910041', null, '2017-08-25 02:20:07', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082409443942295', '20170824174439_087388_41150208', '2017-08-24 09:44:39', null, '0', '0', '周兴建', '087388', '41150208', '浉河分局-吴家店派出所', '0000000', null, 'file/1503567879.0/@2017082409443942295', 'http://192.168.77.33/file/1503567879.0/@2017082409443942295', null, '2017-08-25 03:00:11', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082409443946578', '20170824174439_087388_41150208', '2017-08-24 09:44:39', null, '0', '0', '周兴建', '087388', '41150208', '浉河分局-吴家店派出所', '0000000', null, 'file/1503567879.0/@2017082409443946578', 'http://192.168.77.33/file/1503567879.0/@2017082409443946578', null, '2017-08-25 02:38:37', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082411275713797', '20170824192757_086991_41151202', '2017-08-24 11:27:57', null, '0', '0', '吴  浩', '086991', '41151202', '信阳市公安局-刑警支队', '0000000', null, 'file/1503574077.0/@2017082411275713797', 'http://192.168.77.33/file/1503574077.0/@2017082411275713797', null, '2017-08-25 03:50:18', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082411275727170', '20170824192757_086991_41151202', '2017-08-24 11:27:57', null, '0', '0', '吴  浩', '086991', '41151202', '信阳市公安局-刑警支队', '0000000', null, 'file/1503574077.0/@2017082411275727170', 'http://192.168.77.33/file/1503574077.0/@2017082411275727170', null, '2017-08-25 03:44:03', '0', null, '0', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082411275761439', '20170824192757_086991_41151202', '2017-08-24 11:27:57', '2017-08-24 11:32:51', '294', '1', '吴  浩', '086991', '41151202', '信阳市公安局-刑警支队', '0000000', null, 'file/1503574077.0/@2017082411275761439', 'http://192.168.77.33/file/1503574077.0/@2017082411275761439', null, '2017-08-25 05:01:12', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082413335528930', '20170824213355_008_4115120306', '2017-08-24 13:33:55', '2017-08-24 13:37:03', '188', '1', '涂小亮', '008', '4115120306', '110勤务大队-110军韵花园勤务站', '0000000', null, 'file/1503581635.0/@2017082413335528930', 'http://192.168.77.33/file/1503581635.0/@2017082413335528930', null, '2017-08-25 06:34:07', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('@2017082413335533397', '20170824213355_008_4115120306', '2017-08-24 13:33:55', null, '0', '0', '涂小亮', '008', '4115120306', '110勤务大队-110军韵花园勤务站', '0000000', null, 'file/1503581635.0/@2017082413335533397', 'http://192.168.77.33/file/1503581635.0/@2017082413335533397', null, '2017-08-25 07:31:48', '0', null, '1', '9', '1', '2017-01-01 00:00:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('cpxhpe_123123_20170829102724.MP4', '20170829102710_cpxhpe_4115', '2017-08-29 10:27:24', null, '0', '1', 'ceshi', '123123', '4115', '信阳市公安局', 'cpxhpe', '192.168.3.109', null, 'http://192.168.3.109:80/pe_fileG/pedata/cpxhpe/20170829/cpxhpe_123123_20170829102724.MP4', null, '2017-08-29 10:27:24', '0', null, '0', '9', '2', '2017-08-29 10:27:24', '', '0');
INSERT INTO `case_video_201708` VALUES ('cpxhpe_admin_20170826103410.jpg', '20170824174539_T11366_411501', '2017-08-26 10:34:10', null, '0', '3', '超级管理员', 'admin', '41', '河南省公安厅', 'cpxhpe', '192.168.77.33', null, 'http://192.168.77.33:80/pe_fileG/pedata/cpxhpe/20170826/cpxhpe_admin_20170826103410.jpg', null, '2017-08-26 10:34:10', '0', null, '0', '9', '3', '2017-08-26 10:34:10', '', '0');
INSERT INTO `case_video_201708` VALUES ('cpxhpe_admin_20170826115319.txt', '20170826110630_cpxhpe_41', '2017-08-26 11:53:19', null, '0', '0', '超级管理员', 'admin', '41', '河南省公安厅', 'cpxhpe', '192.168.77.33', null, 'http://192.168.77.33:80/pe_fileG/pedata/cpxhpe/20170826/cpxhpe_admin_20170826115319.txt', null, '2017-08-26 11:53:19', '0', null, '0', '9', '3', '2017-08-26 11:53:19', '', '0');
INSERT INTO `case_video_201708` VALUES ('cpxhpe_admin_20170826142534.jpg', '20170826110630_cpxhpe_41', '2017-08-26 14:25:34', null, '0', '3', '超级管理员', 'admin', '41', '河南省公安厅', 'cpxhpe', '192.168.77.33', null, 'http://192.168.77.33:80/pe_fileG/pedata/cpxhpe/20170826/cpxhpe_admin_20170826142534.jpg', null, '2017-08-26 14:25:34', '0', null, '0', '9', '2', '2017-08-26 14:25:34', '', '0');
INSERT INTO `case_video_201708` VALUES ('cpxhpe_admin_20170826200029.jpg', '', '2017-08-26 20:00:29', null, '0', '3', '超级管理员', 'admin', '41', '河南省公安厅', 'cpxhpe', '192.168.77.33', null, 'http://192.168.77.33:80/pe_fileG/pedata/cpxhpe/20170826/cpxhpe_admin_20170826200029.jpg', null, '2017-08-26 20:00:29', '0', null, '0', '9', '2', '2017-08-26 20:00:29', '', '0');
INSERT INTO `case_video_201708` VALUES ('T11366_085532_20170824174539.MP4', '20170824174539_T11366_411501', '2017-08-24 17:45:39', '2017-08-24 17:46:52', '73', '1', '陈勇', '085532', '411501', '老城分局', 'T11366', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/T11366/20170824/T11366_085532_20170824174539.MP4', null, '2017-08-25 15:48:18', '0', '192.168.3.110', '0', '9', '1', '2017-08-25 15:48:18', '', '0');
INSERT INTO `case_video_201708` VALUES ('T11366_085532_20170826113314.MP4', '20170826113314_085532_411501', '2017-08-26 11:33:14', '2017-08-26 11:33:30', '16', '1', '陈勇', '085532', '411501', '老城分局', 'T11366', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/T11366/20170826/T11366_085532_20170826113314.MP4', null, '2017-08-27 19:34:58', '0', '192.168.77.33', '0', '9', '1', '2017-08-27 19:34:58', '', '0');
INSERT INTO `case_video_201708` VALUES ('T11366_085532_20170826113337.MP4', '20170826113314_085532_411501', '2017-08-26 11:33:37', '2017-08-26 11:33:46', '9', '1', '陈勇', '085532', '411501', '老城分局', 'T11366', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/T11366/20170826/T11366_085532_20170826113337.MP4', null, '2017-08-27 19:34:59', '0', '192.168.77.33', '0', '9', '1', '2017-08-27 19:34:59', '', '0');
INSERT INTO `case_video_201708` VALUES ('T11366_085532_20170827192641.MP4', '20170826113314_085532_411501', '2017-08-27 19:26:41', '2017-08-27 19:26:54', '13', '1', '陈勇', '085532', '411501', '老城分局', 'T11366', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/T11366/20170827/T11366_085532_20170827192641.MP4', null, '2017-08-27 19:35:00', '0', '192.168.77.33', '0', '9', '1', '2017-08-27 19:35:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('T11366_085532_20170827192703.MP4', '20170826113314_085532_411501', '2017-08-27 19:27:03', '2017-08-27 19:27:18', '15', '1', '陈勇', '085532', '411501', '老城分局', 'T11366', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/T11366/20170827/T11366_085532_20170827192703.MP4', null, '2017-08-27 19:35:00', '0', '192.168.77.33', '0', '9', '1', '2017-08-27 19:35:00', '', '0');
INSERT INTO `case_video_201708` VALUES ('T11366_085532_20170827192725.MP4', '20170827192725_T11366_411501', '2017-08-27 19:27:25', '2017-08-27 19:27:38', '13', '1', '陈勇', '085532', '411501', '老城分局', 'T11366', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/T11366/20170827/T11366_085532_20170827192725.MP4', null, '2017-08-27 19:35:01', '0', '192.168.77.33', '0', '9', '1', '2017-08-27 19:35:01', '', '0');
INSERT INTO `case_video_201708` VALUES ('T11366_085532_20170827192743.MP4', '20170827192725_T11366_411501', '2017-08-27 19:27:43', '2017-08-27 19:27:50', '7', '1', '陈勇', '085532', '411501', '老城分局', 'T11366', 'localhost', null, 'http://localhost:80/pe_fileG/pedata/T11366/20170827/T11366_085532_20170827192743.MP4', null, '2017-08-27 19:35:02', '0', '192.168.77.33', '0', '9', '1', '2017-08-27 19:35:02', '', '0');

-- ----------------------------
-- Table structure for `case_video_201709`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201709`;
CREATE TABLE `case_video_201709` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '文件编号 <产口序号>_<警号>_<年月日时分秒>.<类型>',
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '案件标识，同case_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '拍摄时间',
  `end_time` datetime DEFAULT NULL COMMENT '视频结束时间',
  `wjcd` int(11) DEFAULT '0' COMMENT '文件长度',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:未知,1:视频,2:音频,3:图片',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '警员姓名',
  `jybh` varchar(32) NOT NULL DEFAULT '000000' COMMENT '警员编号',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '单位名称',
  `cpxh` varchar(12) NOT NULL DEFAULT '0000000' COMMENT '产品序号(执法仪编号),文件由人工提供时统一填99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '存储服务器',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '存储位置',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '播放位置',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '物理位置,绝对路径',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '上传时间',
  `bzlx` int(2) DEFAULT '0' COMMENT '标注类型,0:未标注,1:标注(典型案例)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '工作站IP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:不上传，1：上传到中心服务器(重要视频)',
  `video_type` int(2) DEFAULT '9' COMMENT '视频分类(1:酒驾、2:事故、3:毒驾、4:违法、9:其他)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '来源;1:执法记录仪,2:公安类,3:非公安类',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '更新时间',
  `remark` varchar(256) DEFAULT '',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常,1:软删,2:硬删',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201709
-- ----------------------------

-- ----------------------------
-- Table structure for `dept_role`
-- ----------------------------
DROP TABLE IF EXISTS `dept_role`;
CREATE TABLE `dept_role` (
  `dept_role_id` bigint(19) NOT NULL DEFAULT '0' COMMENT '部门角色ID 13位时间整型',
  `rolename` varchar(64) NOT NULL DEFAULT '' COMMENT '部门角色名',
  `remark` varchar(128) DEFAULT NULL COMMENT '部门角色说明',
  `dept_list` varchar(4096) DEFAULT '' COMMENT '部门代码列表',
  PRIMARY KEY (`dept_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dept_role
-- ----------------------------
INSERT INTO `dept_role` VALUES ('1', '查看所有部门数据', '', '41');
INSERT INTO `dept_role` VALUES ('2', '查看直属分局', '', '411512');
INSERT INTO `dept_role` VALUES ('3', '罗山县', '', '411516');

-- ----------------------------
-- Table structure for `dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL COMMENT '类型',
  `name` varchar(255) NOT NULL COMMENT '字段描述',
  `value` varchar(255) DEFAULT '' COMMENT '字段值',
  `item` varchar(255) DEFAULT '' COMMENT '字段值描述',
  `order` int(5) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'status', '状态', '0', '离线', '0');
INSERT INTO `dictionary` VALUES ('2', 'status', '状态', '1', '在线', '0');
INSERT INTO `dictionary` VALUES ('3', 'deptype', '部门类型', '0', '无', '0');
INSERT INTO `dictionary` VALUES ('4', 'deptype', '部门类型', '1', '交警', '0');
INSERT INTO `dictionary` VALUES ('5', 'deptype', '部门类型', '2', '其他', '0');
INSERT INTO `dictionary` VALUES ('6', 'status', '状态', '', '', '0');
INSERT INTO `dictionary` VALUES ('7', 'deptype', '部门类型', '', '', '0');
INSERT INTO `dictionary` VALUES ('9', 'enable', '启用状态', '', '', '0');
INSERT INTO `dictionary` VALUES ('10', 'enable', '启用状态', '1', '启用', '1');
INSERT INTO `dictionary` VALUES ('11', 'enable', '启用状态', '0', '停用', '2');
INSERT INTO `dictionary` VALUES ('12', 'videotype', '视频类型', '', '', '0');
INSERT INTO `dictionary` VALUES ('14', 'videotype', '视频类型', '', '未知', '0');
INSERT INTO `dictionary` VALUES ('15', 'videotype', '视频类型', '1', '音频', '1');
INSERT INTO `dictionary` VALUES ('16', 'alarm_type', '警情类型', '', '', '0');
INSERT INTO `dictionary` VALUES ('17', 'alarm_type', '警情类型', '0', '未编辑（3个月）', '9');
INSERT INTO `dictionary` VALUES ('18', 'alarm_type', '警情类型', '', '请选择', '0');
INSERT INTO `dictionary` VALUES ('19', 'alarm_type', '警情类型', '1', '一般警情(6个月)', '1');
INSERT INTO `dictionary` VALUES ('20', 'alarm_type', '警情类型', '2', '重大警情(永久)', '2');
INSERT INTO `dictionary` VALUES ('21', 'alarm_type', '警情类型', '3', '阻碍民警执法妨碍公务(永久)', '3');
INSERT INTO `dictionary` VALUES ('22', 'alarm_type', '警情类型', '4', '行政强制执行(永久)', '4');
INSERT INTO `dictionary` VALUES ('23', 'alarm_type', '警情类型', '5', '当场盘问检查(6个月)', '5');
INSERT INTO `dictionary` VALUES ('24', 'alarm_type', '警情类型', '6', '无效数据(7天)', '6');
INSERT INTO `dictionary` VALUES ('25', 'alarm_type', '警情类型', '7', '其他(6个月)', '7');
INSERT INTO `dictionary` VALUES ('26', 'case_type', '案件类型', '', '', '0');
INSERT INTO `dictionary` VALUES ('27', 'case_type', '案件类型', '0', '未知', '1');
INSERT INTO `dictionary` VALUES ('28', 'case_type', '案件类型', '', '请选择', '0');
INSERT INTO `dictionary` VALUES ('29', 'case_type', '案件类型', '2', '刑侦案件', '3');
INSERT INTO `dictionary` VALUES ('30', 'case_type', '案件类型', '1', '行政案件', '2');
INSERT INTO `dictionary` VALUES ('31', 'is_read', '部门属性', '', '', '0');
INSERT INTO `dictionary` VALUES ('32', 'is_read', '部门属性', '1', '读写', '1');
INSERT INTO `dictionary` VALUES ('33', 'is_read', '部门属性', '0', '只读', '0');
INSERT INTO `dictionary` VALUES ('34', 'areatype', '部门类型', '', '', '0');
INSERT INTO `dictionary` VALUES ('35', 'areatype', '部门类型', '0', '交警', '0');
INSERT INTO `dictionary` VALUES ('36', 'areatype', '部门类型', '1', '其他', '1');
INSERT INTO `dictionary` VALUES ('37', 'areatype', '部门类型', '2', '法制', '2');
INSERT INTO `dictionary` VALUES ('38', 'video_source', '数据来源', '', '', '0');
INSERT INTO `dictionary` VALUES ('39', 'video_source', '数据来源', '1', '执法记录仪', '1');
INSERT INTO `dictionary` VALUES ('40', 'video_source', '数据来源', '2', '公安类采集', '2');
INSERT INTO `dictionary` VALUES ('41', 'video_source', '数据来源', '3', '非公安类采集', '3');
INSERT INTO `dictionary` VALUES ('42', 'empl_qualify', '执法资格', '', '', '0');
INSERT INTO `dictionary` VALUES ('43', 'empl_qualify', '执法资格', '1', '基本', '1');
INSERT INTO `dictionary` VALUES ('44', 'empl_qualify', '执法资格', '0', '无', '0');
INSERT INTO `dictionary` VALUES ('45', 'empl_qualify', '执法资格', '2', '中级', '2');
INSERT INTO `dictionary` VALUES ('46', 'empl_qualify', '执法资格', '3', '高级', '3');
INSERT INTO `dictionary` VALUES ('47', 'pe_status', '执法仪状态', '', '', '0');
INSERT INTO `dictionary` VALUES ('48', 'pe_status', '执法仪状态', '0', '停用', '2');
INSERT INTO `dictionary` VALUES ('49', 'pe_status', '执法仪状态', '1', '维修', '1');
INSERT INTO `dictionary` VALUES ('50', 'pe_status', '执法仪状态', '2', '正常', '0');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '部门代码',
  `name` varchar(32) NOT NULL DEFAULT '无' COMMENT '警员名',
  `code` varchar(32) NOT NULL DEFAULT '无' COMMENT '登陆账号,一般是警员编号',
  `sex` char(4) DEFAULT '男',
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `photo_path` varchar(128) DEFAULT NULL COMMENT '警员相片绝对位置(URL)',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '登陆密码',
  `roleid` int(11) NOT NULL DEFAULT '1',
  `bindingip` int(11) NOT NULL DEFAULT '0' COMMENT '0:未梆定,1:梆定',
  `clientip` varchar(16) DEFAULT NULL,
  `userarea` text COMMENT '管理员是非空.用户有权限的区域ID集合，逗号分隔',
  `login` int(1) NOT NULL DEFAULT '1' COMMENT '1:登陆;0:不能',
  `online_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '在线时间',
  `dept_role_id` int(11) NOT NULL DEFAULT '0' COMMENT '部门角色ID',
  `empl_qualify` int(1) NOT NULL DEFAULT '0' COMMENT '执法资格;0:无;1:基本级;2:中级;3:高级;',
  PRIMARY KEY (`empid`),
  UNIQUE KEY `idx_code` (`code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3855 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('650', '4115', '超级管理员', 'admin', '男', null, null, '管理', null, '123456', '1', '0', null, '41', '1', '2017-09-01 09:50:46', '0', '0');
INSERT INTO `employee` VALUES ('665', '4115', '申忠', '086338', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-08-30 16:06:29', '0', '0');
INSERT INTO `employee` VALUES ('654', '4115', '陶有青', '087793', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('655', '4115', '李少君', '084837', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('656', '4115', '蒋中洋', '186626', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-08-27 09:10:58', '0', '0');
INSERT INTO `employee` VALUES ('657', '4115', '祝榕', '186353', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('658', '4115', '王韫韬', '086713', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('659', '4115', '秦秀丽', '086183', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('666', '4115', '解佳', '086363', '男', '', null, '', null, '123456', '19', '0', '', '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('667', '41151845', '张瑾珉', '189505', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('668', '411501', '沈思诗', '000000', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('669', '41150502', '王冬', '086278', '男', null, null, null, null, '123456', '23', '0', null, '41150502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('670', '41150311', '罗璇', '084086', '男', null, null, null, null, '123456', '23', '0', null, '41150311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('671', '41150113', '周磊1', '084141', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('672', '41150110', '杨琳', '084210', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('673', '41150104', '刘莉', '084679', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('674', '41151205', '刘晶', '084790', '男', null, null, null, null, '123456', '22', '0', null, '41151205', '1', '2017-08-28 11:46:54', '0', '0');
INSERT INTO `employee` VALUES ('675', '411504', '胡永康', '084826', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('676', '41150305', '石光', '084955', '男', null, null, null, null, '123456', '23', '0', null, '41150305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('677', '41150309', '袁祖祥', '084976', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('678', '41150601', '黄精武', '084977', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('679', '41150103', '程华明', '084978', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('680', '41150402', '汤帅', '084979', '男', null, null, null, null, '123456', '23', '0', null, '41150402', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('681', '41150309', '周士新', '084980', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('682', '41150403', '余承意', '084981', '男', null, null, null, null, '123456', '23', '0', null, '41150403', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('683', '41150309', '唐为民', '084982', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('684', '4115120308', '缑秋峰', '084984', '男', null, null, null, null, '123456', '23', '0', null, '4115120308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('685', '41150308', '沈元中', '084985', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('686', '4115120502', '王世明', '084986', '男', null, null, null, null, '123456', '23', '0', null, '4115120502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('687', '41150304', '范保银', '084989', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('688', '41150601', '赵永红', '084990', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('689', '4115120504', '何彬', '084991', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('690', '41150302', '周明', '084992', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('691', '41150204', '张润月', '084994', '男', null, null, null, null, '123456', '23', '0', null, '41150204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('692', '41150309', '陈巍', '084996', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('693', '4115120504', '鲁翠生', '084998', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('694', '41150302', '刘永群', '084999', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('695', '41150805', '周星', '085300', '男', null, null, null, null, '123456', '23', '0', null, '41150805', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('696', '4115120301', '陈伟', '085423', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('697', '411502', '刘高峰', '085510', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('698', '411501', '陈勇', '085532', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-08-29 16:33:17', '0', '0');
INSERT INTO `employee` VALUES ('699', '41150111', '张恒', '085580', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('700', '411502', '赵岩', '085606', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('701', '41150802', '陈晓东', '085623', '男', null, null, null, null, '123456', '23', '0', null, '41150802', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('702', '41150104', '彭琼', '085635', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('703', '41150110', '彭亚莉', '085687', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('704', '41150301', '王萍', '085703', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('705', '4115120501', '张震', '085715', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('706', '41150101', '宋明华', '085798', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-08-28 17:38:12', '0', '0');
INSERT INTO `employee` VALUES ('707', '41150110', '李岩', '085898', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('708', '41150314', '郑敏', '085992', '男', null, null, null, null, '123456', '23', '0', null, '41150314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('709', '411501', '刘建华', '086021', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('710', '411506', '李希瑞', '086027', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('711', '411506', '谢亚光', '086056', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('712', '411503', '周德明', '086072', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('713', '411507', '李涛', '086109', '男', null, null, null, null, '123456', '22', '0', null, '411507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('714', '41150313', '夏惠国', '086119', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('715', '411508', '张志耘', '086122', '男', null, null, null, null, '123456', '22', '0', null, '411508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('716', '4115120307', '李雷', '086196', '男', null, null, null, null, '123456', '23', '0', null, '4115120307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('717', '4115120503', '李福利', '086207', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('718', '4115120501', '刘燕杰', '086211', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('719', '41150203', '李军', '086219', '男', null, null, null, null, '123456', '23', '0', null, '41150203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('720', '41150301', '史东明', '086221', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('721', '41150604', '叶翔宇', '086267', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('722', '41151001', '张学习', '086309', '男', null, null, null, null, '123456', '23', '0', null, '41151001', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('723', '41150706', '暴国', '086312', '男', null, null, null, null, '123456', '23', '0', null, '41150706', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('724', '411503', '杨明强', '086350', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('725', '4115120501', '任培', '086360', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('726', '41150905', '樊晓光', '086368', '男', null, null, null, null, '123456', '23', '0', null, '41150905', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('727', '41150304', '张学敏', '086375', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('728', '4115120309', '杨家清', '086402', '男', null, null, null, null, '123456', '23', '0', null, '4115120309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('729', '41150610', '胡伟东', '086404', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('730', '41151203', '朱明生', '086405', '男', null, null, null, null, '123456', '22', '0', null, '41151203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('731', '41150310', '于秀轩', '086406', '男', null, null, null, null, '123456', '23', '0', null, '41150310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('732', '4115120313', '刘学利', '086407', '男', null, null, null, null, '123456', '23', '0', null, '4115120313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('733', '41150610', '苏水平', '086409', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('734', '4115120505', '张继维', '086410', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('735', '4115120301', '吴军', '001-WJ', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('736', '4115120313', '张勇', '086413', '男', null, null, null, null, '123456', '23', '0', null, '4115120313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('737', '41150106', '彭业勇', '086415', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('738', '4115120501', '王德库', '086418', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('739', '4115120308', '罗磊', '086420', '男', null, null, null, null, '123456', '23', '0', null, '4115120308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('740', '41150101', '田圣保', '086422', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('741', '4115120306', '柳楠', '086423', '男', null, null, null, null, '123456', '23', '0', null, '4115120306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('742', '4115120505', '徐阳', '086425', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('743', '41151203', '陈政', '086426', '男', null, null, null, null, '123456', '22', '0', null, '41151203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('744', '4115120309', '王辉（小）', '086428', '男', null, null, null, null, '123456', '23', '0', null, '4115120309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('745', '41150307', '周义勇', '086441', '男', null, null, null, null, '123456', '23', '0', null, '41150307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('746', '4115120312', '刘立军', '086446', '男', null, null, null, null, '123456', '23', '0', null, '4115120312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('747', '41151002', '黄海涛', '086453', '男', null, null, null, null, '123456', '23', '0', null, '41151002', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('748', '4115120312', '徐学军', '086455', '男', null, null, null, null, '123456', '23', '0', null, '4115120312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('749', '4115120312', '祁永毅', '086465', '男', null, null, null, null, '123456', '23', '0', null, '4115120312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('750', '4115120505', '冯晨', '086502', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('751', '4115120311', '吴鑫', '086513', '男', null, null, null, null, '123456', '23', '0', null, '4115120311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('752', '4115120505', '彭业峰', '086525', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('753', '4115120301', '曾一鸣', '086531', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('754', '4115120304', '王辉', '086533', '男', null, null, null, null, '123456', '23', '0', null, '4115120304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('755', '41150313', '赵斌', '086538', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('756', '411503', '丁启', '086539', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('757', '4115120501', '罗丽莎', '086612', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('758', '41151201', '乐淑君', '086615', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('759', '41150905', '李立勇', '086645', '男', null, null, null, null, '123456', '23', '0', null, '41150905', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('760', '41150310', '王林', '086646', '男', null, null, null, null, '123456', '23', '0', null, '41150310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('761', '41150309', '易保银', '086647', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('762', '4115120501', '程连梅', '086648', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('763', '4115120501', '明亚', '086650', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('764', '41150704', '翟强', '086691', '男', null, null, null, null, '123456', '23', '0', null, '41150704', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('765', '41150303', '李诚', '086773', '男', null, null, null, null, '123456', '23', '0', null, '41150303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('766', '411503', '王磊', '086719', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('767', '41150104', '闻传恒', '086800', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('768', '4115120310', '黄志强', '086853', '男', null, null, null, null, '123456', '23', '0', null, '4115120310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('769', '411506', '赵维佳', '086866', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('770', '41150803', '唐照明', '086971', '男', null, null, null, null, '123456', '23', '0', null, '41150803', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('771', '41150301', '刘宗文', '086987', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('772', '411501', '潘焕斌', '087013', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('773', '41150216', '张琳洁', '087018', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('774', '41150211', '程惠阳', '087023', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('775', '41150215', '姬永兰', '087024', '男', null, null, null, null, '123456', '23', '0', null, '41150215', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('776', '41150211', '张青', '087025', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('777', '41150209', '郭全治', '087026', '男', null, null, null, null, '123456', '23', '0', null, '41150209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('778', '41150104', '秦朗', '087027', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('779', '41150209', '周敬华', '087028', '男', null, null, null, null, '123456', '23', '0', null, '41150209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('780', '41150216', '李莉', '087029', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('781', '411506', '戴常众', '087030', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('782', '41150211', '华琳', '087031', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('783', '41150114', '井立宏', '087032', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('784', '41150104', '吴亚东', '087034', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('785', '41150211', '朱文', '087038', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('786', '41150102', '张家国', '087045', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('787', '41150212', '张利春', '087046', '男', null, null, null, null, '123456', '23', '0', null, '41150212', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('788', '41150110', '高志海', '087048', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('789', '41150111', '李长伦', '087049', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('790', '41150212', '代为', '087051', '男', null, null, null, null, '123456', '23', '0', null, '41150212', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('791', '41150604', '牛立清', '087059', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('792', '41150102', '吕艳丽', '087061', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('793', '41150101', '李万欣', '087062', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('794', '41150215', '龚成', '087064', '男', null, null, null, null, '123456', '23', '0', null, '41150215', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('795', '41150211', '史惠玲', '087065', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('796', '41150214', '程宁', '087069', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('797', '41150101', '王芳', '087070', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('798', '41150111', '张霞', '087071', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('799', '41150115', '陶辉', '087072', '男', null, null, null, null, '123456', '23', '0', null, '41150115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('800', '41150217', '彭柱', '087076', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('801', '41150107', '苏光武', '087077', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('802', '41150112', '姚立新', '087079', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('803', '41150111', '张宗起', '087080', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('804', '41150105', '蔡红莲', '087081', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('805', '41150103', '谭文中', '087082', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('806', '41150214', '胡新武', '087083', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('807', '411501', '陈益书', '087084', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('808', '41150202', '方骥', '087085', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('809', '41150112', '吴波', '087088', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('810', '41150213', '吴华林', '087097', '男', null, null, null, null, '123456', '23', '0', null, '41150213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('811', '41150114', '王敏', '087099', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('812', '41150214', '王莹', '087100', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('813', '41150201', '杨未乐', '087101', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('814', '41150113', '杨建华', '087102', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('815', '411501', '钱仕华', '087103', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('816', '4115120501', '王萌萌', '087107', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('817', '41150114', '郑晓冬', '087110', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('818', '41150202', '韩辉', '087111', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('819', '41150104', '孙艳丽', '087114', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('820', '41150211', '徐蓓蕾', '087115', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('821', '41150107', '王鹏', '087117', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('822', '411508', '闫卫国', '087119', '男', null, null, null, null, '123456', '22', '0', null, '411508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('823', '41150214', '赵晓娟', '087120', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('824', '41150214', '刘敏', '087121', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('825', '41150113', '黄昌明', '087122', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('826', '41150106', '李道营', '087128', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('827', '41150114', '王林', '087129', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('828', '41150114', '陈林', '087133', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('829', '41150208', '祁斌', '087134', '男', null, null, null, null, '123456', '23', '0', null, '41150208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('830', '41150104', '杨奎', '087136', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('831', '41150217', '李亚伟', '087137', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('832', '41150113', '白涛', '087139', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('833', '41150103', '黄忠凯', '087141', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('834', '41150202', '丁泽华', '087143', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('835', '41150107', '叶世晴', '087144', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('836', '41150215', '武庆', '087145', '男', null, null, null, null, '123456', '23', '0', null, '41150215', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('837', '41150214', '鲁毅', '087146', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('838', '41150113', '易怀仁', '087147', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('839', '41150216', '王志', '087148', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('840', '41150214', '方建秋', '087149', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('841', '41150217', '陈杰', '087151', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('842', '41150217', '杨洲银', '087152', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('843', '4115121304', '游永志', '087153', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('844', '41150110', '付永刚', '087155', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('845', '41150115', '叶强', '087156', '男', null, null, null, null, '123456', '23', '0', null, '41150115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('846', '41150102', '彭大庆', '087158', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('847', '41150114', '张久成', '087159', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('848', '41150111', '陈述', '087160', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('849', '41150114', '胡新文', '087162', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('850', '41150101', '张建军', '087163', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('851', '41150202', '贾玉良', '087165', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('852', '41150214', '卢朝阳', '087166', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('853', '41150214', '翟宏伟', '087169', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('854', '41150114', '曾宪春', '087170', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('855', '41150201', '王宇', '087171', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('856', '41150214', '吴烈忠', '087172', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('857', '41150102', '王本德', '087174', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('858', '41150214', '殷俊杰', '087176', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('859', '41150214', '郭晓郁', '087177', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('860', '41150114', '黄可', '087180', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('861', '41150105', '汤泳', '087181', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('862', '41150211', '张涛', '087185', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('863', '41150214', '何长卿', '087187', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('864', '41150103', '肖友洲', '087189', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('865', '41150214', '武建军', '087192', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('866', '41150213', '石磊', '087196', '男', null, null, null, null, '123456', '23', '0', null, '41150213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('867', '41150112', '赵桂荣', '087198', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('868', '41150211', '汪雨亮', '087200', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('869', '41150101', '黄东升', '087203', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('870', '411502', '王莉', '087206', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('871', '41150212', '杨晓红', '087208', '男', null, null, null, null, '123456', '23', '0', null, '41150212', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('872', '41150102', '魏东方', '087209', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('873', '41150104', '徐慧', '087210', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('874', '41150113', '罗方江', '087217', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('875', '41150216', '张新建', '087218', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('876', '41150217', '黄黎', '087219', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('877', '41150113', '张新建', '087220', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('878', '41150105', '马静', '087222', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('879', '41150216', '余敏', '087227', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('880', '41150111', '闫兴城', '087230', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('881', '41150101', '罗明强', '087231', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('882', '41150102', '宋世良', '087234', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('883', '41150201', '杜松柏', '087235', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('884', '41150113', '王红', '087236', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('885', '41150201', '陶良富', '087237', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('886', '41150102', '张山河', '087238', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('887', '411501', '郭进华', '087239', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('888', '41150102', '刘静', '087242', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('889', '41150102', '马霖', '087243', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('890', '41150106', '李金强', '087244', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('891', '411502', '刘威', '087248', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('892', '41150214', '曹海宇', '087250', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('893', '41150213', '张言才', '087251', '男', null, null, null, null, '123456', '23', '0', null, '41150213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('894', '41150201', '邵东峰', '087254', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('895', '41150216', '卢光伟', '087256', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('896', '41150214', '胡玲', '087262', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('897', '41150105', '刘磊', '087263', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('898', '41150216', '梁兴林', '087265', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('899', '41150103', '王德富', '087271', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('900', '41150201', '曹长海', '087273', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('901', '41150101', '胡道生', '087274', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('902', '41150216', '张建军', '087275', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('903', '41150106', '陈进', '087283', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('904', '41150111', '卢启元', '087284', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('905', '41150111', '张瑛', '087291', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('906', '41150107', '杜光海', '087293', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('907', '41150216', '王艳', '087294', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('908', '41150203', '袁伟超', '087297', '男', null, null, null, null, '123456', '23', '0', null, '41150203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('909', '41151004', '马长青', '087299', '男', null, null, null, null, '123456', '23', '0', null, '41151004', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('910', '41150202', '余得水', '087301', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('911', '41150202', '曾凡军', '087307', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('912', '41150206', '周旭光', '087310', '男', null, null, null, null, '123456', '23', '0', null, '41150206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('913', '41150202', '王朝甫', '087313', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('914', '41150101', '侯传田', '087314', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('915', '41150103', '程再浩', '087316', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('916', '41150202', '孙仰东', '087317', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('917', '41150112', '冯克芝', '087324', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('918', '41150114', '袁晓辉', '087325', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('919', '41150205', '陈永斌', '087327', '男', null, null, null, null, '123456', '23', '0', null, '41150205', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('920', '41150201', '冯琦', '087328', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('921', '41150101', '傅德林', '087329', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('922', '411502', '解玉祥', '087330', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('923', '41150111', '陈连达', '087338', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('924', '41150201', '王方', '087340', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('925', '41150217', '丁琦', '087342', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('926', '41150204', '许红', '087345', '男', null, null, null, null, '123456', '23', '0', null, '41150204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('927', '41150902', '任华新', '087349', '男', null, null, null, null, '123456', '23', '0', null, '41150902', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('928', '41150902', '李金成', '087353', '男', null, null, null, null, '123456', '23', '0', null, '41150902', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('929', '41150102', '贾辉', '087355', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('930', '41150114', '马燕', '087356', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('931', '41150112', '吴河清', '087360', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('932', '41150216', '王继阳', '087363', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('933', '41150411', '张国齐', '087368', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('934', '4115120305', '李兵', '087371', '男', null, null, null, null, '123456', '23', '0', null, '4115120305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('935', '41150102', '谷灏', '087374', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('936', '41150103', '王阅渊', '087381', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('937', '41150202', '杨玉祥', '087383', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('938', '41150211', '韩运利', '087384', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('939', '41150201', '江金榜', '087386', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('940', '41150210', '徐涛', '087387', '男', null, null, null, null, '123456', '23', '0', null, '41150210', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('941', '41150208', '周兴建', '087388', '男', null, null, null, null, '123456', '23', '0', null, '41150208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('942', '41150106', '刘继东', '087391', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('943', '4115120501', '王卫东', '087395', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('944', '41150313', '杨东强', '087400', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('945', '4115120505', '武建新', '087401', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('946', '41150308', '黄宗海', '087402', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('947', '41150114', '李绍军', '087403', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('948', '4115120502', '孙振群', '087405', '男', null, null, null, null, '123456', '23', '0', null, '4115120502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('949', '41150104', '徐刚', '087410', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('950', '41150106', '陈鸿', '087415', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('951', '41150107', '刘昕', '087416', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('952', '41150115', '周爱明', '087417', '男', null, null, null, null, '123456', '23', '0', null, '41150115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('953', '41150307', '李国忠', '087420', '男', null, null, null, null, '123456', '23', '0', null, '41150307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('954', '41150110', '王馨敏', '087421', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('955', '41150112', '付业军', '087430', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('956', '41150201', '王光新', '087432', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('957', '41150217', '李顺', '087434', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('958', '41150217', '盛化元', '087435', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('959', '41150201', '王学林', '087438', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('960', '41150103', '石宪民', '087444', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('961', '41150114', '文绪和', '087445', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('962', '41150216', '顾涛', '087446', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('963', '41150104', '张文兴', '087451', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('964', '41150111', '黄艳群', '087452', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('965', '41150110', '付金钟', '087453', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('966', '41150102', '吴恒刚', '087454', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('967', '41150104', '樊学植', '087455', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('968', '41150111', '谢永琼', '087456', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('969', '41150103', '代丽娜', '087458', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('970', '41150114', '冯杰', '087459', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('971', '41150106', '郑立恒', '087460', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('972', '41150206', '殷俊', '087461', '男', null, null, null, null, '123456', '23', '0', null, '41150206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('973', '41150104', '陶冶', '087462', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('974', '41150212', '袁运林', '087463', '男', null, null, null, null, '123456', '23', '0', null, '41150212', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('975', '41150211', '高峰来', '087464', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('976', '41150102', '许伟', '087465', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('977', '41150114', '王斌', '087466', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('978', '41150113', '虞前仁', '087467', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('979', '41150201', '施云山', '087468', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('980', '41151001', '甘地祥', '087470', '男', null, null, null, null, '123456', '23', '0', null, '41151001', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('981', '4115121304', '张继伟', '087471', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('982', '41150111', '桑仁龙', '087472', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('983', '41151002', '郝成才', '087473', '男', null, null, null, null, '123456', '23', '0', null, '41151002', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('984', '4115120307', '高宇', '087477', '男', null, null, null, null, '123456', '23', '0', null, '4115120307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('985', '41150202', '周征', '087480', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('986', '41150111', '刘启莹', '087481', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('987', '41150211', '任媛媛', '087482', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('988', '41150216', '屈应俊', '087483', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('989', '41150111', '洪杨', '087485', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('990', '41150216', '许晓森', '087486', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('991', '41150111', '左尚虹', '087487', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('992', '41150214', '史经来', '087488', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('993', '41150106', '陈玲', '087496', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('994', '411502', '朱丹', '087497', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('995', '41150211', '刘惠萍', '087498', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('996', '411502', '周昌国', '087500', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('997', '4115120301', '陶良金', '087502', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('998', '41151001', '梅迎春', '087503', '男', null, null, null, null, '123456', '23', '0', null, '41151001', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('999', '41150205', '孙林', '087505', '男', null, null, null, null, '123456', '23', '0', null, '41150205', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1000', '41150212', '项永刚', '087506', '男', null, null, null, null, '123456', '23', '0', null, '41150212', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1001', '41150101', '邹军', '087507', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1002', '41150217', '李智', '087509', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1003', '41150508', '李亚辉', '087511', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1004', '41150604', '郑金厚', '087513', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1005', '411505', '王强林', '087516', '男', null, null, null, null, '123456', '22', '0', null, '411505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1006', '41150505', '陈林', '087517', '男', null, null, null, null, '123456', '23', '0', null, '41150505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1007', '411506', '李道梅', '087518', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1008', '41150601', '沈献美', '087525', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1009', '41150601', '郭承伟', '087526', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1010', '41150606', '杨文静', '087527', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1011', '41150607', '沈根祥', '087528', '男', null, null, null, null, '123456', '23', '0', null, '41150607', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1012', '41150503', '康世文', '087535', '男', null, null, null, null, '123456', '23', '0', null, '41150503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1013', '41150606', '李唐辉', '087536', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1014', '41150801', '刘伟', '087544', '男', null, null, null, null, '123456', '23', '0', null, '41150801', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1015', '41150602', '陈斌', '087545', '男', null, null, null, null, '123456', '23', '0', null, '41150602', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1016', '41150301', '刘先慧', '087550', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1017', '41150408', '赵长宏', '087551', '男', null, null, null, null, '123456', '23', '0', null, '41150408', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1018', '4115120313', '向金月', '087553', '男', null, null, null, null, '123456', '23', '0', null, '4115120313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1019', '41150610', '杨志文', '087555', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1020', '41150114', '杜瑞', '087557', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1021', '41150512', '郑海全', '087561', '男', null, null, null, null, '123456', '23', '0', null, '41150512', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1022', '41150803', '曹莉', '087563', '男', null, null, null, null, '123456', '23', '0', null, '41150803', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1023', '41150110', '胡曼', '087564', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1024', '41150609', '方金玉', '087565', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1025', '41150802', '占中齐', '087567', '男', null, null, null, null, '123456', '23', '0', null, '41150802', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1026', '41150606', '李瑞', '087568', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1027', '41150611', '叶武阳', '087573', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1028', '41150506', '潘锋', '087575', '男', null, null, null, null, '123456', '23', '0', null, '41150506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1029', '41150510', '严宣明', '087578', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1030', '41150508', '熊伟', '087581', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1031', '41150510', '崔宏昌', '087585', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1032', '41150506', '李宏', '087586', '男', null, null, null, null, '123456', '23', '0', null, '41150506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1033', '41150606', '侯宝刚', '087588', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1034', '41150607', '李世海', '087592', '男', null, null, null, null, '123456', '23', '0', null, '41150607', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1035', '41150609', '何浩', '087594', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1036', '41150601', '张华喜', '087597', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1037', '41150510', '夏其文', '087599', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1038', '41150802', '张树艳', '087602', '男', null, null, null, null, '123456', '23', '0', null, '41150802', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1039', '41150611', '刘军红', '087603', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1040', '41150601', '程静', '087604', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1041', '41150609', '刘英', '087607', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1042', '411504', '彭立', '087608', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1043', '41150611', '韩朝阳', '087616', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1044', '41150609', '朱朝杰', '087618', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1045', '41150509', '陈巍', '087619', '男', null, null, null, null, '123456', '23', '0', null, '41150509', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1046', '41150601', '张功明', '087620', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1047', '41150611', '谭正国', '087621', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1048', '41150414', '张华', '087622', '男', null, null, null, null, '123456', '23', '0', null, '41150414', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1049', '41150604', '李宁', '087624', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1050', '41150510', '杨银厚', '087625', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1051', '41150512', '杨道军', '087626', '男', null, null, null, null, '123456', '23', '0', null, '41150512', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1052', '41150609', '盛晓辉', '087627', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1053', '41150603', '杨洋', '087628', '男', null, null, null, null, '123456', '23', '0', null, '41150603', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1054', '41150508', '赵圣良', '087629', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1055', '411506', '周明宝', '087630', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1056', '411508', '郭昱', '087631', '男', null, null, null, null, '123456', '22', '0', null, '411508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1057', '41150508', '郑世群', '087633', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1058', '41150611', '朱艳', '087636', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1059', '41150602', '刘三九', '087639', '男', null, null, null, null, '123456', '23', '0', null, '41150602', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1060', '41150604', '刘群', '087640', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1061', '41150412', '王玉良', '087641', '男', null, null, null, null, '123456', '23', '0', null, '41150412', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1062', '41150601', '王正芳', '087642', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1063', '41150610', '陈修生', '087646', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1064', '41150603', '刘威', '087647', '男', null, null, null, null, '123456', '23', '0', null, '41150603', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1065', '4115120313', '李军', '087648', '男', null, null, null, null, '123456', '23', '0', null, '4115120313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1066', '41150505', '曹义峰', '087650', '男', null, null, null, null, '123456', '23', '0', null, '41150505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1067', '41150610', '张翠', '087651', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1068', '41150606', '李伟', '087652', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1069', '41150416', '高树斌', '087653', '男', null, null, null, null, '123456', '23', '0', null, '41150416', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1070', '41150408', '陈德亮', '087655', '男', null, null, null, null, '123456', '23', '0', null, '41150408', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1071', '4115120313', '彭伟', '087656', '男', null, null, null, null, '123456', '23', '0', null, '4115120313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1072', '41150801', '张立新', '087657', '男', null, null, null, null, '123456', '23', '0', null, '41150801', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1073', '41150507', '吴斌', '087659', '男', null, null, null, null, '123456', '23', '0', null, '41150507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1074', '41150311', '陈培华', '087660', '男', null, null, null, null, '123456', '23', '0', null, '41150311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1075', '41150601', '王建', '087663', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1076', '41150607', '刘婷', '087664', '男', null, null, null, null, '123456', '23', '0', null, '41150607', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1077', '41150601', '李前顺', '087665', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1078', '41150604', '余富寿', '087667', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1079', '411508', '张全成', '087669', '男', null, null, null, null, '123456', '22', '0', null, '411508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1080', '41150511', '张亚宇', '087671', '男', null, null, null, null, '123456', '23', '0', null, '41150511', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1081', '41150606', '刘伟', '087672', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1082', '41150501', '王西华', '087673', '男', null, null, null, null, '123456', '23', '0', null, '41150501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1083', '41150802', '汪再高', '087675', '男', null, null, null, null, '123456', '23', '0', null, '41150802', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1084', '41150607', '蔡暑光', '087676', '男', null, null, null, null, '123456', '23', '0', null, '41150607', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1085', '41150611', '张凤德', '087677', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1086', '41150601', '刘世斌', '087678', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1087', '41150601', '胡勇', '087679', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1088', '41150510', '方建辉', '087681', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1089', '41150601', '吴清书', '087682', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1090', '41150314', '宋相勤', '087684', '男', null, null, null, null, '123456', '23', '0', null, '41150314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1091', '41150304', '张瑞', '087687', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1092', '411506', '胡斌', '087689', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1093', '41150303', '肖志刚', '087691', '男', null, null, null, null, '123456', '23', '0', null, '41150303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1094', '41150304', '翟富生', '087692', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1095', '41150304', '王鲁豫', '087693', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1096', '41150107', '曹广东', '087694', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1097', '41150304', '郭峰', '087695', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1098', '41150307', '李正斌', '087696', '男', null, null, null, null, '123456', '23', '0', null, '41150307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1099', '41150302', '陈艳红', '087697', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1100', '41150304', '夏云峰', '087700', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1101', '41150508', '何泽军', '087701', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1102', '41150303', '张义忠', '087702', '男', null, null, null, null, '123456', '23', '0', null, '41150303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1103', '41150804', '陈锐', '087705', '男', null, null, null, null, '123456', '23', '0', null, '41150804', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1104', '41150312', '禄贵宣', '087706', '男', null, null, null, null, '123456', '23', '0', null, '41150312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1105', '41150610', '吴向阳', '087707', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1106', '41150301', '方家国', '087709', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1107', '41150604', '朱双伟', '087710', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1108', '41150314', '李建国', '087711', '男', null, null, null, null, '123456', '23', '0', null, '41150314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1109', '41150511', '王明军', '087713', '男', null, null, null, null, '123456', '23', '0', null, '41150511', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1110', '41150302', '曾义', '087716', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1111', '41150803', '张天尚', '087720', '男', null, null, null, null, '123456', '23', '0', null, '41150803', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1112', '41150302', '马艳', '087721', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1113', '41150413', '宋祥猛', '087723', '男', null, null, null, null, '123456', '23', '0', null, '41150413', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1114', '41150310', '刘绍亮', '087725', '男', null, null, null, null, '123456', '23', '0', null, '41150310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1115', '41150303', '吴建勋', '087726', '男', null, null, null, null, '123456', '23', '0', null, '41150303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1116', '41150304', '高瑜', '087727', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1117', '41150604', '曾健', '087728', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1118', '41150511', '董安文', '087729', '男', null, null, null, null, '123456', '23', '0', null, '41150511', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1119', '41150601', '王清', '087730', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1120', '41150508', '张新明', '087731', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1121', '41150608', '冯玉峰', '087732', '男', null, null, null, null, '123456', '23', '0', null, '41150608', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1122', '41150115', '谢国胜', '087733', '男', null, null, null, null, '123456', '23', '0', null, '41150115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1123', '41150503', '曹国友', '087734', '男', null, null, null, null, '123456', '23', '0', null, '41150503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1124', '41150502', '郑德友', '087735', '男', null, null, null, null, '123456', '23', '0', null, '41150502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1125', '41150611', '蔡宪华', '087736', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1126', '41150606', '曹春明', '087737', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1127', '41150610', '刘东升', '087738', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1128', '41150601', '李涛', '087740', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1129', '41150605', '陈志强', '087741', '男', null, null, null, null, '123456', '23', '0', null, '41150605', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1130', '4115120503', '夏磊磊', '087742', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1131', '41150606', '黄煌', '087743', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1132', '41150609', '雷金喜', '087745', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1133', '41150601', '张勇', '087747', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1134', '41150313', '陈辉', '087749', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1135', '41150405', '严加坤', '087753', '男', null, null, null, null, '123456', '23', '0', null, '41150405', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1136', '41150510', '甘镇', '087755', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1137', '41150301', '高兴明', '087756', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1138', '41150509', '黄金林', '087759', '男', null, null, null, null, '123456', '23', '0', null, '41150509', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1139', '41150512', '高鹏', '087761', '男', null, null, null, null, '123456', '23', '0', null, '41150512', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1140', '41150511', '汪祖辉', '087762', '男', null, null, null, null, '123456', '23', '0', null, '41150511', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1141', '41150604', '刘学龙', '087763', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1142', '4115120303', '戚则胜', '087764', '男', null, null, null, null, '123456', '23', '0', null, '4115120303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1143', '41150609', '黄柏林', '087765', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1144', '41150610', '李志', '087770', '男', null, null, null, null, '123456', '23', '0', null, '41150610', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1145', '41150609', '李烨', '087771', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1146', '41150502', '王延中', '087773', '男', null, null, null, null, '123456', '23', '0', null, '41150502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1147', '41150608', '金鑫', '087774', '男', null, null, null, null, '123456', '23', '0', null, '41150608', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1148', '41150601', '苏永庭', '087775', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1149', '41150411', '王德', '087776', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1150', '41150411', '程浩', '087777', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1151', '41150301', '谭明涛', '087778', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1152', '41150509', '邹延清', '087780', '男', null, null, null, null, '123456', '23', '0', null, '41150509', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1153', '41150611', '严贵丽', '087783', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1154', '41150414', '郑刚', '087785', '男', null, null, null, null, '123456', '23', '0', null, '41150414', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1155', '41150306', '李贤池', '087786', '男', null, null, null, null, '123456', '23', '0', null, '41150306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1156', '411504', '刘赞', '087787', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1157', '41150309', '顾全中', '087788', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1158', '41150416', '胡功勋', '087789', '男', null, null, null, null, '123456', '23', '0', null, '41150416', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1159', '41150102', '罗旭东', '087792', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1160', '411503', '李稳', '087794', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1161', '41150407', '汤厚明', '087795', '男', null, null, null, null, '123456', '23', '0', null, '41150407', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1162', '41150611', '曹秀军', '087798', '男', null, null, null, null, '123456', '23', '0', null, '41150611', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1163', '41150604', '杨跃军', '087799', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1164', '41150307', '王光亮', '087801', '男', null, null, null, null, '123456', '23', '0', null, '41150307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1165', '41150413', '刘金玉', '087803', '男', null, null, null, null, '123456', '23', '0', null, '41150413', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1166', '41150309', '侯辉', '087804', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1167', '41150608', '余伟', '087805', '男', null, null, null, null, '123456', '23', '0', null, '41150608', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1168', '41150604', '苏玉群', '087806', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1169', '41150510', '吴平超', '087807', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1170', '41150501', '张巍', '087808', '男', null, null, null, null, '123456', '23', '0', null, '41150501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1171', '41150509', '齐永生', '087813', '男', null, null, null, null, '123456', '23', '0', null, '41150509', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1172', '41150904', '孔祥群', '087818', '男', null, null, null, null, '123456', '23', '0', null, '41150904', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1173', '41150308', '张晓云', '087820', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1174', '411506', '张磊', '087821', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1175', '41150606', '耿青', '087824', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1176', '41150311', '郭銛', '087828', '男', null, null, null, null, '123456', '23', '0', null, '41150311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1177', '41150308', '谢雨雁', '087832', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1178', '41150608', '李丹', '087833', '男', null, null, null, null, '123456', '23', '0', null, '41150608', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1179', '411506', '赵大伟', '087834', '男', null, null, null, null, '123456', '22', '0', null, '411506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1180', '41150604', '孙守斌', '087835', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1181', '41150606', '代文齐', '087837', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1182', '41150409', '陈乐', '087838', '男', null, null, null, null, '123456', '23', '0', null, '41150409', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1183', '41150603', '庸昊', '087839', '男', null, null, null, null, '123456', '23', '0', null, '41150603', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1184', '41150602', '魏祖权', '087840', '男', null, null, null, null, '123456', '23', '0', null, '41150602', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1185', '41150202', '卢颖', '087844', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1186', '41150304', '刘盛峰', '087846', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1187', '41150605', '张向阳', '087851', '男', null, null, null, null, '123456', '23', '0', null, '41150605', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1188', '41150604', '吴津', '087852', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1189', '41150607', '曹军', '087853', '男', null, null, null, null, '123456', '23', '0', null, '41150607', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1190', '41150409', '丰敏科', '087855', '男', null, null, null, null, '123456', '23', '0', null, '41150409', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1191', '41150606', '李春龙', '087856', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1192', '41150407', '王晨', '087857', '男', null, null, null, null, '123456', '23', '0', null, '41150407', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1193', '41150606', '李峰', '087858', '男', null, null, null, null, '123456', '23', '0', null, '41150606', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1194', '41150403', '吴厚龙', '087864', '男', null, null, null, null, '123456', '23', '0', null, '41150403', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1195', '41150406', '孙志洲', '087867', '男', null, null, null, null, '123456', '23', '0', null, '41150406', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1196', '41150105', '张志成', '087870', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1197', '41150415', '黄玲', '087871', '男', null, null, null, null, '123456', '23', '0', null, '41150415', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1198', '411504', '严英田', '087875', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1199', '41150410', '孙法琴', '087879', '男', null, null, null, null, '123456', '23', '0', null, '41150410', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1200', '411504', '任小虎', '087880', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1201', '41150504', '罗传意', '087881', '男', null, null, null, null, '123456', '23', '0', null, '41150504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1202', '41150410', '唐亚彬', '087882', '男', null, null, null, null, '123456', '23', '0', null, '41150410', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1203', '41150418', '樊继胜', '087885', '男', null, null, null, null, '123456', '23', '0', null, '41150418', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1204', '41150411', '李永军', '087886', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1205', '41150609', '杜大应', '087888', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1206', '41150413', '彭凯', '087889', '男', null, null, null, null, '123456', '23', '0', null, '41150413', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1207', '41150401', '马祥威', '087890', '男', null, null, null, null, '123456', '23', '0', null, '41150401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1208', '41150403', '米宏辉', '087891', '男', null, null, null, null, '123456', '23', '0', null, '41150403', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1209', '41150502', '丁锐', '087894', '男', null, null, null, null, '123456', '23', '0', null, '41150502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1210', '41150407', '杨贵友', '087897', '男', null, null, null, null, '123456', '23', '0', null, '41150407', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1211', '41150402', '李博', '087898', '男', null, null, null, null, '123456', '23', '0', null, '41150402', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1212', '41150404', '余波', '087899', '男', null, null, null, null, '123456', '23', '0', null, '41150404', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1213', '41150602', '王静', '087900', '男', null, null, null, null, '123456', '23', '0', null, '41150602', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1214', '41150412', '张翅飞', '087903', '男', null, null, null, null, '123456', '23', '0', null, '41150412', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1215', '41150401', '张永祥', '087906', '男', null, null, null, null, '123456', '23', '0', null, '41150401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1216', '41150407', '王杰', '087912', '男', null, null, null, null, '123456', '23', '0', null, '41150407', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1217', '41150202', '郑双汉', '087913', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1218', '41150401', '刘连锋', '087917', '男', null, null, null, null, '123456', '23', '0', null, '41150401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1219', '41150202', '梁进', '087920', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1220', '41151002', '王健', '087921', '男', null, null, null, null, '123456', '23', '0', null, '41151002', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1221', '41150413', '张夕武', '087922', '男', null, null, null, null, '123456', '23', '0', null, '41150413', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1222', '41150415', '岳坤', '087925', '男', null, null, null, null, '123456', '23', '0', null, '41150415', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1223', '411504', '雷良超', '087931', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1224', '41150111', '胡仕兵', '087933', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1225', '411504', '陈骞', '087934', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1226', '41150414', '孙明成', '087935', '男', null, null, null, null, '123456', '23', '0', null, '41150414', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1227', '41151003', '史万江', '087936', '男', null, null, null, null, '123456', '23', '0', null, '41151003', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1228', '41150410', '张文义', '087938', '男', null, null, null, null, '123456', '23', '0', null, '41150410', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1229', '41150404', '马世超', '087945', '男', null, null, null, null, '123456', '23', '0', null, '41150404', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1230', '4115120309', '张强', '087946', '男', null, null, null, null, '123456', '23', '0', null, '4115120309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1231', '41151203', '敖祖成', '087947', '男', null, null, null, null, '123456', '22', '0', null, '41151203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1232', '41150417', '吴文俊', '087948', '男', null, null, null, null, '123456', '23', '0', null, '41150417', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1233', '41150414', '李金胜', '087949', '男', null, null, null, null, '123456', '23', '0', null, '41150414', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1234', '41150104', '王胜中', '087950', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1235', '4115120501', '刘诗雨', '087955', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1236', '41150412', '严勇', '087957', '男', null, null, null, null, '123456', '23', '0', null, '41150412', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1237', '41150401', '邱艳红', '087959', '男', null, null, null, null, '123456', '23', '0', null, '41150401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1238', '41150403', '易思汉', '087960', '男', null, null, null, null, '123456', '23', '0', null, '41150403', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1239', '41150411', '仝研', '087964', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1240', '411505', '李志刚', '087965', '男', null, null, null, null, '123456', '22', '0', null, '411505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1241', '41150402', '常娟', '087973', '男', null, null, null, null, '123456', '23', '0', null, '41150402', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1242', '41150408', '胡洋', '087975', '男', null, null, null, null, '123456', '23', '0', null, '41150408', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1243', '41150303', '张云杰', '087976', '男', null, null, null, null, '123456', '23', '0', null, '41150303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1244', '411504', '王玉镁', '087978', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1245', '41150112', '王玮', '087979', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1246', '41150415', '梅皇东', '087980', '男', null, null, null, null, '123456', '23', '0', null, '41150415', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1247', '41150115', '李光友', '087981', '男', null, null, null, null, '123456', '23', '0', null, '41150115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1248', '41150106', '沈阳', '087988', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1249', '41150604', '张元礼', '087989', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1250', '41150405', '王河留', '087995', '男', null, null, null, null, '123456', '23', '0', null, '41150405', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1251', '41150415', '余勇', '087997', '男', null, null, null, null, '123456', '23', '0', null, '41150415', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1252', '411509', '鲁笑冰', '088000', '男', null, null, null, null, '123456', '22', '0', null, '411509', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1253', '41150413', '刘兵', '088003', '男', null, null, null, null, '123456', '23', '0', null, '41150413', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1254', '41150201', '陈强', '088007', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1255', '41150901', '屠峰', '088011', '男', null, null, null, null, '123456', '23', '0', null, '41150901', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1256', '41150903', '陈栋梁', 'CDL', '男', null, null, null, null, '123456', '23', '0', null, '41150903', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1257', '41150901', '邓晓阳', '088013', '男', null, null, null, null, '123456', '23', '0', null, '41150901', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1258', '41150105', '樊敬洋', '088021', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1259', '41150114', '刘彦', '088022', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1260', '41150902', '郑茂杰', '088026', '男', null, null, null, null, '123456', '23', '0', null, '41150902', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1261', '41150106', '吴超', '088029', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1262', '41150701', '许远伟', '088038', '男', null, null, null, null, '123456', '23', '0', null, '41150701', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1263', '41150703', '邱卫', '088040', '男', null, null, null, null, '123456', '23', '0', null, '41150703', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1264', '41150705', '付志军', '088041', '男', null, null, null, null, '123456', '23', '0', null, '41150705', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1265', '41150702', '杨勇', '088043', '男', null, null, null, null, '123456', '23', '0', null, '41150702', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1266', '41150703', '汤俊', '088048', '男', null, null, null, null, '123456', '23', '0', null, '41150703', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1267', '41150310', '陈兰兰', '088082', '男', null, null, null, null, '123456', '23', '0', null, '41150310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1268', '411503', '陈奇奂', '088121', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1269', '41150301', '胡应林', '088269', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1270', '41150113', '曹枝文', '088295', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1271', '41150308', '石海峰', '088301', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1272', '41150309', '张德伦', '088372', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1273', '411501', '吕红星', '088588', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1274', '411501', '陈宬', '088697', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1275', '411503', '曹远东', '088888', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1276', '41150506', '陈宁博', '185010', '男', null, null, null, null, '123456', '23', '0', null, '41150506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1277', '41150217', '杨先鹏', '185328', '男', null, null, null, null, '123456', '23', '0', null, '41150217', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1278', '41150303', '马雪雯', '185713', '男', null, null, null, null, '123456', '23', '0', null, '41150303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1279', '41150510', '胡术兵', '186036', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1280', '41150601', '臧勇', '186053', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1281', '4115120503', '马晓阳', '186063', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1282', '41150207', '朱小强', '186183', '男', null, null, null, null, '123456', '23', '0', null, '41150207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1283', '41150201', '冯媛婧', '186218', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1284', '4115120502', '屈劲松', '186227', '男', null, null, null, null, '123456', '23', '0', null, '4115120502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1285', '4115120503', '熊洪启', '186231', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1286', '41150407', '章建国', '186235', '男', null, null, null, null, '123456', '23', '0', null, '41150407', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1287', '4115120505', '严军辉', '186239', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1288', '4115120302', '谢昌盛', '186252', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1289', '4115120302', '余运强', '186253', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1290', '4115120504', '田磊', '186255', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1291', '4115120503', '王继华', '186256', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1292', '4115120503', '叶广龙', '186258', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1293', '4115120502', '韩涛', '186259', '男', null, null, null, null, '123456', '23', '0', null, '4115120502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1294', '4115120308', '郑大海', '186260', '男', null, null, null, null, '123456', '23', '0', null, '4115120308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1295', '4115120504', '陈勇', '186262', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-08-28 11:48:18', '0', '0');
INSERT INTO `employee` VALUES ('1296', '4115120504', '潘守先', '186263', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1297', '4115120503', '宋高峰', '186265', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1298', '4115120301', '王法兵', '186266', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1299', '41150309', '高杰', '186270', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1300', '4115120302', '李猛', '186271', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1301', '41150309', '夏玉宝', '186273', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1302', '41150703', '林华', '186275', '男', null, null, null, null, '123456', '23', '0', null, '41150703', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1303', '4115120503', '周明信', '186276', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1304', '4115120504', '孟凡强', '186277', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1305', '4115120307', '孙彦生', '186278', '男', null, null, null, null, '123456', '23', '0', null, '4115120307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1306', '4115120505', '赵大刚', '186279', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1307', '4115120504', '张兴', '186300', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1308', '4115120501', '马举', '186301', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1309', '4115120504', '郑正聪', '186302', '男', null, null, null, null, '123456', '23', '0', null, '4115120504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1310', '4115120503', '杨国远', '186303', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1311', '4115120505', '周有勋', '186306', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1312', '4115120306', '刘思勇', '186307', '男', null, null, null, null, '123456', '23', '0', null, '4115120306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1313', '41150608', '韩伟', '186309', '男', null, null, null, null, '123456', '23', '0', null, '41150608', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1314', '41150601', '陈玮东', '187531', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1315', '4115120505', '王龙翔', '186328', '男', null, null, null, null, '123456', '23', '0', null, '4115120505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1316', '41150104', '齐留波', '186932', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1317', '41150101', '叶长树', '186933', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1318', '41150107', '张善军', '186935', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1319', '41150110', '柴广应', '186936', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1320', '41150103', '章云豹', '186937', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1321', '41150114', '黄新生', '186938', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1322', '41150101', '陈金才', '186939', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1323', '41150114', '胡正喜', '186940', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1324', '41150104', '翁超', '186941', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1325', '41150114', '严兆前', '186942', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1326', '41150114', '张宽明', '186943', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1327', '41150201', '魏东', '186944', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1328', '41150102', '夏争春', '186945', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1329', '41150102', '汪守峰', '186946', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1330', '41150114', '乐玉斌', '186947', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1331', '41150101', '朱振林', '186948', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1332', '4115120303', '许家龙', '186949', '男', null, null, null, null, '123456', '23', '0', null, '4115120303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1333', '41150201', '李国胜', '186950', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1334', '41150112', '李洁', '186952', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1335', '41150102', '刘永清', '186953', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1336', '41150105', '赵家友', '186954', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1337', '411503', '王国梧', '186955', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1338', '41150103', '李玉顺', '186956', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1339', '41150103', '方应元', '186957', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1340', '41150202', '邢百录', '186958', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1341', '4115011401', '司学清', '186959', '男', null, null, null, null, '123456', '23', '0', null, '4115011401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1342', '41150201', '杨东兵', '186960', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1343', '41150211', '邢志涛', '186961', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1344', '41150114', '高纲要', '186962', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1345', '41150104', '黄凤阳', '186964', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1346', '41150101', '詹厚东', '186966', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1347', '41150105', '汪栋梁', '186967', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1348', '4115120313', '张景华', '186969', '男', null, null, null, null, '123456', '23', '0', null, '4115120313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1349', '4115120306', '邓强', '186970', '男', null, null, null, null, '123456', '23', '0', null, '4115120306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1350', '41150105', '罗厚文', '186971', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1351', '41150213', '王龙', '186972', '男', null, null, null, null, '123456', '23', '0', null, '41150213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1352', '41151202', '丁政', '186974', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1353', '41150106', '秦悦', '186975', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1354', '41150202', '李凤梅', '186976', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1355', '41150114', '张尧', '186977', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1356', '41150207', '汤兴云', '186982', '男', null, null, null, null, '123456', '23', '0', null, '41150207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1357', '41150101', '王润泽', '186983', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1358', '41150308', '龚磊', '186985', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1359', '41150214', '李巍', '186988', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1360', '41150114', '董军', '186989', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1361', '41150214', '董雪松', '186990', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1362', '41150214', '刘先圆', '186991', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1363', '41150214', '王瑞俊', '186992', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1364', '41150103', '马建新', '186995', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1365', '41150114', '唐晓黎', '186996', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1366', '41150111', '赵明亚', '186997', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1367', '41150112', '陈剑朝', '186998', '男', null, null, null, null, '123456', '23', '0', null, '41150112', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1368', '41150211', '宋玮', '186999', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1369', '41150110', '唐显保', '187000', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1370', '41150214', '李龙', '187001', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1371', '41151202', '周双星', '187002', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1372', '41150201', '朱敏', '187006', '男', null, null, null, null, '123456', '23', '0', null, '41150201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1373', '41150214', '冷强', '187007', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1374', '41150211', '李亚东', '187008', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1375', '41150211', '岳素梅', '187009', '男', null, null, null, null, '123456', '23', '0', null, '41150211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1376', '41150114', '袁国栋', '187010', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1377', '41150214', '李祥洋', '187011', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1378', '41150114', '张强', '187012', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1379', '41151203', '代凌云', '187013', '男', null, null, null, null, '123456', '22', '0', null, '41151203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1380', '41150110', '拓斌', '187015', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1381', '41150114', '王宏健', '187016', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1382', '41150216', '胡婉倩', '187017', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1383', '41150215', '张娟', '187018', '男', null, null, null, null, '123456', '23', '0', null, '41150215', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1384', '41150202', '孔凡林', '187019', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1385', '41150216', '吴振华', '187021', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1386', '41150202', '苏晓东', '187022', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1387', '41150114', '朱刚', '187025', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1388', '41150102', '周昌军', '187026', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1389', '41150103', '刘太平', '187027', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1390', '41150114', '赵伟', '187028', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1391', '41150111', '王志远', '187031', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1392', '41150203', '文峰', '187032', '男', null, null, null, null, '123456', '23', '0', null, '41150203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1393', '41150214', '刘庆', '187036', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1394', '41150309', '李首创', '187037', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1395', '41150214', '谢焕安', '187038', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1396', '41150208', '余成亮', '187039', '男', null, null, null, null, '123456', '23', '0', null, '41150208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1397', '41150203', '袁军峰', '187046', '男', null, null, null, null, '123456', '23', '0', null, '41150203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1398', '411502', '官慧', '187050', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1399', '41150214', '朱啸宇', '187051', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1400', '41150205', '吕春辉', '187053', '男', null, null, null, null, '123456', '23', '0', null, '41150205', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1401', '41150205', '李绪涛', '187055', '男', null, null, null, null, '123456', '23', '0', null, '41150205', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1402', '41150212', '刘琼', '187056', '男', null, null, null, null, '123456', '23', '0', null, '41150212', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1403', '41150209', '刘奇辉', '187057', '男', null, null, null, null, '123456', '23', '0', null, '41150209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1404', '41150209', '张良', '187058', '男', null, null, null, null, '123456', '23', '0', null, '41150209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1405', '41150208', '张进', '187059', '男', null, null, null, null, '123456', '23', '0', null, '41150208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1406', '41150204', '向晨曦', '187060', '男', null, null, null, null, '123456', '23', '0', null, '41150204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1407', '41150207', '罗家辉', '187062', '男', null, null, null, null, '123456', '23', '0', null, '41150207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1408', '41150203', '胡华中', '187063', '男', null, null, null, null, '123456', '23', '0', null, '41150203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1409', '41150208', '王泽', '187065', '男', null, null, null, null, '123456', '23', '0', null, '41150208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1410', '41150110', '汤瑞', '187066', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1411', '4115120307', '张涛', '187067', '男', null, null, null, null, '123456', '23', '0', null, '4115120307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1412', '41150115', '吴琼', '187068', '男', null, null, null, null, '123456', '23', '0', null, '41150115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1413', '4115120312', '吴桂华', '187069', '男', null, null, null, null, '123456', '23', '0', null, '4115120312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1414', '41150113', '黄清梅', '187070', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1415', '41150114', '董纯忠', '187071', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1416', '41150101', '何剑', '187073', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1417', '41150114', '许岚', '187074', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1418', '41150106', '刘涛', '187075', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1419', '41150111', '郭曼莉', '187076', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1420', '41150114', '秦旭', '187077', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1421', '41150101', '张潮', '187078', '男', '', null, '', null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1422', '4115120301', '董冠兵', '187079', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1423', '41150106', '王亚贞', '187080', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1424', '41150103', '张玲', '187081', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1425', '41150107', '张珣', '187086', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1426', '41150114', '赵子晨', '187087', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1427', '41150105', '谢吉平', '187099', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1428', '41150114', '黄聪', '187110', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1429', '41150214', '马学聃', '187167', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1430', '41150214', '尤政', '187168', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1431', '41150210', '刘刚', '187169', '男', null, null, null, null, '123456', '23', '0', null, '41150210', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1432', '41150216', '徐时光', '187170', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1433', '41150204', '胡建辉', '187171', '男', null, null, null, null, '123456', '23', '0', null, '41150204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1434', '41150110', '曹雪', '187187', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1435', '41150206', '刘晓萌', '187188', '男', null, null, null, null, '123456', '23', '0', null, '41150206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1436', '411505', '杨作山', '187331', '男', null, null, null, null, '123456', '22', '0', null, '411505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1437', '41150609', '孙玉青', '187333', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1438', '41150601', '张腾', '187335', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1439', '41150502', '张俊', '187336', '男', null, null, null, null, '123456', '23', '0', null, '41150502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1440', '41150609', '赵陈', '187337', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1441', '41150609', '谭辉', '187338', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1442', '41150502', '周兴', '187339', '男', null, null, null, null, '123456', '23', '0', null, '41150502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1443', '4115120501', '张兰兰', '187351', '男', null, null, null, null, '123456', '23', '0', null, '4115120501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1444', '4115120502', '杨中斌', '187353', '男', null, null, null, null, '123456', '23', '0', null, '4115120502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1445', '41150510', '张胜', '187355', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1446', '41150510', '肖博', '187356', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1447', '41150801', '黄先宏', '187363', '男', null, null, null, null, '123456', '23', '0', null, '41150801', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1448', '41150609', '冯登刚', '187366', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1449', '41150510', '刘景龙', '187368', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1450', '41150607', '钱慧慧', '187369', '男', null, null, null, null, '123456', '23', '0', null, '41150607', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1451', '41150609', '熊辉', '187370', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1452', '41150417', '李晓春', '187376', '男', null, null, null, null, '123456', '23', '0', null, '41150417', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1453', '41150416', '汪重阳', '187379', '男', null, null, null, null, '123456', '23', '0', null, '41150416', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1454', '41150601', '黄文辉', '187380', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1455', '411505', '汪树才', '187388', '男', null, null, null, null, '123456', '22', '0', null, '411505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1456', '4115120305', '周宝元', '187396', '男', null, null, null, null, '123456', '23', '0', null, '4115120305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1457', '41150401', '向强', '187398', '男', null, null, null, null, '123456', '23', '0', null, '41150401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1458', '411508', '钟一鸣', '187399', '男', null, null, null, null, '123456', '22', '0', null, '411508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1459', '41150801', '王夕', '187428', '男', null, null, null, null, '123456', '23', '0', null, '41150801', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1460', '41150805', '梅凯', '187408', '男', null, null, null, null, '123456', '23', '0', null, '41150805', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1461', '41150802', '李家国', '187409', '男', null, null, null, null, '123456', '23', '0', null, '41150802', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1462', '411508', '朱勇', '187426', '男', null, null, null, null, '123456', '22', '0', null, '411508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1463', '41150501', '吴本文', '187444', '男', null, null, null, null, '123456', '23', '0', null, '41150501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1464', '41150507', '彭怀磊', '187455', '男', null, null, null, null, '123456', '23', '0', null, '41150507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1465', '41150511', '程坤', '187456', '男', null, null, null, null, '123456', '23', '0', null, '41150511', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1466', '41150504', '张志立', '187460', '男', null, null, null, null, '123456', '23', '0', null, '41150504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1467', '41150501', '许阳', '187463', '男', null, null, null, null, '123456', '23', '0', null, '41150501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1468', '41150505', '余进博', '187466', '男', null, null, null, null, '123456', '23', '0', null, '41150505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1469', '41150506', '卢宝石', '187467', '男', null, null, null, null, '123456', '23', '0', null, '41150506', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1470', '41150510', '艾立斯', '187469', '男', null, null, null, null, '123456', '23', '0', null, '41150510', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1471', '41150505', '杨猛', '187477', '男', null, null, null, null, '123456', '23', '0', null, '41150505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1472', '41150508', '杨宇晶', '187480', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1473', '41150504', '王玉静', '187481', '男', null, null, null, null, '123456', '23', '0', null, '41150504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1474', '41150503', '吕鑫', '187487', '男', null, null, null, null, '123456', '23', '0', null, '41150503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1475', '41150501', '陈露露', '187488', '男', null, null, null, null, '123456', '23', '0', null, '41150501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1476', '411505', '熊传鑫', '187496', '男', null, null, null, null, '123456', '22', '0', null, '411505', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1477', '41150503', '汪柳', '187499', '男', null, null, null, null, '123456', '23', '0', null, '41150503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1478', '41150508', '吴芳', '187500', '男', null, null, null, null, '123456', '23', '0', null, '41150508', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1479', '41150312', '王志刚', '187506', '男', null, null, null, null, '123456', '23', '0', null, '41150312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1480', '41150304', '李永斌', '187508', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1481', '41150609', '丁姣姣', '187517', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1482', '41150609', '郭智海', '187518', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1483', '41150601', '孟继玲', '187520', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1484', '41150603', '喻涛', '187555', '男', null, null, null, null, '123456', '23', '0', null, '41150603', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1485', '41150609', '王双双', '187567', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1486', '41150604', '张东', '187598', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1487', '41150604', '刘倩妹', '187599', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1488', '41150416', '胡庆忠', '187600', '男', null, null, null, null, '123456', '23', '0', null, '41150416', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1489', '41150607', '杨建卡', '187601', '男', null, null, null, null, '123456', '23', '0', null, '41150607', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1490', '41150411', '陈凤阳', '187631', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1491', '41150407', '冯东', '187632', '男', null, null, null, null, '123456', '23', '0', null, '41150407', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1492', '41150110', '张璠', '187636', '男', null, null, null, null, '123456', '23', '0', null, '41150110', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1493', '41150401', '郭燕舞', '187637', '男', null, null, null, null, '123456', '23', '0', null, '41150401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1494', '41150417', '刘水', '187638', '男', null, null, null, null, '123456', '23', '0', null, '41150417', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1495', '41150411', '严壮', '187639', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1496', '41150414', '马慧', '187651', '男', null, null, null, null, '123456', '23', '0', null, '41150414', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1497', '41150102', '张志远', '187656', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1498', '41150314', '吕智勇', '187653', '男', null, null, null, null, '123456', '23', '0', null, '41150314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1499', '4115120301', '徐勇', '187660', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1500', '41150409', '马琳琳', '187661', '男', null, null, null, null, '123456', '23', '0', null, '41150409', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1501', '41150411', '肖云', '187667', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1502', '41150504', '屈磊', '187668', '男', null, null, null, null, '123456', '23', '0', null, '41150504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1503', '41150411', '韩传斌', '187669', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1504', '411504', '李学富', '187672', '男', null, null, null, null, '123456', '22', '0', null, '411504', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1505', '4115120503', '杜丹', 'DD', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1506', '41150402', '李颖志', '187679', '男', null, null, null, null, '123456', '23', '0', null, '41150402', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1507', '41150702', '闫潇雅', '187680', '男', null, null, null, null, '123456', '23', '0', null, '41150702', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1508', '41150511', '熊宗祥', '187681', '男', null, null, null, null, '123456', '23', '0', null, '41150511', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1509', '41150412', '张涛', '187682', '男', null, null, null, null, '123456', '23', '0', null, '41150412', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1510', '41150403', '郭凤鸣', '187683', '男', null, null, null, null, '123456', '23', '0', null, '41150403', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1511', '4115120304', '李伟', '187685', '男', null, null, null, null, '123456', '23', '0', null, '4115120304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1512', '41150408', '陈蕾', '187686', '男', null, null, null, null, '123456', '23', '0', null, '41150408', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1513', '41150411', '张伟', '187687', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1514', '41150411', '刘元波', '187688', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1515', '41150405', '张光双', '187689', '男', null, null, null, null, '123456', '23', '0', null, '41150405', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1516', '41151201', '李东生', '187690', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1517', '41150418', '杨小齐', '187691', '男', null, null, null, null, '123456', '23', '0', null, '41150418', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1518', '41150401', '胡克玲', '187692', '男', null, null, null, null, '123456', '23', '0', null, '41150401', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1519', '41150403', '刘娇', '187695', '男', null, null, null, null, '123456', '23', '0', null, '41150403', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1520', '41150402', '高健', '187696', '男', null, null, null, null, '123456', '23', '0', null, '41150402', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1521', '41150415', '袁旭霞', '187697', '男', null, null, null, null, '123456', '23', '0', null, '41150415', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1522', '41150411', '徐力', '187698', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1523', '41150405', '黄婉婉', '187699', '男', null, null, null, null, '123456', '23', '0', null, '41150405', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1524', '41150411', '彭喆', '187700', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1525', '41150411', '张欢', '187701', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1526', '41150407', '史正源', '187702', '男', null, null, null, null, '123456', '23', '0', null, '41150407', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1527', '41150411', '许浩', '187703', '男', null, null, null, null, '123456', '23', '0', null, '41150411', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1528', '41150418', '师远', '187705', '男', null, null, null, null, '123456', '23', '0', null, '41150418', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1529', '41150414', '殷学凤', '187707', '男', null, null, null, null, '123456', '23', '0', null, '41150414', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1530', '41150410', '陈权', '187708', '男', null, null, null, null, '123456', '23', '0', null, '41150410', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1531', '41150403', '罗奇', '187709', '男', null, null, null, null, '123456', '23', '0', null, '41150403', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1532', '41150406', '张海涛', '187710', '男', null, null, null, null, '123456', '23', '0', null, '41150406', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1533', '41150904', '孔维兵', '187751', '男', null, null, null, null, '123456', '23', '0', null, '41150904', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1534', '41150903', '左小翠', '187753', '男', null, null, null, null, '123456', '23', '0', null, '41150903', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1535', '41150901', '陈威铭', '187755', '男', null, null, null, null, '123456', '23', '0', null, '41150901', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1536', '41150904', '吕锡亮', '187756', '男', null, null, null, null, '123456', '23', '0', null, '41150904', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1537', '41150901', '周倩', '187757', '男', null, null, null, null, '123456', '23', '0', null, '41150901', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1538', '41150902', '任文杰', '187758', '男', null, null, null, null, '123456', '23', '0', null, '41150902', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1539', '41150901', '刘骏', '187759', '男', null, null, null, null, '123456', '23', '0', null, '41150901', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1540', '411509', '丁振胜', '187777', '男', null, null, null, null, '123456', '22', '0', null, '411509', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1541', '41150704', '尚亮', '187801', '男', null, null, null, null, '123456', '23', '0', null, '41150704', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1542', '411507', '马婕', '187807', '男', null, null, null, null, '123456', '22', '0', null, '411507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1543', '411507', '姜旺雪', '187808', '男', null, null, null, null, '123456', '22', '0', null, '411507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1544', '41150302', '王大顺', '187809', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1545', '41150704', '刘勤', '187815', '男', null, null, null, null, '123456', '23', '0', null, '41150704', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1546', '41150704', '李明', '187816', '男', null, null, null, null, '123456', '23', '0', null, '41150704', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1547', '41150702', '王美兰', '187820', '男', null, null, null, null, '123456', '23', '0', null, '41150702', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1548', '41151001', '刘媛', '187861', '男', null, null, null, null, '123456', '23', '0', null, '41151001', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1549', '41151001', '申留杰', '187862', '男', null, null, null, null, '123456', '23', '0', null, '41151001', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1550', '41151002', '明星', '187863', '男', null, null, null, null, '123456', '23', '0', null, '41151002', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1551', '41151004', '钱刘元', '187869', '男', null, null, null, null, '123456', '23', '0', null, '41151004', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1552', '41150302', '高建', '187872', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1553', '41150308', '洪翔', '187873', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1554', '41150306', '李永昌', '187875', '男', null, null, null, null, '123456', '23', '0', null, '41150306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1555', '411503', '汪传峰', '187876', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1556', '41150313', '万书琴', '187877', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1557', '41150308', '王富强', '187878', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1558', '41150307', '肖园', '187879', '男', null, null, null, null, '123456', '23', '0', null, '41150307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1559', '411503', '陈靖', '187880', '男', null, null, null, null, '123456', '22', '0', null, '411503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1560', '41150308', '陈政', '187881', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1561', '41150308', '吴涛', '187883', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1562', '41150303', '黄晓莉', '187885', '男', null, null, null, null, '123456', '23', '0', null, '41150303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1563', '41150306', '杨新麟', '187886', '男', null, null, null, null, '123456', '23', '0', null, '41150306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1564', '41150302', '董雷', '187887', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1565', '41150304', '易志国', '187890', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1566', '41150301', '陈波平', '187891', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1567', '41150301', '陈连春', '187892', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1568', '4115120304', '张勇', '187893', '男', null, null, null, null, '123456', '23', '0', null, '4115120304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1569', '41150313', '邓小娟', '187896', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1570', '41150308', '黄蕾娜', '187897', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1571', '41150311', '张蕾', '187898', '男', null, null, null, null, '123456', '23', '0', null, '41150311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1572', '41150313', '雷军', '187899', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1573', '41150308', '郑新', '187900', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1574', '4115120311', '贺成亮', '187901', '男', null, null, null, null, '123456', '23', '0', null, '4115120311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1575', '41150308', '张国修', '187902', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1576', '41150301', '魏剑军', '187903', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1577', '41150302', '黄闽', '187905', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1578', '41150302', '黄湘豫', '187906', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1579', '41150302', '邱宝利', '187907', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1580', '41150301', '张萌', '187908', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1581', '41150311', '郑会艳', '187909', '男', null, null, null, null, '123456', '23', '0', null, '41150311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1582', '41150309', '刘云龙', '187910', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1583', '41150307', '张若愚', '187911', '男', null, null, null, null, '123456', '23', '0', null, '41150307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1584', '41150309', '王磊', '187912', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1585', '41150308', '林峰', '187915', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1586', '41150301', '江涛', '187916', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1587', '41150304', '马晓辉', '187917', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1588', '41150309', '张玉麟', '187920', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1589', '41150309', '邹宁波', '187921', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1590', '41150309', '陈青松', '187922', '男', null, null, null, null, '123456', '23', '0', null, '41150309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1591', '41150304', '蒋坤', '187923', '男', null, null, null, null, '123456', '23', '0', null, '41150304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1592', '41150308', '秦凯', '187924', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1593', '41150302', '严晟', '187925', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1594', '41150313', '丁伯玉', '187926', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1595', '41150308', '李东阳', '187927', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1596', '41151203', '张经纬', '187928', '男', null, null, null, null, '123456', '22', '0', null, '41151203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1597', '41150302', '魏赟', '187929', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1598', '41150216', '李晖', '188009', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1599', '41150111', '庞莉', '188023', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1600', '41150202', '李晶晶', '188086', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1601', '41150313', '陈瑞', '188299', '男', null, null, null, null, '123456', '23', '0', null, '41150313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1602', '41150301', '毛彬彬', '188901', '男', null, null, null, null, '123456', '23', '0', null, '41150301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1603', '41150308', '钱如意', '187931', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1604', '4115120301', '詹明达', '189479', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1605', '4115120307', '王宁', '189573', '男', null, null, null, null, '123456', '23', '0', null, '4115120307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1606', '41150507', '林超', '087874', '男', null, null, null, null, '123456', '23', '0', null, '41150507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1607', '41150204', '陈静', '187061', '男', null, null, null, null, '123456', '23', '0', null, '41150204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1608', '41150106', '陈昆', '187098', '男', null, null, null, null, '123456', '23', '0', null, '41150106', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1609', '41150601', '陈亚男', '187377', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1610', '41150805', '段肇飞', '187433', '男', null, null, null, null, '123456', '23', '0', null, '41150805', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1611', '411507', '高祥', '187810', '男', null, null, null, null, '123456', '22', '0', null, '411507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1612', '41151004', '郝俊', '187839', '男', null, null, null, null, '123456', '23', '0', null, '41151004', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1613', '41150103', '胡树伟', 'HSW', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1614', '41150702', '姜旺雪', 'JWX', '男', null, null, null, null, '123456', '23', '0', null, '41150702', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1615', '41150805', '李鹏', 'LP', '男', null, null, null, null, '123456', '23', '0', null, '41150805', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1616', '41150804', '鲁艺', 'LY', '男', null, null, null, null, '123456', '23', '0', null, '41150804', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1617', '41150609', '刘永美', 'LYM', '男', null, null, null, null, '123456', '23', '0', null, '41150609', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1618', '41150805', '刘自辉', '187410', '男', null, null, null, null, '123456', '23', '0', null, '41150805', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1619', '41150702', '秦佩佩', '187802', '男', null, null, null, null, '123456', '23', '0', null, '41150702', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1620', '41150803', '任晓霏', 'RXF', '男', null, null, null, null, '123456', '23', '0', null, '41150803', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1621', '41150214', '宋华龙', '187052', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1622', '41150601', '盛楠', 'SN', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1623', '41150601', '唐巍', '187378', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1624', '41150802', '汪安龙', '187400', '男', null, null, null, null, '123456', '23', '0', null, '41150802', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1625', '41150801', '熊传宇', '187416', '男', null, null, null, null, '123456', '23', '0', null, '41150801', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1626', '41150601', '徐久森', '187373', '男', null, null, null, null, '123456', '23', '0', null, '41150601', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1627', '41150602', '夏磊', 'XL', '男', null, null, null, null, '123456', '23', '0', null, '41150602', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1628', '41150302', '熊卫洋', '086512', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1629', '41150416', '余海', '187706', '男', null, null, null, null, '123456', '23', '0', null, '41150416', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1630', '41150302', '杨磊', '187930', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1631', '41150604', '张丹丹', 'ZDD', '男', null, null, null, null, '123456', '23', '0', null, '41150604', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1632', '411507', '周娇', '187803', '男', null, null, null, null, '123456', '22', '0', null, '411507', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1633', '411509', '陈栋梁', '088012', '男', null, null, null, null, '123456', '22', '0', null, '411509', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1634', '41151205', '秦天', 'QT', '男', null, null, null, null, '123456', '22', '0', null, '41151205', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1635', '411502', 'test', 'TEST', '男', null, null, null, null, '123456', '22', '0', null, '411502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1636', '41150105', '马涛', '187091', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1637', '41150101', '姜锋', '084987', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1638', '41150202', '丁友峰', '187179', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1639', '41150206', '李永强', '084708', '男', null, null, null, null, '123456', '23', '0', null, '41150206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1640', '4115120304', '李磊', 'LL', '男', null, null, null, null, '123456', '23', '0', null, '4115120304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1641', '4115120310', '缪青山', '186286', '男', null, null, null, null, '123456', '23', '0', null, '4115120310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1642', '4115120310', '苏爱民', '186779', '男', null, null, null, null, '123456', '23', '0', null, '4115120310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1643', '4115120311', '高仰', '186237', '男', null, null, null, null, '123456', '23', '0', null, '4115120311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1644', '4115120304', '张朕', '186121', '男', null, null, null, null, '123456', '23', '0', null, '4115120304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1645', '411501', '郑应伟', '186951', '男', null, null, null, null, '123456', '22', '0', null, '411501', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1646', '4115120302', '王新国', '187176', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1647', '4115120302', '李海涛', '186272', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1648', '4115120302', '陈其', '186029', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1649', '41151203', '袁付彬', '187177', '男', null, null, null, null, '123456', '22', '0', null, '41151203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1650', '4115120305', '张庆', '186621', '男', null, null, null, null, '123456', '23', '0', null, '4115120305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1651', '41151204', '法制支队01', '法制支队01', '男', null, null, null, null, '123456', '22', '0', null, '41151204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1652', '41151204', '法制支队02', '法制支队02', '男', null, null, null, null, '123456', '22', '0', null, '41151204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1653', '41151204', '法制支队03', '法制支队03', '男', null, null, null, null, '123456', '22', '0', null, '41151204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1654', '41151204', '法制支队04', '法制支队04', '男', null, null, null, null, '123456', '22', '0', null, '41151204', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1655', '41150206', '袁航', '087246', '男', null, null, null, null, '123456', '23', '0', null, '41150206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1656', '41150105', '谢文园', '187093', '男', null, null, null, null, '123456', '23', '0', null, '41150105', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1657', '41150103', '白海涛', '086443', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1658', '4115120307', '张亮', '187023', '男', null, null, null, null, '123456', '23', '0', null, '4115120307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1659', '4115120312', '陈海香', '186238', '男', null, null, null, null, '123456', '23', '0', null, '4115120312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1660', '4115120312', '高辉', '186678', '男', null, null, null, null, '123456', '23', '0', null, '4115120312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1661', '4115120301', '徐世伟', '186828', '男', null, null, null, null, '123456', '23', '0', null, '4115120301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1662', '4115120308', '霍中华', '086670', '男', null, null, null, null, '123456', '23', '0', null, '4115120308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1663', '4115120308', '徐新平', '186688', '男', null, null, null, null, '123456', '23', '0', null, '4115120308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1664', '4115120308', '李长俊', '087952', '男', null, null, null, null, '123456', '23', '0', null, '4115120308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1665', '41151205', '许文刚', '087928', '男', null, null, null, null, '123456', '22', '0', null, '41151205', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1666', '411510', '于培', '086401', '男', '', null, '', null, '123456', '22', '0', null, '411510', '1', '2017-08-28 11:41:20', '0', '0');
INSERT INTO `employee` VALUES ('1667', '4115120303', '徐竞', '188090', '男', null, null, null, null, '123456', '23', '0', null, '4115120303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1668', '4115120303', '齐文伟', '086920', '男', null, null, null, null, '123456', '23', '0', null, '4115120303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1669', '4115120303', '白杨', '186026', '男', null, null, null, null, '123456', '23', '0', null, '4115120303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1670', '4115120503', '张润峰', '186190', '男', null, null, null, null, '123456', '23', '0', null, '4115120503', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1671', '41151201', '卢海洋', '086879', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1672', '41150113', '杨加宝', '187083', '男', null, null, null, null, '123456', '23', '0', null, '41150113', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1673', '41150114', '郭天顺', '187085', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1674', '411518', '李元红', '085355', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1675', '4115', '胡圣仁', '087357', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1676', '4115', '罗阳', '186035', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1677', '41150701', '让志清', '086622', '男', null, null, null, null, '123456', '23', '0', null, '41150701', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1678', '4115', '郑力镜', '186251', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1679', '4115', '余波', '085752', '男', '', null, '', null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1680', '4115', '周爽', '087744', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1681', '4115121201', '余尚凡', '186065', '男', null, null, null, null, '123456', '23', '0', null, '4115121201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1682', '4115121201', '谭平山', '087991', '男', null, null, null, null, '123456', '23', '0', null, '4115121201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1683', '411512120101', '石生文', '086263', '男', null, null, null, null, '123456', '23', '0', null, '411512120101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1684', '411512120101', '闵玥龙', '186052', '男', null, null, null, null, '123456', '23', '0', null, '411512120101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1685', '411512120102', '王明才', '087493', '男', null, null, null, null, '123456', '23', '0', null, '411512120102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1686', '411512120104', '周勇名', '186037', '男', null, null, null, null, '123456', '23', '0', null, '411512120104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1687', '411512120101', '代晖阳', '187671', '男', null, null, null, null, '123456', '23', '0', null, '411512120101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1688', '411512120102', '董诗春', '087712', '男', null, null, null, null, '123456', '23', '0', null, '411512120102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1689', '411512120103', '李传伟', '087954', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1690', '41151201', '李平平', '86558', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1691', '41151201', '程勇', '86636', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1692', '41151201', '白慧', '86626', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1693', '41151201', '毕建国', '186032', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1694', '41151201', '陈静', '086881', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1695', '411512120103', '乔荣玺', '086286', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1696', '411512120103', '尹俊', '087552', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1697', '411512120103', '李士伟', '086235', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1698', '411512120103', '李国平', '087302', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1699', '411512120103', '纪烨骁', '186370', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1700', '411512120103', '邓伟', '001-DW', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1701', '411512120103', '李博', '002-LB', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1702', '411512120103', '孙安', '003-SA', '男', null, null, null, null, '123456', '23', '0', null, '411512120103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1703', '41150502', '段国成', '087822', '男', null, null, null, null, '123456', '23', '0', null, '41150502', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1704', '41151203', '吴军', '086412', '男', null, null, null, null, '123456', '22', '0', null, '41151203', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1705', '4115', '赵军', '086357', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1706', '4115', '万程', '186632', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1707', '41150107', '王宏志', '086212', '男', null, null, null, null, '123456', '23', '0', null, '41150107', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1708', '41150102', '刘海燕', '187082', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1709', '41150102', '毛永德', '086411', '男', null, null, null, null, '123456', '23', '0', null, '41150102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1710', '41150114', '牛惠民', '187088', '男', null, null, null, null, '123456', '23', '0', null, '41150114', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1711', '41150308', '朱建明', '187918', '男', null, null, null, null, '123456', '23', '0', null, '41150308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1712', '41150111', '蔡伟', '087135', '男', null, null, null, null, '123456', '23', '0', null, '41150111', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1713', '41150101', '王幼成', '187312', '男', null, null, null, null, '123456', '23', '0', null, '41150101', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1714', '41150104', '李保军', '186257', '男', null, null, null, null, '123456', '23', '0', null, '41150104', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1715', '41151211', '张秀闻', '086859', '男', null, null, null, null, '123456', '22', '0', null, '41151211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1716', '41151211', '丁相伟', '186061', '男', null, null, null, null, '123456', '22', '0', null, '41151211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1717', '41151211', '王海霞', '186118', '男', null, null, null, null, '123456', '22', '0', null, '41151211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1718', '41151211', '丁国胜', '186280', '男', null, null, null, null, '123456', '22', '0', null, '41151211', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1719', '41151210', '吴明飞', '186356', '男', null, null, null, null, '123456', '22', '0', null, '41151210', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1720', '41151210', '蔡政', '087490', '男', null, null, null, null, '123456', '22', '0', null, '41151210', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1721', '41151209', '李钢', '84839', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1722', '41151209', '李国宏', '186228', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1723', '41151209', '柳国钧', '87130', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1724', '41151209', '李耀', '86986', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1725', '41151209', '谷志刚', '186225', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1726', '41151209', '李春明', '086469', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1727', '41151209', '李明安', '86967', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1728', '41151209', '孔正', 'KZ', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1729', '41151209', '陈耀江', '186226', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1730', '41151209', '陈自航', '187072', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1731', '41151209', '陈阳', '87399', '男', null, null, null, null, '123456', '22', '0', null, '41151209', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1732', '41151208', '胡庆', '086106', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1733', '41151208', '黄海', '087998', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1734', '41151208', '杨冰', '087164', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1735', '41151208', '闫仁堂', '086885', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1736', '41151208', '曹红', '086705', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1737', '41151208', '王浩', '086323', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1738', '41151208', '王祥志', '186690', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1739', '41151208', '叶远林', '186030', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1740', '41151208', '王道胜', '087769', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1741', '41151208', '杨森', '087398', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1742', '41151208', '赵薪博', '086361', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1743', '41151208', '储诚宏', '086569', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1744', '41151208', '朱扬', '086378', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1745', '41151208', '徐涛', '086981', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1746', '41151208', '陈鑫', '087127', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1747', '41151208', '左尚雁', '087956', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1748', '41151208', '王景秀', '086110', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1749', '41151208', '李新华', '188999', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1750', '41151208', '李洁', '086435', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1751', '4115120304', '张永军', '186963', '男', null, null, null, null, '123456', '23', '0', null, '4115120304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1752', '41150103', '刘大伟', '123456', '男', null, null, null, null, '123456', '23', '0', null, '41150103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1753', '4115120302', '聂俊龙', '001', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1754', '4115120302', '薛翔天', '002', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1755', '4115120302', '何勇霖', '003', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1756', '4115120305', '葛楠', '004', '男', null, null, null, null, '123456', '23', '0', null, '4115120305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1757', '4115120302', '李东峻', '005', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1758', '4115120302', '刘奥远', '006', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1759', '4115120306', '左世文', '0909', '男', null, null, null, null, '123456', '23', '0', null, '4115120306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1760', '4115120306', '涂小亮', '008', '男', null, null, null, null, '123456', '23', '0', null, '4115120306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1761', '4115120302', '暴　雷', '009', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1762', '4115120306', '赵超群', '010', '男', null, null, null, null, '123456', '23', '0', null, '4115120306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1763', '4115120305', '汪  岩', '011', '男', null, null, null, null, '123456', '23', '0', null, '4115120305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1764', '4115120305', '潘  坤', '012', '男', null, null, null, null, '123456', '23', '0', null, '4115120305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1765', '41151004', '贺艳', '187858', '男', null, null, null, null, '123456', '23', '0', null, '41151004', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1766', '41151202', '李新功', '187358', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1767', '41151202', '程健', '186979', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1768', '41151202', '赵犇', '186978', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1769', '41151202', '刘波', '189550', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1770', '41151202', '李晔晖', '087924', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1771', '41151202', '鄢思江', '186980', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1772', '41151202', '金培住', '186993', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1773', '41151202', '胡四凯', '086421', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1774', '41151202', '李世文', '187020', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1775', '41151202', '刘欢', '187003', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1776', '41151202', '林红', '187005', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1777', '41151202', '罗长培', '187662', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1778', '41151202', '李安', '187359', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1779', '41151202', '黄和平', '087168', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1780', '41151202', '李明辉', '087370', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1781', '41151202', '余志宗', '087944', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1782', '41151202', '喻波', '187665', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1783', '41151202', '王杨', '186189', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1784', '41151202', '朱成磊', '187663', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1785', '41151202', '郑诚', '189085', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1786', '411518', '邢磊', '110', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1787', '41151803', '赵书金', '085533', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1788', '41151822', '魏继贤', '189386', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1789', '41151822', '张继兵', '189581', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1790', '41151822', '王军', '189531', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1791', '41151822', '付树云', '189540', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1792', '41151822', '彭磊', '189397', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1793', '41151822', '房涛', '189470', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1794', '41151824', '张海', '189527', '男', null, null, null, null, '123456', '23', '0', null, '41151824', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1795', '41151824', '余洋', '189478', '男', null, null, null, null, '123456', '23', '0', null, '41151824', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1796', '41151822', '王俊杰', '189562', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1797', '41151838', '李清', '085590', '男', null, null, null, null, '123456', '23', '0', null, '41151838', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1798', '41151838', '蒋启运', '189483', '男', null, null, null, null, '123456', '23', '0', null, '41151838', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1799', '41151838', '李太超', '189490', '男', null, null, null, null, '123456', '23', '0', null, '41151838', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1800', '41151801', '赵强', '085361', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1801', '41151801', '赵勇', '085451', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1802', '41150216', '李晖', '188099', '男', null, null, null, null, '123456', '23', '0', null, '41150216', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1803', '41151801', '周宗伟', '189591', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1804', '41151801', '刘慧娟', '189509', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1805', '41151801', '周亚明', '085615', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1806', '41151805', '徐继明', '085358', '男', null, null, null, null, '123456', '23', '0', null, '41151805', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1807', '41151805', '李涛涛', '189510', '男', null, null, null, null, '123456', '23', '0', null, '41151805', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1808', '41151804', '万志斌', '085475', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1809', '41151804', '魏  红', '189465', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1810', '41151804', '余  洋', '189599', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1811', '41151804', '刘  畅', '189428', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1812', '41151804', '孙振铭', '189491', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1813', '41151804', '徐中强', '189404', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1814', '41151804', '杨  威', '189430', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1815', '41151804', '葛广杰', '189401', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1816', '41151825', '王健', '189633', '男', null, null, null, null, '123456', '23', '0', null, '41151825', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1817', '41151825', '彭宇擎', '085627', '男', null, null, null, null, '123456', '23', '0', null, '41151825', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1818', '41151825', '牛恩治', '189595', '男', null, null, null, null, '123456', '23', '0', null, '41151825', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1819', '41151815', '张涛', '189419', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1820', '41151825', '徐平', '189592', '男', null, null, null, null, '123456', '23', '0', null, '41151825', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1821', '41151823', '张钊', '189506', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1822', '41151823', '任中海', '085667', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1823', '41151823', '熊志军', '189583', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1824', '41151823', '张磊', '189384', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1825', '41151823', '张海', '189579', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1826', '41151823', '张振华', '085613', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1827', '41151823', '王强', '189459', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1828', '41151823', '郑涛', '189379', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1829', '41151823', '彭锋', '189615', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1830', '41151823', '万青松', '189475', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1831', '41151823', '张俊杰', '189473', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1832', '41151823', '黄树泽', '085576', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1833', '41151823', '黄存兵', '085443', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1834', '41151823', '陈征', '189383', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1835', '41151823', '张大飞', '189533', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1836', '41151840', '谷岑', '085504', '男', null, null, null, null, '123456', '23', '0', null, '41151840', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1837', '41151840', '李达', '189421', '男', null, null, null, null, '123456', '23', '0', null, '41151840', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1838', '41151829', '吴凯', '189532', '男', null, null, null, null, '123456', '23', '0', null, '41151829', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1839', '41151829', '李四华', '085352', '男', null, null, null, null, '123456', '23', '0', null, '41151829', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1840', '41151815', '杨海宝', '189504', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1841', '41151829', '李浩', '189409', '男', null, null, null, null, '123456', '23', '0', null, '41151829', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1842', '41151843', '孙宏伟', '085401', '男', null, null, null, null, '123456', '23', '0', null, '41151843', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1843', '41151843', '侯金戈', '085399', '男', null, null, null, null, '123456', '23', '0', null, '41151843', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1844', '41151808', '张伟', '189669', '男', null, null, null, null, '123456', '23', '0', null, '41151808', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1845', '41151808', '周凯', '085403', '男', null, null, null, null, '123456', '23', '0', null, '41151808', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1846', '41151837', '王鹏', '085516', '男', null, null, null, null, '123456', '23', '0', null, '41151837', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1847', '41151837', '张帆', '085474', '男', null, null, null, null, '123456', '23', '0', null, '41151837', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1848', '41151837', '周斌', '189576', '男', null, null, null, null, '123456', '23', '0', null, '41151837', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1849', '41151830', '曾合理', '085511', '男', null, null, null, null, '123456', '23', '0', null, '41151830', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1850', '41151830', '陈平', '085575', '男', null, null, null, null, '123456', '23', '0', null, '41151830', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1851', '41151830', '宋立云', '189546', '男', null, null, null, null, '123456', '23', '0', null, '41151830', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1852', '41151803', '伍春光', '085622', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1853', '41151817', '毛新星', '189389', '男', null, null, null, null, '123456', '23', '0', null, '41151817', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1854', '41151802', '楚勇', '189381', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1855', '41151826', '张堂', '189607', '男', null, null, null, null, '123456', '23', '0', null, '41151826', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1856', '41151809', '陈玲', '189489', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1857', '41151834', '丁新', '085541', '男', null, null, null, null, '123456', '23', '0', null, '41151834', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1858', '41151834', '雍楠', '085633', '男', null, null, null, null, '123456', '23', '0', null, '41151834', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1859', '41151834', '许伟', '189561', '男', null, null, null, null, '123456', '23', '0', null, '41151834', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1860', '41151834', '冉宏伟', '189622', '男', null, null, null, null, '123456', '23', '0', null, '41151834', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1861', '41151809', '张海燕', '085526', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1862', '41151809', '付彬', '189594', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1863', '41151809', '余翔', '189571', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1864', '41151809', '谢艳波', '189612', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1865', '41151809', '高强', '189556', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1866', '41151809', '杨玉娴', '085588', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1867', '41151809', '王东波', '189522', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1868', '41151809', '许政伟', '189548', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1869', '41151809', '吴伟强', '189477', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1870', '41151809', '杨志刚', '189552', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1871', '41151833', '余书强', '085636', '男', null, null, null, null, '123456', '23', '0', null, '41151833', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1872', '41151802', '倪仕诚', '189433', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1873', '41151833', '袁伟', '189494', '男', null, null, null, null, '123456', '23', '0', null, '41151833', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1874', '41151802', '马勇', '189411', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1875', '41151831', '孙万全', '189427', '男', null, null, null, null, '123456', '23', '0', null, '41151831', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1876', '41151831', '汪勇', '085581', '男', null, null, null, null, '123456', '23', '0', null, '41151831', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1877', '41151832', '于剑', '085607', '男', null, null, null, null, '123456', '23', '0', null, '41151832', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1878', '41151832', '李龙涛', '189604', '男', null, null, null, null, '123456', '23', '0', null, '41151832', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1879', '41151832', '谢钾钾', '189460', '男', null, null, null, null, '123456', '23', '0', null, '41151832', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1880', '41151832', '刘洋', '189435', '男', null, null, null, null, '123456', '23', '0', null, '41151832', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1881', '41151832', '孙珂珂', '189493', '男', null, null, null, null, '123456', '23', '0', null, '41151832', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1882', '41151835', '陈永超', '189393', '男', null, null, null, null, '123456', '23', '0', null, '41151835', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1883', '41151835', '栗伟', '189544', '男', null, null, null, null, '123456', '23', '0', null, '41151835', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1884', '41151827', '王磊', '085447', '男', null, null, null, null, '123456', '23', '0', null, '41151827', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1885', '41151827', '宣磊', '189557', '男', null, null, null, null, '123456', '23', '0', null, '41151827', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1886', '41151842', '周洋', '085444', '男', null, null, null, null, '123456', '23', '0', null, '41151842', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1887', '41151842', '裴广辉', '189462', '男', null, null, null, null, '123456', '23', '0', null, '41151842', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1888', '41151842', '孙明星', '189444', '男', null, null, null, null, '123456', '23', '0', null, '41151842', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1889', '41151839', '徐洋', '189420', '男', null, null, null, null, '123456', '23', '0', null, '41151839', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1890', '41151839', '李一初', '189485', '男', null, null, null, null, '123456', '23', '0', null, '41151839', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1891', '41151839', '谭栋', '085414', '男', null, null, null, null, '123456', '23', '0', null, '41151839', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1892', '41151841', '李淳', '085384', '男', null, null, null, null, '123456', '23', '0', null, '41151841', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1893', '41151841', '黄超', '189448', '男', null, null, null, null, '123456', '23', '0', null, '41151841', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1894', '41151841', '黄晶', '189417', '男', null, null, null, null, '123456', '23', '0', null, '41151841', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1895', '41151803', '罗阳', '085538', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1896', '41151803', '郑立强', '085417', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1897', '41151803', '李训清', '085402', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1898', '41151803', '喻龙', '189502', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1899', '41151803', '张子合', '085488', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1900', '41151803', '胡世龙', '085473', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1901', '41151803', '张伟', '189625', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1902', '41151836', '姚书林', '189374', '男', null, null, null, null, '123456', '23', '0', null, '41151836', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1903', '41151815', '段云鹏', '189486', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1904', '41151836', '刘家振', '189408', '男', null, null, null, null, '123456', '23', '0', null, '41151836', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1905', '41151836', '栗郁', '085670', '男', null, null, null, null, '123456', '23', '0', null, '41151836', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1906', '41151828', '张天强', '189392', '男', null, null, null, null, '123456', '23', '0', null, '41151828', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1907', '41151817', '陈子恨', '085518', '男', null, null, null, null, '123456', '23', '0', null, '41151817', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1908', '41151828', '王建堃', '189410', '男', null, null, null, null, '123456', '23', '0', null, '41151828', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1909', '41151828', '谈  平', '189482', '男', null, null, null, null, '123456', '23', '0', null, '41151828', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1910', '41151802', '苏泉', '085324', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1911', '41151802', '李涛', '189560', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1912', '41151802', '王伟', '189501', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1913', '41151802', '孙阳', '189423', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1914', '41151802', '沙振', '085496', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1915', '41151802', '孙小刚', '189372', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1916', '41151802', '胡晓东', '189476', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1917', '41151802', '乐涛', '189605', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1918', '41151802', '谢军', '189382', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1919', '41151802', '胡晓东', '189456', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1920', '41151802', '和伟', '189537', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1921', '41151802', '陈万一', '189468', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1922', '41151802', '罗俊风', '189508', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1923', '41151802', '李炎炎', '189606', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1924', '41151802', '王想', '189469', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1925', '41151802', '冯欢', '189400', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1926', '41151807', '杨树贤', '085611', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1927', '41151806', '徐扬', '085346', '男', null, null, null, null, '123456', '23', '0', null, '41151806', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1928', '41151806', '姚凤凤', '085654', '男', null, null, null, null, '123456', '23', '0', null, '41151806', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1929', '41151806', '江晓昀', '189378', '男', null, null, null, null, '123456', '23', '0', null, '41151806', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1930', '41151806', '栾俊', '189623', '男', null, null, null, null, '123456', '23', '0', null, '41151806', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1931', '41151806', '李霞', '085409', '男', null, null, null, null, '123456', '23', '0', null, '41151806', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1932', '41151806', '李莹莹', '085327', '男', null, null, null, null, '123456', '23', '0', null, '41151806', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1933', '41150202', '刘祖军', '188198', '男', null, null, null, null, '123456', '23', '0', null, '41150202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1934', '41151801', '刘娜', '189586', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1935', '41151828', '程丰', '085446', '男', null, null, null, null, '123456', '23', '0', null, '41151828', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1936', '41151803', '谢凌燕', '085614', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1937', '41151803', '徐培德', '085600', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1938', '41151803', '王志友', '085394', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1939', '41151803', '李勇', '085415', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1940', '41151803', '谭新国', '085522', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1941', '41151805', '李春梅', '189539', '男', null, null, null, null, '123456', '23', '0', null, '41151805', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1942', '41151808', '刘振邦', '085448', '男', null, null, null, null, '123456', '23', '0', null, '41151808', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1943', '41151808', '任红', '189613', '男', null, null, null, null, '123456', '23', '0', null, '41151808', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1944', '41151808', '夏明忠', '085572', '男', null, null, null, null, '123456', '23', '0', null, '41151808', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1945', '41151804', '秦浩然', 'ZA0065', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1946', '41151804', '陈帅宏', 'ZA0063', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1947', '41151804', '陈海龙', 'ZA0016', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1948', '41151804', '吴磊', 'ZA0036', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1949', '41151804', '王鹏', 'ZA0066', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1950', '41151804', '葛强', 'ZA0009', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1951', '41151804', '董雷', 'ZA0026', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1952', '41151801', '罗锋', '085569', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1953', '41151801', '董玉堂', '085478', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1954', '41151801', '陈法胜', '085363', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1955', '41151801', '李勇', '085665', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1956', '41151801', '徐文玺', '085398', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1957', '41151801', '陈琳', '085390', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1958', '41150302', '夏惠国', '087843', '男', null, null, null, null, '123456', '23', '0', null, '41150302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1959', '41151807', '杨飞', '189608', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1960', '41151807', '顾超凡', '085491', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1961', '41151803', '徐毅杰', '085503', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1962', '41151803', '曹勇', '085524', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1963', '41151803', '程广耀', '085386', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1964', '41151803', '何善永', '085512', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1965', '41151803', '付艳', '189563', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1966', '41151803', '宋强', '085367', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1967', '41151804', '赵亮亮', 'ZA0022', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1968', '41151804', '王立业', 'ZA0123', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1969', '41151804', '张长友', 'ZA0027', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1970', '41151804', '李冲', 'ZA0077', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1971', '41151804', '谷俊阳', 'ZA0057', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1972', '41151804', '田宾强', 'ZA0071', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1973', '41151804', '杨光', 'ZA0012', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1974', '41151804', '冯靖翔', 'TJ0079', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1975', '41151804', '李阳', 'ZA0028', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1976', '41151804', '蔡龙', 'ZA0042', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1977', '41151804', '李洋', 'ZA0025', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1978', '41151804', '李程辉', 'ZA0002', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1979', '41151804', '高明', 'ZA0037', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1980', '41151804', '林靖超', 'ZA0033', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1981', '41151804', '王磊', 'ZA0018', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1982', '41151804', '赵狮子', 'ZA0008', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1983', '41151804', '李翔', 'ZA0075', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1984', '41151804', '季耀中', 'ZA0049', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1985', '41151802', '姜辉', '085413', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1986', '41151802', '李浩', '189438', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1987', '41151802', '彭强', '085334', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1988', '41151802', '丁磊', '189589', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1989', '41151802', '吕志高', '189441', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1990', '41151802', '刘心思', '189572', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1991', '41151802', '刘俊孚', '189566', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1992', '41151802', '王哲', '189432', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1993', '41151802', '范伟', '189395', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1994', '41151802', '栗勇', '189416', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1995', '41151826', '彭伟', '189463', '男', null, null, null, null, '123456', '23', '0', null, '41151826', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1996', '41151826', '孙年诗', '189398', '男', null, null, null, null, '123456', '23', '0', null, '41151826', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1997', '41151826', '付刚', '189422', '男', null, null, null, null, '123456', '23', '0', null, '41151826', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1998', '41151827', '赵金洲', '189507', '男', null, null, null, null, '123456', '23', '0', null, '41151827', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('1999', '41151827', '司永伟', '085624', '男', null, null, null, null, '123456', '23', '0', null, '41151827', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2000', '41151827', '瓮耀杰', '189426', '男', null, null, null, null, '123456', '23', '0', null, '41151827', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2001', '41151804', '彭凌锟', '189402', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2002', '41151804', '黄俊', 'ZA0076', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2003', '41151804', '卢文杰', 'ZA0055', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2004', '41151804', '门岗', 'ZA0000', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2005', '41151834', '李玲', '189597', '男', null, null, null, null, '123456', '23', '0', null, '41151834', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2006', '411518', '张宁', '085508', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2007', '411518', '贾新奎', '189388', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2008', '411518', '段伟', '085548', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2009', '411518', '王伟', '189626', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2010', '411518', '张春雷', '085517', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2011', '411518', '魏解明', '085658', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2012', '411518', '谢焕坤', '085626', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2013', '411518', '贾波', '085387', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2014', '411518', '陈钧', '085378', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2015', '411518', '罗洛', '085539', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2016', '411518', '付伟', '085348', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2017', '411518', '魏新生', '085328', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2018', '411518', '陈荣', '085330', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2019', '411518', '马冲', '085489', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2020', '41151821', '丁明辉', '085466', '男', null, null, null, null, '123456', '23', '0', null, '41151821', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2021', '41151821', '邢继红', '085656', '男', null, null, null, null, '123456', '23', '0', null, '41151821', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2022', '41151821', '熊颖', '189668', '男', null, null, null, null, '123456', '23', '0', null, '41151821', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2023', '41151821', '郑志刚', '085365', '男', null, null, null, null, '123456', '23', '0', null, '41151821', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2024', '41151821', '张政', '189629', '男', null, null, null, null, '123456', '23', '0', null, '41151821', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2025', '41151821', '陆猛', '189678', '男', null, null, null, null, '123456', '23', '0', null, '41151821', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2026', '41151845', '贾玉梅', '085631', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2027', '41151845', '朱甜甜', '189503', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2028', '41151845', '王兵', '085416', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2029', '41151845', '刘刚', '085418', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2030', '411518', '王自勉', '189545', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2031', '41151845', '孙新华', '085582', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2032', '41151845', '高一戈', '189474', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2033', '41151845', '沈威', '189603', '男', null, null, null, null, '123456', '23', '0', null, '41151845', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2034', '41151807', '王巍', '085662', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2035', '41151807', '王洪', '085345', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2036', '41151807', '卢长安', '085493', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2037', '41151807', '郭世刚', '085499', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2038', '41151807', '王黎', '085506', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2039', '41151807', '刘昀昀', '189387', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2040', '41151807', '赵锐', '085461', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2041', '41151807', '张苏阳', '085495', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2042', '41151807', '谢勇辉', '085571', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2043', '41151807', '刘伟杰', '085339', '男', null, null, null, null, '123456', '23', '0', null, '41151807', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2044', '41151810', '张晓东', '085395', '男', null, null, null, null, '123456', '23', '0', null, '41151810', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2045', '41151810', '张黎', '085645', '男', null, null, null, null, '123456', '23', '0', null, '41151810', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2046', '41151810', '赵晶', '085663', '男', null, null, null, null, '123456', '23', '0', null, '41151810', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2047', '41151810', '陈旭珍', '085433', '男', null, null, null, null, '123456', '23', '0', null, '41151810', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2048', '41151811', '伍峰', '085597', '男', null, null, null, null, '123456', '23', '0', null, '41151811', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2049', '41151811', '马俊', '085369', '男', null, null, null, null, '123456', '23', '0', null, '41151811', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2050', '41151811', '许恒', '189582', '男', null, null, null, null, '123456', '23', '0', null, '41151811', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2051', '41151812', '谢勇', '085520', '男', null, null, null, null, '123456', '23', '0', null, '41151812', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2052', '41151812', '杨金艳', '085331', '男', null, null, null, null, '123456', '23', '0', null, '41151812', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2053', '41151813', '张强', '189530', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2054', '41151813', '刘玉', '085351', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2055', '41151813', '邢庆妹', '085338', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2056', '41151813', '邢娜', '085407', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2057', '41151813', '时丽', '189371', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2058', '41151813', '费慧', '085647', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2059', '41151813', '杨梅', '085640', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2060', '41151813', '彭丽丽', '189558', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2061', '41151813', '张敬慧', '189481', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2062', '41151813', '李海燕', '189449', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2063', '41151813', '张玉梅', '189429', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2064', '41151813', '刘顺苗', '189492', '男', null, null, null, null, '123456', '23', '0', null, '41151813', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2065', '41151814', '李德刚', '085452', '男', null, null, null, null, '123456', '23', '0', null, '41151814', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2066', '41151814', '廖廉洁', '085513', '男', null, null, null, null, '123456', '23', '0', null, '41151814', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2067', '41151814', '杜新平', '189627', '男', null, null, null, null, '123456', '23', '0', null, '41151814', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2068', '41151814', '彭琴', '189518', '男', null, null, null, null, '123456', '23', '0', null, '41151814', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2069', '41151814', '吴中清', '189619', '男', null, null, null, null, '123456', '23', '0', null, '41151814', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2070', '41151814', '王林', '085454', '男', null, null, null, null, '123456', '23', '0', null, '41151814', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2071', '41151815', '张明涛', '085455', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2072', '41151815', '许永峰', '085476', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2073', '41151815', '张云东', '085591', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2074', '41151815', '范彤', '189624', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2075', '41151815', '朱文权', '085578', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2076', '41151836', '胡永玲', '189609', '男', null, null, null, null, '123456', '23', '0', null, '41151836', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2077', '41151815', '徐玲', '189588', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2078', '41151815', '黄新生', '085354', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2079', '41151815', '王广友', '085530', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2080', '41151841', '郑德智', '189553', '男', null, null, null, null, '123456', '23', '0', null, '41151841', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2081', '41151815', '陈伟', '189375', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2082', '41151815', '陈涛', '085480', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2083', '41151830', '李岗岭', '189610', '男', null, null, null, null, '123456', '23', '0', null, '41151830', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2084', '41151815', '程勇', '189512', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2085', '41151815', '邓俊', '189434', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2086', '41151815', '吴星', '189443', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2087', '41151815', '陈强', '189442', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2088', '41151802', '武勇', '189484', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2089', '41151802', '胡永良', '189406', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2090', '41151816', '许强', '189373', '男', null, null, null, null, '123456', '23', '0', null, '41151816', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2091', '41151816', '王蕾', '189575', '男', null, null, null, null, '123456', '23', '0', null, '41151816', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2092', '41151817', '黄金玉', '085501', '男', null, null, null, null, '123456', '23', '0', null, '41151817', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2093', '41151817', '陈雷', '085419', '男', null, null, null, null, '123456', '23', '0', null, '41151817', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2094', '41151817', '李新丽', '085420', '男', null, null, null, null, '123456', '23', '0', null, '41151817', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2095', '41151817', '徐培敏', '085459', '男', null, null, null, null, '123456', '23', '0', null, '41151817', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2096', '41151817', '张苏予', '085344', '男', null, null, null, null, '123456', '23', '0', null, '41151817', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2097', '41151818', '田宏', '085595', '男', null, null, null, null, '123456', '23', '0', null, '41151818', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2098', '41151818', '张静', '189396', '男', null, null, null, null, '123456', '23', '0', null, '41151818', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2099', '41151818', '莫瑞红', '085579', '男', null, null, null, null, '123456', '23', '0', null, '41151818', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2100', '41151818', '石霞', '085634', '男', null, null, null, null, '123456', '23', '0', null, '41151818', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2101', '41151818', '朱鹏飞', '189480', '男', null, null, null, null, '123456', '23', '0', null, '41151818', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2102', '41151818', '乐静', '189596', '男', null, null, null, null, '123456', '23', '0', null, '41151818', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2103', '41151819', '方兰兰', '085460', '男', null, null, null, null, '123456', '23', '0', null, '41151819', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2104', '41151819', '朱杰', '085349', '男', null, null, null, null, '123456', '23', '0', null, '41151819', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2105', '41151819', '刘娟', '189568', '男', null, null, null, null, '123456', '23', '0', null, '41151819', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2106', '41151805', '郑建', '085519', '男', null, null, null, null, '123456', '23', '0', null, '41151805', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2107', '41151805', '杨庆节', '189542', '男', null, null, null, null, '123456', '23', '0', null, '41151805', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2108', '41151805', '张娜', '189620', '男', null, null, null, null, '123456', '23', '0', null, '41151805', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2109', '41151820', '杨树海', '085638', '男', null, null, null, null, '123456', '23', '0', null, '41151820', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2110', '41151820', '尹红明', '085353', '男', null, null, null, null, '123456', '23', '0', null, '41151820', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2111', '41151820', '卢晶', '189399', '男', null, null, null, null, '123456', '23', '0', null, '41151820', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2112', '41151820', '宋莉', '085560', '男', null, null, null, null, '123456', '23', '0', null, '41151820', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2113', '41151820', '杨云仙', '085630', '男', null, null, null, null, '123456', '23', '0', null, '41151820', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2114', '41151833', '陈俊', '085462', '男', null, null, null, null, '123456', '23', '0', null, '41151833', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2115', '41151833', '余书强', '085463', '男', null, null, null, null, '123456', '23', '0', null, '41151833', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2116', '41151802', '许振伟', '189538', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2117', '41151833', '丁剑波', '189437', '男', null, null, null, null, '123456', '23', '0', null, '41151833', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2118', '41151838', '喻勇', '189447', '男', null, null, null, null, '123456', '23', '0', null, '41151838', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2119', '41151840', '彭源', '085570', '男', null, null, null, null, '123456', '23', '0', null, '41151840', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2120', '41151831', '杨巍', '085553', '男', null, null, null, null, '123456', '23', '0', null, '41151831', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2121', '41151831', '黄雪梅', '189541', '男', null, null, null, null, '123456', '23', '0', null, '41151831', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2122', '41151831', '李强', '189578', '男', null, null, null, null, '123456', '23', '0', null, '41151831', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2123', '41151839', '叶玉忠', '085603', '男', null, null, null, null, '123456', '23', '0', null, '41151839', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2124', '41151839', '高盾', '189565', '男', null, null, null, null, '123456', '23', '0', null, '41151839', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2125', '41151839', '程其静', '189488', '男', null, null, null, null, '123456', '23', '0', null, '41151839', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2126', '41151822', '王琳军', '189555', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2127', '41151822', '黄丽', '189580', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2128', '41151822', '杨芝玲', '085604', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2129', '41151822', '陈尚德', '085458', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2130', '41151822', '王金芳', '189390', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2131', '41151840', '张冬', '189377', '男', null, null, null, null, '123456', '23', '0', null, '41151840', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2132', '41151843', '吴新娅', '189536', '男', null, null, null, null, '123456', '23', '0', null, '41151843', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2133', '41151843', '范新潮', '085393', '男', null, null, null, null, '123456', '23', '0', null, '41151843', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2134', '41151843', '瓮梅', '189425', '男', null, null, null, null, '123456', '23', '0', null, '41151843', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2135', '41151809', '夏季', '189440', '男', null, null, null, null, '123456', '23', '0', null, '41151809', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2136', '41151823', '张海', '085343', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2137', '41151823', '罗瑞', '085602', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2138', '41151823', '黄玉', '085612', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2139', '41151823', '卢静文', '189686', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2140', '41151815', '彭锋', '085594', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2141', '41151834', '许伟', '085643', '男', null, null, null, null, '123456', '23', '0', null, '41151834', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2142', '41151836', '闵中锋', '085568', '男', null, null, null, null, '123456', '23', '0', null, '41151836', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2143', '41151835', '陈世林', '085525', '男', null, null, null, null, '123456', '23', '0', null, '41151835', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2144', '41151815', '孙辉', '085628', '男', null, null, null, null, '123456', '23', '0', null, '41151815', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2145', '41151835', '杨瑞', '085621', '男', null, null, null, null, '123456', '23', '0', null, '41151835', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2146', '41151837', '刘正杰', '189446', '男', null, null, null, null, '123456', '23', '0', null, '41151837', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2147', '41151837', '范振前', '189403', '男', null, null, null, null, '123456', '23', '0', null, '41151837', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2148', '41151824', '孙涛', '085439', '男', null, null, null, null, '123456', '23', '0', null, '41151824', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2149', '41151844', '张勇', '189467', '男', null, null, null, null, '123456', '23', '0', null, '41151844', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2150', '41151804', '周书国', '085565', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2151', '41151804', '徐文仲', '085410', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2152', '41151828', '李瑞', '189461', '男', null, null, null, null, '123456', '23', '0', null, '41151828', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2153', '41151830', '贾敏', '085450', '男', null, null, null, null, '123456', '23', '0', null, '41151830', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2154', '41151830', '邵国新', '189436', '男', null, null, null, null, '123456', '23', '0', null, '41151830', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2155', '41151803', '乐祥稼', '085502', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2156', '41151803', '张枫', '085481', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2157', '41151803', '邵春', '189689', '男', null, null, null, null, '123456', '23', '0', null, '41151803', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2158', '41151824', '张俊', '085457', '男', null, null, null, null, '123456', '23', '0', null, '41151824', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2159', '41151808', '李新民', '085370', '男', null, null, null, null, '123456', '23', '0', null, '41151808', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2160', '41151806', '尚祖斌', '085456', '男', null, null, null, null, '123456', '23', '0', null, '41151806', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2161', '41151801', '黄建', '085430', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2162', '41151801', '谭振', '189500', '男', null, null, null, null, '123456', '23', '0', null, '41151801', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2163', '41151802', '刘秋生', '085536', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2164', '41151802', '范超海', '085405', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2165', '41151802', '胡颖', '085646', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2166', '41151802', '尚琨', '085648', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2167', '41151802', '李坤', '189602', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2168', '41151802', '张海云', '085657', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2169', '41151802', '岳静', '085661', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2170', '41151802', '贾丽莉', '189394', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2171', '41151802', '李涛', '085364', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2172', '41151802', '何祝身', '085449', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2173', '41151802', '胡晓东', '085641', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2174', '41151802', '彭玲玲', '189543', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2175', '41151802', '张平', '085605', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2176', '41151802', '陈文静', '085573', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2177', '41151802', '王杨', '189431', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2178', '41151802', '肖瑞', '189391', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2179', '41151802', '孙磊', '189598', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2180', '41151802', '王威', '189405', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2181', '41151802', '蔡建', '085529', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2182', '41151802', '黄艳慧', '189439', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2183', '41151802', '吴卫明', '085389', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2184', '41151802', '李娜娜', '189585', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2185', '41151802', '陈科仲', '189418', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2186', '41151802', '冯仕静', '189414', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2187', '41151802', '贾闫伟', '189554', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2188', '41151802', '齐辉', '189412', '男', null, null, null, null, '123456', '23', '0', null, '41151802', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2189', '41151829', '姜婷婷', '189496', '男', null, null, null, null, '123456', '23', '0', null, '41151829', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2190', '41151830', '邱红', '085453', '男', null, null, null, null, '123456', '23', '0', null, '41151830', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2191', '41151842', '张文全', '189587', '男', null, null, null, null, '123456', '23', '0', null, '41151842', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2192', '41151208', '吴健', '087495', '男', null, null, null, null, '123456', '22', '0', null, '41151208', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2193', '41151804', '付龙', 'ZA0019', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2194', '41151804', '赵乐', 'ZA0110', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2195', '41151804', '赵亮', 'ZA1111', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2196', '41151804', '王靖文', 'ZA0048', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2197', '411518', '邢磊', '189559', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2198', '41151206', '杨建保', '086101', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2199', '41151206', '姚劼', '086587', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2200', '41151206', '段勇', '086100', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2201', '41151206', '刘莉', '086600', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2202', '41151206', '靳喆', '087233', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2203', '41151206', '梁兴泽', '086029', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2204', '41151206', '余程', '087253', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2205', '41151206', '陈卫国', '086677', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2206', '41151206', '楚世峰', '086203', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2207', '41151206', '陈志刚', '086605', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2208', '41151206', '张军', '086102', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2209', '41151206', '陈敬德', '186629', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2210', '41151206', '王孟忠', '087078', '男', null, null, null, null, '123456', '22', '0', null, '41151206', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2211', '41151207', '赵俊杰', '087905', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2212', '41151207', '张健', '086458', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2213', '41151207', '许四龙', '087182', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2214', '41151207', '张豫川', '086216', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2215', '41151207', '周道启', '087704', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2216', '41151207', '冯登云', '086403', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2217', '41151207', '柴光耀', '087260', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2218', '41151207', '应金峰', '0086458', '男', null, null, null, null, '123456', '22', '0', null, '41151207', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2219', '41151202', '马丛林', '086176', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2220', '41151202', '朱遂全', '087123', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2221', '41151202', '张  博', '087841', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2222', '41151202', '王亚丽', '186201', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2223', '41151202', '张  帆', '087534', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2224', '41151202', '易善稳', '186168', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2225', '41151202', '吴留正', '186165', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2226', '41151202', '梅  磊', '186163', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2227', '41151202', '刘忠良', '186166', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2228', '41151202', '廉晓阳', '186167', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2229', '41151202', '徐其磊', '186157', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2230', '41151202', '张文欢', '186133', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2231', '41151202', '胡  刚', '086187', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2232', '41151202', '柳  松', '087540', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2233', '41151202', '王  团', '086621', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2234', '41151202', '徐维伟', '186217', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2235', '41151202', '肖  丹', '186187', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2236', '41151202', '谢林生', '186222', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2237', '41151202', '朱浩然', '186209', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2238', '41151202', '李春生', '186131', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2239', '41151202', '吴  凡', '186281', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2240', '41151202', '官  昊', '086619', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2241', '41151202', '杜光正', '086596', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2242', '41151202', '严长春', '087303', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2243', '41151202', '姚天龙', '086195', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2244', '41151202', '陈洪涛', '086172', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2245', '41151202', '曹  洁', '084121', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2246', '41151202', '朱建军', '086197', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2247', '41151202', '甘海耀', '086182', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2248', '41151202', '朱亚运', 'ZYY', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2249', '41151202', '陈建堂', '186208', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2250', '41151202', '傅换天', '086590', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2251', '41151202', '张伯奎', '086190', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2252', '41151202', '杨钧', '087766', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2253', '41151202', '柳保华', '086130', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2254', '41151202', '徐永东', '085546', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2255', '41151202', '杨志刚', '085239', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2256', '41151202', '吴雷', '086351', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2257', '41151202', '许友良', '086934', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2258', '41151202', '吕郝', '186067', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2259', '41151202', '吴春全', '087892', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2260', '41151202', '相耀辉', '086462', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2261', '41151202', '张志广', '187657', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2262', '41151202', '李刚', '187675', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2263', '41151202', '胡庆杰', '187361', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2264', '41151202', '余  浩', '186162', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2265', '41151202', '杨崇育', '186129', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2266', '41151202', '时  翔', '087816', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2267', '41151202', '吴  浩', '086991', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2268', '41151202', '祝  强', '186130', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2269', '41151202', '蔡慎耀', '086192', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2270', '41151202', '郑琳', '086381', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2271', '41151202', '张兵安', '1986986', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2272', '41151202', '李  洁', '087154', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2273', '41151202', '张  军', '087510', '男', null, null, null, null, '123456', '22', '0', null, '41151202', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2274', '41151827', '张加鹏', '085340', '男', null, null, null, null, '123456', '23', '0', null, '41151827', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2275', '41151201', '张海燕', '084680', '男', null, null, null, null, '123456', '22', '0', null, '41151201', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2276', '411517', '周城屹', '185721', '男', null, null, null, null, '123456', '22', '0', null, '411517', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2277', '4115', '吴春义', '087397', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2278', '4115', '耿强', '086961', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2279', '4115', '张伟', '186202', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2280', '4115', '闫彬', '187635', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2281', '4115', '张奇', '086440', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2282', '4115', '李俊', '186159', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2283', '4115', '吴建伟', '086537', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2284', '4115', '杨发军', '186931', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2285', '4115', '李辉', '085547', '男', null, null, null, null, '123456', '19', '0', null, '4115', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2286', '41150605', '刘志中', '086261', '男', null, null, null, null, '123456', '23', '0', null, '41150605', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2287', '411518', 'tc', 'TC', '男', null, null, null, null, '123456', '22', '0', null, '411518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2288', '4115121314', '李澎', '000216', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2289', '4115121310', '程功', '084065', '男', null, null, null, null, '123456', '23', '0', null, '4115121310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2290', '4115121307', '徐飏', '084360', '男', null, null, null, null, '123456', '23', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2291', '4115121310', '黄中刚', '084829', '男', null, null, null, null, '123456', '23', '0', null, '4115121310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2292', '4115121313', '姚焕刚', '085099', '男', null, null, null, null, '123456', '23', '0', null, '4115121313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2293', '4115121307', '李永红', '085125', '男', null, null, null, null, '123456', '23', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2294', '41151213', '舒继平', '085286', '男', null, null, null, null, '123456', '23', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2295', '411512132306', '陈辉', '085691', '男', null, null, null, null, '123456', '23', '0', null, '411512132306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2296', '411512132309', '王成亮', '085698', '男', null, null, null, null, '123456', '23', '0', null, '411512132309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2297', '411512132308', '王国涛', '085702', '男', null, null, null, null, '123456', '23', '0', null, '411512132308', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2298', '411512132308', '杜鑫', '085706', '男', null, null, null, null, '123456', '23', '0', null, '411512132308', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2299', '411512132306', '符娜', '085709', '男', null, null, null, null, '123456', '23', '0', null, '411512132306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2300', '4115121317', '丁知浩', '085740', '男', null, null, null, null, '123456', '22', '0', null, '4115121317', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2301', '411512132304', '吕其林', '085759', '男', null, null, null, null, '123456', '23', '0', null, '411512132304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2302', '411512132309', '姬晓峰', '085766', '男', null, null, null, null, '123456', '23', '0', null, '411512132309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2303', '411512132306', '李琴', '085817', '男', null, null, null, null, '123456', '23', '0', null, '411512132306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2304', '4115121323', '李金铸', '085818', '男', null, null, null, null, '123456', '22', '0', null, '4115121323', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2305', '4115121323', '王汉科', '085825', '男', null, null, null, null, '123456', '22', '0', null, '4115121323', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2306', '411512132307', '张晓辉', '085826', '男', null, null, null, null, '123456', '23', '0', null, '411512132307', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2307', '411512132310', '殷发近', '085837', '男', null, null, null, null, '123456', '23', '0', null, '411512132310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2308', '411512132309', '霍德刚', '085856', '男', null, null, null, null, '123456', '23', '0', null, '411512132309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2309', '411512132301', '李昌存', '085857', '男', null, null, null, null, '123456', '23', '0', null, '411512132301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2310', '411512132310', '陈海东', '085886', '男', null, null, null, null, '123456', '23', '0', null, '411512132310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2311', '411512132304', '王仁春', '085927', '男', null, null, null, null, '123456', '23', '0', null, '411512132304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2312', '411512132304', '樊守洲', '085968', '男', null, null, null, null, '123456', '23', '0', null, '411512132304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2313', '411512132309', '侯皓元', '085983', '男', null, null, null, null, '123456', '23', '0', null, '411512132309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2314', '4115121323', '王剑华', '085989', '男', null, null, null, null, '123456', '22', '0', null, '4115121323', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2315', '411512132306', '吴曼曼', '085991', '男', null, null, null, null, '123456', '23', '0', null, '411512132306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2316', '4115121305', '付饶', '086043', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2317', '4115121307', '曲光程', '086051', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2318', '4115121311', '周伟', '086333', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2319', '4115121308', '宋淼', '086437', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2320', '4115121314', '王斌', '086666', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2321', '4115121318', '卢兴平', '086668', '男', null, null, null, null, '123456', '22', '0', null, '4115121318', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2322', '4115121315', '郑昕', '086676', '男', null, null, null, null, '123456', '22', '0', null, '4115121315', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2323', '4115121317', '梁广静', '086679', '男', null, null, null, null, '123456', '22', '0', null, '4115121317', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2324', '4115121319', '王锋', '086680', '男', null, null, null, null, '123456', '22', '0', null, '4115121319', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2325', '4115121313', '闫锋', '086681', '男', null, null, null, null, '123456', '22', '0', null, '4115121313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2326', '4115121315', '丁亮亮', '086682', '男', null, null, null, null, '123456', '22', '0', null, '4115121315', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2327', '4115121307', '王娥', '086695', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2328', '4115121319', '周建军', '086696', '男', null, null, null, null, '123456', '22', '0', null, '4115121319', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2329', '4115121309', '左红文', '086712', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2330', '4115121307', '郑承忠', '086718', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2331', '41151213', '潘义', '086730', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2332', '4115121311', '刘霞', '086737', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2333', '4115121307', '屈继红', '086738', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2334', '4115121307', '薛运华', '086752', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2335', '4115121314', '孟照纲', '086756', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2336', '4115121319', '马少辉', '086758', '男', null, null, null, null, '123456', '22', '0', null, '4115121319', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2337', '4115121304', '赵艳红', '086765', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2338', '4115121311', '张连刚', '086767', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2339', '4115121317', '黄志滨', '086770', '男', null, null, null, null, '123456', '22', '0', null, '4115121317', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2340', '4115121305', '刘洋', '086772', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2341', '4115121309', '苏巧', '086784', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2342', '4115121307', '周春燕', '086786', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2343', '4115121304', '黄安斌', '086787', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2344', '4115121309', '李胜强', '086790', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2345', '4115121305', '梁其利', '086801', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2346', '4115121307', '吴峰', '086803', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2347', '4115121307', '陈汉福', '086805', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2348', '4115121307', '张其林', '086808', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2349', '4115121319', '李远涛', '086812', '男', null, null, null, null, '123456', '22', '0', null, '4115121319', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2350', '4115121319', '胡震云', '086813', '男', null, null, null, null, '123456', '22', '0', null, '4115121319', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2351', '41151213', '陈新生', '086815', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2352', '4115121307', '陈琳', '086819', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2353', '4115121308', '李全宏', '086822', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2354', '4115121306', '广明巍', '086824', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2355', '4115121312', '胡祥安', '086828', '男', null, null, null, null, '123456', '22', '0', null, '4115121312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2356', '4115121316', '向金榜', '086830', '男', null, null, null, null, '123456', '22', '0', null, '4115121316', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2357', '4115121305', '谢勇', '086831', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2358', '4115121303', '吴德收', '086832', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2359', '4115121311', '苏崎', '086836', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2360', '4115121307', '刘庆斌', '086837', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2361', '4115121304', '张全胜', '086839', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2362', '4115121309', '徐家兵', '086840', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2363', '4115121303', '雷廷', '086842', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2364', '4115121310', '刘杰', '086845', '男', null, null, null, null, '123456', '22', '0', null, '4115121310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2365', '4115121305', '周俊杰', '086846', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2366', '4115121302', '严兆全', '086848', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2367', '4115121304', '刘山', '086849', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2368', '4115121307', '刘沛成', '086852', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2369', '4115121307', '王进', '086855', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2370', '4115121304', '韩俊杰', '086856', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2371', '4115121314', '王海金', '086858', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2372', '4115121314', '许进', '086863', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2373', '4115121303', '党学文', '086867', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2374', '4115121307', '刘小川', '086873', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2375', '4115121311', '李丁', '086888', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2376', '4115121312', '许金峰', '086891', '男', null, null, null, null, '123456', '22', '0', null, '4115121312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2377', '4115121305', '曹书富', '086895', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2378', '41151213', '黄喜', '086896', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2379', '4115121311', '王大江', '086899', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2380', '4115121305', '邱峰', '086903', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2381', '4115121305', '程李平', '086904', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2382', '411512130102', '甘中金', '086905', '男', null, null, null, null, '123456', '23', '0', null, '411512130102', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2383', '4115121307', '甄璐', '086911', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2384', '4115121307', '黄阿平', '086916', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2385', '4115121319', '杨杰', '086918', '男', null, null, null, null, '123456', '22', '0', null, '4115121319', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2386', '4115121316', '宋晔', '086921', '男', null, null, null, null, '123456', '22', '0', null, '4115121316', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2387', '4115121301', '杨久广', '086922', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2388', '4115121308', '樊泉河', '086925', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2389', '4115121307', '王俊华', '086926', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2390', '41151213', '燕爱红', '086932', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2391', '4115121306', '龚立文', '086938', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2392', '4115121308', '张志刚', '086949', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2393', '4115121303', '方珂', '086956', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2394', '4115121308', '张治安', '086966', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2395', '4115121305', '李继海', '086973', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2396', '4115121308', '郭敏', '086978', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2397', '4115121318', '钟福学', '086979', '男', null, null, null, null, '123456', '22', '0', null, '4115121318', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2398', '4115121310', '兰凌', '086983', '男', null, null, null, null, '123456', '22', '0', null, '4115121310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2399', '4115121311', '沈星宏', '086990', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2400', '4115121308', '张博', '086992', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2401', '4115121309', '何晓柱', '086996', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2402', '41151213', '游光龙', '086999', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2403', '4115121308', '方立功', '087211', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2404', '4115121314', '姚家霞', '087252', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2405', '4115121305', '郭松', '087407', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2406', '4115121307', '张伟', '087543', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2407', '4115121315', '刘磊', '087583', '男', null, null, null, null, '123456', '22', '0', null, '4115121315', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2408', '4115121313', '黄平', '087610', '男', null, null, null, null, '123456', '22', '0', null, '4115121313', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2409', '4115121309', '宋杰', '087810', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2410', '4115121314', '詹全亮', '087850', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2411', '4115121320', '曾勇', '088079', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2412', '4115121320', '屈应峰', '088106', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2413', '4115121320', '王闽安', '088196', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2414', '4115121320', '匡波', '088208', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2415', '4115121320', '李莉', '088216', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2416', '4115121320', '周荣明', '088238', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2417', '4115121320', '张忠诚', '088262', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2418', '4115121320', '刘建新', '088263', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2419', '4115121320', '梁欣健', '088345', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2420', '4115121320', '陈国民', '088350', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2421', '4115121320', '周明生', '123321', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2422', '4115121322', '杨志亚', '088406', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2423', '4115121322', '黄勇', '088409', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2424', '4115121322', '杨廷友', '088429', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2425', '4115121322', '蔡刚', '088452', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2426', '4115121322', '张志远', '088459', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2427', '4115121322', '张泽亮', '088465', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2428', '4115121322', '李黎', '088466', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2429', '4115121322', '柳家双', '088469', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2430', '4115121322', '陈从明', '088478', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2431', '4115121322', '张伟', '088489', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2432', '4115121322', '潘桂芝', '088493', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2433', '4115121322', '许诺', '088515', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2434', '4115121322', '杨则颂', '088529', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2435', '4115121316', '石慧', '088548', '男', null, null, null, null, '123456', '22', '0', null, '4115121316', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2436', '4115121322', '柯珺', '088626', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2437', '4115121309', '强运辉', '强运辉', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2438', '4115121309', '王艺', '王艺', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2439', '411512132303', '陈刚', '085771', '男', null, null, null, null, '123456', '23', '0', null, '411512132303', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2440', '411512132310', '伍刚', '085820', '男', null, null, null, null, '123456', '23', '0', null, '411512132310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2441', '411512132310', '辛迪', '085834', '男', null, null, null, null, '123456', '23', '0', null, '411512132310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2442', '411512132302', '喻景', '085855', '男', null, null, null, null, '123456', '23', '0', null, '411512132302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2443', '411512132311', '杨汉明', '085867', '男', null, null, null, null, '123456', '23', '0', null, '411512132311', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2444', '411512132305', '郑海洪', '085926', '男', null, null, null, null, '123456', '23', '0', null, '411512132305', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2445', '411512132303', '王翼生', '085969', '男', null, null, null, null, '123456', '23', '0', null, '411512132303', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2446', '411512132306', '郑晓丹', '085985', '男', null, null, null, null, '123456', '23', '0', null, '411512132306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2447', '41151213', '邬应林', '086030', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2448', '4115121308', '赵冉', '086367', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2449', '4115121318', '冯震', '086667', '男', null, null, null, null, '123456', '22', '0', null, '4115121318', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2450', '41151213', '张月', '086678', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2451', '4115121310', '邱仁贵', '086683', '男', null, null, null, null, '123456', '22', '0', null, '4115121310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2452', '4115121314', '赵献民', '086717', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2453', '4115121305', '张开华', '086732', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2454', '4115121305', '王勇', '086747', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2455', '4115121304', '杨涛', '086763', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2456', '4115121301', '陈东波', '086768', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2457', '4115121308', '赵太敏', '086782', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2458', '4115121311', '周梅', '086785', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2459', '4115121303', '汪继先', '086791', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2460', '4115121303', '谷铁柱', '086806', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2461', '4115121305', '项勇', '086814', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2462', '4115121317', '张荣友', '086816', '男', null, null, null, null, '123456', '22', '0', null, '4115121317', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2463', '4115121303', '郭远', '086827', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2464', '4115121311', '李信光', '086928', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2465', '4115121303', '刘威', '086952', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2466', '4115121302', '刘长河', '086968', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2467', '411512130103', '裴勇', '086993', '男', null, null, null, null, '123456', '23', '0', null, '411512130103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2468', '4115121304', '胡湘', '087008', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2469', '4115121304', '褚衡', '087285', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2470', '4115121306', '孙浩', '087422', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2471', '4115121305', '刘通', '087632', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2472', '41151213', '翁新民', '087999', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2473', '4115121320', '马少智', '088110', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2474', '4115121307', '吕本义', '088217', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2475', '4115121320', '李宗材', '088253', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2476', '4115121320', '李军远', '088311', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2477', '4115121320', '董稳', '088384', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2478', '4115121322', '鲍雨', '088411', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2479', '4115121311', '黄斌', '088456', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2480', '4115121322', '方义', '088468', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2481', '4115121322', '汪彦', '088486', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2482', '4115121322', '黄中兵', '088498', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2483', '4115121322', '彭俊', '088603', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2484', '4115121322', '贺先勇', '185723', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2485', '4115121307', '高富良', '186288', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2486', '4115121308', '李晓燕', '186663', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2487', '4115121307', '李德民', '186669', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2488', '4115121303', '尹路军', '186689', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2489', '4115121305', '胡庆昊', '186699', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2490', '4115121304', '张勇', '186768', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2491', '4115121301', '景立志', '186778', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2492', '4115121304', '汪明刚', '186789', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2493', '4115121301', '刘建伟', '186799', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2494', '41151213', '陈浩', '088669', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2495', '4115121322', '梅士学', '088673', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2496', '4115121322', '涂俊峰', '088676', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2497', '4115121322', '胡俊', '088679', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2498', '41151213', '彭宏才', '088757', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2499', '4115121321', '汪锋', '088787', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2500', '4115121321', '游光海', '088799', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2501', '4115121321', '张治才', '088848', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2502', '4115121321', '张祥舟', '088868', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2503', '4115121321', '章伟', '088878', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2504', '4115121314', '赵磊', '088909', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2505', '4115121321', '陈伟', '088911', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2506', '4115121321', '韩启荣', '088921', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2507', '4115121321', '梁善玉', '088923', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2508', '4115121321', '朱永胜', '088975', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2509', '4115121321', '杨家山', '088987', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2510', '4115121322', '夏志山', '088499', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2511', '4115121301', '李勇', '123', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2512', '41151811', '胡慡', '185001', '男', null, null, null, null, '123456', '22', '0', null, '41151811', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2513', '411512132310', '唐铭杰', '185006', '男', null, null, null, null, '123456', '23', '0', null, '411512132310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2514', '411512132309', '师亚宇', '185026', '男', null, null, null, null, '123456', '23', '0', null, '411512132309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2515', '411512132305', '袁友东', '185031', '男', null, null, null, null, '123456', '23', '0', null, '411512132305', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2516', '411512132302', '黄照星', '185036', '男', null, null, null, null, '123456', '23', '0', null, '411512132302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2517', '411512132306', '潘树华', '185099', '男', null, null, null, null, '123456', '23', '0', null, '411512132306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2518', '4115121320', '陈明', '185361', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2519', '41151405', '黄保林', '185393', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2520', '4115121320', '苏慧', '185396', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2521', '4115121322', '曾繁盛', '185671', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2522', '4115121322', '余海波', '185672', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2523', '4115121322', '李华家', '185675', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2524', '4115121322', '彭义伟', '185676', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2525', '4115121322', '谢奎', '185746', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2526', '4115121322', '李殊', '185753', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2527', '4115121306', '刘稳', '186602', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2528', '4115121307', '吴涛', '186606', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2529', '4115121304', '张海燕', '186615', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2530', '4115121308', '夏其平', '186618', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2531', '4115121314', '张勇', '186619', '男', null, null, null, null, '123456', '22', '0', null, '4115121314', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2532', '4115121310', '代岱', '186666', '男', null, null, null, null, '123456', '22', '0', null, '4115121310', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2533', '4115121303', '李代余', '186668', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2534', '4115121306', '李辉', '186681', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2535', '4115121305', '姚天晴', '186692', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2536', '4115121304', '熊伟', '186693', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2537', '4115121302', '李明顺', '186718', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2538', '4115121302', '谭大伟', '186719', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2539', '4115121303', '陈伟民', '186766', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2540', '4115121304', '胡忠', '186776', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2541', '4115121304', '周卫民', '186780', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2542', '4115121306', '王明军', '186786', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2543', '4115121303', '孔军伟', '186790', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2544', '4115121303', '陶世国', '186791', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2545', '4115121301', '吴国强', '186805', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2546', '4115121307', '薛林东', '186806', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2547', '4115121312', '李伟男', '186809', '男', null, null, null, null, '123456', '22', '0', null, '4115121312', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2548', '4115121303', '张豹', '186822', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2549', '4115121307', '王才良', '186829', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2550', '4115121307', '姚志田', '186855', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2551', '4115121316', '杨明耀', '186866', '男', null, null, null, null, '123456', '22', '0', null, '4115121316', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2552', '4115121301', '黄杰', '186878', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2553', '4115121308', '胡泉龙', '186880', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2554', '4115121304', '孟洪亮', '186888', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2555', '4115121301', '杨勇', '186896', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2556', '4115121321', '余意', '189825', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2557', '4115121321', '杜俊超', '189850', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2558', '4115121321', '黄伟波', '189871', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2559', '4115121321', '许磊', '189881', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2560', '4115121321', '邵家瑞', '189886', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2561', '4115121321', '杨威', '189906', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2562', '4115121321', '李静秋', '189933', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2563', '4115121321', '陈林', '189989', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2564', '4115121322', '张世忠', '088637', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2565', '4115121302', '毕华丽', 'BHL', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2566', '4115121301', '巴建东', 'BJD', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2567', '4115121301', '陈静雯', 'CJW', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2568', '411512132301', '蔡立新', 'CLX', '男', null, null, null, null, '123456', '23', '0', null, '411512132301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2569', '4115121302', '陈云章', '186685', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2570', '4115121301', '杜明东', '186662', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2571', '4115121301', '冯豪', 'FH', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2572', '4115121301', '冯丽', 'FL', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2573', '4115121301', '方留亚', 'FLY', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2574', '4115121323', '方鹏程', 'FPC', '男', null, null, null, null, '123456', '22', '0', null, '4115121323', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2575', '4115121302', '范韬', 'FT', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2576', '4115121301', '方运义', 'FYY', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2577', '4115121301', '郭峰', 'GF', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2578', '4115121301', '高辉', 'GH', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2579', '4115121320', '光山交警', 'GSJJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2580', '4115121301', '郭新阳', 'GXY', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2581', '4115121301', '高运胜', 'GYS', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2582', '4115121301', '顾祖东', '086771', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2583', '4115121301', '黄爱林', '186899', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2584', '4115121323', '淮滨交警', 'HBJJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121323', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2585', '4115121304', '惠春跃', 'HCY', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2586', '4115121302', '黄国安', '086623', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2587', '4115121301', '胡航', 'HH', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2588', '4115121308', '黄海波', 'HHB', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2589', '4115121301', '黄俊', 'HJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2590', '4115121308', '黄建军', 'HJJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2591', '4115121301', '郝敬毛', '087007', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2592', '41151213', '何文军', 'HWJ', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2593', '4115121309', '阚克成', 'KKC', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2594', '4115121301', '康卫东', 'KWD', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2595', '4115121301', '吕昌冬', 'LCD', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2596', '4115121302', '廖辉', 'LH', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2597', '4115121302', '李杰', '186770', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2598', '411512132308', '李俊海', 'LJH', '男', null, null, null, null, '123456', '23', '0', null, '411512132308', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2599', '4115121302', '林继军', 'LJJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2600', '4115121301', '林强', '186696', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2601', '4115121301', '李绍芳', 'LSF', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2602', '4115121301', '罗巍', 'LW', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2603', '4115121301', '李文举', 'LWJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2604', '4115121301', '吕喜军', '186801', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2605', '4115121301', '乐雨晴', 'LYQ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2606', '4115121301', '刘遵宇', 'LZY', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2607', '4115121302', '裴沛', 'PP', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2608', '4115121302', '裴清萍', '186679', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2609', '41151213', '强运辉', 'QYH', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2610', '4115121301', '任域', 'RY', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2611', '4115121301', '任中', '186627', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2612', '4115121304', '苏爱民', 'SAM', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2613', '4115121301', '孙俊瑞', 'SJR', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2614', '4115121302', '司强', '086902', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2615', '4115121302', '宋伟', '086887', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2616', '4115121302', '宋政', '086731', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2617', '4115121301', '陶静', 'TJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2618', '4115121301', '王长青', 'WCQ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2619', '4115121302', '万凤伟', '186608', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2620', '4115121301', '王海涛', 'WHT', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2621', '4115121301', '王明奎', '086798', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2622', '4115121301', '王燕军', 'WYJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2623', '4115121307', '王玉真', 'WYZ', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2624', '411512130103', '协管', 'XG', '男', null, null, null, null, '123456', '23', '0', null, '411512130103', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2625', '41151213', '信阳交警', 'XYJJ', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2626', '4115121302', '尹垵钧', 'YAJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2627', '4115121301', '闫彬', 'YB', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2628', '4115121320', '晏峰', 'YF', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2629', '4115121301', '袁君', 'YJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2630', '41151213', '杨丽', 'YL', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2631', '4115121302', '杨利杰', '186686', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2632', '4115121302', '喻起金', '086857', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2633', '4115121304', '杨晓东', 'YXD', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2634', '4115121303', '杨新宇', 'YXY', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2635', '4115121309', '张小红', 'Z', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2636', '4115121301', '周光军', 'ZGJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2637', '4115121302', '周海', 'ZH', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2638', '4115121301', '张娟', 'ZJ.', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2639', '4115121307', '周巨龙', 'ZJL', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2640', '4115121301', '湛林', 'ZL', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2641', '4115121301', '张立刚', 'ZLG', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2642', '4115121302', '张平善', 'ZPS', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2643', '4115121301', '张庆', 'ZQ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2644', '4115121301', '张世明', 'ZSM', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2645', '4115121307', '翟晓辉', 'ZXH', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2646', '4115121309', '周云', 'ZY', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2647', '4115121301', '周玉发', 'ZYF', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2648', '4115121302', '周峪涵', '086854', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2649', '41151213', '肖洋洋', 'ZGCG03', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2650', '4115121307', '孙明州', 'zgcg11', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2651', '4115121304', '学员2', '037602', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2652', '4115121304', '学员8', '037608', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2653', '4115121303', '学员9', '037609', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2654', '4115121302', '学员18', '037618', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2655', '4115121301', '陈桂芳', '186622', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2656', '4115121320', '杨彬', '185381', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2657', '4115121322', '程长青', '185735', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2658', '4115121322', '赵列昌', '088477', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2659', '4115121301', '李杰', '086759', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2660', '4115121301', '周伟', 'ZW', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2661', '4115121302', '曾庆明', 'ZQM', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2662', '4115121307', '康杰', '086907', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2663', '4115121308', '张锐', '186819', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2664', '4115121311', '李进村', '086890', '男', null, null, null, null, '123456', '22', '0', null, '4115121311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2665', '4115121320', '张玉阳', '088224', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2666', '4115121321', '施德库', '088918', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2667', '4115121322', '刘鹏', '185705', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2668', '411512132304', '王仁春2', 'WA', '男', null, null, null, null, '123456', '23', '0', null, '411512132304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2669', '41151213', '李远城', '086886', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2670', '41151213', '阚克成', '186788', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2671', '4115121302', '张予红', '086783', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2672', '4115121320', '黄猛', '088318', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2673', '4115121302', '学员13', '037613', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2674', '4115121302', '事故2组', '000002', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2675', '4115121302', '事故5组', '000005', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2676', '4115121302', '平桥中队1号', '000006', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2677', '4115121302', '上天梯中队1号', '000021', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2678', '4115121301', '四一路中队一', '100003', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2679', '4115121301', '事故中队6', '100021', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2680', '4115121320', '杨君', '088213', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2681', '4115121320', '余志方', '185515', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2682', '4115121320', '李永超', '088151', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2683', '4115121321', '高鹏', '189968', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2684', '4115121322', '李文生', '088696', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2685', '4115121304', '学员3', '037603', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2686', '4115121304', '学员7', '037607', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2687', '4115121303', '学员10', '037610', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2688', '4115121303', '学员11', '037611', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2689', '4115121303', '学员12', '037612', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2690', '4115121302', '学员14', '037614', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2691', '4115121302', '学员17', '037617', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2692', '4115121302', '学员19', '037619', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2693', '4115121302', '学员20', '037620', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2694', '4115121302', '学员21', '037621', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2695', '4115121302', '学员22', '037622', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2696', '4115121302', '张芃', '186683', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2697', '4115121302', '楚王城中队1号', '000011', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2698', '4115121302', '楚王城中队2号', '000012', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2699', '4115121302', '楚王城中队3号', '000013', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2700', '4115121302', '羊山中队2号', '000017', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2701', '4115121302', '羊山中队3号', '000018', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2702', '4115121302', '上天梯中队2号', '000022', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2703', '4115121301', '四一路中队2', '100004', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2704', '4115121301', '申城大道中队2', '100007', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2705', '4115121301', '东风中队1', '100008', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2706', '4115121301', '赵家桥中队1', '100009', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2707', '4115121301', '南湾中队1', '100014', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2708', '4115121301', '十三里桥中队1', '100015', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2709', '4115121301', '事故中队1', '100016', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2710', '4115121301', '事故中队2', '100017', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2711', '4115121301', '事故中队5', '100020', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2712', '4115121307', '张路强', '666', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2713', '4115121303', '王涛', 'MGGQ001', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2714', '4115121303', '李彬', 'MGGQ003', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2715', '411512132003', '余义勇', '088218', '男', null, null, null, null, '123456', '23', '0', null, '411512132003', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2716', '4115121320', '方明朝', '088324', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2717', '4115121304', '学员5', '037605', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2718', '4115121302', '事故1组', '000001', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2719', '4115121302', '事故4组', '000004', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2720', '4115121302', '平桥中队3号', '000008', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2721', '4115121302', '楚王城中队4号', '000014', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2722', '4115121302', '楚王城中队5号', '000015', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2723', '4115121302', '羊山中队1号', '000016', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2724', '4115121302', '羊山中队4号', '000019', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2725', '4115121302', '羊山中队5号', '000020', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2726', '4115121302', '上天梯中队3号', '000023', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2727', '4115121302', '工业城中队2号', '000025', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2728', '4115121301', '火车站中队1', '100001', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2729', '4115121301', '火车站中队2', '100002', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2730', '4115121301', '西关中队一', '100012', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2731', '4115121301', '事故中队3', '100018', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2732', '411512132003', '李勇', '185069', '男', null, null, null, null, '123456', '23', '0', null, '411512132003', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2733', '411512132003', '李辉', '185365', '男', null, null, null, null, '123456', '23', '0', null, '411512132003', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2734', '4115121301', '张家华', 'ZJH', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2735', '4115121303', '张新发', '087408', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2736', '4115121304', '学员6', '037606', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2737', '4115121301', '兰清华', '186815', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2738', '4115121303', '胡向明', '186823', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2739', '4115121305', '朱五星', '186856', '男', null, null, null, null, '123456', '22', '0', null, '4115121305', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2740', '4115121316', '方明政', '186886', '男', null, null, null, null, '123456', '22', '0', null, '4115121316', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2741', '4115121321', '吴俊', '189875', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2742', '4115121321', '黄祥君', '189890', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2743', '4115121321', '朱安定', '189978', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2744', '4115121301', '陈凤声', 'CFS', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2745', '4115121302', '程涛', '086793', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2746', '4115121302', '吕书现', 'LSX', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2747', '4115121302', '刘宇峰', 'LYF', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2748', '4115121304', '马岭', '186898', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2749', '4115121302', '齐文伟', 'QWW', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2750', '41151213', '王艺', 'SAKURA', '男', null, null, null, null, '123456', '19', '0', null, '41151213', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2751', '411512132301', '单利华', 'SLH', '男', null, null, null, null, '123456', '22', '0', null, '411512132301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2752', '4115121307', '尚晓莉', 'SXL', '男', null, null, null, null, '123456', '22', '0', null, '4115121307', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2753', '4115121302', '涂荣花', '086910', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2754', '4115121301', '吴菲', 'WF', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2755', '411512132304', '王仁春1', 'WR', '男', null, null, null, null, '123456', '23', '0', null, '411512132304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2756', '4115121309', '燕爱红', 'YAH', '男', null, null, null, null, '123456', '22', '0', null, '4115121309', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2757', '4115121301', '杨超', 'YC', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2758', '4115121302', '姚家俊', 'YJJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2759', '4115121301', '杨韬', 'YT', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2760', '4115121302', '袁志胜', '086809', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2761', '4115121301', '祝峰山', '186620', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2762', '4115121301', '张杰', 'ZJ', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2763', '4115121302', '朱凌', '086909', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2764', '4115121302', '张立志', '086953', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2765', '4115121302', '张全军', '186816', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2766', '4115121308', '宋守权', 'ZSQ', '男', null, null, null, null, '123456', '22', '0', null, '4115121308', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2767', '4115121304', '张相卫', '186916', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2768', '4115121302', '朱耀龙', '186758', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2769', '4115121302', '学员15', '037615', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2770', '4115121302', '学员16', '037616', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2771', '4115121303', '潘琦', 'MGGQ002', '男', null, null, null, null, '123456', '22', '0', null, '4115121303', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2772', '4115121302', '事故3组', '000003', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2773', '4115121304', '学员1', '037601', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2774', '4115121304', '学员4', '037604', '男', null, null, null, null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2775', '4115121302', '平桥中队2号', '000007', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2776', '4115121302', '平桥中队4号', '000009', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2777', '4115121302', '平桥中队5号', '000010', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2778', '4115121302', '工业城中队1号', '000024', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2779', '4115121302', '工业城中队3号', '000026', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2780', '4115121302', '工业城中队4号', '000027', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2781', '4115121302', '二大队法制', '000028', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2782', '4115121301', '中山路中队一', '100005', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2783', '4115121301', '申城大道中队1', '100006', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2784', '4115121301', '肖家湾中队1', '100010', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2785', '4115121301', '肖家湾中队2', '100011', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2786', '4115121301', '西关中队二', '100013', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2787', '4115121301', '事故中队4', '100019', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2788', '411512132402', '张运华', '085396', '男', null, null, null, null, '123456', '23', '0', null, '411512132402', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2789', '411512132406', '杜太平', '085408', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2790', '4115121324', '王晓东', '085421', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2791', '4115121324', '温宏伟', '085432', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2792', '411512132406', '彭明豪', '085442', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2793', '4115121324', '邱继红', '085505', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2794', '411512132402', '毕华海', '085537', '男', null, null, null, null, '123456', '23', '0', null, '411512132402', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2795', '411512132403', '王豪', '085544', '男', null, null, null, null, '123456', '23', '0', null, '411512132403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2796', '411512132403', '尚明强', '085550', '男', null, null, null, null, '123456', '23', '0', null, '411512132403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2797', '411512132406', '秦少华', '085554', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2798', '411512132407', '陈秋', '085556', '男', null, null, null, null, '123456', '23', '0', null, '411512132407', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2799', '411512132409', '夏伟华', '085558', '男', null, null, null, null, '123456', '23', '0', null, '411512132409', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2800', '411512132404', '彭勇', '085561', '男', null, null, null, null, '123456', '23', '0', null, '411512132404', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2801', '4115121324', '谢勇', '085589', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2802', '411512132409', '王玲', '085632', '男', null, null, null, null, '123456', '23', '0', null, '411512132409', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2803', '4115121324', '腾雅威', '085637', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2804', '4115121324', '王学志', '085649', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2805', '411512132406', '熊威', '189376', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2806', '411512132406', '胡斌', '189380', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2807', '411512132401', '罗勇', '189464', '男', null, null, null, null, '123456', '23', '0', null, '411512132401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2808', '411512132407', '冯骞', '189514', '男', null, null, null, null, '123456', '23', '0', null, '411512132407', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2809', '411512132405', '付从建', '189515', '男', null, null, null, null, '123456', '23', '0', null, '411512132405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2810', '4115121324', '何海涛', '189519', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2811', '4115121324', '贾秀红', '189520', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2812', '4115121324', '罗强', '189523', '男', null, null, null, null, '123456', '22', '0', null, '4115121324', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2813', '411512132406', '王钟铭', '189525', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2814', '411512132406', '杨礼诚', '189526', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2815', '411512132408', '周一凡', '189528', '男', null, null, null, null, '123456', '23', '0', null, '411512132408', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2816', '411512132406', '徐浩林', '189577', '男', null, null, null, null, '123456', '23', '0', null, '411512132406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2817', '411512132401', '何海涛', 'HHT', '男', null, null, null, null, '123456', '23', '0', null, '411512132401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2818', '411512132511', '潘静', '084373', '男', null, null, null, null, '123456', '23', '0', null, '411512132511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2819', '411512132503', '王清', '084422', '男', null, null, null, null, '123456', '23', '0', null, '411512132503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2820', '41151514', '李纲', '084594', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2821', '411512132506', '周由合', '084600', '男', null, null, null, null, '123456', '23', '0', null, '411512132506', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2822', '4115121325', '彭仁乾', '084602', '男', null, null, null, null, '123456', '22', '0', null, '4115121325', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2823', '411512132503', '刘克海', '084630', '男', null, null, null, null, '123456', '23', '0', null, '411512132503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2824', '411512132504', '吴忠亮', '084638', '男', null, null, null, null, '123456', '23', '0', null, '411512132504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2825', '411512132503', '郭潮江', '084671', '男', null, null, null, null, '123456', '23', '0', null, '411512132503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2826', '411512132509', '董海涛', '084673', '男', null, null, null, null, '123456', '23', '0', null, '411512132509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2827', '411512132509', '赵鑫', '084687', '男', null, null, null, null, '123456', '23', '0', null, '411512132509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2828', '411512132507', '杜功明', '084700', '男', null, null, null, null, '123456', '23', '0', null, '411512132507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2829', '411512132510', '段家材', '084705', '男', null, null, null, null, '123456', '23', '0', null, '411512132510', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2830', '411512132504', '余斌', '084707', '男', null, null, null, null, '123456', '23', '0', null, '411512132504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2831', '411512132510', '胡兵', '084709', '男', null, null, null, null, '123456', '23', '0', null, '411512132510', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2832', '411512132511', '白艳丽', '084716', '男', null, null, null, null, '123456', '23', '0', null, '411512132511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2833', '411512132503', '冯熠灿', '084718', '男', null, null, null, null, '123456', '23', '0', null, '411512132503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2834', '411512132505', '程波', '084727', '男', null, null, null, null, '123456', '23', '0', null, '411512132505', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2835', '411512132510', '顾凯', '084733', '男', null, null, null, null, '123456', '23', '0', null, '411512132510', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2836', '411512132502', '袁野', '084783', '男', null, null, null, null, '123456', '23', '0', null, '411512132502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2837', '411512132505', '刘进', '084786', '男', null, null, null, null, '123456', '23', '0', null, '411512132505', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2838', '411512132511', '王明春', '084806', '男', null, null, null, null, '123456', '23', '0', null, '411512132511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2839', '411512132506', '周家兵', '084808', '男', null, null, null, null, '123456', '23', '0', null, '411512132506', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2840', '411512132509', '郭潮江', 'GCJ', '男', null, null, null, null, '123456', '23', '0', null, '411512132509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2841', '411512132512', '李坤', '084769', '男', null, null, null, null, '123456', '23', '0', null, '411512132512', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2842', '411512132510', '陈宏斌', '188596', '男', null, null, null, null, '123456', '23', '0', null, '411512132510', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2843', '411512132507', '王磊', '084625', '男', null, null, null, null, '123456', '23', '0', null, '411512132507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2844', '411512132507', '姚熠', '084699', '男', null, null, null, null, '123456', '23', '0', null, '411512132507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2845', '411512132507', '张贵凯', '084691', '男', null, null, null, null, '123456', '23', '0', null, '411512132507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2846', '411512132503', '黄松林', '084421', '男', null, null, null, null, '123456', '23', '0', null, '411512132503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2847', '411512132511', '许侃', '084672', '男', null, null, null, null, '123456', '23', '0', null, '411512132511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2848', '411512132511', '李东', '084395', '男', null, null, null, null, '123456', '23', '0', null, '411512132511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2849', '411512132507', '邓宇红', '45078207', '男', null, null, null, null, '123456', '23', '0', null, '411512132507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2850', '411512132507', '邓宇红', '45078206', '男', null, null, null, null, '123456', '23', '0', null, '411512132507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2851', '411512132509', '王继远', '084729', '男', null, null, null, null, '123456', '23', '0', null, '411512132509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2852', '41151514', '姜保成', '084675', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2853', '411512132611', '孙东谋', '084020', '男', null, null, null, null, '123456', '23', '0', null, '411512132611', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2854', '411512132602', '沈建国', '084095', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2855', '411512132611', '王健', '084103', '男', null, null, null, null, '123456', '23', '0', null, '411512132611', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2856', '411512132608', '谭怀清', '084147', '男', null, null, null, null, '123456', '23', '0', null, '411512132608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2857', '4115121326', '李群宏', '084165', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2858', '4115121326', '鲁刚', '084167', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2859', '4115121326', '张爱林', '084168', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2860', '411512132601', '鲁伟', '084169', '男', null, null, null, null, '123456', '23', '0', null, '411512132601', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2861', '411512132607', '刘承业', '084171', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2862', '411512132607', '罗毅轩', '084173', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2863', '4115121326', '姜明昌', '084175', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2864', '411512132602', '陈德刚', '084178', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2865', '411512132603', '贺常明', '084179', '男', null, null, null, null, '123456', '23', '0', null, '411512132603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2866', '411512132607', '胡永', '084180', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2867', '411512132602', '罗建东', '084181', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2868', '4115121326', '邓明', '084186', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2869', '411512132607', '王运国', '084187', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2870', '411512132608', '陈刚', '084188', '男', null, null, null, null, '123456', '23', '0', null, '411512132608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2871', '411512132609', '屈扬', '084190', '男', null, null, null, null, '123456', '23', '0', null, '411512132609', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2872', '41151611', '罗昊', '084191', '男', null, null, null, null, '123456', '23', '0', null, '41151611', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2873', '411512132602', '杨发枝', '084192', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2874', '411512132609', '胡汉强', '084193', '男', null, null, null, null, '123456', '23', '0', null, '411512132609', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2875', '411512132606', '代登春', '084194', '男', null, null, null, null, '123456', '23', '0', null, '411512132606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2876', '411512132602', '翟运方', '084195', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2877', '4115121326', '易德来', '084196', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2878', '4115121326', '熊焘', '084197', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2879', '411512132612', '张华', '084199', '男', null, null, null, null, '123456', '23', '0', null, '411512132612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2880', '4115121326', '林祖兵', '084202', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2881', '411512132608', '赵家新', '084203', '男', null, null, null, null, '123456', '23', '0', null, '411512132608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2882', '411512132612', '方俊', '084212', '男', null, null, null, null, '123456', '23', '0', null, '411512132612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2883', '411512132602', '尚刚', '084218', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2884', '4115121326', '刑立坤', '084287', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2885', '4115121326', '孙章宏', '084305', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2886', '411512132610', '袁海涛', '084311', '男', null, null, null, null, '123456', '23', '0', null, '411512132610', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2887', '411512132607', '张倩', '084357', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2888', '411512132601', '梁莉', '084358', '男', null, null, null, null, '123456', '23', '0', null, '411512132601', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2889', '411512132607', '徐玉霞', '084365', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2890', '411512132601', '李锐', '084366', '男', null, null, null, null, '123456', '23', '0', null, '411512132601', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2891', '4115121326', '刘君', '084367', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2892', '411512132602', '周俊', '084368', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2893', '4115121326', '丁艳', '084369', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2894', '411512132602', '张媛洁', '188001', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2895', '411512132602', '金淼', '188019', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2896', '411512132607', '张玉', '188029', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2897', '411512132613', '屈守乾', '188031', '男', null, null, null, null, '123456', '23', '0', null, '411512132613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2898', '411512132602', '张传偿', '188036', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2899', '411512132608', '陈光汉', '188039', '男', null, null, null, null, '123456', '23', '0', null, '411512132608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2900', '411512132612', '曹杰', '188057', '男', null, null, null, null, '123456', '23', '0', null, '411512132612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2901', '411512132610', '曾照强', '188062', '男', null, null, null, null, '123456', '23', '0', null, '411512132610', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2902', '411512132609', '张雷', '188075', '男', null, null, null, null, '123456', '23', '0', null, '411512132609', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2903', '41151621', '戴戈', '188109', '男', null, null, null, null, '123456', '23', '0', null, '41151621', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2904', '411512132611', '张功伟', '188150', '男', null, null, null, null, '123456', '23', '0', null, '411512132611', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2905', '411512132602', '卢浩', '188151', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2906', '4115121326', '常何', 'CH', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2907', '4115121326', '董海生', '084093', '男', null, null, null, null, '123456', '22', '0', null, '4115121326', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2908', '411515', 'HC', 'HC', '男', null, null, null, null, '123456', '22', '0', null, '411515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2909', '41151823', '杨峻岩', '189385', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2910', '411512132608', '龚子清', '188053', '男', null, null, null, null, '123456', '23', '0', null, '411512132608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2911', '411512132608', '张毅', '188022', '男', null, null, null, null, '123456', '23', '0', null, '411512132608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2912', '4115121322', '侯新伟', '185750', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2913', '411512132101', '汤冬阳', 'TDY123456', '男', null, null, null, null, '123456', '22', '0', null, '411512132101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2914', '41151804', '张楠', 'ZA0001', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2915', '41151804', '余强', 'ZA0011', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2916', '4115121322', '刘杰', '088408', '男', null, null, null, null, '123456', '22', '0', null, '4115121322', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2917', '4115121301', '事故108', '100030', '男', null, null, null, null, '123456', '22', '0', null, '4115121301', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2918', '41150701', '董守志', '088039', '男', null, null, null, null, '123456', '23', '0', null, '41150701', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2919', '4115121323', '卢涛', '085697', '男', null, null, null, null, '123456', '22', '0', null, '4115121323', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2920', '4115121320', '张晓琳', '088231', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2921', '4115121320', '贾汉广', '088205', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2922', '41151835', '张刚', '189570', '男', null, null, null, null, '123456', '23', '0', null, '41151835', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2923', '4115121321', '杨春', '190000', '男', null, null, null, null, '123456', '22', '0', null, '4115121321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2924', '41151804', '何亚辉', 'ZA0038', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2925', '411512132304', '张新成', '085941', '男', null, null, null, null, '123456', '23', '0', null, '411512132304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2926', '41151823', '杨燕', '085471', '男', null, null, null, null, '123456', '23', '0', null, '41151823', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2927', '411517', 'SC', 'SC', '男', null, null, null, null, '123456', '22', '0', null, '411517', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2928', '41151707', '毛永亮', '088640', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2929', '41151707', '杨永超', '088674', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2930', '41151707', '洪  勇', '088422', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2931', '41151707', '夏小雨', '185715', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2932', '41151707', '岳志刚', '185729', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2933', '41151707', '宋  燚', '185725', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2934', '41151708', '雷  刚', '088729', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2935', '41151708', '陈建国', '088672', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2936', '41151708', '陈胜', '088407', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2937', '41151708', '张忠新', '185708', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2938', '41151708', '李  飞', '185697', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2939', '41151708', '刘帆', '088413', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2940', '41151708', '何雨云', '088492', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2941', '41151708', '孙俊峰', '088602', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2942', '41151708', '胡盛俊', '088604', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2943', '41151708', '柯亭广', '088624', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2944', '41151708', '梅  寒', '088726', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2945', '41151708', '叶梦华', '088634', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2946', '41151710', '陈永琼', '185812', '男', null, null, null, null, '123456', '23', '0', null, '41151710', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2947', '41151710', '付昌勇', '088657', '男', null, null, null, null, '123456', '23', '0', null, '41151710', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2948', '41151710', '严贵祥', '088461', '男', null, null, null, null, '123456', '23', '0', null, '41151710', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2949', '41151710', '钱睿奇', '185743', '男', null, null, null, null, '123456', '23', '0', null, '41151710', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2950', '41151712', '夏厚炜', '185809', '男', null, null, null, null, '123456', '23', '0', null, '41151712', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2951', '41151712', '余浩然', '185742', '男', null, null, null, null, '123456', '23', '0', null, '41151712', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2952', '41151712', '赵子斌', '088485', '男', null, null, null, null, '123456', '23', '0', null, '41151712', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2953', '41151712', '徐保国', '088460', '男', null, null, null, null, '123456', '23', '0', null, '41151712', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2954', '41151702', '石亚俐', '088433', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2955', '41151702', '彭炯潭', '185782', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2956', '41151702', '马高阳', '185779', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2957', '41151702', '何海雁', '186000', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2958', '41151702', '姚明杰', '185781', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2959', '41151702', '周  魁', '088497', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2960', '41151702', '余尚文', '088935', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2961', '41151702', '齐  跻', '185780', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2962', '41151702', '李永生', '185680', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2963', '41151720', '吕海波', '185757', '男', null, null, null, null, '123456', '23', '0', null, '41151720', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2964', '41151720', '吴  阳', '088648', '男', null, null, null, null, '123456', '23', '0', null, '41151720', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2965', '41151720', '柳  干', '185790', '男', null, null, null, null, '123456', '23', '0', null, '41151720', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2966', '41151704', '黄真强', '088447', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2967', '41151732', '王  聪', '185813', '男', null, null, null, null, '123456', '23', '0', null, '41151732', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2968', '41151732', '王先锋', '088569', '男', null, null, null, null, '123456', '23', '0', null, '41151732', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2969', '41151706', '张生国', '088635', '男', null, null, null, null, '123456', '23', '0', null, '41151706', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2970', '41151706', '胡晓昱', '088421', '男', null, null, null, null, '123456', '23', '0', null, '41151706', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2971', '41151706', '刘子维', '185770', '男', null, null, null, null, '123456', '23', '0', null, '41151706', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2972', '41151706', '赵俊冉', '185696', '男', null, null, null, null, '123456', '23', '0', null, '41151706', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2973', '41151711', '张德付', '088708', '男', null, null, null, null, '123456', '23', '0', null, '41151711', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2974', '41151711', '杨  超', '088463', '男', null, null, null, null, '123456', '23', '0', null, '41151711', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2975', '41151711', '苏伟中', '088440', '男', null, null, null, null, '123456', '23', '0', null, '41151711', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2976', '41151726', '胡  堃', '088734', '男', null, null, null, null, '123456', '23', '0', null, '41151726', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2977', '41151726', '梁  帆', '185703', '男', null, null, null, null, '123456', '23', '0', null, '41151726', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2978', '41151725', '丁纪峰', '088633', '男', null, null, null, null, '123456', '23', '0', null, '41151725', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2979', '41151707', '易三虎', '088445', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2980', '41151725', '周  烨', '185747', '男', null, null, null, null, '123456', '23', '0', null, '41151725', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2981', '41151725', '黄定林', '111114', '男', null, null, null, null, '123456', '23', '0', null, '41151725', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2982', '41151709', '王浩东', '088575', '男', null, null, null, null, '123456', '23', '0', null, '41151709', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2983', '41151709', '王俊清', '185681', '男', null, null, null, null, '123456', '23', '0', null, '41151709', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2984', '411517', '吴钟辉', '088514', '男', null, null, null, null, '123456', '22', '0', null, '411517', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2985', '41151709', '赵思奇', '185821', '男', null, null, null, null, '123456', '23', '0', null, '41151709', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2986', '41151709', '黄海涛', '185802', '男', null, null, null, null, '123456', '23', '0', null, '41151709', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2987', '41151705', '田永刚', '088654', '男', null, null, null, null, '123456', '23', '0', null, '41151705', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2988', '41151705', '王青松', '088494', '男', null, null, null, null, '123456', '23', '0', null, '41151705', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2989', '41151705', '胡行涛', '185712', '男', null, null, null, null, '123456', '23', '0', null, '41151705', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2990', '41151704', '赵国相', '185792', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2991', '41151704', '盛启润', '185720', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2992', '41151704', '谢永皓', '185718', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2993', '41151704', '朱  熔', '185706', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2994', '41151704', '张  昊', '111116', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2995', '41151704', '谢宇航', 'FJ1016', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2996', '41151719', '刘梦遥', '088740', '男', null, null, null, null, '123456', '23', '0', null, '41151719', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2997', '41151719', '李冰松', '185817', '男', null, null, null, null, '123456', '23', '0', null, '41151719', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2998', '41151708', '袁  来', '088437', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('2999', '41151719', '余少新', '088534', '男', null, null, null, null, '123456', '23', '0', null, '41151719', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3000', '41151728', '余本勇', '088430', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3001', '41151728', '胡家红', '088543', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3002', '41151728', '雷前海', '088627', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3003', '41151728', '刘振锋', '088707', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3004', '41151717', '曹乃富', '088601', '男', null, null, null, null, '123456', '23', '0', null, '41151717', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3005', '41151717', '熊  威', '185769', '男', null, null, null, null, '123456', '23', '0', null, '41151717', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3006', '41151717', '万  方', '088704', '男', null, null, null, null, '123456', '23', '0', null, '41151717', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3007', '41151718', '李福林', '088670', '男', null, null, null, null, '123456', '23', '0', null, '41151718', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3008', '41151718', '李绪宏', '088484', '男', null, null, null, null, '123456', '23', '0', null, '41151718', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3009', '41151718', '雷丙锋', '185710', '男', null, null, null, null, '123456', '23', '0', null, '41151718', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3010', '41151718', '王  鸣', '185822', '男', null, null, null, null, '123456', '23', '0', null, '41151718', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3011', '41151731', '李  超', '088462', '男', null, null, null, null, '123456', '23', '0', null, '41151731', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3012', '41151731', '杨  虎', '185679', '男', null, null, null, null, '123456', '23', '0', null, '41151731', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3013', '41151714', '黄遵双', '088652', '男', null, null, null, null, '123456', '23', '0', null, '41151714', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3014', '41151714', '周长青', '088662', '男', null, null, null, null, '123456', '23', '0', null, '41151714', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3015', '41151714', '刘远豪', '185772', '男', null, null, null, null, '123456', '23', '0', null, '41151714', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3016', '41151714', '章永訢', '185771', '男', null, null, null, null, '123456', '23', '0', null, '41151714', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3017', '41151708', '彭玉泉', '088717', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3018', '41151729', '熊永海', '088586', '男', null, null, null, null, '123456', '23', '0', null, '41151729', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3019', '41151729', '林兴益', '088614', '男', null, null, null, null, '123456', '23', '0', null, '41151729', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3020', '41151729', '汪阳春', '088559', '男', null, null, null, null, '123456', '23', '0', null, '41151729', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3021', '41151713', '朱丹阳', '088415', '男', null, null, null, null, '123456', '23', '0', null, '41151713', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3022', '41151713', '蒋孝军', '088404', '男', null, null, null, null, '123456', '23', '0', null, '41151713', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3023', '41151715', '肖凤洋', '088743', '男', null, null, null, null, '123456', '23', '0', null, '41151715', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3024', '41151715', '杨先强', '088584', '男', null, null, null, null, '123456', '23', '0', null, '41151715', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3025', '41151715', '黄恩祥', '185682', '男', null, null, null, null, '123456', '23', '0', null, '41151715', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3026', '41151715', '张海峰', '185830', '男', null, null, null, null, '123456', '23', '0', null, '41151715', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3027', '41151722', '胡  清', '088444', '男', null, null, null, null, '123456', '23', '0', null, '41151722', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3028', '411517', '雷  超', '088725', '男', null, null, null, null, '123456', '22', '0', null, '411517', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3029', '41151722', '杨术金', '185695', '男', null, null, null, null, '123456', '23', '0', null, '41151722', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3030', '41151722', '胡长金', '185768', '男', null, null, null, null, '123456', '23', '0', null, '41151722', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3031', '41151721', '李长兵', '088701', '男', null, null, null, null, '123456', '23', '0', null, '41151721', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3032', '41151721', '梅世堂', '185683', '男', null, null, null, null, '123456', '23', '0', null, '41151721', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3033', '41151721', '杨晓伟', '185719', '男', null, null, null, null, '123456', '23', '0', null, '41151721', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3034', '41151716', '余文庆', '185825', '男', null, null, null, null, '123456', '23', '0', null, '41151716', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3035', '41151716', '何  康', '185728', '男', null, null, null, null, '123456', '23', '0', null, '41151716', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3036', '41151716', '严辉江', '088446', '男', null, null, null, null, '123456', '23', '0', null, '41151716', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3037', '41151716', '余帆', '185828', '男', null, null, null, null, '123456', '23', '0', null, '41151716', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3038', '41151730', '王  静', '185692', '男', null, null, null, null, '123456', '23', '0', null, '41151730', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3039', '41151703', '杨允成', '185765', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3040', '41151703', '陈  哲', '185716', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3041', '41151703', '杨传森', '185690', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3042', '41151703', '余尚平', '088472', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3043', '41151703', '严传杰', '185826', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3044', '41151703', '孙良浩', '185783', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3045', '41151703', '陈安周', '185687', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3046', '41151703', '刘林松', '088524', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3047', '41151724', '李明刚', '088677', '男', null, null, null, null, '123456', '23', '0', null, '41151724', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3048', '41151724', '刘振军', '088715', '男', null, null, null, null, '123456', '23', '0', null, '41151724', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3049', '41151724', '刘开昊', '185767', '男', null, null, null, null, '123456', '23', '0', null, '41151724', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3050', '41151724', '秦金鑫', '185786', '男', null, null, null, null, '123456', '23', '0', null, '41151724', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3051', '41151723', '贺  正', '185722', '男', null, null, null, null, '123456', '23', '0', null, '41151723', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3052', '41151727', '宋时霖', '088678', '男', null, null, null, null, '123456', '23', '0', null, '41151727', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3053', '41151727', '何鸣鸣', '185688', '男', null, null, null, null, '123456', '23', '0', null, '41151727', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3054', '41151702', '周  军', '185702', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3055', '411517', '梅俊峰', '185693', '男', null, null, null, null, '123456', '22', '0', null, '411517', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3056', '41151732', '张玉弓', '185731', '男', null, null, null, null, '123456', '23', '0', null, '41151732', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3057', '41151707', '周丛雷', '088557', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3058', '41151707', '何  楠', '088450', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3059', '41151721', '周钊', '088711', '男', null, null, null, null, '123456', '23', '0', null, '41151721', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3060', '41151713', '肖金勇', '185773', '男', null, null, null, null, '123456', '23', '0', null, '41151713', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3061', '411512132310', '吴海波', '085930', '男', null, null, null, null, '123456', '23', '0', null, '411512132310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3062', '41151804', '贾景超', 'ZA0062', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3063', '41151507', '雷震', '084725', '男', null, null, null, null, '123456', '23', '0', null, '41151507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3064', '41151507', '宋佩', '084810', '男', null, null, null, null, '123456', '23', '0', null, '41151507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3065', '41151507', '刘裕义', '188538', '男', null, null, null, null, '123456', '23', '0', null, '41151507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3066', '41151705', '陈  葳', '185776', '男', null, null, null, null, '123456', '23', '0', null, '41151705', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3067', '411511', 'HB', 'HB', '男', null, null, null, null, '123456', '22', '0', null, '411511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3068', '41151101', '李军威', '085753', '男', null, null, null, null, '123456', '23', '0', null, '41151101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3069', '41151101', '杜炜', '085947', '男', null, null, null, null, '123456', '23', '0', null, '41151101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3070', '41151112', '周洪旭', '085827', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3071', '41151112', '李保华', '085950', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3072', '41151112', '陈亭', '085872', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3073', '41151112', '何政', '085966', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3074', '41151112', '周立强', '085952', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3075', '41151112', '刘猛', '085906', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3076', '41151112', '赵怀江', '185014', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3077', '41151112', '殷章军', '185043', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3078', '41151112', '张禹', '085773', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3079', '41151123', '董刚', '085859', '男', null, null, null, null, '123456', '23', '0', null, '41151123', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3080', '41151123', '宋光明', '085948', '男', null, null, null, null, '123456', '23', '0', null, '41151123', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3081', '41151123', '张强', '185045', '男', null, null, null, null, '123456', '23', '0', null, '41151123', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3082', '41151110', '霍桓', '185072', '男', null, null, null, null, '123456', '23', '0', null, '41151110', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3083', '41151110', '王东', '无', '男', null, null, null, null, '123456', '23', '0', null, '41151110', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3084', '41151120', '刘冰', '185041', '男', null, null, null, null, '123456', '23', '0', null, '41151120', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3085', '41151120', '任行俊', '185067', '男', null, null, null, null, '123456', '23', '0', null, '41151120', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3086', '41151122', '刘辉', '085861', '男', null, null, null, null, '123456', '23', '0', null, '41151122', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3087', '41151122', '张俊凯', '085980', '男', null, null, null, null, '123456', '23', '0', null, '41151122', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3088', '41151122', '王义志', '185059', '男', null, null, null, null, '123456', '23', '0', null, '41151122', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3089', '41151121', '梅树伟', '085802', '男', null, null, null, null, '123456', '23', '0', null, '41151121', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3090', '41151121', '毛兰富', '085911', '男', null, null, null, null, '123456', '23', '0', null, '41151121', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3091', '41151121', '孙广伟', '185015', '男', null, null, null, null, '123456', '23', '0', null, '41151121', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3092', '41151121', '高松', '185087', '男', null, null, null, null, '123456', '23', '0', null, '41151121', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3093', '41151118', '王中付', '085891', '男', null, null, null, null, '123456', '23', '0', null, '41151118', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3094', '41151118', '张健', '185029', '男', null, null, null, null, '123456', '23', '0', null, '41151118', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3095', '41151103', '李杰', '085701', '男', null, null, null, null, '123456', '23', '0', null, '41151103', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3096', '41151103', '冯洋', '185089', '男', null, null, null, null, '123456', '23', '0', null, '41151103', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3097', '41151104', '王勇', '085791', '男', null, null, null, null, '123456', '23', '0', null, '41151104', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3098', '41151104', '司元平', '185082', '男', null, null, null, null, '123456', '23', '0', null, '41151104', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3099', '41151110', '李昱锟', '085945', '男', null, null, null, null, '123456', '23', '0', null, '41151110', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3100', '41151110', '王滨', '085943', '男', null, null, null, null, '123456', '23', '0', null, '41151110', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3101', '41151102', '孙治龙', '185033', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3102', '41151102', '黄一', '085932', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3103', '41151102', '郑波', '085780', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3104', '41151102', '鲍永君', '185068', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3105', '41151102', '蒲进辉', '085836', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3106', '41151102', '孙久扩', '085967', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3107', '41151124', '许涛', '185079', '男', null, null, null, null, '123456', '23', '0', null, '41151124', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3108', '41151124', '陶树亮', '085918', '男', null, null, null, null, '123456', '23', '0', null, '41151124', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3109', '41151105', '费中友', '085931', '男', null, null, null, null, '123456', '23', '0', null, '41151105', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3110', '41151105', '姜体华', '085902', '男', null, null, null, null, '123456', '23', '0', null, '41151105', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3111', '41151105', '李平亮', '085850', '男', null, null, null, null, '123456', '23', '0', null, '41151105', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3112', '41151105', '周鹏', '185057', '男', null, null, null, null, '123456', '23', '0', null, '41151105', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3113', '41151107', '谢维', '085897', '男', null, null, null, null, '123456', '23', '0', null, '41151107', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3114', '41151107', '谢祎达', '未知', '男', null, null, null, null, '123456', '23', '0', null, '41151107', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3115', '41151107', '杨雪东', '185077', '男', null, null, null, null, '123456', '23', '0', null, '41151107', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3116', '41151107', '张学周', '085739', '男', null, null, null, null, '123456', '23', '0', null, '41151107', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3117', '41151108', '吕辉', '085972', '男', null, null, null, null, '123456', '23', '0', null, '41151108', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3118', '41151106', '王垒', '085907', '男', null, null, null, null, '123456', '23', '0', null, '41151106', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3119', '41151106', '武洪涛', '185061', '男', null, null, null, null, '123456', '23', '0', null, '41151106', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3120', '41151106', '徐伟', '185022', '男', null, null, null, null, '123456', '23', '0', null, '41151106', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3121', '41151119', '苏洋', '085833', '男', null, null, null, null, '123456', '23', '0', null, '41151119', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3122', '41151116', '潘可', '085955', '男', null, null, null, null, '123456', '23', '0', null, '41151116', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3123', '41151116', '丁耀平', '185030', '男', null, null, null, null, '123456', '23', '0', null, '41151116', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3124', '41151116', '杨波', '185047', '男', null, null, null, null, '123456', '23', '0', null, '41151116', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3125', '41151115', '王振清', '085881', '男', null, null, null, null, '123456', '23', '0', null, '41151115', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3126', '41151115', '程昱斌', '185095', '男', null, null, null, null, '123456', '23', '0', null, '41151115', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3127', '41151115', '胡振', '185084', '男', null, null, null, null, '123456', '23', '0', null, '41151115', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3128', '41151115', '张安安', '185065', '男', null, null, null, null, '123456', '23', '0', null, '41151115', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3129', '41151117', '黄志', '085888', '男', null, null, null, null, '123456', '23', '0', null, '41151117', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3130', '41151117', '陈晶', '185054', '男', null, null, null, null, '123456', '23', '0', null, '41151117', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3131', '41151117', '郭洪涛', '085878', '男', null, null, null, null, '123456', '23', '0', null, '41151117', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3132', '41151109', '黄亮', '085775', '男', null, null, null, null, '123456', '23', '0', null, '41151109', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3133', '41151111', '林伟', '085757', '男', null, null, null, null, '123456', '23', '0', null, '41151111', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3134', '41151111', '付运茂', '085732', '男', null, null, null, null, '123456', '23', '0', null, '41151111', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3135', '41151111', '任远东', '085728', '男', null, null, null, null, '123456', '23', '0', null, '41151111', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3136', '41151111', '陈淮', '085919', '男', null, null, null, null, '123456', '23', '0', null, '41151111', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3137', '41151108', '任俊辉', '185040', '男', null, null, null, null, '123456', '23', '0', null, '41151108', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3138', '41151108', '符运峰', '085996', '男', null, null, null, null, '123456', '23', '0', null, '41151108', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3139', '41151124', '董军', '185092', '男', null, null, null, null, '123456', '23', '0', null, '41151124', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3140', '41151507', '邢鑫', '188523', '男', null, null, null, null, '123456', '23', '0', null, '41151507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3141', '41151507', '李亚茹', '188391', '男', null, null, null, null, '123456', '23', '0', null, '41151507', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3142', '41151501', '彭世忠', '084561', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3143', '41151501', '周斌', '084557', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3144', '41151501', '岳昌国', '084573', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3145', '41151501', '姜中献', '084612', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3146', '41151501', '刘征', '084599', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3147', '41151501', '喻仙', '188387', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3148', '41151501', '向上', '188389', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3149', '41151501', '余西印', '084571', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3150', '41151501', '张楠文', '084518', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3151', '41151501', '贾鸿波', '188409', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3152', '41151501', '李雨江', '188366', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3153', '41151501', '余海龙', '188362', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3154', '41151501', '刘海鑫', '084565', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3155', '41151501', '余军', '084585', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3156', '41151501', '程玉琳', '084785', '男', null, null, null, null, '123456', '23', '0', null, '41151501', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3157', '41151113', '祝明明', '185009', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3158', '41151113', '蔡鹏辉', '185012', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3159', '41151510', '陈锋', '084578', '男', null, null, null, null, '123456', '23', '0', null, '41151510', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3160', '41151506', '张钧', '084633', '男', null, null, null, null, '123456', '23', '0', null, '41151506', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3161', '41151511', '向羽', '188583', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3162', '41151511', '庞威', '084491', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3163', '41151511', '吴自刚', '188588', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3164', '41151511', '余德宏', '084512', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3165', '41151511', '杨志文', '084741', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3166', '41151511', '余浩', '188352', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3167', '41151511', '程伟', '084753', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3168', '41151511', '刘代兵', '188385', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3169', '41151511', '胡鹍', '084784', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3170', '41151511', '沈嘉启', '188589', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3171', '41151511', '聂宏伟', '188365', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3172', '41151511', '周刚', '188386', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3173', '41151511', '宋阳阳', '188356', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3174', '41151511', '周心意', '188590', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3175', '41151511', '徐大春', '084551', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3176', '41151511', '胡彬', '084560', '男', null, null, null, null, '123456', '23', '0', null, '41151511', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3177', '41151503', '尹冰峰', '188372', '男', null, null, null, null, '123456', '23', '0', null, '41151503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3178', '41151503', '孔大伟', '084737', '男', null, null, null, null, '123456', '23', '0', null, '41151503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3179', '41151503', '李寅生', '188367', '男', null, null, null, null, '123456', '23', '0', null, '41151503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3180', '41151503', '胡新炎', '084613', '男', null, null, null, null, '123456', '23', '0', null, '41151503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3181', '41151503', '单俊礼', '084575', '男', null, null, null, null, '123456', '23', '0', null, '41151503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3182', '41151514', '李坤', '01084769', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3183', '41151514', '汪少森', '084766', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3184', '41151514', '李勇', '084712', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3185', '41151505', '付梅子', '188572', '男', null, null, null, null, '123456', '23', '0', null, '41151505', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3186', '41151505', '胡继昀', '084488', '男', null, null, null, null, '123456', '23', '0', null, '41151505', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3187', '41151505', '王奎葵', '087634', '男', null, null, null, null, '123456', '23', '0', null, '41151505', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3188', '41151514', '曹士友', '084538', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3189', '41151522', '张峰', '084801', '男', null, null, null, null, '123456', '23', '0', null, '41151522', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3190', '41151521', '李国中', '084653', '男', null, null, null, null, '123456', '23', '0', null, '41151521', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3191', '41151521', '邓虎', '188533', '男', null, null, null, null, '123456', '23', '0', null, '41151521', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3192', '41151521', '吴鑫', '188597', '男', null, null, null, null, '123456', '23', '0', null, '41151521', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3193', '41151508', '罗昌', '188528', '男', null, null, null, null, '123456', '23', '0', null, '41151508', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3194', '41151508', '熊桂青', '084592', '男', null, null, null, null, '123456', '23', '0', null, '41151508', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3195', '41151509', '芦豪', '188531', '男', null, null, null, null, '123456', '23', '0', null, '41151509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3196', '41151509', '杜克付', '084553', '男', null, null, null, null, '123456', '23', '0', null, '41151509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3197', '41151517', '段挺', '084377', '男', null, null, null, null, '123456', '23', '0', null, '41151517', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3198', '41151514', '张海', '188416', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3199', '41151509', '李军', '188378', '男', null, null, null, null, '123456', '23', '0', null, '41151509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3200', '41151509', '叶森', '188530', '男', null, null, null, null, '123456', '23', '0', null, '41151509', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3201', '41151514', '陈宏斌', '01188596', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3202', '411515', '李越方', '084441', '男', null, null, null, null, '123456', '22', '0', null, '411515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3203', '41151504', '陈晓龙', '3113110', '男', null, null, null, null, '123456', '23', '0', null, '41151504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3204', '41151504', '金新明', '084795', '男', null, null, null, null, '123456', '23', '0', null, '41151504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3205', '41151504', '李敬文', '188581', '男', null, null, null, null, '123456', '23', '0', null, '41151504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3206', '41151504', '桂军利', '188401', '男', null, null, null, null, '123456', '23', '0', null, '41151504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3207', '41151504', '夏俊涛', '084799', '男', null, null, null, null, '123456', '23', '0', null, '41151504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3208', '41151503', '吴世平', '084820', '男', null, null, null, null, '123456', '23', '0', null, '41151503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3209', '41151515', '胡继虹', '188566', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3210', '41151515', '简强', '084430', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3211', '41151515', '严辉飞', '084437', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3212', '41151515', '周晶', '084401', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3213', '41151515', '刘文斌', '084416', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3214', '41151515', '霍锐', '084428', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3215', '41151515', '程先勇', '084439', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3216', '41151515', '李志强', '084796', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3217', '41151515', '蒋传志', '084520', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3218', '41151515', '冯东', '084777', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3219', '41151515', '宋东升', '084797', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3220', '41151515', '郭强', '084405', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3221', '41151515', '代义辉', '084739', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3222', '41151515', '刘大刚', '084751', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3223', '41151515', '凌杰', '084764', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3224', '41151515', '陈新', '084722', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3225', '41151515', '叶召强', '084763', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3226', '41151515', '张小雯', '084807', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3227', '41151515', '张志刚', '084748', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3228', '41151515', '王德兴', '084704', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3229', '41151515', '苏楠', '084723', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3230', '41151515', '王静', '084719', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3231', '41151515', '许笋', '084749', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3232', '41151515', '姚慧', '084721', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3233', '41151515', '任满霞', '084756', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3234', '41151515', '夏波', '084391', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3235', '41151515', '张正国', '084407', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3236', '41151515', '王冰', '084399', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3237', '41151515', '刘新民', '084419', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3238', '41151515', '张新斌', '084423', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3239', '41151515', '王家立', '084410', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3240', '41151515', '王翀', '084529', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3241', '41151515', '杨景宇', '188595', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3242', '41151515', '韩沐聪', '188410', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3243', '41151515', '卞玉琪', '188380', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3244', '41151515', '汪姝', '188381', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3245', '41151515', '方希贤', '188355', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3246', '41151515', '王虎城', '188390', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3247', '41151515', '周勇', '188382', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3248', '41151515', '周金亮', '188383', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3249', '41151515', '李超', '188399', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3250', '41151515', '刘闯', '188370', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3251', '41151515', '邹磊', '084781', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3252', '41151515', '孟召丽', '188525', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3253', '41151515', '柳姣姣', '188510', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3254', '41151518', '余杰', '084728', '男', null, null, null, null, '123456', '23', '0', null, '41151518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3255', '41151518', '李正杰', '188398', '男', null, null, null, null, '123456', '23', '0', null, '41151518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3256', '41151518', '李宏', '188508', '男', null, null, null, null, '123456', '23', '0', null, '41151518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3257', '41151518', '刘春阳', '188509', '男', null, null, null, null, '123456', '23', '0', null, '41151518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3258', '41151518', '刘贞东', '084639', '男', null, null, null, null, '123456', '23', '0', null, '41151518', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3259', '41151527', '张涛', '084776', '男', null, null, null, null, '123456', '23', '0', null, '41151527', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3260', '41151527', '刘花宁', '188368', '男', null, null, null, null, '123456', '23', '0', null, '41151527', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3261', '41151527', '李恒', '188512', '男', null, null, null, null, '123456', '23', '0', null, '41151527', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3262', '41151527', '黄鹏', '188556', '男', null, null, null, null, '123456', '23', '0', null, '41151527', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3263', '41151520', '崔文辉', '084706', '男', null, null, null, null, '123456', '23', '0', null, '41151520', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3264', '41151503', '郑胜利', '084735', '男', null, null, null, null, '123456', '23', '0', null, '41151503', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3265', '41151530', '董士友', '084415', '男', null, null, null, null, '123456', '23', '0', null, '41151530', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3266', '41151528', '郝中建', '084605', '男', null, null, null, null, '123456', '23', '0', null, '41151528', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3267', '41151528', '杨城', '084767', '男', null, null, null, null, '123456', '23', '0', null, '41151528', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3268', '41151528', '刘松', '188506', '男', null, null, null, null, '123456', '23', '0', null, '41151528', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3269', '41151528', '孟灵通', '188507', '男', null, null, null, null, '123456', '23', '0', null, '41151528', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3270', '41151531', '叶先亮', '084431', '男', null, null, null, null, '123456', '23', '0', null, '41151531', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3271', '41151531', '冯立勇', '188517', '男', null, null, null, null, '123456', '23', '0', null, '41151531', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3272', '41151531', '刘鸿森', '084508', '男', null, null, null, null, '123456', '23', '0', null, '41151531', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3273', '41151525', '何逸', '084775', '男', null, null, null, null, '123456', '23', '0', null, '41151525', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3274', '41151525', '刘进', '01084786', '男', null, null, null, null, '123456', '23', '0', null, '41151525', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3275', '41151804', '王金运', 'ZA0072', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3276', '41151523', '任思远', '084609', '男', null, null, null, null, '123456', '23', '0', null, '41151523', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3277', '41151523', '杨洋', '188521', '男', null, null, null, null, '123456', '23', '0', null, '41151523', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3278', '41151523', '孙维铭', '188515', '男', null, null, null, null, '123456', '23', '0', null, '41151523', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3279', '41151523', '吴洁', '188396', '男', null, null, null, null, '123456', '23', '0', null, '41151523', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3280', '41151524', '王国强', '084406', '男', null, null, null, null, '123456', '23', '0', null, '41151524', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3281', '41151524', '曹杨', '188353', '男', null, null, null, null, '123456', '23', '0', null, '41151524', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3282', '41151524', '樊正威', '084752', '男', null, null, null, null, '123456', '23', '0', null, '41151524', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3283', '41151526', '张秀坤', '084595', '男', null, null, null, null, '123456', '23', '0', null, '41151526', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3284', '41151526', '王李', '188582', '男', null, null, null, null, '123456', '23', '0', null, '41151526', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3285', '41151505', '董家春', '084380', '男', null, null, null, null, '123456', '23', '0', null, '41151505', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3286', '41151502', '刘述辉', '084593', '男', null, null, null, null, '123456', '23', '0', null, '41151502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3287', '41151502', '夏志豹', '188371', '男', null, null, null, null, '123456', '23', '0', null, '41151502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3288', '41151502', '孙延泉', '188373', '男', null, null, null, null, '123456', '23', '0', null, '41151502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3289', '41151502', '李胜银', '084813', '男', null, null, null, null, '123456', '23', '0', null, '41151502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3290', '41151502', '黄松林', '084589', '男', null, null, null, null, '123456', '23', '0', null, '41151502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3291', '41151502', '韩光启', '084731', '男', null, null, null, null, '123456', '23', '0', null, '41151502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3292', '41151502', '范超', '188587', '男', null, null, null, null, '123456', '23', '0', null, '41151502', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3293', '41151112', '王猛', '085741', '男', null, null, null, null, '123456', '23', '0', null, '41151112', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3294', '411515', '王远凤', '185004', '男', null, null, null, null, '123456', '22', '0', null, '411515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3295', '41151529', '熊兆升', '084659', '男', null, null, null, null, '123456', '23', '0', null, '41151529', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3296', '41151529', '刘明星', '188505', '男', null, null, null, null, '123456', '23', '0', null, '41151529', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3297', '41151529', '姜树岗', '084782', '男', null, null, null, null, '123456', '23', '0', null, '41151529', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3298', '41151524', '陈俊宇', '188518', '男', null, null, null, null, '123456', '23', '0', null, '41151524', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3299', '41151524', '董亚玲', '188539', '男', null, null, null, null, '123456', '23', '0', null, '41151524', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3300', '41151514', '王明春', '01084806', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3301', '41151514', '姜宝成', '01084675', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3302', '411515', '姜涛', '084732', '男', null, null, null, null, '123456', '22', '0', null, '411515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3303', '41151804', '邹帅', 'ZA0301', '男', null, null, null, null, '123456', '23', '0', null, '41151804', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3304', '41151519', '关大刚', '084634', '男', null, null, null, null, '123456', '23', '0', null, '41151519', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3305', '41151519', '周新成', '084649', '男', null, null, null, null, '123456', '23', '0', null, '41151519', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3306', '41151519', '刘念', '188579', '男', null, null, null, null, '123456', '23', '0', null, '41151519', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3307', '41151519', '陶经华', '188513', '男', null, null, null, null, '123456', '23', '0', null, '41151519', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3308', '41151531', '熊中文', '185511', '男', null, null, null, null, '123456', '23', '0', null, '41151531', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3309', '411514', 'WL', 'WL', '男', null, null, null, null, '123456', '22', '0', null, '411514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3310', '41151405', '岑培培', '185558', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3311', '41151504', '吴福生', '084674', '男', null, null, null, null, '123456', '23', '0', null, '41151504', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3312', '41151101', '王伟', '085734', '男', null, null, null, null, '123456', '23', '0', null, '41151101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3313', '41151101', '吴振华', '085860', '男', null, null, null, null, '123456', '23', '0', null, '41151101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3314', '41151513', '杨峰', '084656', '男', null, null, null, null, '123456', '23', '0', null, '41151513', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3315', '41151514', '李鑫', '13949180006', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3316', '41151514', '宋辉', '13949187896', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3317', '41151514', '陈亮', '13523891616', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3318', '41151514', '谭峰', '13569768006', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3319', '41151514', '谢俊海', '13937635666', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3320', '41151101', '黄西明', '085938', '男', null, null, null, null, '123456', '23', '0', null, '41151101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3321', '41151110', '王月明', '085973', '男', null, null, null, null, '123456', '23', '0', null, '41151110', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3322', '41151102', '吴建华', '085908', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3323', '41151109', '陶鹏飞', '085717', '男', null, null, null, null, '123456', '23', '0', null, '41151109', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3324', '41151109', '岳峰', '085892', '男', null, null, null, null, '123456', '23', '0', null, '41151109', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3325', '41151514', '段家材', '01084705', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3326', '4115120302', '孙智群', '087970', '男', null, null, null, null, '123456', '23', '0', null, '4115120302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3327', '411512132405', '王亮', '085406', '男', null, null, null, null, '123456', '23', '0', null, '411512132405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3328', '41150214', '吴炎炎', '187183', '男', null, null, null, null, '123456', '23', '0', null, '41150214', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3329', '41150311', '刘阳', '187889', '男', null, null, null, null, '123456', '23', '0', null, '41150311', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3330', '41151514', '李红生', '13603977076', '男', null, null, null, null, '123456', '23', '0', null, '41151514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3331', '411513', 'XX', 'XX', '男', null, null, null, null, '123456', '22', '0', null, '411513', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3332', '411513', '梁健', '189922', '男', null, null, null, null, '123456', '22', '0', null, '411513', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3333', '41151311', '张朗', '189908', '男', null, null, null, null, '123456', '23', '0', null, '41151311', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3334', '41151311', '蒋建龙', '088797', '男', null, null, null, null, '123456', '23', '0', null, '41151311', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3335', '41151311', '曹志', '189842', '男', null, null, null, null, '123456', '23', '0', null, '41151311', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3336', '41151315', '丁辉', '189913', '男', null, null, null, null, '123456', '23', '0', null, '41151315', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3337', '41151315', '邓迎胜', '088963', '男', null, null, null, null, '123456', '23', '0', null, '41151315', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3338', '41151315', '胡坤', '189852', '男', null, null, null, null, '123456', '23', '0', null, '41151315', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3339', '41151306', '蒋超', '189912', '男', null, null, null, null, '123456', '23', '0', null, '41151306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3340', '41151306', '彭齐', '189995', '男', null, null, null, null, '123456', '23', '0', null, '41151306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3341', '41151306', '刘正', '189965', '男', null, null, null, null, '123456', '23', '0', null, '41151306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3342', '41151306', '王勇', '189885', '男', null, null, null, null, '123456', '23', '0', null, '41151306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3343', '41151306', '周文楼', '189855', '男', null, null, null, null, '123456', '23', '0', null, '41151306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3344', '41151306', '徐琼', '088881', '男', null, null, null, null, '123456', '23', '0', null, '41151306', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3345', '41151314', '刘海龙', '189963', '男', null, null, null, null, '123456', '23', '0', null, '41151314', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3346', '41151314', '陈群鹏', '189864', '男', null, null, null, null, '123456', '23', '0', null, '41151314', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3347', '41151314', '陈磊', '189822', '男', null, null, null, null, '123456', '23', '0', null, '41151314', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3348', '41151304', '陈保金', '189905', '男', null, null, null, null, '123456', '23', '0', null, '41151304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3349', '41151304', '潘明厚', '088961', '男', null, null, null, null, '123456', '23', '0', null, '41151304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3350', '41151304', '王斌', '189836', '男', null, null, null, null, '123456', '23', '0', null, '41151304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3351', '41151304', '朱新存', '189879', '男', null, null, null, null, '123456', '23', '0', null, '41151304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3352', '41151304', '张俊', '189916', '男', null, null, null, null, '123456', '23', '0', null, '41151304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3353', '41151304', '徐锦峰', '189901', '男', null, null, null, null, '123456', '23', '0', null, '41151304', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3354', '41151305', '孙涛', '189891', '男', null, null, null, null, '123456', '23', '0', null, '41151305', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3355', '41151305', '姚杰', '088397', '男', null, null, null, null, '123456', '23', '0', null, '41151305', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3356', '41151305', '曹功安', '189988', '男', null, null, null, null, '123456', '23', '0', null, '41151305', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3357', '41151305', '唐志涛', '189860', '男', null, null, null, null, '123456', '23', '0', null, '41151305', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3358', '41151307', '胡建', '189921', '男', null, null, null, null, '123456', '23', '0', null, '41151307', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3359', '41151307', '刘维昌', '189975', '男', null, null, null, null, '123456', '23', '0', null, '41151307', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3360', '41151307', '熊长征', '18921', '男', null, null, null, null, '123456', '23', '0', null, '41151307', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3361', '41151318', '胡佳', '050491', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3362', '41151308', '张向阳', '189877', '男', null, null, null, null, '123456', '23', '0', null, '41151308', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3363', '41151308', '张宏星', '189976', '男', null, null, null, null, '123456', '23', '0', null, '41151308', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3364', '41151320', '周钰坤', '189986', '男', null, null, null, null, '123456', '23', '0', null, '41151320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3365', '41151320', '陈静楠', '189967', '男', null, null, null, null, '123456', '23', '0', null, '41151320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3366', '41151320', '苏锡剑', '088886', '男', null, null, null, null, '123456', '23', '0', null, '41151320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3367', '41151318', '曹绍明', '189863', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3368', '41151318', '张欢', '640341', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3369', '41151319', '王宇', '088925', '男', null, null, null, null, '123456', '23', '0', null, '41151319', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3370', '41151319', '王保和', '189858', '男', null, null, null, null, '123456', '23', '0', null, '41151319', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3371', '41151317', '吴韧', '189952', '男', null, null, null, null, '123456', '23', '0', null, '41151317', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3372', '41151317', '阮辉', '300011', '男', null, null, null, null, '123456', '23', '0', null, '41151317', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3373', '41151312', '代鹏', '189902', '男', null, null, null, null, '123456', '23', '0', null, '41151312', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3374', '41151312', '简春霞', '189848', '男', null, null, null, null, '123456', '23', '0', null, '41151312', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3375', '41151312', '李小军', '088962', '男', null, null, null, null, '123456', '23', '0', null, '41151312', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3376', '41151312', '王帅锋', '189961', '男', null, null, null, null, '123456', '23', '0', null, '41151312', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3377', '41151312', '扶波', '189962', '男', null, null, null, null, '123456', '23', '0', null, '41151312', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3378', '41151310', '董震', '189980', '男', null, null, null, null, '123456', '23', '0', null, '41151310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3379', '41151310', '张向森', '189883', '男', null, null, null, null, '123456', '23', '0', null, '41151310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3380', '41151310', '胡冬生', '189851', '男', null, null, null, null, '123456', '23', '0', null, '41151310', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3381', '41151313', '韩龙', '189957', '男', null, null, null, null, '123456', '23', '0', null, '41151313', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3382', '41151309', '王天柱', '088850', '男', null, null, null, null, '123456', '23', '0', null, '41151309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3383', '41151309', '阳光', '088892', '男', null, null, null, null, '123456', '23', '0', null, '41151309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3384', '41151309', '徐泽永', '189937', '男', null, null, null, null, '123456', '23', '0', null, '41151309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3385', '41151309', '高金雷', '189973', '男', null, null, null, null, '123456', '23', '0', null, '41151309', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3386', '41151316', '邱新田', '088792', '男', null, null, null, null, '123456', '23', '0', null, '41151316', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3387', '41151316', '来明传', '154894', '男', null, null, null, null, '123456', '23', '0', null, '41151316', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3388', '41151316', '付有光', '191319', '男', null, null, null, null, '123456', '23', '0', null, '41151316', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3389', '41151318', '邹杨', '189950', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3390', '41151318', '张国栋', '212414', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3391', '41151318', '左腾飞', '090419', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3392', '41151318', '晏稳', '12041X', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3393', '41151318', '汪英杰', '094832', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3394', '41151318', '汪兵', '133763', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3395', '41151318', '李瑞', '189983', '男', null, null, null, null, '123456', '23', '0', null, '41151318', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3396', '41151316', '王炜', '100910', '男', null, null, null, null, '123456', '23', '0', null, '41151316', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3397', '41151302', '胡明', '189915', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3398', '41151301', '张祖海', '088399', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3399', '41151301', '李琛', '171350', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3400', '41151301', '代启超', '100418', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3401', '41151301', '田俊', '090415', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3402', '41151301', '董军', '080413', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3403', '41151321', '余得水', '189918', '男', null, null, null, null, '123456', '23', '0', null, '41151321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3404', '41151321', '吴华东', '088979', '男', null, null, null, null, '123456', '23', '0', null, '41151321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3405', '41151321', '张铁山', '189834', '男', null, null, null, null, '123456', '23', '0', null, '41151321', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3406', '41151301', '陈东东', '030310', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3407', '41151301', '王彬', '180411', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3408', '41151301', '甘道发', '020011', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3409', '41151301', '张洋子', '170413', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3410', '41151301', '余涛', '171317', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3411', '41151301', '钟盛', '190428', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3412', '41151301', '姜湖', '172819', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3413', '41151301', '李保军', '040914', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3414', '41151301', '王喜', '080033', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3415', '41151301', '陈良达', '200919', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3416', '41151301', '彭辉', '181336', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3417', '41151301', '熊能能', '020036', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3418', '41151301', '徐辉', '210416', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3419', '41151301', '刘斌', '152812', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3420', '41151301', '尉洪源', '120012', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3421', '41151301', '李春辉', '061315', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3422', '41151301', '余勇', '221737', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3423', '41151111', '李朋', '185038', '男', null, null, null, null, '123456', '23', '0', null, '41151111', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3424', '41151301', '唐辉', '200932', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3425', '41151301', '余长江', '100433', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3426', '41151302', '朱悦', '189982', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3427', '41151301', '李龙', '190410', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3428', '41151301', '邱明', '090418', '男', null, null, null, null, '123456', '23', '0', null, '41151301', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3429', '41150706', '公用', '999999', '男', null, null, null, null, '123456', '23', '0', null, '41150706', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3430', '41151515', '朱罡', '084429', '男', null, null, null, null, '123456', '23', '0', null, '41151515', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3431', '41151103', '张永生', '185091', '男', null, null, null, null, '123456', '23', '0', null, '41151103', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3432', '41151105', '陈栋', '185046', '男', null, null, null, null, '123456', '23', '0', null, '41151105', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3433', '41151113', '霍亮', '085894', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3434', '41151113', '郑乐峰', '085804', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3435', '41151113', '张成翔', '185034', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3436', '41151113', '祝德邦', '185073', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3437', '41151113', '赵飞', '085799', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3438', '41151113', '陈曦', '185020', '男', null, null, null, null, '123456', '23', '0', null, '41151113', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3439', '41151124', '刘潜海', '085744', '男', null, null, null, null, '123456', '23', '0', null, '41151124', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3440', '41151101', '丁进', '185007', '男', null, null, null, null, '123456', '23', '0', null, '41151101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3441', '41151101', '黄达', '085962', '男', null, null, null, null, '123456', '23', '0', null, '41151101', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3442', '41151102', '王辉', '185070', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3443', '41151102', '黄磊', '185008', '男', null, null, null, null, '123456', '23', '0', null, '41151102', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3444', '41151711', '胡新隆', '185760', '男', null, null, null, null, '123456', '23', '0', null, '41151711', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3445', '41151711', '李天明', 'FJ1067', '男', null, null, null, null, '123456', '23', '0', null, '41151711', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3446', '41151822', '王静', '189584', '男', null, null, null, null, '123456', '23', '0', null, '41151822', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3447', '41151406', '程书兵', '088375', '男', null, null, null, null, '123456', '23', '0', null, '41151406', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3448', '41151733', '周永刚', '088448', '男', null, null, null, null, '123456', '23', '0', null, '41151733', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3449', '41151733', '李忠云', '088735', '男', null, null, null, null, '123456', '23', '0', null, '41151733', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3450', '41151733', '吴章赢', 'FJ1026', '男', null, null, null, null, '123456', '23', '0', null, '41151733', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3451', '41151107', '姚军', '085686', '男', null, null, null, null, '123456', '23', '0', null, '41151107', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3452', '41151726', '徐雅楠', '185806', '男', null, null, null, null, '123456', '23', '0', null, '41151726', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3453', '41151727', '黄金炳', '185689', '男', null, null, null, null, '123456', '23', '0', null, '41151727', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3454', '41151723', '陈登静', '088401', '男', null, null, null, null, '123456', '23', '0', null, '41151723', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3455', '41151703', '廖  翔', '088649', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3456', '41151703', '张俊宏', '088518', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3457', '41151730', '陈  军', '088686', '男', null, null, null, null, '123456', '23', '0', null, '41151730', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3458', '41151730', '陈佳', '185698', '男', null, null, null, null, '123456', '23', '0', null, '41151730', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3459', '41151730', '戴前银', '088659', '男', null, null, null, null, '123456', '23', '0', null, '41151730', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3460', '41151717', '崔学红', '185798', '男', null, null, null, null, '123456', '23', '0', null, '41151717', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3461', '41151730', '孙明慧', '185811', '男', null, null, null, null, '123456', '23', '0', null, '41151730', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3462', '41151729', '刘玉华', '088419', '男', null, null, null, null, '123456', '23', '0', null, '41151729', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3463', '41151729', '余  强', '088597', '男', null, null, null, null, '123456', '23', '0', null, '41151729', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3464', '41151728', '花进社', '088596', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3465', '41151728', '沈家宝', '088628', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3466', '41151728', '张  琪', '088539', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3467', '41151703', '朱  磊', '185805', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3468', '41151733', '程光举', '088683', '男', null, null, null, null, '123456', '23', '0', null, '41151733', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3469', '41151704', '冯海南', '088719', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3470', '41151705', '王景宜', '088741', '男', null, null, null, null, '123456', '23', '0', null, '41151705', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3471', '41151706', '陆玉红', '185775', '男', null, null, null, null, '123456', '23', '0', null, '41151706', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3472', '41151732', '张  勇', '088432', '男', null, null, null, null, '123456', '23', '0', null, '41151732', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3473', '41151732', '闵媛媛', '088545', '男', null, null, null, null, '123456', '23', '0', null, '41151732', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3474', '41151732', '周  淦', '088658', '男', null, null, null, null, '123456', '23', '0', null, '41151732', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3475', '41151707', '张善权', '088431', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3476', '41151707', '艾吉伟', '088606', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3477', '41151707', '王  健', '088694', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3478', '41151707', '樊  鹏', '088594', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3479', '41151707', '杨亚玲', '088475', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3480', '41151707', '蒋国海', '088490', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3481', '41151707', '朱明军', '088580', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3482', '41151707', '宗  鹏', '088710', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3483', '41151728', '戚凤田', '088537', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3484', '41151707', '宋  亮', '088574', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3485', '41151707', '韩  珣', '088541', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3486', '41151707', '彭  伟', '088605', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3487', '41151707', '李沛然', '088722', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3488', '41151707', '雷显涛', '088509', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3489', '41151707', '李汝锋', '088453', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3490', '41151707', '王玉峰', '088573', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3491', '41151707', '杜开丽', '088751', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3492', '41151707', '胡家强', '185727', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3493', '41151707', '周祥松', '088587', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3494', '41151707', '朱琳娜', '185803', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3495', '41151707', '贺菲菲', '185800', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3496', '41151707', '刘  超', '185816', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3497', '41151707', '李贤伟', '185763', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3498', '41151707', '崔占军', '185801', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3499', '41151707', '张小蕾', '185815', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3500', '41151707', '郑  伟', '185795', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3501', '41151708', '范保峰', '088684', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3502', '41151708', '梅  峰', '088706', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3503', '41151708', '臧克豪', '088625', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3504', '41151708', '侯剑波', '088600', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3505', '41151708', '刘智锋', '088727', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3506', '41151708', '付培达', '088728', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3507', '41151708', '杨红斌', '088505', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3508', '41151708', '赵普军', '088560', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3509', '41151708', '张炎炎', '088650', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3510', '41151708', '薄  刚', '088551', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3511', '41151708', '余  淼', '088646', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3512', '41151707', '陈从军', '088593', '男', null, null, null, null, '123456', '23', '0', null, '41151707', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3513', '41151413', '韩勋江', '088346', '男', null, null, null, null, '123456', '23', '0', null, '41151413', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3514', '41151413', '方军', '088239', '男', null, null, null, null, '123456', '23', '0', null, '41151413', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3515', '41151413', '杨成', '185326', '男', null, null, null, null, '123456', '23', '0', null, '41151413', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3516', '41151413', '曹耀军', '085865', '男', null, null, null, null, '123456', '23', '0', null, '41151413', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3517', '41151402', '范文龙', '088159', '男', null, null, null, null, '123456', '23', '0', null, '41151402', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3518', '41151402', '陈猛', '185335', '男', null, null, null, null, '123456', '23', '0', null, '41151402', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3519', '41151402', '蔡正君', '088288', '男', null, null, null, null, '123456', '23', '0', null, '41151402', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3520', '41151402', '陈良军', '088287', '男', null, null, null, null, '123456', '23', '0', null, '41151402', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3521', '41151405', '熊田阳', '185377', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3522', '41151411', '闵守炎', '088373', '男', null, null, null, null, '123456', '23', '0', null, '41151411', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3523', '41151302', '卢杨', '189987', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3524', '41151302', '罗超', '189909', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3525', '41151302', '邱正忠', '189903', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3526', '41151302', '陶欢', '189862', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3527', '41151302', '杨全森', '189991', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3528', '41151302', '黄锡超', '189993', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3529', '41151302', '朱光军', '189859', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3530', '41151302', '王立新', '189841', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3531', '41151302', '李福奎', '189878', '男', null, null, null, null, '123456', '23', '0', null, '41151302', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3532', '411512132607', '何军', '084256', '男', null, null, null, null, '123456', '23', '0', null, '411512132607', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3533', '41151703', '李东亚', '185793', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3534', '41151703', '余楚庆', '185739', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3535', '41151713', '齐严严', '185820', '男', null, null, null, null, '123456', '23', '0', null, '41151713', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3536', '41151704', '陈沐阳', 'FJ1017', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3537', '41151704', '曾健伟', 'FJ1020', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3538', '41151704', '杨浩', 'FJ1022', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3539', '41151704', '岳昌强', 'FJ1021', '男', null, null, null, null, '123456', '23', '0', null, '41151704', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3540', '41151705', '郑传伟', '185758', '男', null, null, null, null, '123456', '23', '0', null, '41151705', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3541', '41151709', '宋望欣', 'XF1105', '男', null, null, null, null, '123456', '23', '0', null, '41151709', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3542', '41151709', '陈俭超', 'FJ1106', '男', null, null, null, null, '123456', '23', '0', null, '41151709', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3543', '41151725', '鲍翔宇', '185833', '男', null, null, null, null, '123456', '23', '0', null, '41151725', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3544', '41151710', '李行', '185823', '男', null, null, null, null, '123456', '23', '0', null, '41151710', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3545', '41151702', '李邺刚', '185829', '男', null, null, null, null, '123456', '23', '0', null, '41151702', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3546', '411516', '龚旭升', '187996', '男', null, null, null, null, '123456', '22', '0', null, '411516', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3547', '41151609', '黄波', '084099', '男', null, null, null, null, '123456', '23', '0', null, '41151609', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3548', '411516', 'LS', 'LS', '男', null, null, null, null, '123456', '22', '0', null, '411516', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3549', '41151408', '徐亚东', '185538', '男', null, null, null, null, '123456', '23', '0', null, '41151408', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3550', '41151408', '姚道鲲', '185566', '男', null, null, null, null, '123456', '23', '0', null, '41151408', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3551', '41151408', '代启宏', '088156', '男', null, null, null, null, '123456', '23', '0', null, '41151408', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3552', '41151411', '胡国顺', '088192', '男', null, null, null, null, '123456', '23', '0', null, '41151411', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3553', '41151411', '徐剑', '088199', '男', null, null, null, null, '123456', '23', '0', null, '41151411', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3554', '41151604', '孙维名', '084216', '男', null, null, null, null, '123456', '23', '0', null, '41151604', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3555', '41151604', '陈浩然', '188007', '男', null, null, null, null, '123456', '23', '0', null, '41151604', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3556', '41151604', '李洁', '084352', '男', null, null, null, null, '123456', '23', '0', null, '41151604', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3557', '41151604', '高爽', '188168', '男', null, null, null, null, '123456', '23', '0', null, '41151604', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3558', '41151604', '樊思程', '188190', '男', null, null, null, null, '123456', '23', '0', null, '41151604', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3559', '41151604', '崔朝阳', '188214', '男', null, null, null, null, '123456', '23', '0', null, '41151604', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3560', '41151602', '查理智', '188101', '男', null, null, null, null, '123456', '23', '0', null, '41151602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3561', '41151602', '陈鹏飞', '084184', '男', null, null, null, null, '123456', '23', '0', null, '41151602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3562', '41151602', '夏长健', '188200', '男', null, null, null, null, '123456', '23', '0', null, '41151602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3563', '41151602', '杨一', '188026', '男', null, null, null, null, '123456', '23', '0', null, '41151602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3564', '41151602', '张家林', '188072', '男', null, null, null, null, '123456', '23', '0', null, '41151602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3565', '41151602', '但俊杰', '084282', '男', null, null, null, null, '123456', '23', '0', null, '41151602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3566', '41151603', '涂丁奎', '084149', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3567', '41151603', '胡天金', '188073', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3568', '41151603', '罗勇', '084219', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3569', '41151603', '徐峰', '084046', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3570', '41151603', '徐良峰', '084109', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3571', '41151603', '黄德文', '084286', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3572', '41151603', '翁磊', '188193', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3573', '41151603', '姚自喜', '084027', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3574', '41151708', '巴为民', '088665', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3575', '41151708', '付昌琴', '088556', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3576', '4115121306', '综合执法大队1', 'ZHZFDD1', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3577', '4115121306', '综合执法大队2', 'ZHZFDD2', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3578', '4115121306', '综合执法大队3', 'ZHZFDD3', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3579', '4115121306', '综合执法大队4', 'ZHZFDD4', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3580', '4115121306', '综合执法大队5', 'ZHZFDD5', '男', null, null, null, null, '123456', '22', '0', null, '4115121306', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3581', '41151612', '罗贻竣', '188028', '男', null, null, null, null, '123456', '23', '0', null, '41151612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3582', '41151612', '程涛', '188128', '男', null, null, null, null, '123456', '23', '0', null, '41151612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3583', '41151612', '丰树奎', '188194', '男', null, null, null, null, '123456', '23', '0', null, '41151612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3584', '41151612', '韩道杰', '188213', '男', null, null, null, null, '123456', '23', '0', null, '41151612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3585', '41151612', '王杨', '188266', '男', null, null, null, null, '123456', '23', '0', null, '41151612', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3586', '41151630', '吴浩', '084308', '男', null, null, null, null, '123456', '23', '0', null, '41151630', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3587', '41151630', '杨献伟', '188037', '男', null, null, null, null, '123456', '23', '0', null, '41151630', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3588', '41151630', '牛文宾', '188120', '男', null, null, null, null, '123456', '23', '0', null, '41151630', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3589', '41151619', '陈俊辉', '084045', '男', null, null, null, null, '123456', '23', '0', null, '41151619', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3590', '41151728', '冯治俊', '185831', '男', null, null, null, null, '123456', '23', '0', null, '41151728', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3591', '41151619', '龙金富', '188015', '男', null, null, null, null, '123456', '23', '0', null, '41151619', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3592', '41151619', '许新溢', '188177', '男', null, null, null, null, '123456', '23', '0', null, '41151619', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3593', '41151619', '邹扬', '188207', '男', null, null, null, null, '123456', '23', '0', null, '41151619', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3594', '41151624', '张竹', '084132', '男', null, null, null, null, '123456', '23', '0', null, '41151624', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3595', '41151624', '靳宇翔', '188080', '男', null, null, null, null, '123456', '23', '0', null, '41151624', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3596', '41151624', '郑超', '188052', '男', null, null, null, null, '123456', '23', '0', null, '41151624', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3597', '41151629', '吕涛', '188066', '男', null, null, null, null, '123456', '23', '0', null, '41151629', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3598', '41151629', '吕伟伟', '188092', '男', null, null, null, null, '123456', '23', '0', null, '41151629', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3599', '41151629', '罗云', '188163', '男', null, null, null, null, '123456', '23', '0', null, '41151629', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3600', '41151629', '张少强', '188209', '男', null, null, null, null, '123456', '23', '0', null, '41151629', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3601', '41151617', '罗辉', '084266', '男', null, null, null, null, '123456', '23', '0', null, '41151617', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3602', '41151617', '刘宝', '188125', '男', null, null, null, null, '123456', '23', '0', null, '41151617', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3603', '41151614', '王万鹏', '084053', '男', null, null, null, null, '123456', '23', '0', null, '41151614', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3604', '41151614', '李方明', '084138', '男', null, null, null, null, '123456', '23', '0', null, '41151614', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3605', '41151614', '翟成海', '188171', '男', null, null, null, null, '123456', '23', '0', null, '41151614', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3606', '41151614', '甘前明', '188201', '男', null, null, null, null, '123456', '23', '0', null, '41151614', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3607', '41151628', '汪浩', '084130', '男', null, null, null, null, '123456', '23', '0', null, '41151628', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3608', '41151628', '陈世洋', '188138', '男', null, null, null, null, '123456', '23', '0', null, '41151628', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3609', '41151626', '赵家勇', '084108', '男', null, null, null, null, '123456', '23', '0', null, '41151626', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3610', '41151626', '邵耀明', '187991', '男', null, null, null, null, '123456', '23', '0', null, '41151626', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3611', '41151626', '杨涛', '188167', '男', null, null, null, null, '123456', '23', '0', null, '41151626', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3612', '41151626', '周铁成', '188211', '男', null, null, null, null, '123456', '23', '0', null, '41151626', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3613', '41151625', '吴剑', '084055', '男', null, null, null, null, '123456', '23', '0', null, '41151625', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3614', '41151625', '陈波', '188058', '男', null, null, null, null, '123456', '23', '0', null, '41151625', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3615', '41151625', '张利', '187995', '男', null, null, null, null, '123456', '23', '0', null, '41151625', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3616', '41151625', '魏涛', '188212', '男', null, null, null, null, '123456', '23', '0', null, '41151625', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3617', '41151616', '彭强', '187978', '男', null, null, null, null, '123456', '23', '0', null, '41151616', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3618', '41151616', '吴罡', '188195', '男', null, null, null, null, '123456', '23', '0', null, '41151616', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3619', '41151616', '蔡中强', '188204', '男', null, null, null, null, '123456', '23', '0', null, '41151616', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3620', '41151620', '梅世双', '188191', '男', null, null, null, null, '123456', '23', '0', null, '41151620', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3621', '41151708', '朱坤甫', '412949', '男', null, null, null, null, '123456', '23', '0', null, '41151708', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3622', '41151620', '薛坤', '188078', '男', null, null, null, null, '123456', '23', '0', null, '41151620', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3623', '41151620', '熊新华', '188061', '男', null, null, null, null, '123456', '23', '0', null, '41151620', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3624', '41151620', '马东', '187973', '男', null, null, null, null, '123456', '23', '0', null, '41151620', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3625', '41151621', '张家启', '187987', '男', null, null, null, null, '123456', '23', '0', null, '41151621', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3626', '41151621', '罗家坤', '187992', '男', null, null, null, null, '123456', '23', '0', null, '41151621', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3627', '41151621', '蔡绍奎', '188206', '男', null, null, null, null, '123456', '23', '0', null, '41151621', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3628', '41151621', '马骁', '188215', '男', null, null, null, null, '123456', '23', '0', null, '41151621', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3629', '41151627', '张军', '084128', '男', null, null, null, null, '123456', '23', '0', null, '41151627', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3630', '41151627', '郑湛', '084246', '男', null, null, null, null, '123456', '23', '0', null, '41151627', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3631', '41151627', '杜胜', '188079', '男', null, null, null, null, '123456', '23', '0', null, '41151627', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3632', '41151627', '张强', '188175', '男', null, null, null, null, '123456', '23', '0', null, '41151627', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3633', '41151627', '蔡明辉', '188121', '男', null, null, null, null, '123456', '23', '0', null, '41151627', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3634', '41151615', '孙奎', '084084', '男', null, null, null, null, '123456', '23', '0', null, '41151615', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3635', '41151615', '李涛', '188091', '男', null, null, null, null, '123456', '23', '0', null, '41151615', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3636', '41151615', '吴站银', '188132', '男', null, null, null, null, '123456', '23', '0', null, '41151615', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3637', '41151615', '卢子建', '188205', '男', null, null, null, null, '123456', '23', '0', null, '41151615', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3638', '41151613', '李作为', '188118', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3639', '41151613', '袁其鹏', '188129', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3640', '41151613', '叶元元', '188178', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3641', '41151613', '熊军', '084345', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3642', '41151613', '罗德刚', '084049', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3643', '41151623', '赵恒', '084131', '男', null, null, null, null, '123456', '23', '0', null, '41151623', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3644', '41151623', '王涛', '188130', '男', null, null, null, null, '123456', '23', '0', null, '41151623', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3645', '41151623', '曹发能', '084301', '男', null, null, null, null, '123456', '23', '0', null, '41151623', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3646', '41151631', '王博', '084028', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3647', '41151631', '顾飞', '187979', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3648', '41151631', '李勇', '188065', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3649', '41151631', '冯涛', '187997', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3650', '41151631', '汪勇', '188081', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3651', '41151631', '丁海波', '084129', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3652', '41151631', '王春童', '188117', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3653', '41151618', '王刚', '188107', '男', null, null, null, null, '123456', '23', '0', null, '41151618', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3654', '41151618', '刘刚', '188102', '男', null, null, null, null, '123456', '23', '0', null, '41151618', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3655', '41151618', '李强', '084361', '男', null, null, null, null, '123456', '23', '0', null, '41151618', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3656', '41151618', '王俊', '084228', '男', null, null, null, null, '123456', '23', '0', null, '41151618', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3657', '41151632', '熊晓宇', '084217', '男', null, null, null, null, '123456', '23', '0', null, '41151632', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3658', '41151632', '朱传勇', '084363', '男', null, null, null, null, '123456', '23', '0', null, '41151632', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3659', '41151632', '高宏海', '084280', '男', null, null, null, null, '123456', '23', '0', null, '41151632', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3660', '41151608', '陈品涛', '084107', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3661', '41151608', '樊强', '084307', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3662', '41151608', '张杰', '188055', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3663', '41151608', '吕大伟', '084338', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3664', '41151608', '胡志伟', '084081', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3665', '41151608', '陈奎', '188011', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3666', '41151608', '鲁思亮', '084355', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3667', '41151608', '林坤', '084302', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3668', '41151608', '梅拥军', '188038', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3669', '41151608', '秦祥', '084349', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3670', '41151608', '刘东生', '188067', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3671', '41151608', '王永胜', '084251', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3672', '411516', '于明洋', '188192', '男', null, null, null, null, '123456', '22', '0', null, '411516', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3673', '41151608', '肖光娥', '188025', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3674', '41151608', '汪波', '085379', '男', null, null, null, null, '123456', '23', '0', null, '41151608', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3675', '41151634', '姚兴梁', '084110', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3676', '41151634', '任炯', '084117', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3677', '41151634', '王浩', '084326', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3678', '41151634', '方昕鹏', '084396', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3679', '41151634', '徐勇', '084172', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3680', '41151634', '郑祥国', '084017', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3681', '41151606', '肖建平', '084289', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3682', '41151606', '董天明', '084134', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3683', '41151606', '胡利', '187983', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3684', '41151606', '徐斌', '188027', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3685', '41151606', '陈洋', '188216', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3686', '41151606', '程奎', '188059', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3687', '41151606', '张相辉', '084244', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3688', '41151606', '陈静波', '187990', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3689', '41151606', '许远军', '188035', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3690', '41151606', '孔维思', '188008', '男', null, null, null, null, '123456', '23', '0', null, '41151606', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3691', '41151603', '杨民君', '187981', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3692', '41151603', '董海成', '084137', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3693', '41151603', '张玉波', '084022', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3694', '41151603', '马勇', '187975', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3695', '41151603', '张煜', '188082', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3696', '41151603', '胡洋', '188202', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3697', '41151603', '庞军', '084257', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3698', '41151603', '石力源', '188160', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3699', '41151603', '张勇', '084102', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3700', '41151633', '任元学', '084239', '男', null, null, null, null, '123456', '23', '0', null, '41151633', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3701', '41151633', '孙泉', '188170', '男', null, null, null, null, '123456', '23', '0', null, '41151633', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3702', '41151605', '汪心悦', '188083', '男', null, null, null, null, '123456', '23', '0', null, '41151605', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3703', '41151605', '刘慰', '188165', '男', null, null, null, null, '123456', '23', '0', null, '41151605', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3704', '41151635', '段红霞', '084021', '男', null, null, null, null, '123456', '23', '0', null, '41151635', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3705', '41151635', '余胜强', '084350', '男', null, null, null, null, '123456', '23', '0', null, '41151635', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3706', '41151635', '袁博', '187998', '男', null, null, null, null, '123456', '23', '0', null, '41151635', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3707', '41151412', '孔丽', '185568', '男', null, null, null, null, '123456', '23', '0', null, '41151412', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3708', '41151412', '孙波', '088125', '男', null, null, null, null, '123456', '23', '0', null, '41151412', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3709', '41151412', '王刚', '185553', '男', null, null, null, null, '123456', '23', '0', null, '41151412', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3710', '41151412', '方梁', '088380', '男', null, null, null, null, '123456', '23', '0', null, '41151412', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3711', '41151409', '吴明', '088191', '男', null, null, null, null, '123456', '23', '0', null, '41151409', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3712', '41151409', '刘鲁豫', '088297', '男', null, null, null, null, '123456', '23', '0', null, '41151409', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3713', '41151409', '刘明', '185395', '男', null, null, null, null, '123456', '23', '0', null, '41151409', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3714', '41151703', '何于松', 'FJ1008', '男', null, null, null, null, '123456', '23', '0', null, '41151703', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3715', '41151713', '赵君臣', 'FJ1031', '男', null, null, null, null, '123456', '23', '0', null, '41151713', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3716', '41151713', '张向阳', 'FJ1033', '男', null, null, null, null, '123456', '23', '0', null, '41151713', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3717', '41151407', '杨军', '088171', '男', null, null, null, null, '123456', '23', '0', null, '41151407', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3718', '41151407', '骆祥海', '088149', '男', null, null, null, null, '123456', '23', '0', null, '41151407', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3719', '41151410', '曹春雷', '088858', '男', null, null, null, null, '123456', '23', '0', null, '41151410', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3720', '41151410', '马俊雅', '185567', '男', null, null, null, null, '123456', '23', '0', null, '41151410', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3721', '41151410', '潘锋', '185350', '男', null, null, null, null, '123456', '23', '0', null, '41151410', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3722', '41151410', '范翔', '189872', '男', null, null, null, null, '123456', '23', '0', null, '41151410', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3723', '41151631', '郭龙', '900001', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3724', '41151631', '李磊', '900002', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3725', '41151631', '李鑫', '900003', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3726', '41151631', '胡磊', '900004', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3727', '41151631', '朱伊翔', '900005', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3728', '41151631', '张世龙', '900006', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3729', '41151631', '王成彬', '900007', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3730', '41151631', '周琳琳', '900008', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3731', '41151631', '喻伟', '900009', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3732', '41151631', '罗峰', '900010', '男', null, null, null, null, '123456', '23', '0', null, '41151631', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3733', '41151616', '胡正宇', '084333', '男', null, null, null, null, '123456', '23', '0', null, '41151616', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3734', '41151603', '李春阳', '188133', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3735', '4115121304', '公路巡逻大队1', 'XJ0001', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3736', '4115121304', '公路巡逻大队2', 'XJ0002', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3737', '4115121304', '公路巡逻大队3', 'XJ0003', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3738', '4115121304', '公路巡逻大队4', 'XJ0004', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3739', '41151401', '余长政', '088148', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3740', '4115121304', '公路巡逻大队5', 'XJ0005', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3741', '4115121304', '公路巡逻大队6', 'XJ0006', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3742', '4115121304', '公路巡逻大队7', 'XJ0007', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3743', '4115121304', '公路巡逻大队8', 'XJ0008', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3744', '4115121304', '公路巡逻大队9', 'XJ0009', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3745', '4115121304', '公路巡逻大队10', 'XJ0010', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3746', '4115121304', '公路巡逻大队11', 'XJ0011', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3747', '4115121304', '公路巡逻大队12', 'XJ0012', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3748', '4115121304', '公路巡逻大队13', 'XJ0013', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3749', '4115121304', '公路巡逻大队14', 'XJ0014', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3750', '4115121304', '公路巡逻大队15', 'XJ0015', '男', null, null, null, null, '123456', '22', '0', null, '4115121304', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3751', '41151603', '包祥超', '084136', '男', null, null, null, null, '123456', '23', '0', null, '41151603', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3752', '41151401', '张金志', '185333', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3753', '41151401', '易明水', '088321', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3754', '41151401', '王攀峰', '185363', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3755', '41151401', '王思泽', '088303', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3756', '41151401', '李东', '088377', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3757', '41151401', '谢勇', '185332', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3758', '41151401', '吴继强', '088366', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3759', '41151401', '杜锋', '088291', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3760', '41151401', '朱彬', '088266', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3761', '41151401', '张红', '185351', '男', null, null, null, null, '123456', '23', '0', null, '41151401', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3762', '41151405', '郑立端', '088315', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3763', '41151405', '屈文雷', '088355', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3764', '41151405', '管仁全', '185331', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3765', '41151405', '洪林', '185327', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3766', '41151405', '徐良源', '185531', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3767', '41151405', '陈鹏', '185533', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3768', '41151405', '裴仁斌', '185369', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3769', '41151403', '张之友', '088133', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3770', '41151414', '杨颢', '088095', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3771', '41151414', '蒋宏斌', '088166', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3772', '41151414', '牛军', '088165', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3773', '41151414', '刘军明', '088175', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3774', '41151414', '熊锐斌', '088076', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3775', '41151414', '胡长德', '088188', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3776', '41151414', '刘凯', '185336', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3777', '41151414', '金星', '088276', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3778', '41151414', '黄晓波', '088257', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3779', '41151414', '聂玮', '088160', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3780', '41151414', '刘超菘', '185391', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3781', '41151414', '姚道军', '185347', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3782', '41151414', '周友礼', '185397', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3783', '41151414', '宋罗彬', '185527', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3784', '41151414', '夏建军', '185532', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3785', '41151414', '左进', '185502', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3786', '41151414', '万春生', '185526', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3787', '41151414', '王堃', '088194', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3788', '41151414', '管泽人', '088391', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3789', '41151414', '袁志宏', '185392', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3790', '41151414', '李永旺', '185386', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3791', '41151414', '夏荣清', '185507', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3792', '41151414', '杨涛', '088267', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3793', '41151414', '刘海龙', '185352', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3794', '41151414', '张宗浩', '185349', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3795', '41151414', '叶宗术', '185519', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3796', '41151414', '李冬林', '185342', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3797', '41151414', '曾宪坤', '185506', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3798', '41151414', '张学扬', '185513', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3799', '41151414', '丁健', '185523', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3800', '41151414', '程进', '185353', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3801', '41151414', '刘术华', '088187', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3802', '41151414', '朱曦', '088189', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3803', '41151414', '晏建存', '088185', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3804', '41151414', '马明', '088386', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3805', '41151414', '张俊', '185383', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3806', '41151414', '徐新鑫', '185550', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3807', '41151414', '胡玉娟', '185503', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3808', '41151414', '姜斓', '185385', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3809', '41151414', '王敬槐', '185382', '男', null, null, null, null, '123456', '23', '0', null, '41151414', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3810', '41151403', '崔启斌', '088395', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3811', '41151403', '彭锦光', '185323', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3812', '41151403', '胡泽斌', '088084', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3813', '41151403', '肖定国', '185346', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3814', '41151403', '何远宏', '185522', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3815', '41151403', '张辉', '185320', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3816', '41151403', '孔阳', '185510', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3817', '41151403', '余家胜', '088083', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3818', '41151403', '张波', '088254', '男', null, null, null, null, '123456', '23', '0', null, '41151403', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3819', '41151523', '刘才安', '188585', '男', null, null, null, null, '123456', '23', '0', null, '41151523', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3820', '41151405', '胡春华', '185525', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3821', '4115121302', '平桥中队6号', '000031', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3822', '4115121302', '机动中队1号', '000030', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3823', '4115121302', '平桥中队7号', '000032', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3824', '4115121302', '羊山中队6号', '000033', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3825', '4115121302', '楚王城中队6号', '000034', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3826', '4115121302', '楚王城中队7号', '000035', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3827', '4115121302', '楚王城中队8号', '000036', '男', null, null, null, null, '123456', '22', '0', null, '4115121302', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3828', '41151622', '万世明', '188089', '男', null, null, null, null, '123456', '23', '0', null, '41151622', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3829', '41151622', '肖大琼', '188033', '男', null, null, null, null, '123456', '23', '0', null, '41151622', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3830', '41151622', '陈久声', '084114', '男', null, null, null, null, '123456', '23', '0', null, '41151622', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3831', '41151622', '丁兰辉', '188197', '男', null, null, null, null, '123456', '23', '0', null, '41151622', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3832', '41151622', '李军', '084146', '男', null, null, null, null, '123456', '23', '0', null, '41151622', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3833', '41151613', '张为明', 'XF0002', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3834', '41151613', '余涛', 'XF0001', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3835', '41151613', '杜超', 'XF0003', '男', null, null, null, null, '123456', '23', '0', null, '41151613', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3836', '41151611', '吴娟', '188070', '男', null, null, null, null, '123456', '23', '0', null, '41151611', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3837', '41151610', '高勇', '188131', '男', null, null, null, null, '123456', '23', '0', null, '41151610', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3838', '41151634', '袁庆伟', '084043', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3839', '41151405', '梅伟', '088344', '男', null, null, null, null, '123456', '23', '0', null, '41151405', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3840', '41151840', '蒋波', '189567', '男', null, null, null, null, '123456', '23', '0', null, '41151840', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3841', '411512132602', '罗撼捷', '188185', '男', null, null, null, null, '123456', '23', '0', null, '411512132602', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3842', '41151634', '徐元缔', '084098', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3843', '41151634', '杨益', '188012', '男', null, null, null, null, '123456', '23', '0', null, '41151634', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3844', '41151407', '王申彪', '088197', '男', null, null, null, null, '123456', '23', '0', null, '41151407', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3845', '41151616', '黄丽', '084241', '男', null, null, null, null, '123456', '23', '0', null, '41151616', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3846', '4115121320', '陆孝华', '088065', '男', null, null, null, null, '123456', '22', '0', null, '4115121320', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3847', '411514', '胡建国', '088268', '男', null, null, null, null, '123456', '22', '0', null, '411514', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3848', '41151417', '晏峰', '088222', '男', null, null, null, null, '123456', '23', '0', null, '41151417', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3849', '41151417', '陈显明', '185390', '男', null, null, null, null, '123456', '23', '0', null, '41151417', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3850', '41151417', '周明生', '088381', '男', null, null, null, null, '123456', '23', '0', null, '41151417', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3851', '41151313', '韩启恒', '189845', '男', null, null, null, null, '123456', '23', '0', null, '41151313', '0', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3852', '4115', 'ceshi', '123123', '男', '', null, '', null, '123456', '20', '0', null, '', '1', '2017-08-29 16:11:22', '0', '0');
INSERT INTO `employee` VALUES ('3853', '4115', '测试2', '123654', '男', '', null, '', null, '123456', '20', '0', null, '', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `employee` VALUES ('3854', '41151204', '1111', '112233', '男', '', null, '', null, '123456', '19', '0', null, '41151204', '1', '2017-01-01 00:00:00', '1', '0');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '菜单父ID',
  `name` varchar(64) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '0',
  `iconcls` varchar(64) DEFAULT NULL,
  `enable` int(2) DEFAULT '1' COMMENT '0:禁用,1:启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=524 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('100', '0', '系统管理', '', '2', 'icon-wrench', '1');
INSERT INTO `menu` VALUES ('101', '100', '角色管理', 'Role/index', '1', 'icon-folder_user', '1');
INSERT INTO `menu` VALUES ('103', '100', '部门管理', 'Area/index', '3', 'icon-world', '1');
INSERT INTO `menu` VALUES ('200', '0', '设备管理', '', '4', 'icon-tux', '1');
INSERT INTO `menu` VALUES ('201', '200', '执法仪配置', 'Dev/pe_base_show', '1', 'icon-tux', '1');
INSERT INTO `menu` VALUES ('303', '300', '工作站日志', 'Log/log_show?logType=wslog', '2', null, '1');
INSERT INTO `menu` VALUES ('302', '300', '执法仪日志', 'Log/log_show?logType=pelog', '1', null, '1');
INSERT INTO `menu` VALUES ('301', '300', '系统日志', 'Log/log_show?logType=syslog', '0', null, '1');
INSERT INTO `menu` VALUES ('300', '0', '日志查询', null, '1', null, '1');
INSERT INTO `menu` VALUES ('400', '0', '统计分析', '', '5', 'icon-group_link', '1');
INSERT INTO `menu` VALUES ('500', '0', '数据查询', '', '7', 'icon-script', '1');
INSERT INTO `menu` VALUES ('203', '200', '工作站管理', 'WorkStation/ws_base_show', '3', null, '1');
INSERT INTO `menu` VALUES ('503', '500', '数据查询', 'Case/show_case_search', '0', '', '1');
INSERT INTO `menu` VALUES ('504', '0', '警情移交', '', '6', '', '1');
INSERT INTO `menu` VALUES ('506', '504', '申请列表', 'Case/show_apply_case', '2', '', '1');
INSERT INTO `menu` VALUES ('507', '504', '申请审核', 'Case/allow_case', '1', '', '1');
INSERT INTO `menu` VALUES ('508', '504', '移交视频', 'Case/show_applyed', '0', '', '1');
INSERT INTO `menu` VALUES ('509', '200', '服务器管理', 'Server/server_show', '2', '', '1');
INSERT INTO `menu` VALUES ('511', '400', '公安岗勤', 'Case/sat_case', '3', '', '1');
INSERT INTO `menu` VALUES ('521', '0', '公告管理', '', '0', '', '1');
INSERT INTO `menu` VALUES ('522', '521', '公告管理', 'Announce/announce', '0', '', '1');
INSERT INTO `menu` VALUES ('519', '0', '警员管理', '', '3', '', '1');
INSERT INTO `menu` VALUES ('520', '519', '警员管理', 'Employee/index', '0', '', '1');
INSERT INTO `menu` VALUES ('516', '0', '数据编辑', '', '8', '', '1');
INSERT INTO `menu` VALUES ('517', '516', '数据编辑', 'Case/show_case', '0', '', '1');
INSERT INTO `menu` VALUES ('512', '0', '数据采集', '', '9', '', '1');
INSERT INTO `menu` VALUES ('513', '512', '数据采集', 'Case/show_case_collect', '0', '', '1');
INSERT INTO `menu` VALUES ('518', '100', '部门角色', 'DeptRole/dept_role', '0', '', '1');
INSERT INTO `menu` VALUES ('523', '400', '编辑情况', 'Case/edit_con_sat', '2', '', '1');

-- ----------------------------
-- Table structure for `pe_base`
-- ----------------------------
DROP TABLE IF EXISTS `pe_base`;
CREATE TABLE `pe_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpxh` varchar(12) NOT NULL COMMENT '产品(执法仪)序号 ',
  `standard` varchar(30) DEFAULT NULL COMMENT '设备规格',
  `product` varchar(100) DEFAULT NULL COMMENT '生产厂家',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '单位,同area_dep.areaname',
  `jybh` varchar(32) NOT NULL COMMENT '警员编号',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '警员姓名',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:停用,1:维修,2:正常',
  `times` int(2) NOT NULL DEFAULT '0',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_cpxh` (`cpxh`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pe_base
-- ----------------------------
INSERT INTO `pe_base` VALUES ('1', 'T11366', '', '', '411501', '老城分局', '085532', '陈勇', '2', '3', null);
INSERT INTO `pe_base` VALUES ('2', 'TA00716', null, null, '4115', '信阳市公安局', '086338', '申忠', '0', '0', null);

-- ----------------------------
-- Table structure for `pe_log_list`
-- ----------------------------
DROP TABLE IF EXISTS `pe_log_list`;
CREATE TABLE `pe_log_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpxh` varchar(12) NOT NULL DEFAULT '0000000' COMMENT '产品(执法仪)序号',
  `comment` varchar(100) DEFAULT NULL COMMENT '描述',
  `rzsj` datetime NOT NULL COMMENT '日志时间',
  `jybh` varchar(32) NOT NULL COMMENT '警员编号',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '警员姓名',
  `gzz_ip` varchar(64) NOT NULL COMMENT '工作站ip',
  `auth_key` varchar(32) DEFAULT NULL COMMENT '认证密钥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pe_log_list
-- ----------------------------
INSERT INTO `pe_log_list` VALUES ('1', 'T11366', '结束联机', '2017-08-16 13:52:06', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('2', 'T11366', '开机', '2017-08-16 13:52:09', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('3', 'T11366', 'USB拔出,关机', '2017-08-16 13:52:11', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('4', 'T11366', '开机', '2017-08-16 13:52:22', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('5', 'T11366', '关机', '2017-08-16 13:52:35', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('6', 'T11366', '结束联机', '2017-08-16 16:42:27', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('7', 'T11366', '开机', '2017-08-16 16:42:30', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('8', 'T11366', 'USB拔出,关机', '2017-08-16 16:42:32', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('9', 'T11366', '开机', '2017-08-16 16:43:41', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('10', 'T11366', '结束联机', '2017-08-16 16:45:50', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('11', 'T11366', 'USB拔出,关机', '2017-08-16 16:45:53', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('12', 'T11366', '结束联机', '2017-08-16 16:52:55', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('13', 'T11366', '开机', '2017-08-16 16:52:58', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('14', 'T11366', 'USB拔出,关机', '2017-08-16 16:53:00', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('15', 'T11366', '结束联机', '2017-08-16 17:10:05', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('16', 'T11366', '开机', '2017-08-16 17:10:08', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('17', 'T11366', 'USB拔出,关机', '2017-08-16 17:10:10', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('18', 'T11366', '结束联机', '2017-08-17 11:08:29', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('19', 'T11366', '开机', '2017-08-17 11:08:32', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('20', 'T11366', 'USB拔出,关机', '2017-08-17 11:08:34', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('21', 'T11366', '结束联机', '2017-08-17 11:11:02', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('22', 'T11366', '开机', '2017-08-17 11:11:06', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('23', 'T11366', 'USB拔出,关机', '2017-08-17 11:11:07', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('24', 'T11366', '结束联机', '2017-08-17 11:14:56', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('25', 'T11366', '开机', '2017-08-17 11:14:59', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('26', 'T11366', 'USB拔出,关机', '2017-08-17 11:15:00', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('27', 'T11366', '结束联机', '2017-08-17 11:15:47', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('28', 'T11366', '开机', '2017-08-17 11:15:50', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('29', 'T11366', 'USB拔出,关机', '2017-08-17 11:15:52', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('30', 'T11366', '结束联机', '2017-08-17 11:16:45', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('31', 'T11366', '开机', '2017-08-17 11:16:48', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('32', 'T11366', 'USB拔出,关机', '2017-08-17 11:16:49', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('33', 'T11366', '开机', '2017-08-17 11:17:03', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('34', 'T11366', '结束联机', '2017-08-17 11:17:40', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('35', 'T11366', 'USB拔出,关机', '2017-08-17 11:17:44', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('36', 'T11366', '结束联机', '2017-08-17 11:19:03', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('37', 'T11366', '开机', '2017-08-17 11:19:06', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('38', 'T11366', 'USB拔出,关机', '2017-08-17 11:19:07', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('39', 'T11366', '结束联机', '2017-08-17 12:02:17', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('40', 'T11366', '开机', '2017-08-17 12:02:20', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('41', 'T11366', 'USB拔出,关机', '2017-08-17 12:02:22', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('42', 'T11366', '结束联机', '2017-08-17 12:02:58', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('43', 'T11366', '开机', '2017-08-17 12:03:01', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('44', 'T11366', 'USB拔出,关机', '2017-08-17 12:03:02', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('45', 'T11366', '结束联机', '2017-08-17 12:09:45', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('46', 'T11366', '开机', '2017-08-17 12:09:48', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('47', 'T11366', 'USB拔出,关机', '2017-08-17 12:09:49', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('48', 'T11366', '开机', '2017-08-17 12:10:03', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('49', 'T11366', '结束联机', '2017-08-17 12:10:39', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('50', 'T11366', 'USB拔出,关机', '2017-08-17 12:10:43', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('51', 'T11366', '管理员联机', '2017-08-17 13:49:52', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('52', 'T11366', '结束联机', '2017-08-17 13:56:40', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('53', 'T11366', '开机', '2017-08-17 13:56:43', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('54', 'T11366', 'USB拔出,关机', '2017-08-17 13:56:45', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('55', 'T11366', '管理员联机', '2017-08-17 14:21:33', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('56', 'T11366', '结束联机', '2017-08-17 14:23:41', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('57', 'T11366', '开机', '2017-08-17 14:23:44', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('58', 'T11366', 'USB拔出,关机', '2017-08-17 14:23:46', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('59', 'T11366', '结束联机', '2017-08-17 16:16:43', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('60', 'T11366', '开机', '2017-08-17 16:16:47', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('61', 'T11366', 'USB拔出,关机', '2017-08-17 16:16:48', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('62', 'T11366', '开机', '2017-08-17 16:18:45', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('63', 'T11366', '管理员联机', '2017-08-17 16:22:12', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('64', 'T11366', '结束联机', '2017-08-17 16:22:48', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('65', 'T11366', 'USB拔出,关机', '2017-08-17 16:22:51', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('66', 'T11366', '开机', '2017-08-24 17:28:03', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('67', 'T11366', '结束联机', '2017-08-24 17:32:25', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('68', 'T11366', 'USB拔出,关机', '2017-08-24 17:32:28', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('69', 'T11366', '结束联机', '2017-08-24 17:34:46', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('70', 'T11366', '开机', '2017-08-24 17:34:49', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('71', 'T11366', 'USB拔出,关机', '2017-08-24 17:34:50', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('72', 'T11366', '结束联机', '2017-08-24 17:43:39', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('73', 'T11366', '结束联机', '2017-08-24 17:44:57', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('74', 'T11366', '开机', '2017-08-24 17:45:30', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('75', 'T11366', '开始录像', '2017-08-24 17:45:37', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('76', 'T11366', '结束录像', '2017-08-24 17:46:52', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('77', 'T11366', '关机', '2017-08-24 17:47:04', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('78', 'T11366', '管理员联机', '2017-08-24 17:56:32', '085532', '陈勇', '192.168.3.110', null);
INSERT INTO `pe_log_list` VALUES ('79', 'T11366', '开机', '2017-08-26 11:33:00', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('80', 'T11366', '开始录像', '2017-08-26 11:33:13', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('81', 'T11366', '结束录像', '2017-08-26 11:33:31', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('82', 'T11366', '开始录像', '2017-08-26 11:33:37', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('83', 'T11366', '结束录像', '2017-08-26 11:33:47', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('84', 'T11366', '关机', '2017-08-26 11:33:59', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('85', 'T11366', '开机', '2017-08-27 19:26:31', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('86', 'T11366', '开始录像', '2017-08-27 19:26:41', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('87', 'T11366', '结束录像', '2017-08-27 19:26:56', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('88', 'T11366', '开始录像', '2017-08-27 19:27:02', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('89', 'T11366', '结束录像', '2017-08-27 19:27:19', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('90', 'T11366', '开始录像', '2017-08-27 19:27:24', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('91', 'T11366', '结束录像', '2017-08-27 19:27:38', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('92', 'T11366', '开始录像', '2017-08-27 19:27:43', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('93', 'T11366', '结束录像', '2017-08-27 19:27:51', '085532', '陈勇', '192.168.77.33', null);
INSERT INTO `pe_log_list` VALUES ('94', 'T11366', '管理员联机', '2017-08-27 19:29:21', '085532', '陈勇', '192.168.77.33', null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` bigint(19) NOT NULL DEFAULT '0' COMMENT '角色ID 13位时间整型',
  `rolename` varchar(64) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `functionlist` varchar(4096) DEFAULT NULL,
  `level` int(2) DEFAULT NULL COMMENT '0-5级',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '系统管理员', '拥有所有操作权限', '100,101,102,103,200,201,203,300,301,302,303,304,400,500,503,504,506,507,508,509,511,521,522,519,520,516,517,512,513,518,523', '0');
INSERT INTO `role` VALUES ('19', '市局管理员', '拥有所有操作权限', '512,513,516,517,500,503,504,506,507,508,400,511,200,203,509,201,519,520,103,518,300,303,302,301,521,522,523', '1');
INSERT INTO `role` VALUES ('20', '警员', '拥有数据管理，日志查询,调阅查询', '512,513,516,517,500,503,506,508,201,303,302', '4');
INSERT INTO `role` VALUES ('22', '县局管理员', '没有角色管理，有其它权限', '512,513,516,517,500,503,504,506,507,508,400,511,200,203,509,201,519,520,103,300,303,302,301,521,522,523', '2');
INSERT INTO `role` VALUES ('23', '基层管理员', '没有角色管理，有其它权限', '512,513,516,517,500,503,504,506,507,508,400,511,203,201,519,520,103,300,303,302,301,521,522', '3');

-- ----------------------------
-- Table structure for `server_db`
-- ----------------------------
DROP TABLE IF EXISTS `server_db`;
CREATE TABLE `server_db` (
  `db_name` varchar(128) DEFAULT NULL,
  `db_ip` varchar(20) NOT NULL DEFAULT 'localhost' COMMENT '服务器ip',
  `db_port` int(11) NOT NULL DEFAULT '3306',
  `db_user` varchar(20) NOT NULL DEFAULT 'root',
  `db_pwd` varchar(20) NOT NULL DEFAULT '123456',
  `enable` int(1) NOT NULL DEFAULT '0' COMMENT '0:不启用,1:启用',
  PRIMARY KEY (`db_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server_db
-- ----------------------------
INSERT INTO `server_db` VALUES ('市局', 'localhost', '3306', 'root', '123456', '0');

-- ----------------------------
-- Table structure for `server_ftp`
-- ----------------------------
DROP TABLE IF EXISTS `server_ftp`;
CREATE TABLE `server_ftp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ftp_ip` varchar(20) NOT NULL DEFAULT '127.0.0.1' COMMENT 'ftp服务器ip',
  `play_port` int(11) NOT NULL DEFAULT '80' COMMENT 'apache port',
  `ftp_port` int(11) NOT NULL DEFAULT '21',
  `ftp_user` varchar(20) NOT NULL DEFAULT 'dh',
  `ftp_pwd` varchar(20) NOT NULL DEFAULT '123456',
  `web_path` varchar(128) NOT NULL DEFAULT '/pe_file/' COMMENT '站点下数据目录,格式:/pe_file<1位或0位盘符>,如/pe_fileD；',
  `ftp_path` varchar(128) NOT NULL COMMENT '绝对路径.FTP数据上传到该目录',
  `is_ftp_dir` int(1) NOT NULL DEFAULT '0' COMMENT '0:不是;1:是',
  `ftp_lock` int(1) NOT NULL DEFAULT '0' COMMENT '0:可切换目录；1：锁定FTP用户的目录；',
  `enable` int(1) NOT NULL DEFAULT '0' COMMENT '0:不启用ftp;1:启用ftp',
  `symbol` varchar(20) DEFAULT NULL COMMENT 'ftp路径所在的盘符',
  `total` double(20,0) DEFAULT '0' COMMENT 'ftp目录的空间大小',
  `free` double(20,0) DEFAULT '0' COMMENT 'ftp目录的剩余空间大小(M)',
  `usage` double(6,2) DEFAULT '0.00' COMMENT 'ftp目录的空间使用率',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_web_path` (`web_path`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server_ftp
-- ----------------------------
INSERT INTO `server_ftp` VALUES ('1', 'localhost', '80', '621', 'dh', '123456', '/pe_file/', 'D:\\Workspace\\pe_file\\', '0', '0', '0', 'D:\\', '199999', '187660', '6.00');
INSERT INTO `server_ftp` VALUES ('2', 'localhost', '80', '621', 'dh', '123456', '/pe_fileI/', 'I:\\', '1', '0', '0', 'I:\\', '0', '0', '0.00');
INSERT INTO `server_ftp` VALUES ('3', 'localhost', '80', '621', 'dh', '123456', '/pe_fileJ/', 'J:\\', '1', '0', '0', 'J:\\', '0', '0', '0.00');
INSERT INTO `server_ftp` VALUES ('4', 'localhost', '80', '621', 'dh', '123456', '/pe_fileK/', 'K:\\', '1', '0', '0', 'K:\\', '0', '0', '0.00');
INSERT INTO `server_ftp` VALUES ('5', 'localhost', '80', '621', 'dh', '123456', '/pe_fileG/', 'G:\\', '1', '0', '1', 'G:\\', '199998', '197603', '1.00');
INSERT INTO `server_ftp` VALUES ('6', 'localhost', '80', '21', 'dh', '123456', '/pe_fileH/', 'H:\\', '1', '0', '0', 'H:\\', '0', '0', '0.00');
INSERT INTO `server_ftp` VALUES ('7', 'localhost', '80', '21', 'dh', '123456', '/pe_fileF/', 'F:\\', '1', '0', '0', 'F:\\', '199999', '161122', '19.00');
INSERT INTO `server_ftp` VALUES ('9', 'localhost', '80', '21', 'dh', '123456', '/pe_fileE/', 'E:\\', '1', '0', '0', 'E:\\', '253864', '237861', '6.00');

-- ----------------------------
-- Table structure for `server_machine`
-- ----------------------------
DROP TABLE IF EXISTS `server_machine`;
CREATE TABLE `server_machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '单位,同area_dep.areaname',
  `server_ip` varchar(20) NOT NULL COMMENT '服务器IP',
  `server_port` int(11) DEFAULT NULL,
  `trademark` varchar(32) DEFAULT NULL COMMENT '服务器品牌',
  `config` varchar(128) DEFAULT NULL COMMENT '服务器配置',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '服务器状态；0:离线,1:正常',
  `account` varchar(32) DEFAULT NULL COMMENT '账号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `db_user` varchar(32) DEFAULT NULL COMMENT '数据库用户',
  `db_pwd` varchar(32) DEFAULT NULL COMMENT '数据库密码',
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_server_ip` (`server_ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server_machine
-- ----------------------------
INSERT INTO `server_machine` VALUES ('1', '411501', '老城分局', '192.168.0.26', '0', '', '1', '0', '', '', '', '', '2017-08-31 17:38:48', '申忠', '', '');

-- ----------------------------
-- Table structure for `sync_area_dep`
-- ----------------------------
DROP TABLE IF EXISTS `sync_area_dep`;
CREATE TABLE `sync_area_dep` (
  `areacode` varchar(32) NOT NULL COMMENT '工作站IP',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  `old_areacode` varchar(32) DEFAULT '' COMMENT '修改前的部门代码',
  PRIMARY KEY (`update_time`,`areacode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_area_dep
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_case`
-- ----------------------------
DROP TABLE IF EXISTS `sync_case`;
CREATE TABLE `sync_case` (
  `tab_name` varchar(32) NOT NULL COMMENT '相关表',
  `case_key` varchar(64) NOT NULL COMMENT '案件标识',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间',
  PRIMARY KEY (`update_time`,`case_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_case
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_case_video`
-- ----------------------------
DROP TABLE IF EXISTS `sync_case_video`;
CREATE TABLE `sync_case_video` (
  `tab_name` varchar(32) NOT NULL COMMENT '相关表',
  `wjbh` varchar(100) NOT NULL COMMENT '文件编号',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间',
  PRIMARY KEY (`update_time`,`wjbh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_case_video
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_dept_role`
-- ----------------------------
DROP TABLE IF EXISTS `sync_dept_role`;
CREATE TABLE `sync_dept_role` (
  `dept_role_id` bigint(19) NOT NULL DEFAULT '0' COMMENT '部门角色ID 13位时间整型',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  PRIMARY KEY (`update_time`,`dept_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_dept_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_employee`
-- ----------------------------
DROP TABLE IF EXISTS `sync_employee`;
CREATE TABLE `sync_employee` (
  `code` varchar(32) NOT NULL COMMENT '警员编号',
  `old_code` varchar(32) DEFAULT '' COMMENT '修改前的警员编号',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  PRIMARY KEY (`code`,`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sync_notice`;
CREATE TABLE `sync_notice` (
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '公告标题',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  PRIMARY KEY (`update_time`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_pe_base`
-- ----------------------------
DROP TABLE IF EXISTS `sync_pe_base`;
CREATE TABLE `sync_pe_base` (
  `cpxh` varchar(12) NOT NULL COMMENT '产品(执法仪)序号 ',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  `old_cpxh` varchar(12) DEFAULT '' COMMENT '修改前的产品序号',
  PRIMARY KEY (`update_time`,`cpxh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_pe_base
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_role`
-- ----------------------------
DROP TABLE IF EXISTS `sync_role`;
CREATE TABLE `sync_role` (
  `roleid` bigint(19) NOT NULL DEFAULT '0' COMMENT '角色ID 13位时间整型',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  PRIMARY KEY (`update_time`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_server_machine`
-- ----------------------------
DROP TABLE IF EXISTS `sync_server_machine`;
CREATE TABLE `sync_server_machine` (
  `server_ip` varchar(64) NOT NULL COMMENT '服务器IP',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  `old_server_ip` varchar(64) DEFAULT '' COMMENT '修改前的服务器IP',
  PRIMARY KEY (`update_time`,`server_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_server_machine
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sync_sys_log`;
CREATE TABLE `sync_sys_log` (
  `key` varchar(64) NOT NULL COMMENT '系统日志ID',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  PRIMARY KEY (`key`,`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_ws_base`
-- ----------------------------
DROP TABLE IF EXISTS `sync_ws_base`;
CREATE TABLE `sync_ws_base` (
  `gzz_ip` varchar(64) NOT NULL COMMENT '工作站IP',
  `status` int(1) NOT NULL COMMENT '1:增加;2:删除;3:修改',
  `update_time` bigint(19) NOT NULL COMMENT '当前操作时间,长整型',
  `old_gzz_ip` varchar(64) DEFAULT '' COMMENT '修改前的工作站IP',
  PRIMARY KEY (`update_time`,`gzz_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_ws_base
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `key` varchar(64) NOT NULL COMMENT '格式：<yyyymmddHHmiss>_<登陆账号>_<areacode>;不能编辑',
  `code` varchar(32) DEFAULT '' COMMENT '登陆账号,一般是警员编号',
  `name` varchar(64) NOT NULL DEFAULT '0',
  `cmt` varchar(128) NOT NULL DEFAULT '',
  `dte` datetime NOT NULL,
  `module` varchar(32) DEFAULT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `areacode` varchar(32) DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '单位,同area_dep.areaname',
  PRIMARY KEY (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=4435 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '公告标题',
  `content` varchar(512) DEFAULT NULL COMMENT '公告描述',
  `areacode` varchar(32) DEFAULT NULL COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '部门名称',
  `creater_id` varchar(32) DEFAULT NULL COMMENT '创建人，登陆用户id',
  `creater_name` varchar(60) DEFAULT NULL COMMENT '创建人，登陆用户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `start_time` datetime NOT NULL COMMENT '公告有效开始时间',
  `end_time` datetime NOT NULL COMMENT '公告有效结束时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_titile` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '上线', '上线', '4115', '信阳市公安局', '086338', '申忠', '2017-08-18 09:49:14', '2017-08-18 00:00:00', '2017-08-22 23:59:59');
INSERT INTO `sys_notice` VALUES ('2', '执法仪序号-T11366', '序号为T11366的执法仪在系统中未登记注册，被禁止接入.接入时间:2017-08-25 10:28:25', '41', '河南省公安厅', 'admin', '超级管理员', '2017-08-25 10:28:25', '2017-08-25 10:33:17', '2017-08-26 10:33:17');
INSERT INTO `sys_notice` VALUES ('3', '执法仪序号-TA00718', '序号为TA00718的执法仪在系统中未登记注册，被禁止接入.接入时间:2017-08-25 10:28:25', '41', '河南省公安厅', 'admin', '超级管理员', '2017-08-25 10:28:25', '2017-08-28 10:35:28', '2017-08-30 10:35:28');

-- ----------------------------
-- Table structure for `ws_base`
-- ----------------------------
DROP TABLE IF EXISTS `ws_base`;
CREATE TABLE `ws_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gzz_ip` varchar(64) NOT NULL COMMENT '工作站IP',
  `areacode` varchar(32) DEFAULT '' COMMENT '单位,同area_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '单位,同area_dep.areaname',
  `fzr` varchar(64) DEFAULT NULL COMMENT '负责人',
  `dh` varchar(32) DEFAULT NULL COMMENT '负责人电话',
  `zxzt` int(2) NOT NULL DEFAULT '1' COMMENT '在线状态,0:不在线，1：在线',
  `ztsj` datetime NOT NULL COMMENT '状态时间',
  `qyzt` int(2) NOT NULL DEFAULT '1' COMMENT '启用状态 0:未启用，1：启用',
  `auth_key` varchar(32) DEFAULT NULL COMMENT '认证密钥 MD5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_gzz_ip` (`gzz_ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ws_base
-- ----------------------------
INSERT INTO `ws_base` VALUES ('1', '10.102.131.121', '0', '青山区一中队', '', '', '0', '2017-08-31 17:38:45', '1', null);
INSERT INTO `ws_base` VALUES ('2', '192.168.43.45', '0', '工作站', '', '', '0', '2017-08-31 17:38:46', '1', null);
INSERT INTO `ws_base` VALUES ('3', '192.168.0.26', null, null, null, null, '0', '2017-08-31 17:38:46', '1', null);
INSERT INTO `ws_base` VALUES ('4', '192.168.1.102', null, null, null, null, '0', '2017-08-31 17:38:47', '1', null);
INSERT INTO `ws_base` VALUES ('5', '192.168.3.108', '411501', '老城分局', null, null, '1', '2017-08-31 17:38:47', '1', null);
INSERT INTO `ws_base` VALUES ('6', '192.168.3.110', '', null, null, null, '1', '2017-08-31 17:38:47', '1', null);
INSERT INTO `ws_base` VALUES ('7', '192.168.77.33', '', null, null, null, '0', '2017-08-31 17:38:47', '1', null);
INSERT INTO `ws_base` VALUES ('8', '192.168.68.162', '', null, null, null, '1', '2017-09-03 09:58:25', '1', null);

-- ----------------------------
-- Table structure for `ws_log`
-- ----------------------------
DROP TABLE IF EXISTS `ws_log`;
CREATE TABLE `ws_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gzz_ip` varchar(64) NOT NULL COMMENT '工作站ip',
  `comment` varchar(128) NOT NULL DEFAULT '0' COMMENT '描述',
  `dxbh` varchar(100) DEFAULT NULL COMMENT '对象编号,执法记录仪或文件编号',
  `rzsj` datetime NOT NULL COMMENT '日志时间',
  `auth_key` varchar(32) DEFAULT NULL COMMENT '认证密钥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ws_log
-- ----------------------------
