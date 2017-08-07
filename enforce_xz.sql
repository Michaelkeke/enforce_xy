/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : enforce_xy

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 936

Date: 2017-08-07 16:26:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `area_dep`
-- ----------------------------
DROP TABLE IF EXISTS `area_dep`;
CREATE TABLE `area_dep` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `proid` int(11) DEFAULT '1' COMMENT '�ݲ��ã��̶���1',
  `fatherareaid` int(11) NOT NULL COMMENT '���Ÿ�ID',
  `areaname` varchar(128) NOT NULL COMMENT '����(����)����',
  `areacode` varchar(32) DEFAULT '0000000000' COMMENT '���Ŵ���',
  `rperson` varchar(64) DEFAULT NULL,
  `rphone` varchar(32) DEFAULT NULL,
  `code` varchar(10) DEFAULT '' COMMENT '���Ŵ���,�Զ���,���ڹ����û��Զ���ѡ��������Ȩ��',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '0:������1:����',
  `is_read` int(1) NOT NULL DEFAULT '1' COMMENT '����Ȩ�ޣ�1:��д,0:ֻ��;������0���Ӽ�������0;',
  PRIMARY KEY (`areaid`),
  UNIQUE KEY `idx_areacode` (`areacode`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of area_dep
-- ----------------------------
INSERT INTO `area_dep` VALUES ('57', '1', '55', '�������������', '3602019902', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('56', '1', '55', '���ƿ�', '3602019901', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('55', '1', '54', '�ؾ����', '36020199', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('54', '1', '53', '��ͷ�н���֧��', '360201', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('53', '1', '52', '��ͷ�й�����', '36', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('58', '1', '54', '�������', '36020101', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('61', '1', '58', '����һ�ж�', '3602010102', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('62', '1', '58', '�������ж�', '3602010104', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('63', '1', '58', '�������ж�', '3602010103', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('64', '1', '58', '�������ж�', '3602010106', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('65', '1', '58', '�������ж�', '3602010101', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('66', '1', '58', '�������ж�', '3602010105', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('67', '1', '58', '�����¹��ж�', '3602010190', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('68', '1', '58', '�������񶽲��', '3602010100', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('69', '1', '54', '��ɽ�����', '36020102', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('70', '1', '54', '���������', '36020103', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('71', '1', '54', '��ԭ�����', '36020104', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('93', '1', '54', '���˴��', '36020111', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('73', '1', '54', '���Ҵ��', '36020112', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('74', '1', '54', 'ʯ�մ��', '36020113', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('75', '1', '54', '�������', '36020117', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('76', '1', '54', '��ï���', '36020114', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('92', '1', '54', '���´��', '36020110', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('79', '1', '54', '���ƳǴ��', '36020116', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('80', '1', '54', '�������', '36020106', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('81', '1', '54', '�������', '36020109', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('82', '1', '54', '������', '36020108', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('83', '1', '54', '�������', '360201123', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('84', '1', '54', '������', '36020107', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('85', '1', '74', 'ʯ��һ�ж�', '3602011301', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('86', '1', '74', 'ʯ�ն��ж�', '3602011302', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('87', '1', '74', 'ʯ�����ж�', '3602011303', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('88', '1', '74', 'ʯ�����ж�', '3602011304', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('89', '1', '74', 'ʯ���¹��ж�', '3602011390', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('90', '1', '74', 'ʯ�ն��취�ư�', '3602011300', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('94', '1', '54', '���ƴ��', '36020115', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('95', '1', '71', '��ԭ���취�ư�', '3602010400', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('96', '1', '71', '��ԭһ�ж�', '3602010401', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('97', '1', '71', '��ԭ���ж�', '3602010402', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('98', '1', '71', '��ԭ���ж�', '3602010403', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('99', '1', '71', '��ԭ���ж�', '3602010404', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('100', '1', '71', '��ԭ�¹��ж�', '3602010490', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('101', '1', '80', '�������취�ư�', '3602010600', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('102', '1', '80', '�������ж�', '3602010601', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('103', '1', '80', '����һ�ж�', '3602010602', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('104', '1', '80', '�������ж�', '3602010603', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('105', '1', '80', '�������ж�', '3602010604', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('106', '1', '80', '�����¹��ж�', '3602010690', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('107', '1', '80', '�������վ', '3602010605', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('108', '1', '84', '������һ�ж�', '3602010701', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('109', '1', '84', '�����Ӷ��ж�', '3602010702', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('110', '1', '82', '�����������˰�', '3602010802', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('111', '1', '82', '�������ල��', '3602010804', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('112', '1', '82', '����������', '3602010805', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('113', '1', '82', '�����������', '3602010806', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('114', '1', '81', '����԰���ж�', '3602010905', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('115', '1', '81', '�������취�ư�', '3602010900', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('116', '1', '81', '����һ�ж�', '3602010901', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('117', '1', '81', '�������ж�', '3602010902', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('118', '1', '81', '�������ж�', '3602010903', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('119', '1', '81', '�������ж�', '3602010904', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('120', '1', '81', '�����¹��ж�', '3602010990', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('121', '1', '92', '���¶��취�ư�', '3602011000', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('122', '1', '92', '���¶��ж�', '3602011001', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('123', '1', '92', '����һ�ж�', '3602011002', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('124', '1', '92', '�������ж�', '3602011003', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('125', '1', '92', '�����¹��ж�', '3602011090', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('126', '1', '93', '���˶��취�ư�', '3602011100', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('127', '1', '93', '����һ�ж�', '3602011101', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('128', '1', '93', '���˶��ж�', '3602011102', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('129', '1', '93', '�������ж�', '3602011103', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('130', '1', '93', '�����¹��ж�', '3602011190', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('131', '1', '93', '����쵼', '3602011109', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('132', '1', '73', '���Ҷ��취�ư�', '3602011200', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('133', '1', '73', '����һ�ж�', '3602011201', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('134', '1', '73', '���Ҷ��ж�', '3602011202', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('135', '1', '73', '�������ж�', '3602011203', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('136', '1', '73', '�������ж�', '3602011204', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('137', '1', '73', '�������ж�', '3602011205', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('138', '1', '73', '�����¹��ж�', '3602011290', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('139', '1', '83', '�����ж�', '36020112301', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('140', '1', '83', '��У�ж�', '36020112302', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('141', '1', '76', '��ï���취�ư�', '3602011400', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('142', '1', '76', '��ïһ�ж�', '3602011401', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('143', '1', '76', '��ï���ж�', '3602011402', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('144', '1', '76', '��ï���ж�', '3602011403', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('145', '1', '76', '��ï�¹��ж�', '3602011490', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('146', '1', '94', '���ƶ��취�ư�', '3602011500', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('147', '1', '94', '����һ�ж�', '3602011501', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('148', '1', '94', '���ƶ��ж�', '3602011502', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('149', '1', '94', '�������ж�', '3602011503', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('150', '1', '94', '�����¹��ж�', '3602011590', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('151', '1', '79', '���ƳǶ��취�ư�', '3602011600', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('152', '1', '79', '���Ƴ�һ�ж�', '3602011601', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('153', '1', '79', '���ƳǶ��ж�', '3602011602', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('154', '1', '79', '���Ƴ����ж�', '3602011603', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('155', '1', '79', '���Ƴ��¹��ж�', '3602011690', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('156', '1', '75', '�������ж�', '3602011705', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('157', '1', '75', '�������񶽲��', '3602011700', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('158', '1', '75', '����һ�ж�', '3602011701', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('159', '1', '75', '�������ж�', '3602011702', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('160', '1', '75', '�������ж�', '3602011703', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('161', '1', '75', '�������ж�', '3602011704', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('162', '1', '75', '�������ư�', '3602011710', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('163', '1', '75', '�����¹��ж�', '3602011790', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('164', '1', '69', '��ɽ�ļ�Ѳ��', '3602010207', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('165', '1', '69', '��ɽ���취�ư�', '3602010200', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('166', '1', '69', '��ɽһ�ж�', '3602010201', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('167', '1', '69', '��ɽ���ж�', '3602010202', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('168', '1', '69', '��ɽ���ж�', '3602010203', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('169', '1', '69', '��ɽ���ж�', '3602010204', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('170', '1', '69', '��ɽ���ж�', '3602010205', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('171', '1', '69', '��ɽ���ж�', '3602010206', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('172', '1', '69', '��ɽ�¹��ж�', '3602010290', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('173', '1', '70', '���������ж�', '3602115', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('174', '1', '70', '�����¹��ж�', '3602010390', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('175', '1', '70', '���Ӷ��취�ư�', '3602010300', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('176', '1', '70', '����һ�ж�', '3602010301', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('177', '1', '70', '���Ӷ��ж�', '3602010302', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('178', '1', '70', '�������ж�', '3602010303', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('179', '1', '70', '�������ж�', '3602010304', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('180', '1', '70', '�������ж�', '3602010305', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('181', '1', '70', '�������ж�', '3602010306', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('182', '1', '70', '���ӹ����ж�', '36031000', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('183', '1', '113', '��Ŀһ����', '360201080601', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('184', '1', '113', '��Ŀ������', '360201080602', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('185', '1', '113', '��Ŀ������', '360201080603', '', '', null, '1', '1');
INSERT INTO `area_dep` VALUES ('52', '1', '0', '���ɹ�������������', '0000000000', null, null, null, '1', '1');

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
INSERT INTO `area_pro` VALUES ('1', '����');

-- ----------------------------
-- Table structure for `case_201706`
-- ----------------------------
DROP TABLE IF EXISTS `case_201706`;
CREATE TABLE `case_201706` (
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ,��ʽ��<yyyymmddHHmiss>_<����>_<areacode>;���ܱ༭,�����ṩ��Ƶʱ���Զ�����;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '��������;',
  `start_time` datetime NOT NULL COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��1�����˵�λ���',
  `areaname` varchar(128) DEFAULT '' COMMENT '��1�����˵�λ����',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '������',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '���¼�����',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ�༭(3����);1:һ�㾯��(6����);2:�ش���(����);3:�谭��ִ����������(����);4:����ǿ��ִ��(����);5:�������ʼ��(6����);6:��Ч����(7��);7:����(6����)',
  `case_no` varchar(40) DEFAULT '' COMMENT '�������',
  `case_name` varchar(128) DEFAULT '' COMMENT '��������(����)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ֪,1:���°���(����),2:��������(����)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '�참��λ',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '�참��Ա',
  `case_qualify` int(1) NOT NULL DEFAULT '0' COMMENT 'ִ���ʸ�;0:��;1:������;2:�м�;3:�߼�;',
  `remark` varchar(256) DEFAULT '' COMMENT '��ע',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '�������뾯Ա���',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '�������뾯Ա��',
  `apply_areacode` varchar(32) DEFAULT NULL COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '�༭��',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201706
-- ----------------------------
INSERT INTO `case_201706` VALUES ('20170623093621_JX0227_3602010201', '20170623093621_����', '2017-06-23 09:36:21', '2017-06-23 09:36:54', '2017-08-07 14:03:21', '����', 'JX0227', '3602010201', '��ɽһ�ж�', '', '', '', '0', '', '', '0', null, null, '0', '', '', '', null, '', '0', '2017-08-07 14:16:13', null);

-- ----------------------------
-- Table structure for `case_201707`
-- ----------------------------
DROP TABLE IF EXISTS `case_201707`;
CREATE TABLE `case_201707` (
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ,��ʽ��<yyyymmddHHmiss>_<����>_<areacode>;���ܱ༭,�����ṩ��Ƶʱ���Զ�����;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '��������;',
  `start_time` datetime NOT NULL COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��1�����˵�λ���',
  `areaname` varchar(128) DEFAULT '' COMMENT '��1�����˵�λ����',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '������',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '���¼�����',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ�༭(3����);1:һ�㾯��(6����);2:�ش���(����);3:�谭��ִ����������(����);4:����ǿ��ִ��(����);5:�������ʼ��(6����);6:��Ч����(7��);7:����(6����)',
  `case_no` varchar(40) DEFAULT '' COMMENT '�������',
  `case_name` varchar(128) DEFAULT '' COMMENT '��������(����)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ֪,1:���°���(����),2:��������(����)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '�참��λ',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '�참��Ա',
  `case_qualify` int(1) NOT NULL DEFAULT '0' COMMENT 'ִ���ʸ�;0:��;1:������;2:�м�;3:�߼�;',
  `remark` varchar(256) DEFAULT '' COMMENT '��ע',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '�������뾯Ա���',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '�������뾯Ա��',
  `apply_areacode` varchar(32) DEFAULT NULL COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '�༭��',
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
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ,��ʽ��<yyyymmddHHmiss>_<����>_<areacode>;���ܱ༭,�����ṩ��Ƶʱ���Զ�����;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '��������;',
  `start_time` datetime NOT NULL COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��1�����˵�λ���',
  `areaname` varchar(128) DEFAULT '' COMMENT '��1�����˵�λ����',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '������',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '���¼�����',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ�༭(3����);1:һ�㾯��(6����);2:�ش���(����);3:�谭��ִ����������(����);4:����ǿ��ִ��(����);5:�������ʼ��(6����);6:��Ч����(7��);7:����(6����)',
  `case_no` varchar(40) DEFAULT '' COMMENT '�������',
  `case_name` varchar(128) DEFAULT '' COMMENT '��������(����)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ֪,1:���°���(����),2:��������(����)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '�참��λ',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '�참��Ա',
  `case_qualify` int(1) NOT NULL DEFAULT '0' COMMENT 'ִ���ʸ�;0:��;1:������;2:�м�;3:�߼�;',
  `remark` varchar(256) DEFAULT '' COMMENT '��ע',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '�������뾯Ա���',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '�������뾯Ա��',
  `apply_areacode` varchar(32) DEFAULT NULL COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '�༭��',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201708
-- ----------------------------

-- ----------------------------
-- Table structure for `case_201709`
-- ----------------------------
DROP TABLE IF EXISTS `case_201709`;
CREATE TABLE `case_201709` (
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ,��ʽ��<yyyymmddHHmiss>_<����>_<areacode>;���ܱ༭,�����ṩ��Ƶʱ���Զ�����;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '��������;',
  `start_time` datetime NOT NULL COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��1�����˵�λ���',
  `areaname` varchar(128) DEFAULT '' COMMENT '��1�����˵�λ����',
  `alarm_no` varchar(40) DEFAULT '' COMMENT '������',
  `alarm_name` varchar(128) DEFAULT '' COMMENT '���¼�����',
  `alarm_addr` varchar(128) DEFAULT '',
  `alarm_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ�༭(3����);1:һ�㾯��(6����);2:�ش���(����);3:�谭��ִ����������(����);4:����ǿ��ִ��(����);5:�������ʼ��(6����);6:��Ч����(7��);7:����(6����)',
  `case_no` varchar(40) DEFAULT '' COMMENT '�������',
  `case_name` varchar(128) DEFAULT '' COMMENT '��������(����)',
  `case_type` int(1) NOT NULL DEFAULT '0' COMMENT '��������;0:δ֪,1:���°���(����),2:��������(����)',
  `case_dept` varchar(64) DEFAULT NULL COMMENT '�참��λ',
  `case_empl` varchar(16) DEFAULT NULL COMMENT '�참��Ա',
  `case_qualify` int(1) NOT NULL DEFAULT '0' COMMENT 'ִ���ʸ�;0:��;1:������;2:�м�;3:�߼�;',
  `remark` varchar(256) DEFAULT '' COMMENT '��ע',
  `apply_jybh` varchar(32) DEFAULT '' COMMENT '�������뾯Ա���',
  `apply_jyxm` varchar(60) DEFAULT '' COMMENT '�������뾯Ա��',
  `apply_areacode` varchar(32) DEFAULT NULL COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '�༭��',
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
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '�ļ���� <�������>_<����>_<������ʱ����>.<����>',
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) NOT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `remark` varchar(256) DEFAULT '',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201706
-- ----------------------------
INSERT INTO `case_video_201706` VALUES ('TA00716_JX0227_20170623093621.MOV', '20170623093621_JX0227_3602010201', '2017-06-23 09:36:21', '2017-06-23 09:36:54', '33', '1', '����', 'JX0227', '3602010201', '��ɽһ�ж�', 'TA00716', '192.168.0.26', null, 'http://192.168.0.26:80/pe_fileG/pedata/TA00716/20170623/TA00716_JX0227_20170623093621.MOV', null, '2017-08-07 14:16:13', '0', '192.168.0.26', '0', '9', '1', '2017-08-07 14:16:13', '');

-- ----------------------------
-- Table structure for `case_video_201707`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201707`;
CREATE TABLE `case_video_201707` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '�ļ���� <�������>_<����>_<������ʱ����>.<����>',
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) NOT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `remark` varchar(256) DEFAULT '',
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
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '�ļ���� <�������>_<����>_<������ʱ����>.<����>',
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) NOT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `remark` varchar(256) DEFAULT '',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201708
-- ----------------------------

-- ----------------------------
-- Table structure for `case_video_201709`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201709`;
CREATE TABLE `case_video_201709` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '�ļ���� <�������>_<����>_<������ʱ����>.<����>',
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '1' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) NOT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL COMMENT '����ʱ��',
  `remark` varchar(256) DEFAULT '',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201709
-- ----------------------------

-- ----------------------------
-- Table structure for `dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL COMMENT '����',
  `name` varchar(255) NOT NULL COMMENT '�ֶ�����',
  `value` varchar(255) DEFAULT '' COMMENT '�ֶ�ֵ',
  `item` varchar(255) DEFAULT '' COMMENT '�ֶ�ֵ����',
  `order` int(5) NOT NULL COMMENT '����',
  PRIMARY KEY (`id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'status', '״̬', '0', '����', '0');
INSERT INTO `dictionary` VALUES ('2', 'status', '״̬', '1', '����', '0');
INSERT INTO `dictionary` VALUES ('3', 'deptype', '��������', '0', '��', '0');
INSERT INTO `dictionary` VALUES ('4', 'deptype', '��������', '1', '����', '0');
INSERT INTO `dictionary` VALUES ('5', 'deptype', '��������', '2', '����', '0');
INSERT INTO `dictionary` VALUES ('6', 'status', '״̬', '', '', '0');
INSERT INTO `dictionary` VALUES ('7', 'deptype', '��������', '', '', '0');
INSERT INTO `dictionary` VALUES ('9', 'enable', '����״̬', '', '', '0');
INSERT INTO `dictionary` VALUES ('10', 'enable', '����״̬', '1', '����', '1');
INSERT INTO `dictionary` VALUES ('11', 'enable', '����״̬', '0', 'ͣ��', '2');
INSERT INTO `dictionary` VALUES ('12', 'videotype', '��Ƶ����', '', '', '0');
INSERT INTO `dictionary` VALUES ('14', 'videotype', '��Ƶ����', '', 'δ֪', '0');
INSERT INTO `dictionary` VALUES ('15', 'videotype', '��Ƶ����', '1', '��Ƶ', '1');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `areaid` int(11) NOT NULL DEFAULT '1' COMMENT '����(����)ID',
  `name` varchar(32) NOT NULL DEFAULT '��' COMMENT '��Ա��',
  `code` varchar(32) NOT NULL DEFAULT '��' COMMENT '��½�˺�,һ���Ǿ�Ա���',
  `sex` char(4) DEFAULT '��',
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `photo_path` varchar(128) DEFAULT NULL COMMENT '��Ա��Ƭ����λ��(URL)',
  `password` varchar(32) NOT NULL COMMENT '��½����',
  `roleid` int(11) NOT NULL DEFAULT '1',
  `bindingip` int(11) NOT NULL DEFAULT '0' COMMENT '0:δ��,1:��',
  `clientip` varchar(16) DEFAULT NULL,
  `userarea` text COMMENT '����Ա�Ƿǿ�.�û���Ȩ�޵�����ID���ϣ����ŷָ�',
  PRIMARY KEY (`empid`),
  UNIQUE KEY `idx_code` (`code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=650 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('86', '133', '�Ž���', 'JX0438', '��', '', null, '����', null, 'JX0438', '23', '0', '', '133');
INSERT INTO `employee` VALUES ('87', '133', '���չ�', 'JX0927', '��', '', null, '��Ա', null, 'JX0927', '20', '0', null, null);
INSERT INTO `employee` VALUES ('88', '71', '���ΰ', '021022', '��', '', null, '����', null, '021022', '22', '0', '', '71,100,99,98,97,96,95');
INSERT INTO `employee` VALUES ('85', '73', '������', '024086', '��', '', null, '����', null, '024086', '22', '0', '', '73,138,137,136,135,134,133,132');
INSERT INTO `employee` VALUES ('84', '85', '����', 'JX1209', '��', '', null, '��Ա', null, 'JX1209', '20', '0', null, null);
INSERT INTO `employee` VALUES ('82', '74', '����', 'JX1217', '��', '', null, '����', null, 'JX1217', '22', '0', '', '74,90,89,88,87,86,85');
INSERT INTO `employee` VALUES ('33', '54', '����', '020004', '��', '', '', '����', '/upload/5949ebc0a2516.jpg', '020004', '19', '0', '', '53,54,94,150,149,148,147,146,93,131,130,129,128,127,126,92,125,124,123,122,121,84,109,108,83,140,139,82,113,185,184,183,112,111,110,81,120,119,118,117,116,115,114,80,107,106,105,104,103,102,101,79,155,154,153,152,151,76,145,144,143,142,141,75,163,162,161,160,159,158,157,156,74,90,89,88,87,86,85,73,138,137,136,135,134,133,132,71,100,99,98,97,96,95,70,182,181,180,179,178,177,176,175,174,173,69,172,171,170,169,168,167,166,165,164,58,68,67,66,65,64,63,62,61,55,57,56,189,190,191,192,193');
INSERT INTO `employee` VALUES ('1', '0', 'ϵͳ����Ա', 'admin', '��', null, null, null, null, '123456', '1', '0', null, '52,53,54,55,56,57,58,61,62,63,64,65,66,67,68,69,70,71,73,74,75,76,79,80,81,82,83,84,85,86,87,88,89,90,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,189,190,191,192,193');
INSERT INTO `employee` VALUES ('34', '54', '�̽���', '020764', '��', '', '', '����', null, '020764', '19', '0', '', '54,94,150,149,148,147,146,93,131,130,129,128,127,126,92,125,124,123,122,121,84,109,108,83,140,139,82,113,185,184,183,112,111,110,81,120,119,118,117,116,115,114,80,107,106,105,104,103,102,101,79,155,154,153,152,151,76,145,144,143,142,141,75,163,162,161,160,159,158,157,156,74,90,89,88,87,86,85,73,138,137,136,135,134,133,132,71,100,99,98,97,96,95,70,182,181,180,179,178,177,176,175,174,173,69,172,171,170,169,168,167,166,165,164,58,68,67,66,65,64,63,62,61,55,57,56,189,190,191,192,193');
INSERT INTO `employee` VALUES ('83', '85', '�߳�', 'JX0706', '��', '', null, '����', null, 'JX0706', '23', '0', '', '85');
INSERT INTO `employee` VALUES ('35', '166', '������', '024992', '��', '', '', '����', null, '024992', '23', '0', '', '166');
INSERT INTO `employee` VALUES ('36', '54', '���Ѽ�', 'JX0714', '��', '', '', '����', null, 'JX0714', '19', '0', '', '54,94,150,149,148,147,146,93,131,130,129,128,127,126,92,125,124,123,122,121,84,109,108,83,140,139,82,113,185,184,183,112,111,110,81,120,119,118,117,116,115,114,80,107,106,105,104,103,102,101,79,155,154,153,152,151,76,145,144,143,142,141,75,163,162,161,160,159,158,157,156,74,90,89,88,87,86,85,73,138,137,136,135,134,133,132,71,100,99,98,97,96,95,70,182,181,180,179,178,177,176,175,174,173,69,172,171,170,169,168,167,166,165,164,58,68,67,66,65,64,63,62,61,55,57,56');
INSERT INTO `employee` VALUES ('37', '54', '��ܰ', 'JX1110', '��', '', '', '��Ա', null, 'JX1110', '20', '0', null, null);
INSERT INTO `employee` VALUES ('38', '54', '������', '000123', '��', '', '', '��Ա', '/upload/59494433a35d1.jpg', '000123', '20', '0', null, null);
INSERT INTO `employee` VALUES ('39', '58', '�����', '021249', '��', '', null, '����', null, '021249', '22', '0', '', '58,68,67,66,65,64,63,62,61');
INSERT INTO `employee` VALUES ('40', '58', '���ɹ�', '020866', '��', '', null, '����', null, '020866', '22', '0', '', '58');
INSERT INTO `employee` VALUES ('41', '58', '�����', '021229', '��', '', null, '����', null, '021229', '22', '0', '', '58,68,67,66,65,64,63');
INSERT INTO `employee` VALUES ('42', '58', '����', '020954', '��', '', null, '����', null, '020954', '22', '0', '', '58,68,67,66,65,64,63,62,61');
INSERT INTO `employee` VALUES ('43', '58', '���', '024628', '��', '', null, '����', null, '024628', '22', '0', '', '58,68,67,66,65,64,63,62,61');
INSERT INTO `employee` VALUES ('44', '58', '������', '021032', '��', '', null, '����', null, '021032', '22', '0', '', '58,68,67,66,65,64,63,62,61');
INSERT INTO `employee` VALUES ('45', '58', '��ʤ��', '021074', '��', '', null, '��Ա', null, '021074', '20', '0', null, null);
INSERT INTO `employee` VALUES ('46', '69', '��ǿ', '020923', '��', '', null, '����', null, '020923', '22', '0', '', '69,172,171,170,169,168,167,166,165,164');
INSERT INTO `employee` VALUES ('47', '166', '�����', '000JJH', '��', '', null, '����', null, '000JJH', '23', '0', '', '166');
INSERT INTO `employee` VALUES ('48', '166', '����', '020707', '��', '', null, '��Ա', null, '020707', '20', '0', null, null);
INSERT INTO `employee` VALUES ('49', '94', '�����', '021115', '��', '', null, '����', null, '021115', '22', '0', '', '94,150,149,148,147,146');
INSERT INTO `employee` VALUES ('50', '147', '�Ž��', 'JX1177', '��', '', null, '��Ա', null, 'JX1177', '20', '0', null, null);
INSERT INTO `employee` VALUES ('51', '93', '������', '020810', '��', '', null, '����', null, '020810', '22', '0', '', '93,131,130,129,128,127,126');
INSERT INTO `employee` VALUES ('52', '127', '����', 'JX1028', '��', '', null, '��Ա', null, 'JX1028', '20', '0', null, null);
INSERT INTO `employee` VALUES ('53', '127', '��˧', '024894', '��', '', null, '����', null, '024894', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('54', '92', '�����', '022820', '��', '', null, '����', null, '022820', '22', '0', '', '92,125,124,123,122,121');
INSERT INTO `employee` VALUES ('55', '123', '���', 'JX0920', '��', '', null, '����', null, 'JX0920', '23', '0', '', '123');
INSERT INTO `employee` VALUES ('56', '123', '�Ա�', 'JX0386', '��', '', null, '��Ա', null, 'JX0386', '20', '0', null, null);
INSERT INTO `employee` VALUES ('57', '84', '������', '021252', '��', '', null, '����', null, '021252', '22', '0', '', '84,109,108');
INSERT INTO `employee` VALUES ('58', '108', '������', '020694', '��', '', null, '����', null, '020694', '23', '0', '', '108');
INSERT INTO `employee` VALUES ('59', '108', '������', 'JX0112', '��', '', null, '��Ա', null, 'JX0112', '20', '0', null, null);
INSERT INTO `employee` VALUES ('60', '83', '�캣��', '021077', '��', '', null, '����', null, '021077', '22', '0', '', '83,140,139');
INSERT INTO `employee` VALUES ('61', '83', '������', '021403', '��', '', null, '����', null, '021403', '22', '0', '', '83,140,139');
INSERT INTO `employee` VALUES ('62', '82', '�ණ', '024529', '��', '', null, '����', null, '024529', '22', '0', '', '82,113,112,111,110');
INSERT INTO `employee` VALUES ('63', '112', '������', '020988', '��', '', null, '����', null, '020988', '23', '0', '', '112');
INSERT INTO `employee` VALUES ('64', '112', '������', '024752', '��', '', null, '��Ա', null, '024752', '20', '0', null, null);
INSERT INTO `employee` VALUES ('65', '81', '������', '024622', '��', '', null, '����', null, '024622', '22', '0', '', '81,120,119,118,117,116,115,114');
INSERT INTO `employee` VALUES ('66', '116', '������', 'JX0702', '��', '', null, '����', null, 'JX0702', '23', '0', '', '116');
INSERT INTO `employee` VALUES ('67', '116', '������', '023547', '��', '', null, '��Ա', null, '023547', '20', '0', null, null);
INSERT INTO `employee` VALUES ('68', '140', 'ׯӨ', 'JX0780', '��', '', null, '����', null, 'JX0780', '23', '0', '', '140');
INSERT INTO `employee` VALUES ('69', '140', '��С��', 'JX0653', '��', '', null, '��Ա', null, 'JX0653', '20', '0', null, null);
INSERT INTO `employee` VALUES ('70', '80', '��־ǿ', '020804', '��', '', null, '����', null, '020804', '22', '0', '', '80,107,106,105,104,103,102,101');
INSERT INTO `employee` VALUES ('71', '103', '������', '021722', '��', '', null, '����', null, '021722', '23', '0', null, null);
INSERT INTO `employee` VALUES ('72', '103', '�¿���', '020920', '��', '', null, '��Ա', null, '020920', '20', '0', null, null);
INSERT INTO `employee` VALUES ('73', '79', '���', '020819', '��', '', null, '����', null, '020819', '22', '0', '', '79,155,154,153,152,151');
INSERT INTO `employee` VALUES ('74', '153', '��ʥ��', 'JX1081', '��', '', null, '����', null, 'JX1081', '23', '0', '', '153');
INSERT INTO `employee` VALUES ('75', '153', '�ξ�', '020907', '��', '', null, '��Ա', null, '020907', '20', '0', null, null);
INSERT INTO `employee` VALUES ('76', '76', '����', '021073', '��', '', null, '����', null, '021073', '22', '0', '', '76,145,144,143,142,141');
INSERT INTO `employee` VALUES ('77', '142', '��֥ï', '002030', '��', '', null, '����', null, '002030', '23', '0', '', '142');
INSERT INTO `employee` VALUES ('78', '142', '��˹�͸�', 'JX1015', '��', '', null, '��Ա', null, 'JX1015', '20', '0', null, null);
INSERT INTO `employee` VALUES ('79', '75', '���', '020772', '��', '', null, '����', null, '020772', '22', '0', '', '75,163,162,161,160,159,158,157,156');
INSERT INTO `employee` VALUES ('80', '158', '����˧', 'JX1231', '��', '', null, '����', null, 'JX1231', '23', '0', '', '158');
INSERT INTO `employee` VALUES ('81', '158', '����', 'JX0473', '��', '', null, '��Ա', null, 'JX0473', '20', '0', null, null);
INSERT INTO `employee` VALUES ('89', '96', '������', 'JX0277', '��', '', null, '����', null, 'JX0277', '23', '0', '', '96');
INSERT INTO `employee` VALUES ('90', '96', '����ǿ', '021173', '��', '', null, '��Ա', null, '021173', '20', '0', null, null);
INSERT INTO `employee` VALUES ('91', '70', '����', 'JX0741', '��', '', null, '����', null, 'JX0741', '22', '0', '', '70,182,181,180,179,178,177,176,175,174,173');
INSERT INTO `employee` VALUES ('92', '176', '�Ž���', '020794', '��', '', null, '����', null, '020794', '23', '0', '', '176');
INSERT INTO `employee` VALUES ('93', '176', '�ܽ���', '021138', '��', '', null, '��Ա', null, '021138', '20', '0', null, null);
INSERT INTO `employee` VALUES ('94', '61', '����ƽ', '021324', '��', '', null, '����', null, '021324', '23', '0', '', '61');
INSERT INTO `employee` VALUES ('95', '61', '�ųɻ�', '020731', '��', '', null, '��Ա', null, '020731', '20', '0', null, null);
INSERT INTO `employee` VALUES ('96', '61', '������˹', '020974', '��', '', null, '��Ա', null, '020974', '20', '0', null, null);
INSERT INTO `employee` VALUES ('97', '150', '�ź���', '001919', '��', '', null, '����', null, '001919', '23', '0', '', '150');
INSERT INTO `employee` VALUES ('98', '150', '��Ⱥ', '024942', '��', '', null, '��Ա', null, '024942', '20', '0', null, null);
INSERT INTO `employee` VALUES ('99', '167', '��Ԫ��', '024888', '��', '', null, '����', null, '024888', '23', '0', '', '167');
INSERT INTO `employee` VALUES ('100', '167', '����', '023789', '��', '', null, '��Ա', null, '023789', '20', '0', null, null);
INSERT INTO `employee` VALUES ('101', '128', '����', 'JX0099', '��', '', null, '����', null, 'JX0099', '23', '0', '', '128');
INSERT INTO `employee` VALUES ('102', '128', '����', 'JX0475', '��', '', null, '��Ա', null, 'JX0475', '20', '0', null, null);
INSERT INTO `employee` VALUES ('103', '122', '�', 'JX1056', '��', '', null, '����', null, 'JX1056', '23', '0', '', '122');
INSERT INTO `employee` VALUES ('104', '122', '��Ӣ', 'JX0915', '��', '', null, '��Ա', null, 'JX0915', '20', '0', null, null);
INSERT INTO `employee` VALUES ('105', '139', '����', 'JX0659', '��', '', null, '����', null, 'JX0659', '23', '0', '', '139');
INSERT INTO `employee` VALUES ('106', '139', '������', 'JX0655', '��', '', null, '��Ա', null, 'JX0655', '20', '0', null, null);
INSERT INTO `employee` VALUES ('107', '111', '����', '020406', '��', '', null, '����', null, '020406', '23', '0', '', '111');
INSERT INTO `employee` VALUES ('108', '111', '������', '021231', '��', '', null, '��Ա', null, '021231', '20', '0', null, null);
INSERT INTO `employee` VALUES ('109', '117', '��Сƽ', '020911', '��', '', null, '����', null, '020911', '23', '0', '', '117');
INSERT INTO `employee` VALUES ('110', '117', '���', '024766', '��', '', null, '��Ա', null, '024766', '20', '0', null, null);
INSERT INTO `employee` VALUES ('111', '102', '������', '020997', '��', '', null, '����', null, '020997', '23', '0', '', '102');
INSERT INTO `employee` VALUES ('112', '102', '�콨��', '020985', '��', '', null, '��Ա', null, '020985', '20', '0', null, null);
INSERT INTO `employee` VALUES ('113', '152', '����', '021078', '��', '', null, '����', null, '021078', '23', '0', '', '152');
INSERT INTO `employee` VALUES ('114', '152', '�¶���', 'JX1148', '��', '', null, '��Ա', null, 'JX1148', '20', '0', null, null);
INSERT INTO `employee` VALUES ('115', '143', '������', '002025', '��', '', null, '����', null, '002025', '23', '0', '', '143');
INSERT INTO `employee` VALUES ('116', '143', '����', 'JX1163', '��', '', null, '��Ա', null, 'JX1163', '20', '0', null, null);
INSERT INTO `employee` VALUES ('117', '159', '����', 'JX1218', '��', '', null, '����', null, 'JX1218', '23', '0', '', '159');
INSERT INTO `employee` VALUES ('118', '159', '������', 'JX0476', '��', '', null, '��Ա', null, 'JX0476', '20', '0', null, null);
INSERT INTO `employee` VALUES ('119', '88', '��־ǿ', '020732', '��', '', null, '����', null, '020732', '23', '0', '', '88');
INSERT INTO `employee` VALUES ('120', '88', '��ѧ��', 'JX0975', '��', '', null, '��Ա', null, 'JX0975', '20', '0', null, null);
INSERT INTO `employee` VALUES ('121', '134', '������', 'O21234', '��', '', null, '��Ա', null, 'O21234', '23', '0', '', '134');
INSERT INTO `employee` VALUES ('122', '134', '��»', 'JX0931', '��', '', null, '��Ա', null, 'JX0931', '20', '0', null, null);
INSERT INTO `employee` VALUES ('123', '97', '�Ը�', '000320', '��', '', null, '����', null, '000320', '23', '0', '', '97');
INSERT INTO `employee` VALUES ('124', '97', '������', 'JX0359', '��', '', null, '��Ա', null, 'JX0359', '20', '0', null, null);
INSERT INTO `employee` VALUES ('125', '177', '����', '022684', '��', '', null, '����', null, '022684', '23', '0', '', '177');
INSERT INTO `employee` VALUES ('126', '177', '��˧', 'JX0317', '��', '', null, '��Ա', null, 'JX0317', '20', '0', null, null);
INSERT INTO `employee` VALUES ('127', '62', '����', '024476', '��', '', null, '����', null, '024476', '23', '0', '', '62');
INSERT INTO `employee` VALUES ('128', '62', '�ű�', 'JX1070', '��', '', null, '��Ա', null, 'JX1070', '20', '0', null, null);
INSERT INTO `employee` VALUES ('129', '166', '����', 'JX0227', '��', '', null, '��Ա', null, 'JX0227', '20', '0', null, null);
INSERT INTO `employee` VALUES ('130', '166', '����', 'JX0198', '��', '', null, '����', null, 'JX0198', '23', '0', '', '166');
INSERT INTO `employee` VALUES ('131', '166', '�ź�˶', 'JX0663', '��', '', null, '����', null, 'JX0663', '23', '0', '', '166');
INSERT INTO `employee` VALUES ('132', '166', '�����', 'JX1271', '��', '', null, '����', null, 'JX1271', '23', '0', '', '166');
INSERT INTO `employee` VALUES ('133', '166', '���»�', 'JX0214', '��', '', null, '��Ա', null, 'JX0214', '20', '0', null, null);
INSERT INTO `employee` VALUES ('134', '166', '�ų�', 'JX0219', '��', '', null, '��Ա', null, 'JX0219', '20', '0', null, null);
INSERT INTO `employee` VALUES ('135', '166', '�', 'JX0224', '��', '', null, '��Ա', null, 'JX0224', '20', '0', null, null);
INSERT INTO `employee` VALUES ('136', '166', '����', 'JX0232', '��', '', null, '��Ա', null, 'JX0232', '20', '0', null, null);
INSERT INTO `employee` VALUES ('137', '166', '����ǿ', 'JX0233', '��', '', null, '��Ա', null, 'JX0233', '20', '0', null, null);
INSERT INTO `employee` VALUES ('138', '166', '��Ԫһ', 'JX0243', '��', '', null, '��Ա', null, 'JX0243', '20', '0', null, null);
INSERT INTO `employee` VALUES ('139', '166', '����ΰ', 'JX0260', '��', '', null, '��Ա', null, 'JX0260', '20', '0', null, null);
INSERT INTO `employee` VALUES ('140', '166', '���', 'JX0393', '��', '', null, '��Ա', null, 'JX0393', '20', '0', null, null);
INSERT INTO `employee` VALUES ('141', '166', '����ԭ', 'JX0856', '��', '', null, '��Ա', null, 'JX0856', '20', '0', null, null);
INSERT INTO `employee` VALUES ('142', '166', '�볬', 'JX0858', '��', '', null, '��Ա', null, 'JX0858', '20', '0', null, null);
INSERT INTO `employee` VALUES ('143', '166', '���۲�', 'JX0867', '��', '', null, '��Ա', null, 'JX0867', '20', '0', null, null);
INSERT INTO `employee` VALUES ('144', '166', '����', 'JX0870', '��', '', null, '��Ա', null, 'JX0870', '20', '0', null, null);
INSERT INTO `employee` VALUES ('145', '166', '��ѩ��', 'JX0873', '��', '', null, '��Ա', null, 'JX0873', '20', '0', null, null);
INSERT INTO `employee` VALUES ('146', '166', '�׺�', 'JX1084', '��', '', null, '��Ա', null, 'JX1084', '20', '0', null, null);
INSERT INTO `employee` VALUES ('147', '166', '��ΰ��', 'JX1109', '��', '', null, '��Ա', null, 'JX1109', '20', '0', null, null);
INSERT INTO `employee` VALUES ('148', '166', '������', 'JX1127', '��', '', null, '��Ա', null, 'JX1127', '20', '0', null, null);
INSERT INTO `employee` VALUES ('149', '166', '����ΰ', 'JX1139', '��', '', null, '��Ա', null, 'JX1139', '20', '0', null, null);
INSERT INTO `employee` VALUES ('150', '166', '����ƽ', 'JX0120', '��', '', null, '��Ա', null, 'JX0120', '20', '0', null, null);
INSERT INTO `employee` VALUES ('151', '172', '����', '021061', '��', '', null, '����', null, '021061', '23', '0', '', '172');
INSERT INTO `employee` VALUES ('152', '172', '����', 'JX0152', '��', '', null, '����', null, 'JX0152', '23', '0', '', '172');
INSERT INTO `employee` VALUES ('153', '172', '��˧', 'JX1125', '��', '', null, '����', null, 'JX1125', '23', '0', '', '172');
INSERT INTO `employee` VALUES ('154', '172', '�պ�', '000811', '��', '', null, '����', null, '000811', '23', '0', '', '172');
INSERT INTO `employee` VALUES ('155', '172', '����', '000805', '��', '', null, '����', null, '000805', '23', '0', '', '172');
INSERT INTO `employee` VALUES ('156', '172', '����', '023123', '��', '', null, '��Ա', null, '023123', '20', '0', null, null);
INSERT INTO `employee` VALUES ('157', '172', '���醴', '024444', '��', '', null, '��Ա', null, '024444', '20', '0', null, null);
INSERT INTO `employee` VALUES ('158', '172', '������', '024617', '��', '', null, '��Ա', null, '024617', '20', '0', null, null);
INSERT INTO `employee` VALUES ('159', '172', '�ſ�ƽ', '024749', '��', '', null, '��Ա', null, '024749', '20', '0', null, null);
INSERT INTO `employee` VALUES ('160', '172', '����', '024867', '��', '', null, '��Ա', null, '024867', '20', '0', null, null);
INSERT INTO `employee` VALUES ('161', '172', '������', '024916', '��', '', null, '��Ա', null, '024916', '20', '0', null, null);
INSERT INTO `employee` VALUES ('162', '172', '������', '024965', '��', '', null, '��Ա', null, '024965', '20', '0', null, null);
INSERT INTO `employee` VALUES ('163', '171', '��ռɽ', '024742', '��', '', null, '����', null, '024742', '23', '0', '', '171');
INSERT INTO `employee` VALUES ('164', '171', '������', '021127', '��', '', null, '��Ա', null, '021127', '20', '0', null, null);
INSERT INTO `employee` VALUES ('165', '171', '����', '024889', '��', '', null, '��Ա', null, '024889', '20', '0', null, null);
INSERT INTO `employee` VALUES ('166', '171', '����', 'JX0209', '��', '', null, '��Ա', null, 'JX0209', '20', '0', null, null);
INSERT INTO `employee` VALUES ('167', '171', '������', 'JX0222', '��', '', null, '��Ա', null, 'JX0222', '20', '0', null, null);
INSERT INTO `employee` VALUES ('168', '171', '����', 'JX0225', '��', '', null, '��Ա', null, 'JX0225', '20', '0', null, null);
INSERT INTO `employee` VALUES ('169', '171', '����', 'JX0266', '��', '', null, '��Ա', null, 'JX0266', '20', '0', null, null);
INSERT INTO `employee` VALUES ('170', '171', '����', 'JX0275', '��', '', null, '��Ա', null, 'JX0275', '20', '0', null, null);
INSERT INTO `employee` VALUES ('171', '171', '��ط��', 'JX0469', '��', '', null, '��Ա', null, 'JX0469', '20', '0', null, null);
INSERT INTO `employee` VALUES ('172', '171', '�̳���', 'JX0857', '��', '', null, '��Ա', null, 'JX0857', '20', '0', null, null);
INSERT INTO `employee` VALUES ('173', '171', '����', 'JX0863', '��', '', null, '��Ա', null, 'JX0863', '20', '0', null, null);
INSERT INTO `employee` VALUES ('174', '170', '�����', '021038', '��', '', null, '����', null, '021038', '23', '0', '', '170');
INSERT INTO `employee` VALUES ('175', '170', '�����', '024625', '��', '', null, '��Ա', null, '024625', '20', '0', null, null);
INSERT INTO `employee` VALUES ('176', '170', '����˶', '024714', '��', '', null, '��Ա', null, '024714', '20', '0', null, null);
INSERT INTO `employee` VALUES ('177', '170', '����', '024832', '��', '', null, '��Ա', null, '024832', '20', '0', null, null);
INSERT INTO `employee` VALUES ('178', '170', '�｡', 'JX0223', '��', '', null, '��Ա', null, 'JX0223', '20', '0', null, null);
INSERT INTO `employee` VALUES ('179', '170', '����', 'JX0229', '��', '', null, '��Ա', null, 'JX0229', '20', '0', null, null);
INSERT INTO `employee` VALUES ('180', '170', '���', 'JX0230', '��', '', null, '��Ա', null, 'JX0230', '20', '0', null, null);
INSERT INTO `employee` VALUES ('181', '170', '��ΰ', 'JX0245', '��', '', null, '��Ա', null, 'JX0245', '20', '0', null, null);
INSERT INTO `employee` VALUES ('182', '170', '����', 'JX1130', '��', '', null, '��Ա', null, 'JX1130', '20', '0', null, null);
INSERT INTO `employee` VALUES ('183', '170', 'κ����', 'JX1131', '��', '', null, '��Ա', null, 'JX1131', '20', '0', null, null);
INSERT INTO `employee` VALUES ('184', '170', 'κ����', 'JX1138', '��', '', null, '��Ա', null, 'JX1138', '20', '0', null, null);
INSERT INTO `employee` VALUES ('185', '169', '��ǿ', '021063', '��', '', null, '����', null, '021063', '23', '0', '', '169');
INSERT INTO `employee` VALUES ('186', '169', '������', '024779', '��', '', null, '����', null, '024779', '23', '0', '', '169');
INSERT INTO `employee` VALUES ('187', '169', '������', '024756', '��', '', null, '����', null, '024756', '23', '0', '', '169');
INSERT INTO `employee` VALUES ('188', '169', '����', '023953', '��', '', null, '��Ա', null, '023953', '20', '0', null, null);
INSERT INTO `employee` VALUES ('189', '169', '������', '024792', '��', '', null, '��Ա', null, '024792', '20', '0', null, null);
INSERT INTO `employee` VALUES ('190', '169', '�⽨��', 'JX0199', '��', '', null, '��Ա', null, 'JX0199', '20', '0', null, null);
INSERT INTO `employee` VALUES ('191', '169', '���ǿ', 'JX0200', '��', '', null, '��Ա', null, 'JX0200', '20', '0', null, null);
INSERT INTO `employee` VALUES ('192', '169', '����', 'JX0235', '��', '', null, '��Ա', null, 'JX0235', '20', '0', null, null);
INSERT INTO `employee` VALUES ('193', '169', '������', 'JX0252', '��', '', null, '��Ա', null, 'JX0252', '20', '0', null, null);
INSERT INTO `employee` VALUES ('194', '169', '�', 'JX0255', '��', '', null, '��Ա', null, 'JX0255', '20', '0', null, null);
INSERT INTO `employee` VALUES ('195', '169', '�˾���', 'JX0262', '��', '', null, '��Ա', null, 'JX0262', '20', '0', null, null);
INSERT INTO `employee` VALUES ('196', '169', '�ܽ���', 'JX0271', '��', '', null, '��Ա', null, 'JX0271', '20', '0', null, null);
INSERT INTO `employee` VALUES ('197', '169', '�ǻ�', 'JX0273', '��', '', null, '��Ա', null, 'JX0273', '20', '0', null, null);
INSERT INTO `employee` VALUES ('198', '169', '����', 'JX0860', '��', '', null, '��Ա', null, 'JX0860', '20', '0', null, null);
INSERT INTO `employee` VALUES ('199', '169', 'Ҫͤ', 'JX1075', '��', '', null, '��Ա', null, 'JX1075', '20', '0', null, null);
INSERT INTO `employee` VALUES ('200', '169', '�¹���', 'JX1092', '��', '', null, '��Ա', null, 'JX1092', '20', '0', null, null);
INSERT INTO `employee` VALUES ('201', '169', '������', 'JX1137', '��', '', null, '��Ա', null, 'JX1137', '20', '0', null, null);
INSERT INTO `employee` VALUES ('202', '168', '����', 'JX0157', '��', '', null, '����', null, 'JX0157', '23', '0', '', '168');
INSERT INTO `employee` VALUES ('203', '168', '������', 'JX0825', '��', '', null, '����', null, 'JX0825', '23', '0', '', '168');
INSERT INTO `employee` VALUES ('204', '168', '��ǫ', 'JX0095', '��', '', null, '����', null, 'JX0095', '23', '0', '', '168');
INSERT INTO `employee` VALUES ('205', '168', '����', '000565', '��', '', null, '����', null, '000565', '23', '0', '', '168');
INSERT INTO `employee` VALUES ('206', '168', '������', '020086', '��', '', null, '��Ա', null, '020086', '20', '0', null, null);
INSERT INTO `employee` VALUES ('207', '168', '�ｨ��', '020734', '��', '', null, '��Ա', null, '020734', '20', '0', null, null);
INSERT INTO `employee` VALUES ('208', '168', '���', '024022', '��', '', null, '��Ա', null, '024022', '20', '0', null, null);
INSERT INTO `employee` VALUES ('209', '168', '������', '024870', '��', '', null, '��Ա', null, '024870', '20', '0', null, null);
INSERT INTO `employee` VALUES ('210', '168', '����', 'JX0201', '��', '', null, '��Ա', null, 'JX0201', '20', '0', null, null);
INSERT INTO `employee` VALUES ('211', '168', '�����', 'JX0215', '��', '', null, '��Ա', null, 'JX0215', '20', '0', null, null);
INSERT INTO `employee` VALUES ('212', '168', '����', 'JX0272', '��', '', null, '��Ա', null, 'JX0272', '20', '0', null, null);
INSERT INTO `employee` VALUES ('213', '168', '������', 'JX0829', '��', '', null, '��Ա', null, 'JX0829', '20', '0', null, null);
INSERT INTO `employee` VALUES ('214', '168', '�Ժ���', 'JX0868', '��', '', null, '��Ա', null, 'JX0868', '20', '0', null, null);
INSERT INTO `employee` VALUES ('215', '168', '������', 'JX1077', '��', '', null, '��Ա', null, 'JX1077', '20', '0', null, null);
INSERT INTO `employee` VALUES ('216', '168', '���', 'JX1133', '��', '', null, '��Ա', null, 'JX1133', '20', '0', null, null);
INSERT INTO `employee` VALUES ('217', '167', '����', 'JX0221', '��', '', null, '����', null, 'JX0221', '23', '0', '', '167');
INSERT INTO `employee` VALUES ('218', '167', '��ǿ', 'JX0872', '��', '', null, '����', null, 'JX0872', '23', '0', '', '167');
INSERT INTO `employee` VALUES ('219', '167', '������', '024962', '��', '', null, '��Ա', null, '024962', '20', '0', null, null);
INSERT INTO `employee` VALUES ('220', '167', '������', 'JX0202', '��', '', null, '��Ա', null, 'JX0202', '20', '0', null, null);
INSERT INTO `employee` VALUES ('221', '167', '������', 'JX0234', '��', '', null, '��Ա', null, 'JX0234', '20', '0', null, null);
INSERT INTO `employee` VALUES ('222', '167', '��˧', 'JX0237', '��', '', null, '��Ա', null, 'JX0237', '20', '0', null, null);
INSERT INTO `employee` VALUES ('223', '167', '�ų�', 'JX0270', '��', '', null, '��Ա', null, 'JX0270', '20', '0', null, null);
INSERT INTO `employee` VALUES ('224', '167', '���ı�', 'JX1076', '��', '', null, '��Ա', null, 'JX1076', '20', '0', null, null);
INSERT INTO `employee` VALUES ('225', '167', '����', 'JX1111', '��', '', null, '��Ա', null, 'JX1111', '20', '0', null, null);
INSERT INTO `employee` VALUES ('226', '167', '����', 'JX1124', '��', '', null, '��Ա', null, 'JX1124', '20', '0', null, null);
INSERT INTO `employee` VALUES ('227', '167', '������', 'JX1134', '��', '', null, '��Ա', null, 'JX1134', '20', '0', null, null);
INSERT INTO `employee` VALUES ('228', '69', '���', '021171', '��', '', null, '����', null, '021171', '22', '0', '', '69,172,171,170,169,168,167,166,165,164');
INSERT INTO `employee` VALUES ('229', '69', '�ӹ���', '020979', '��', '', null, '����', null, '020979', '22', '0', '', '69,172,171,170,169,168,167,166,165,164');
INSERT INTO `employee` VALUES ('230', '69', '�ձ�', '021197', '��', '', null, '����', null, '021197', '22', '0', '', '69,172,171,170,169,168,167,166,165,164');
INSERT INTO `employee` VALUES ('231', '69', '����', '021054', '��', '', null, '����', null, '021054', '22', '0', '', '69,172,171,170,169,168,167,166,165,164');
INSERT INTO `employee` VALUES ('232', '69', '������', '021137', '��', '', null, '����', null, '021137', '22', '0', '', '69,172,171,170,169,168,167,166,165,164');
INSERT INTO `employee` VALUES ('233', '69', '����', '021026', '��', '', null, '����', null, '021026', '22', '0', '', '69,172,171,170,169,168,167,166,165,164');
INSERT INTO `employee` VALUES ('234', '94', '��ѩ��', '025008', '��', '', null, '����', null, '025008', '22', '0', '', '94,150,149,148,147,146');
INSERT INTO `employee` VALUES ('235', '94', '��־��', '023502', '��', '', null, '����', null, '023502', '22', '0', '', '94,150,149,148,147,146');
INSERT INTO `employee` VALUES ('236', '147', '�Ǿ���', 'JX1175', '��', '', null, '��Ա', null, 'JX1175', '20', '0', null, null);
INSERT INTO `employee` VALUES ('237', '147', '����', 'JX0983', '��', '', null, '��Ա', null, 'JX0983', '20', '0', null, null);
INSERT INTO `employee` VALUES ('238', '148', '֣����', 'JX1178', '��', '', null, '��Ա', null, 'JX1178', '20', '0', null, null);
INSERT INTO `employee` VALUES ('239', '148', '�Ž�ƽ', 'JX0523', '��', '', null, '��Ա', null, 'JX0523', '20', '0', null, null);
INSERT INTO `employee` VALUES ('240', '148', '��˧', 'JX0495', '��', '', null, '��Ա', null, 'JX0495', '20', '0', null, null);
INSERT INTO `employee` VALUES ('241', '150', '�ظ�', 'JX1176', '��', '', null, '��Ա', null, 'JX1176', '20', '0', null, null);
INSERT INTO `employee` VALUES ('242', '150', 'ۡ��', 'JX1180', '��', '', null, '��Ա', null, 'JX1180', '20', '0', null, null);
INSERT INTO `employee` VALUES ('243', '150', '�ż�', '024901', '��', '', null, '��Ա', null, '024901', '20', '0', null, null);
INSERT INTO `employee` VALUES ('244', '150', '֣����', 'JX0508', '��', '', null, '����', null, 'JX0508', '23', '0', '', '150');
INSERT INTO `employee` VALUES ('245', '150', '��־Զ', '001911', '��', '', null, '����', null, '001911', '23', '0', '', '150');
INSERT INTO `employee` VALUES ('246', '150', '�ž�', 'JX0487', '��', '', null, '��Ա', null, 'JX0487', '20', '0', null, null);
INSERT INTO `employee` VALUES ('247', '93', '���', '021044', '��', '', null, '����', null, '021044', '22', '0', '', '93,131,130,129,128,127,126');
INSERT INTO `employee` VALUES ('248', '93', '��ѧ��', '024089', '��', '', null, '����', null, '024089', '22', '0', '', '93,131,130,129,128,127,126');
INSERT INTO `employee` VALUES ('249', '93', '�Ա���', '023667', '��', '', null, '����', null, '023667', '22', '0', '', '93,131,130,129,128,127,126');
INSERT INTO `employee` VALUES ('250', '93', '����', '021145', '��', '', null, '����', null, '021145', '22', '0', '', '93,131,130,129,128,127,126');
INSERT INTO `employee` VALUES ('251', '127', '����', 'JX1058', '��', '', null, '��Ա', null, 'JX1058', '20', '0', null, null);
INSERT INTO `employee` VALUES ('252', '127', '����', '020880', '��', '', null, '��Ա', null, '020880', '20', '0', null, null);
INSERT INTO `employee` VALUES ('253', '127', '�ų���', 'JX1033', '��', '', null, '��Ա', null, 'JX1033', '20', '0', null, null);
INSERT INTO `employee` VALUES ('254', '127', '������', 'JX1034', '��', '', null, '��Ա', null, 'JX1034', '20', '0', null, null);
INSERT INTO `employee` VALUES ('255', '127', '�佨��', 'JX0488', '��', '', null, '��Ա', null, 'JX0488', '20', '0', null, null);
INSERT INTO `employee` VALUES ('256', '127', '������', 'JX0494', '��', '', null, '��Ա', null, 'JX0494', '20', '0', null, null);
INSERT INTO `employee` VALUES ('257', '127', '��־ͮ', 'JX0499', '��', '', null, '��Ա', null, 'JX0499', '20', '0', null, null);
INSERT INTO `employee` VALUES ('258', '127', '��ΰ', 'JX0501', '��', '', null, '��Ա', null, 'JX0501', '20', '0', null, null);
INSERT INTO `employee` VALUES ('259', '127', '��ΰ', 'JX0503', '��', '', null, '��Ա', null, 'JX0503', '20', '0', null, null);
INSERT INTO `employee` VALUES ('260', '127', '����ǿ', 'JX0505', '��', '', null, '��Ա', null, 'JX0505', '20', '0', null, null);
INSERT INTO `employee` VALUES ('261', '127', '���', 'JX0507', '��', '', null, '��Ա', null, 'JX0507', '20', '0', null, null);
INSERT INTO `employee` VALUES ('262', '127', '�｣��', 'JX0510', '��', '', null, '��Ա', null, 'JX0510', '20', '0', null, null);
INSERT INTO `employee` VALUES ('263', '127', '���', 'JX0511', '��', '', null, '��Ա', null, 'JX0511', '20', '0', null, null);
INSERT INTO `employee` VALUES ('264', '127', '��־��', 'JX0524', '��', '', null, '��Ա', null, 'JX0524', '20', '0', null, null);
INSERT INTO `employee` VALUES ('265', '127', '���Ʋ�', '024956', '��', '', null, '��Ա', null, '024956', '20', '0', null, null);
INSERT INTO `employee` VALUES ('266', '127', '֣ǿ', 'JX0316', '��', '', null, '��Ա', null, 'JX0316', '20', '0', null, null);
INSERT INTO `employee` VALUES ('267', '127', '�ߺ���', '022181', '��', '', null, '��Ա', null, '022181', '20', '0', null, null);
INSERT INTO `employee` VALUES ('268', '127', '�캣��', '023304', '��', '', null, '��Ա', null, '023304', '20', '0', null, null);
INSERT INTO `employee` VALUES ('269', '127', '������', '024125', '��', '', null, '��Ա', null, '024125', '20', '0', null, null);
INSERT INTO `employee` VALUES ('270', '127', '��Сƽ', '024224', '��', '', null, '��Ա', null, '024224', '20', '0', null, null);
INSERT INTO `employee` VALUES ('271', '127', 'ʷ����', '024732', '��', '', null, '��Ա', null, '024732', '20', '0', null, null);
INSERT INTO `employee` VALUES ('272', '127', '���컪', '024733', '��', '', null, '��Ա', null, '024733', '20', '0', null, null);
INSERT INTO `employee` VALUES ('273', '127', '��ΰ', '024751', '��', '', null, '��Ա', null, '024751', '20', '0', null, null);
INSERT INTO `employee` VALUES ('274', '127', '���', '024801', '��', '', null, '����', null, '024801', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('275', '127', '���', 'JX0509', '��', '', null, '����', null, 'JX0509', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('276', '127', '��γ', 'JX0423', '��', '', null, '����', null, 'JX0423', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('277', '127', '�ſ�', 'JX0671', '��', '', null, '����', null, 'JX0671', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('278', '127', '��ΰ', 'JX0708', '��', '', null, '����', null, 'JX0708', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('279', '127', '�ż���', 'JX0382', '��', '', null, '����', null, 'JX0382', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('280', '127', 'Ԭ��', 'JX0710', '��', '', null, '����', null, 'JX0710', '23', '0', '', '127');
INSERT INTO `employee` VALUES ('281', '127', '���վ�', '020837', '��', '', null, '��Ա', null, '020837', '20', '0', null, null);
INSERT INTO `employee` VALUES ('282', '127', '�׾���', '020853', '��', '', null, '��Ա', null, '020853', '20', '0', null, null);
INSERT INTO `employee` VALUES ('283', '128', '����', 'JX1024', '��', '', null, '��Ա', null, 'JX1024', '20', '0', null, null);
INSERT INTO `employee` VALUES ('284', '128', '�ƽ', 'JX0497', '��', '', null, '��Ա', null, 'JX0497', '20', '0', null, null);
INSERT INTO `employee` VALUES ('285', '128', '������', 'JX0506', '��', '', null, '��Ա', null, 'JX0506', '20', '0', null, null);
INSERT INTO `employee` VALUES ('286', '128', '������', 'JX0519', '��', '', null, '��Ա', null, 'JX0519', '20', '0', null, null);
INSERT INTO `employee` VALUES ('287', '128', '�μ���', 'JX0730', '��', '', null, '��Ա', null, 'JX0730', '20', '0', null, null);
INSERT INTO `employee` VALUES ('288', '128', '����', '024824', '��', '', null, '��Ա', null, '024824', '20', '0', null, null);
INSERT INTO `employee` VALUES ('289', '128', '����', 'JX0330', '��', '', null, '��Ա', null, 'JX0330', '20', '0', null, null);
INSERT INTO `employee` VALUES ('290', '128', '����', '021134', '��', '', null, '��Ա', null, '021134', '20', '0', null, null);
INSERT INTO `employee` VALUES ('291', '128', '�Ż۳�', '023459', '��', '', null, '��Ա', null, '023459', '20', '0', null, null);
INSERT INTO `employee` VALUES ('292', '128', '���ش�', '024129', '��', '', null, '��Ա', null, '024129', '20', '0', null, null);
INSERT INTO `employee` VALUES ('293', '128', '����', '024719', '��', '', null, '��Ա', null, '024719', '20', '0', null, null);
INSERT INTO `employee` VALUES ('294', '128', '����ũ', '024745', '��', '', null, '��Ա', null, '024745', '20', '0', null, null);
INSERT INTO `employee` VALUES ('295', '128', '����', '024747', '��', '', null, '��Ա', null, '024747', '20', '0', null, null);
INSERT INTO `employee` VALUES ('296', '128', '���', 'JX1025', '��', '', null, '��Ա', null, 'JX1025', '20', '0', null, null);
INSERT INTO `employee` VALUES ('298', '129', '����', 'JX1085', '��', '', null, '��Ա', null, 'JX1085', '20', '0', null, null);
INSERT INTO `employee` VALUES ('299', '129', '�ź�ΰ', 'JX1006', '��', '', null, '��Ա', null, 'JX1006', '20', '0', null, null);
INSERT INTO `employee` VALUES ('300', '129', '������', 'JX1027', '��', '', null, '��Ա', null, 'JX1027', '20', '0', null, null);
INSERT INTO `employee` VALUES ('301', '129', '��ȫ��', 'JX1032', '��', '', null, '��Ա', null, 'JX1032', '20', '0', null, null);
INSERT INTO `employee` VALUES ('302', '129', '������', 'JX0483', '��', '', null, '��Ա', null, 'JX0483', '20', '0', null, null);
INSERT INTO `employee` VALUES ('303', '129', '������', 'JX0502', '��', '', null, '��Ա', null, 'JX0502', '20', '0', null, null);
INSERT INTO `employee` VALUES ('304', '129', '��־��', 'JX0582', '��', '', null, '��Ա', null, 'JX0582', '20', '0', null, null);
INSERT INTO `employee` VALUES ('305', '129', '������', 'JX0667', '��', '', null, '��Ա', null, 'JX0667', '20', '0', null, null);
INSERT INTO `employee` VALUES ('306', '129', '�ν���', '024831', '��', '', null, '��Ա', null, '024831', '20', '0', null, null);
INSERT INTO `employee` VALUES ('307', '129', '�׷�', '024863', '��', '', null, '��Ա', null, '024863', '20', '0', null, null);
INSERT INTO `employee` VALUES ('308', '129', '��־ƽ', '021111', '��', '', null, '��Ա', null, '021111', '20', '0', null, null);
INSERT INTO `employee` VALUES ('309', '129', '�ﾰ��', '021136', '��', '', null, '��Ա', null, '021136', '20', '0', null, null);
INSERT INTO `employee` VALUES ('310', '129', '������', '021168', '��', '', null, '��Ա', null, '021168', '20', '0', null, null);
INSERT INTO `employee` VALUES ('311', '129', '�ź�ΰ', 'JX0116', '��', '', null, '����', null, 'JX0116', '23', '0', '', '129');
INSERT INTO `employee` VALUES ('312', '129', '������', 'JX0480', '��', '', null, '����', null, 'JX0480', '23', '0', '', '129');
INSERT INTO `employee` VALUES ('313', '129', '����Ԫ', '021270', '��', '', null, '����', null, '021270', '23', '0', '', '129');
INSERT INTO `employee` VALUES ('314', '129', '���Ǿ�', '021104', '��', '', null, '��Ա', null, '021104', '20', '0', null, null);
INSERT INTO `employee` VALUES ('315', '130', 'л�̹�', '021095', '��', '', null, '����', null, '021095', '23', '0', '', '130');
INSERT INTO `employee` VALUES ('316', '130', '������', '020668', '��', '', null, '��Ա', null, '020668', '20', '0', null, null);
INSERT INTO `employee` VALUES ('317', '130', '������', '000832', '��', '', null, '����', null, '000832', '23', '0', '', '130');
INSERT INTO `employee` VALUES ('318', '130', '����', '000836', '��', '', null, '����', null, '000836', '23', '0', '', '130');
INSERT INTO `employee` VALUES ('319', '130', '�Ŵ���', 'JX0529', '��', '', null, '����', null, 'JX0529', '23', '0', '', '130');
INSERT INTO `employee` VALUES ('320', '130', '������', '020956', '��', '', null, '��Ա', null, '020956', '20', '0', null, null);
INSERT INTO `employee` VALUES ('321', '130', '������', '021166', '��', '', null, '����', null, '021166', '23', '0', '', '130');
INSERT INTO `employee` VALUES ('322', '130', '����', '023926', '��', '', null, '����', null, '023926', '23', '0', '', '130');
INSERT INTO `employee` VALUES ('323', '130', '����', '024804', '��', '', null, '��Ա', null, '024804', '20', '0', null, null);
INSERT INTO `employee` VALUES ('324', '130', '����', 'T10164', '��', '', null, '��Ա', null, 'T10164', '20', '0', null, null);
INSERT INTO `employee` VALUES ('325', '92', '�ſɳ�', '021034', '��', '', null, '����', null, '021034', '22', '0', '', '92,125,124,123,122,121');
INSERT INTO `employee` VALUES ('326', '92', '������', '021999', '��', '', null, '����', null, '021999', '22', '0', '', '92,125,124,123,122,121');
INSERT INTO `employee` VALUES ('327', '92', '���', '021695', '��', '', null, '����', null, '021695', '22', '0', '', '92,125,124,123,122,121');
INSERT INTO `employee` VALUES ('328', '92', '������', '021028', '��', '', null, '����', null, '021028', '22', '0', '', '92,125,124,123,122,121');
INSERT INTO `employee` VALUES ('329', '122', '����', 'JX0597', '��', '', null, '����', null, 'JX0597', '23', '0', '', '122');
INSERT INTO `employee` VALUES ('330', '122', '�԰���', 'JX0415', '��', '', null, '��Ա', null, 'JX0415', '20', '0', null, null);
INSERT INTO `employee` VALUES ('331', '122', '������', 'JX0411', '��', '', null, '��Ա', null, 'JX0411', '20', '0', null, null);
INSERT INTO `employee` VALUES ('332', '122', '����', '024885', '��', '', null, '��Ա', null, '024885', '20', '0', null, null);
INSERT INTO `employee` VALUES ('333', '122', '���Ĺ�', '024784', '��', '', null, '��Ա', null, '024784', '20', '0', null, null);
INSERT INTO `employee` VALUES ('334', '122', '����', 'JX0425', '��', '', null, '��Ա', null, 'JX0425', '20', '0', null, null);
INSERT INTO `employee` VALUES ('335', '122', '��Ի��', 'JX0422', '��', '', null, '��Ա', null, 'JX0422', '20', '0', null, null);
INSERT INTO `employee` VALUES ('336', '122', '������', 'JX0421', '��', '', null, '��Ա', null, 'JX0421', '20', '0', null, null);
INSERT INTO `employee` VALUES ('337', '122', '������', 'JX0924', '��', '', null, '��Ա', null, 'JX0924', '20', '0', null, null);
INSERT INTO `employee` VALUES ('338', '122', '����', 'JX0922', '��', '', null, '��Ա', null, 'JX0922', '20', '0', null, null);
INSERT INTO `employee` VALUES ('339', '122', '����', 'JX0916', '��', '', null, '��Ա', null, 'JX0916', '20', '0', null, null);
INSERT INTO `employee` VALUES ('340', '122', '��ҫ��', '021036', '��', '', null, '��Ա', null, '021036', '20', '0', null, null);
INSERT INTO `employee` VALUES ('341', '122', '�佨��', 'JX1059', '��', '', null, '��Ա', null, 'JX1059', '20', '0', null, null);
INSERT INTO `employee` VALUES ('342', '123', '����ΰ', 'JX0419', '��', '', null, '��Ա', null, 'JX0419', '20', '0', null, null);
INSERT INTO `employee` VALUES ('343', '123', '����', 'JX0426', '��', '', null, '��Ա', null, 'JX0426', '20', '0', null, null);
INSERT INTO `employee` VALUES ('344', '123', '������', 'JX0429', '��', '', null, '��Ա', null, 'JX0429', '20', '0', null, null);
INSERT INTO `employee` VALUES ('345', '123', '���', 'JX0636', '��', '', null, '��Ա', null, 'JX0636', '20', '0', null, null);
INSERT INTO `employee` VALUES ('346', '123', '�ֱ�', '024861', '��', '', null, '��Ա', null, '024861', '20', '0', null, null);
INSERT INTO `employee` VALUES ('347', '123', '��־ǿ', 'JX0410', '��', '', null, '��Ա', null, 'JX0410', '20', '0', null, null);
INSERT INTO `employee` VALUES ('348', '123', '�����', 'JX0414', '��', '', null, '��Ա', null, 'JX0414', '20', '0', null, null);
INSERT INTO `employee` VALUES ('349', '123', '������', '021117', '��', '', null, '��Ա', null, '021117', '20', '0', null, null);
INSERT INTO `employee` VALUES ('350', '123', '����Ԫ', '024161', '��', '', null, '��Ա', null, '024161', '20', '0', null, null);
INSERT INTO `employee` VALUES ('351', '124', '��Ѹ�', 'JX0917', '��', '', null, '��Ա', null, 'JX0917', '20', '0', null, null);
INSERT INTO `employee` VALUES ('352', '124', '��С��', 'JX0923', '��', '', null, '��Ա', null, 'JX0923', '20', '0', null, null);
INSERT INTO `employee` VALUES ('353', '124', '������', '024847', '��', '', null, '��Ա', null, '024847', '20', '0', null, null);
INSERT INTO `employee` VALUES ('354', '124', '�ڷ�', 'JX0406', '��', '', null, '��Ա', null, 'JX0406', '20', '0', null, null);
INSERT INTO `employee` VALUES ('355', '124', '����', 'JX0407', '��', '', null, '��Ա', null, 'JX0407', '20', '0', null, null);
INSERT INTO `employee` VALUES ('356', '124', '����', 'JX0408', '��', '', null, '��Ա', null, 'JX0408', '20', '0', null, null);
INSERT INTO `employee` VALUES ('357', '124', 'Ľ��Ч', '020999', '��', '', null, '��Ա', null, '020999', '20', '0', null, null);
INSERT INTO `employee` VALUES ('358', '124', '����', 'JX0412', '��', '', null, '��Ա', null, 'JX0412', '20', '0', null, null);
INSERT INTO `employee` VALUES ('359', '124', '���ı�', 'JX0416', '��', '', null, '��Ա', null, 'JX0416', '20', '0', null, null);
INSERT INTO `employee` VALUES ('360', '124', '����', 'JX0418', '��', '', null, '��Ա', null, 'JX0418', '20', '0', null, null);
INSERT INTO `employee` VALUES ('361', '124', '�Ϻ�ǿ', '021118', '��', '', null, '��Ա', null, '021118', '20', '0', null, null);
INSERT INTO `employee` VALUES ('362', '124', '����', '020955', '��', '', null, '��Ա', null, '020955', '20', '0', null, null);
INSERT INTO `employee` VALUES ('363', '124', '��ռ', 'JX0409', '��', '', null, '��Ա', null, 'JX0409', '20', '0', null, null);
INSERT INTO `employee` VALUES ('364', '125', '��˼��', 'JX0918', '��', '', null, '��Ա', null, 'JX0918', '20', '0', null, null);
INSERT INTO `employee` VALUES ('365', '125', '������', '023463', '��', '', null, '��Ա', null, '023463', '20', '0', null, null);
INSERT INTO `employee` VALUES ('366', '125', '������', '021051', '��', '', null, '��Ա', null, '021051', '20', '0', null, null);
INSERT INTO `employee` VALUES ('367', '125', '��ΰ', '000841', '��', '', null, '����', null, '000841', '23', '0', '', '125');
INSERT INTO `employee` VALUES ('368', '125', '���Ŷ�����', '000808', '��', '', null, '����', null, '000808', '23', '0', '', '125');
INSERT INTO `employee` VALUES ('369', '125', 'ʯ���', '024598', '��', '', null, '��Ա', null, '024598', '20', '0', null, null);
INSERT INTO `employee` VALUES ('370', '84', '����', '021267', '��', '', null, '����', null, '021267', '22', '0', '', '84,109,108');
INSERT INTO `employee` VALUES ('371', '84', '����ƽ', '024646', '��', '', null, '����', null, '024646', '22', '0', '', '84,109,108');
INSERT INTO `employee` VALUES ('372', '84', 'һ��', 'JX0717', '��', '', null, '����', null, 'JX0717', '22', '0', '', '84,109,108');
INSERT INTO `employee` VALUES ('373', '84', '����', 'JX0719', '��', '', null, '����', null, 'JX0719', '22', '0', '', '84,109,108');
INSERT INTO `employee` VALUES ('374', '108', '�ƺ��', '021039', '��', '', null, '��Ա', null, '021039', '20', '0', null, null);
INSERT INTO `employee` VALUES ('375', '108', '����', '024806', '��', '', null, '��Ա', null, '024806', '20', '0', null, null);
INSERT INTO `employee` VALUES ('376', '140', '��˶', 'JX0740', '��', '', null, '��Ա', null, 'JX0740', '20', '0', null, null);
INSERT INTO `employee` VALUES ('377', '140', '��ʫ��', 'JX0724', '��', '', null, '��Ա', null, 'JX0724', '20', '0', null, null);
INSERT INTO `employee` VALUES ('378', '140', '����', 'JX0692', '��', '', null, '��Ա', null, 'JX0692', '20', '0', null, null);
INSERT INTO `employee` VALUES ('379', '140', '������', 'JX0691', '��', '', null, '��Ա', null, 'JX0691', '20', '0', null, null);
INSERT INTO `employee` VALUES ('380', '140', '��ٻ', 'JX0738', '��', '', null, '��Ա', null, 'JX0738', '20', '0', null, null);
INSERT INTO `employee` VALUES ('381', '140', '��Сѩ', 'JX0737', '��', '', null, '��Ա', null, 'JX0737', '20', '0', null, null);
INSERT INTO `employee` VALUES ('382', '140', '��ٻӱ', 'JX0727', '��', '', null, '��Ա', null, 'JX0727', '20', '0', null, null);
INSERT INTO `employee` VALUES ('383', '140', '����Է', 'JX0739', '��', '', null, '��Ա', null, 'JX0739', '20', '0', null, null);
INSERT INTO `employee` VALUES ('384', '140', '�����', 'JX0712', '��', '', null, '��Ա', null, 'JX0712', '20', '0', null, null);
INSERT INTO `employee` VALUES ('385', '140', '����', 'JX1144', '��', '', null, '��Ա', null, 'JX1144', '20', '0', null, null);
INSERT INTO `employee` VALUES ('386', '140', '������', 'JX1063', '��', '', null, '��Ա', null, 'JX1063', '20', '0', null, null);
INSERT INTO `employee` VALUES ('387', '140', '������', 'JX1066', '��', '', null, '��Ա', null, 'JX1066', '20', '0', null, null);
INSERT INTO `employee` VALUES ('388', '140', 'ʷ����', 'JX0744', '��', '', null, '��Ա', null, 'JX0744', '20', '0', null, null);
INSERT INTO `employee` VALUES ('389', '140', 'л����', 'JX0684', '��', '', null, '��Ա', null, 'JX0684', '20', '0', null, null);
INSERT INTO `employee` VALUES ('390', '140', '����', 'JX0797', '��', '', null, '��Ա', null, 'JX0797', '20', '0', null, null);
INSERT INTO `employee` VALUES ('391', '140', '����', 'JX0697', '��', '', null, '��Ա', null, 'JX0697', '20', '0', null, null);
INSERT INTO `employee` VALUES ('392', '140', '����', 'JX0785', '��', '', null, '��Ա', null, 'JX0785', '20', '0', null, null);
INSERT INTO `employee` VALUES ('393', '140', 'ε��', 'JX0795', '��', '', null, '��Ա', null, 'JX0795', '20', '0', null, null);
INSERT INTO `employee` VALUES ('394', '140', '��ٻ', 'JX0683', '��', '', null, '��Ա', null, 'JX0683', '20', '0', null, null);
INSERT INTO `employee` VALUES ('395', '140', '��ʫ��', 'JX0700', '��', '', null, '��Ա', null, 'JX0700', '20', '0', null, null);
INSERT INTO `employee` VALUES ('396', '140', '���ľ�', 'JX0689', '��', '', null, '��Ա', null, 'JX0689', '20', '0', null, null);
INSERT INTO `employee` VALUES ('397', '140', '�ֱ�', 'JX0794', '��', '', null, '��Ա', null, 'JX0794', '20', '0', null, null);
INSERT INTO `employee` VALUES ('398', '140', '����ϼ', 'JX0709', '��', '', null, '��Ա', null, 'JX0709', '20', '0', null, null);
INSERT INTO `employee` VALUES ('399', '140', '�ﰪ˹', 'JX0731', '��', '', null, '��Ա', null, 'JX0731', '20', '0', null, null);
INSERT INTO `employee` VALUES ('400', '140', '̷�Ʒ�', 'JX0675', '��', '', null, '��Ա', null, 'JX0675', '20', '0', null, null);
INSERT INTO `employee` VALUES ('401', '139', '���', 'JX1069', '��', '', null, '��Ա', null, 'JX1069', '20', '0', null, null);
INSERT INTO `employee` VALUES ('402', '139', '������', 'JX1072', '��', '', null, '��Ա', null, 'JX1072', '20', '0', null, null);
INSERT INTO `employee` VALUES ('403', '139', 'Ф��', 'JX0766', '��', '', null, '��Ա', null, 'JX0766', '20', '0', null, null);
INSERT INTO `employee` VALUES ('404', '139', '����', 'JX0776', '��', '', null, '��Ա', null, 'JX0776', '20', '0', null, null);
INSERT INTO `employee` VALUES ('405', '139', '����', 'JX0640', '��', '', null, '��Ա', null, 'JX0640', '20', '0', null, null);
INSERT INTO `employee` VALUES ('406', '139', '����', 'JX0793', '��', '', null, '��Ա', null, 'JX0793', '20', '0', null, null);
INSERT INTO `employee` VALUES ('407', '139', '������', 'JX0770', '��', '', null, '��Ա', null, 'JX0770', '20', '0', null, null);
INSERT INTO `employee` VALUES ('408', '139', '�����', 'JX0713', '��', '', null, '��Ա', null, 'JX0713', '20', '0', null, null);
INSERT INTO `employee` VALUES ('409', '139', '��ѩ', '001067', '��', '', null, '��Ա', null, '001067', '20', '0', null, null);
INSERT INTO `employee` VALUES ('410', '139', '���ι�', 'JX0666', '��', '', null, '��Ա', null, 'JX0666', '20', '0', null, null);
INSERT INTO `employee` VALUES ('411', '139', '������', 'JX0685', '��', '', null, '��Ա', null, 'JX0685', '20', '0', null, null);
INSERT INTO `employee` VALUES ('412', '139', '����', 'JX0759', '��', '', null, '��Ա', null, 'JX0759', '20', '0', null, null);
INSERT INTO `employee` VALUES ('413', '139', '��ӱ', 'JX0760', '��', '', null, '��Ա', null, 'JX0760', '20', '0', null, null);
INSERT INTO `employee` VALUES ('414', '139', '������', 'JX0762', '��', '', null, '��Ա', null, 'JX0762', '20', '0', null, null);
INSERT INTO `employee` VALUES ('415', '139', '������', 'JX0764', '��', '', null, '��Ա', null, 'JX0764', '20', '0', null, null);
INSERT INTO `employee` VALUES ('416', '139', '���Ȼ', 'JX0767', '��', '', null, '��Ա', null, 'JX0767', '20', '0', null, null);
INSERT INTO `employee` VALUES ('417', '139', '��·', 'JX0769', '��', '', null, '��Ա', null, 'JX0769', '20', '0', null, null);
INSERT INTO `employee` VALUES ('418', '139', '��н��', 'JX0771', '��', '', null, '��Ա', null, 'JX0771', '20', '0', null, null);
INSERT INTO `employee` VALUES ('419', '139', '����', 'JX0774', '��', '', null, '��Ա', null, 'JX0774', '20', '0', null, null);
INSERT INTO `employee` VALUES ('420', '139', '������', 'JX0777', '��', '', null, '��Ա', null, 'JX0777', '20', '0', null, null);
INSERT INTO `employee` VALUES ('421', '139', '�Ժ���', 'JX0779', '��', '', null, '��Ա', null, 'JX0779', '20', '0', null, null);
INSERT INTO `employee` VALUES ('422', '139', '����', 'JX1060', '��', '', null, '��Ա', null, 'JX1060', '20', '0', null, null);
INSERT INTO `employee` VALUES ('423', '139', '�޽�', 'JX1062', '��', '', null, '��Ա', null, 'JX1062', '20', '0', null, null);
INSERT INTO `employee` VALUES ('424', '139', 'Ϯ��', 'JX0662', '��', '', null, '��Ա', null, 'JX0662', '20', '0', null, null);
INSERT INTO `employee` VALUES ('425', '139', '��ѩ��', 'JX0665', '��', '', null, '��Ա', null, 'JX0665', '20', '0', null, null);
INSERT INTO `employee` VALUES ('426', '139', '�ŷ���', 'JX0672', '��', '', null, '��Ա', null, 'JX0672', '20', '0', null, null);
INSERT INTO `employee` VALUES ('427', '139', '������', 'JX0674', '��', '', null, '��Ա', null, 'JX0674', '20', '0', null, null);
INSERT INTO `employee` VALUES ('428', '139', '���', 'JX0757', '��', '', null, '��Ա', null, 'JX0757', '20', '0', null, null);
INSERT INTO `employee` VALUES ('429', '139', '�ƽ�Ƽ', 'JX0761', '��', '', null, '��Ա', null, 'JX0761', '20', '0', null, null);
INSERT INTO `employee` VALUES ('430', '139', '�粨', 'JX0765', '��', '', null, '��Ա', null, 'JX0765', '20', '0', null, null);
INSERT INTO `employee` VALUES ('431', '139', '����', 'JX0768', '��', '', null, '��Ա', null, 'JX0768', '20', '0', null, null);
INSERT INTO `employee` VALUES ('432', '139', '����', 'JX0772', 'Ů', '', null, '��Ա', null, 'JX0772', '20', '0', null, null);
INSERT INTO `employee` VALUES ('433', '139', '����', 'JX0775', 'Ů', '', null, '��Ա', null, 'JX0775', '20', '0', null, null);
INSERT INTO `employee` VALUES ('434', '139', '��·��', 'JX0783', '��', '', null, '��Ա', null, 'JX0783', '20', '0', null, null);
INSERT INTO `employee` VALUES ('435', '139', 'ʢΰ', 'JX1067', '��', '', null, '��Ա', null, 'JX1067', '20', '0', null, null);
INSERT INTO `employee` VALUES ('436', '139', '��ޱ', 'JX1086', '��', '', null, '��Ա', null, 'JX1086', '20', '0', null, null);
INSERT INTO `employee` VALUES ('437', '139', '��ΰ', 'JX0763', '��', '', null, '��Ա', null, 'JX0763', '20', '0', null, null);
INSERT INTO `employee` VALUES ('438', '139', '��Ծͥ', 'JX0773', '��', '', null, '��Ա', null, 'JX0773', '20', '0', null, null);
INSERT INTO `employee` VALUES ('439', '139', '�����', 'JX0657', '��', '', null, '��Ա', null, 'JX0657', '20', '0', null, null);
INSERT INTO `employee` VALUES ('440', '139', '�³�', 'JX0656', '��', '', null, '��Ա', null, 'JX0656', '20', '0', null, null);
INSERT INTO `employee` VALUES ('441', '139', '�۾���', 'JX0642', '��', '', null, '��Ա', null, 'JX0642', '20', '0', null, null);
INSERT INTO `employee` VALUES ('442', '139', 'л��ΰ', 'JX0643', '��', '', null, '��Ա', null, 'JX0643', '20', '0', null, null);
INSERT INTO `employee` VALUES ('443', '139', '�ڰ�����', 'JX0644', '��', '', null, '��Ա', null, 'JX0644', '20', '0', null, null);
INSERT INTO `employee` VALUES ('444', '139', '������', 'JX0645', '��', '', null, '��Ա', null, 'JX0645', '20', '0', null, null);
INSERT INTO `employee` VALUES ('445', '139', '��ΰ', 'JX0646', '��', '', null, '��Ա', null, 'JX0646', '20', '0', null, null);
INSERT INTO `employee` VALUES ('446', '139', '���ع', 'JX0647', '��', '', null, '��Ա', null, 'JX0647', '20', '0', null, null);
INSERT INTO `employee` VALUES ('447', '139', '��һ��', 'JX0649', '��', '', null, '��Ա', null, 'JX0649', '20', '0', null, null);
INSERT INTO `employee` VALUES ('448', '139', '������', 'JX0650', '��', '', null, '��Ա', null, 'JX0650', '20', '0', null, null);
INSERT INTO `employee` VALUES ('449', '139', '��Ѿ�', 'JX0651', '��', '', null, '��Ա', null, 'JX0651', '20', '0', null, null);
INSERT INTO `employee` VALUES ('450', '139', '�����', 'JX0652', '��', '', null, '��Ա', null, 'JX0652', '20', '0', null, null);
INSERT INTO `employee` VALUES ('451', '82', '������', '020751', '��', '', null, '����', null, '020751', '22', '0', '', '82,113,112,111,110');
INSERT INTO `employee` VALUES ('452', '82', '����Ƽ', '020831', '��', '', null, '����', null, '020831', '22', '0', '', '82,113,112,111,110');
INSERT INTO `employee` VALUES ('453', '82', 'ۧ��', '021009', '��', '', null, '����', null, '021009', '22', '0', '', '82,113,112,111,110');
INSERT INTO `employee` VALUES ('454', '82', '�����', '021273', '��', '', null, '����', null, '021273', '22', '0', '', '82,113,112,111,110');
INSERT INTO `employee` VALUES ('455', '111', '���', '024803', '��', '', null, '��Ա', null, '024803', '20', '0', null, null);
INSERT INTO `employee` VALUES ('456', '111', '����', '024857', '��', '', null, '��Ա', null, '024857', '20', '0', null, null);
INSERT INTO `employee` VALUES ('457', '112', 'Ԭ����', '021345', '��', '', null, '����', null, '021345', '23', '0', '', '112');
INSERT INTO `employee` VALUES ('458', '112', '����ƽ', '024825', '��', '', null, '��Ա', null, '024825', '20', '0', null, null);
INSERT INTO `employee` VALUES ('459', '112', '���ɲ�', '024872', '��', '', null, '��Ա', null, '024872', '20', '0', null, null);
INSERT INTO `employee` VALUES ('460', '112', '���', '024929', '��', '', null, '��Ա', null, '024929', '20', '0', null, null);
INSERT INTO `employee` VALUES ('461', '112', '����', '025022', '��', '', null, '��Ա', null, '025022', '20', '0', null, null);
INSERT INTO `employee` VALUES ('462', '112', '������', '021135', '��', '', null, '��Ա', null, '021135', '20', '0', null, null);
INSERT INTO `employee` VALUES ('463', '112', '��ǿ', '021198', '��', '', null, '��Ա', null, '021198', '20', '0', null, null);
INSERT INTO `employee` VALUES ('464', '112', '���', '021242', '��', '', null, '��Ա', null, '021242', '20', '0', null, null);
INSERT INTO `employee` VALUES ('465', '112', '������', '021739', '��', '', null, '��Ա', null, '021739', '20', '0', null, null);
INSERT INTO `employee` VALUES ('466', '112', '����ʤ', '021908', '��', '', null, '��Ա', null, '021908', '20', '0', null, null);
INSERT INTO `employee` VALUES ('467', '112', '��Сƽ', '023494', '��', '', null, '��Ա', null, '023494', '20', '0', null, null);
INSERT INTO `employee` VALUES ('468', '112', '½����', '023708', '��', '', null, '��Ա', null, '023708', '20', '0', null, null);
INSERT INTO `employee` VALUES ('469', '112', '���', '024623', '��', '', null, '��Ա', null, '024623', '20', '0', null, null);
INSERT INTO `employee` VALUES ('470', '112', '����', '023950', '��', '', null, '��Ա', null, '023950', '20', '0', null, null);
INSERT INTO `employee` VALUES ('471', '113', '����������', '123456', '��', '', null, '����', null, '123456', '23', '0', '', '113,185,184,183');
INSERT INTO `employee` VALUES ('472', '113', '���', '021092', '��', '', null, '��Ա', null, '021092', '20', '0', null, null);
INSERT INTO `employee` VALUES ('473', '113', '�ܵ¸�', '024811', '��', '', null, '��Ա', null, '024811', '20', '0', null, null);
INSERT INTO `employee` VALUES ('474', '113', '����', '024813', '��', '', null, '��Ա', null, '024813', '20', '0', null, null);
INSERT INTO `employee` VALUES ('475', '113', '��־��', '024838', '��', '', null, '��Ա', null, '024838', '20', '0', null, null);
INSERT INTO `employee` VALUES ('476', '113', '�ž�', '024905', '��', '', null, '��Ա', null, '024905', '20', '0', null, null);
INSERT INTO `employee` VALUES ('477', '113', '������', '024909', '��', '', null, '��Ա', null, '024909', '20', '0', null, null);
INSERT INTO `employee` VALUES ('478', '113', '��粨', '024930', '��', '', null, '��Ա', null, '024930', '20', '0', null, null);
INSERT INTO `employee` VALUES ('479', '113', '����', '024933', '��', '', null, '��Ա', null, '024933', '20', '0', null, null);
INSERT INTO `employee` VALUES ('480', '113', 'Ф��', '024949', '��', '', null, '��Ա', null, '024949', '20', '0', null, null);
INSERT INTO `employee` VALUES ('481', '113', '������', '024967', '��', '', null, '��Ա', null, '024967', '20', '0', null, null);
INSERT INTO `employee` VALUES ('482', '113', '�����', '025032', '��', '', null, '��Ա', null, '025032', '20', '0', null, null);
INSERT INTO `employee` VALUES ('483', '113', '����', '021129', '��', '', null, '��Ա', null, '021129', '20', '0', null, null);
INSERT INTO `employee` VALUES ('484', '113', '��Բ��', '021152', '��', '', null, '��Ա', null, '021152', '20', '0', null, null);
INSERT INTO `employee` VALUES ('485', '113', 'ͯ����', '021161', '��', '', null, '��Ա', null, '021161', '20', '0', null, null);
INSERT INTO `employee` VALUES ('486', '113', '������', '021184', '��', '', null, '��Ա', null, '021184', '20', '0', null, null);
INSERT INTO `employee` VALUES ('487', '113', '������', '021244', '��', '', null, '��Ա', null, '021244', '20', '0', null, null);
INSERT INTO `employee` VALUES ('488', '113', '��־Զ', '022988', '��', '', null, '��Ա', null, '022988', '20', '0', null, null);
INSERT INTO `employee` VALUES ('489', '113', '������', '023545', '��', '', null, '��Ա', null, '023545', '20', '0', null, null);
INSERT INTO `employee` VALUES ('490', '113', '��־��', '023949', '��', '', null, '��Ա', null, '023949', '20', '0', null, null);
INSERT INTO `employee` VALUES ('491', '113', '����', '024726', '��', '', null, '��Ա', null, '024726', '20', '0', null, null);
INSERT INTO `employee` VALUES ('492', '113', '����ʤ', '024760', '��', '', null, '��Ա', null, '024760', '20', '0', null, null);
INSERT INTO `employee` VALUES ('493', '113', '����ΰ', '020635', '��', '', null, '��Ա', null, '020635', '20', '0', null, null);
INSERT INTO `employee` VALUES ('494', '113', '��־��', '020695', '��', '', null, '��Ա', null, '020695', '20', '0', null, null);
INSERT INTO `employee` VALUES ('495', '113', '�׺�Ӣ', '020703', '��', '', null, '��Ա', null, '020703', '20', '0', null, null);
INSERT INTO `employee` VALUES ('496', '113', '������', '020941', '��', '', null, '����', null, '020941', '23', '0', '', '113,185,184,183');
INSERT INTO `employee` VALUES ('497', '113', '�Ա�', '024087', '��', '', null, '����', null, '024087', '23', '0', '', '113,185,184,183');
INSERT INTO `employee` VALUES ('498', '81', '������', '020994', '��', '', null, '����', null, '020994', '22', '0', '', '81,120,119,118,117,116,115,114');
INSERT INTO `employee` VALUES ('499', '81', '����͢', '020253', '��', '', null, '����', null, '020253', '22', '0', '', '81,120,119,118,117,116,115,114');
INSERT INTO `employee` VALUES ('500', '81', '�߸�', '020902', '��', '', null, '����', null, '020902', '22', '0', '', '81,120,119,118,117,116,115,114');
INSERT INTO `employee` VALUES ('501', '81', '�ν���', '021263', '��', '', null, '����', null, '021263', '22', '0', '', '81,120,119,118,117,116,115,114');
INSERT INTO `employee` VALUES ('502', '81', '������', '024130', '��', '', null, '��Ա', null, '024130', '20', '0', null, null);
INSERT INTO `employee` VALUES ('503', '81', '����', '021052', '��', '', null, '����', null, '021052', '22', '0', '', '81,120,119,118,117,116,115,114');
INSERT INTO `employee` VALUES ('504', '116', '���', 'JX0572', '��', '', null, '����', null, 'JX0572', '23', '0', '', '116');
INSERT INTO `employee` VALUES ('505', '116', '���', 'JX1049', '��', '', null, '��Ա', null, 'JX1049', '20', '0', null, null);
INSERT INTO `employee` VALUES ('506', '116', '����', 'JX1089', '��', '', null, '��Ա', null, 'JX1089', '20', '0', null, null);
INSERT INTO `employee` VALUES ('507', '116', '����', 'JX1095', '��', '', null, '��Ա', null, 'JX1095', '20', '0', null, null);
INSERT INTO `employee` VALUES ('508', '116', '������', 'JX1102', '��', '', null, '��Ա', null, 'JX1102', '20', '0', null, null);
INSERT INTO `employee` VALUES ('509', '116', '�����', 'JX1122', '��', '', null, '��Ա', null, 'JX1122', '20', '0', null, null);
INSERT INTO `employee` VALUES ('510', '116', '����', 'JX1140', '��', '', null, '��Ա', null, 'JX1140', '20', '0', null, null);
INSERT INTO `employee` VALUES ('511', '116', '���ؽ�', '020986', '��', '', null, '��Ա', null, '020986', '20', '0', null, null);
INSERT INTO `employee` VALUES ('512', '116', '����', 'JX0784', '��', '', null, '��Ա', null, 'JX0784', '20', '0', null, null);
INSERT INTO `employee` VALUES ('513', '116', '��ǿ', 'JX0592', '��', '', null, '��Ա', null, 'JX0592', '20', '0', null, null);
INSERT INTO `employee` VALUES ('514', '116', '���岨', '024908', '��', '', null, '��Ա', null, '024908', '20', '0', null, null);
INSERT INTO `employee` VALUES ('515', '116', '������', '024922', '��', '', null, '��Ա', null, '024922', '20', '0', null, null);
INSERT INTO `employee` VALUES ('516', '116', '����ʤ', '021125', '��', '', null, '��Ա', null, '021125', '20', '0', null, null);
INSERT INTO `employee` VALUES ('517', '116', '����', 'JX1153', '��', '', null, '��Ա', null, 'JX1153', '20', '0', null, null);
INSERT INTO `employee` VALUES ('518', '117', '������', 'JX1042', '��', '', null, '��Ա', null, 'JX1042', '20', '0', null, null);
INSERT INTO `employee` VALUES ('519', '117', '������', 'JX0570', '��', '', null, '��Ա', null, 'JX0570', '20', '0', null, null);
INSERT INTO `employee` VALUES ('520', '117', '�̳�', 'JX0574', '��', '', null, '��Ա', null, 'JX0574', '20', '0', null, null);
INSERT INTO `employee` VALUES ('521', '117', '����', 'JX0575', '��', '', null, '��Ա', null, 'JX0575', '20', '0', null, null);
INSERT INTO `employee` VALUES ('522', '117', '����', 'JX0585', '��', '', null, '��Ա', null, 'JX0585', '20', '0', null, null);
INSERT INTO `employee` VALUES ('523', '117', '��ΰ��', 'JX0595', '��', '', null, '��Ա', null, 'JX0595', '20', '0', null, null);
INSERT INTO `employee` VALUES ('524', '117', '�佨ҵ', '021055', '��', '', null, '��Ա', null, '021055', '20', '0', null, null);
INSERT INTO `employee` VALUES ('525', '117', '���ٻ�', '024883', '��', '', null, '��Ա', null, '024883', '20', '0', null, null);
INSERT INTO `employee` VALUES ('526', '117', '�Ž���', '023481', '��', '', null, '��Ա', null, '023481', '20', '0', null, null);
INSERT INTO `employee` VALUES ('527', '117', '�ﲼ��', '023504', '��', '', null, '��Ա', null, '023504', '20', '0', null, null);
INSERT INTO `employee` VALUES ('528', '117', '����ʢ', '020674', '��', '', null, '��Ա', null, '020674', '20', '0', null, null);
INSERT INTO `employee` VALUES ('529', '117', '����', '020921', '��', '', null, '��Ա', null, '020921', '20', '0', null, null);
INSERT INTO `employee` VALUES ('530', '118', '������', 'JX1288', '��', '', null, '����', null, 'JX1288', '23', '0', '', '118');
INSERT INTO `employee` VALUES ('531', '118', '�Ը�', '020968', '��', '', null, '��Ա', null, '020968', '20', '0', null, null);
INSERT INTO `employee` VALUES ('532', '118', '����', 'JX1119', '��', '', null, '��Ա', null, 'JX1119', '20', '0', null, null);
INSERT INTO `employee` VALUES ('533', '118', '��Сƽ', '023724', '��', '', null, '����', null, '023724', '23', '0', '', '118');
INSERT INTO `employee` VALUES ('534', '118', 'ף��', '021068', '��', '', null, '����', null, '021068', '23', '0', '', '118');
INSERT INTO `employee` VALUES ('535', '118', '�߱�', '024755', '��', '', null, '����', null, '024755', '23', '0', '', '118');
INSERT INTO `employee` VALUES ('536', '118', '��ǿ��', '023598', '��', '', null, '����', null, '023598', '23', '0', '', '118');
INSERT INTO `employee` VALUES ('537', '118', '������', 'JX1053', '��', '', null, '����', null, 'JX1053', '23', '0', '', '118');
INSERT INTO `employee` VALUES ('538', '118', '�ܱ�', '023727', '��', '', null, '����', null, '023727', '23', '0', '', '118');
INSERT INTO `employee` VALUES ('539', '118', '�߳�', 'JX1041', '��', '', null, '��Ա', null, 'JX1041', '20', '0', null, null);
INSERT INTO `employee` VALUES ('540', '118', '���˴�', 'JX0578', '��', '', null, '��Ա', null, 'JX0578', '20', '0', null, null);
INSERT INTO `employee` VALUES ('541', '118', '������', 'JX0633', '��', '', null, '��Ա', null, 'JX0633', '20', '0', null, null);
INSERT INTO `employee` VALUES ('542', '118', '��', '024785', '��', '', null, '��Ա', null, '024785', '20', '0', null, null);
INSERT INTO `employee` VALUES ('543', '118', '����', '024845', '��', '', null, '��Ա', null, '024845', '20', '0', null, null);
INSERT INTO `employee` VALUES ('544', '118', '����ƽ', '024939', '��', '', null, '��Ա', null, '024939', '20', '0', null, null);
INSERT INTO `employee` VALUES ('545', '118', '����ǿ', '24903', '��', '', null, '��Ա', null, '24903', '20', '0', null, null);
INSERT INTO `employee` VALUES ('546', '118', '��־', 'JX0211', '��', '', null, '��Ա', null, 'JX0211', '20', '0', null, null);
INSERT INTO `employee` VALUES ('547', '118', '���·�', '024727', '��', '', null, '��Ա', null, '024727', '20', '0', null, null);
INSERT INTO `employee` VALUES ('548', '118', '����', 'JX1101', '��', '', null, '��Ա', null, 'JX1101', '20', '0', null, null);
INSERT INTO `employee` VALUES ('549', '119', '��Сƽ', '024088', '��', '', null, '����', null, '024088', '23', '0', '', '119');
INSERT INTO `employee` VALUES ('550', '119', '�ƺ���', '021067', '��', '', null, '��Ա', null, '021067', '20', '0', null, null);
INSERT INTO `employee` VALUES ('551', '119', '��ïʢ', 'JX0586', '��', '', null, '����', null, 'JX0586', '23', '0', '', '119');
INSERT INTO `employee` VALUES ('552', '119', 'Ī����', 'JX1114', '��', '', null, '��Ա', null, 'JX1114', '20', '0', null, null);
INSERT INTO `employee` VALUES ('553', '119', '��ƽ', '001087', '��', '', null, '����', null, '001087', '23', '0', '', '119');
INSERT INTO `employee` VALUES ('554', '119', '�¶���', 'JX0593', '��', '', null, '����', null, 'JX0593', '23', '0', '', '119');
INSERT INTO `employee` VALUES ('555', '119', '�Ŵ���', 'JX1044', '��', '', null, '��Ա', null, 'JX1044', '20', '0', null, null);
INSERT INTO `employee` VALUES ('556', '119', '����', 'JX0568', '��', '', null, '��Ա', null, 'JX0568', '20', '0', null, null);
INSERT INTO `employee` VALUES ('557', '119', '����', 'JX0569', '��', '', null, '��Ա', null, 'JX0569', '20', '0', null, null);
INSERT INTO `employee` VALUES ('558', '119', '����', 'JX0576', '��', '', null, '��Ա', null, 'JX0576', '20', '0', null, null);
INSERT INTO `employee` VALUES ('559', '119', '�ƾ�γ', 'JX0594', '��', '', null, '��Ա', null, 'JX0594', '20', '0', null, null);
INSERT INTO `employee` VALUES ('560', '119', '������', '024764', '��', '', null, '��Ա', null, '024764', '20', '0', null, null);
INSERT INTO `employee` VALUES ('561', '119', '������', '024947', '��', '', null, '��Ա', null, '024947', '20', '0', null, null);
INSERT INTO `employee` VALUES ('562', '119', '����', '024995', '��', '', null, '��Ա', null, '024995', '20', '0', null, null);
INSERT INTO `employee` VALUES ('563', '119', '������', '021674', '��', '', null, '��Ա', null, '021674', '20', '0', null, null);
INSERT INTO `employee` VALUES ('564', '119', '����', '024027', '��', '', null, '��Ա', null, '024027', '20', '0', null, null);
INSERT INTO `employee` VALUES ('565', '119', '����', '024047', '��', '', null, '��Ա', null, '024047', '20', '0', null, null);
INSERT INTO `employee` VALUES ('566', '119', '����', '020122', '��', '', null, '��Ա', null, '020122', '20', '0', null, null);
INSERT INTO `employee` VALUES ('567', '119', '�ƽ�', '020886', '��', '', null, '��Ա', null, '020886', '20', '0', null, null);
INSERT INTO `employee` VALUES ('568', '119', '������', '021190', '��', '', null, '����', null, '021190', '23', '0', '', '119');
INSERT INTO `employee` VALUES ('569', '120', '�ǽ���', '023465', '��', '', null, '����', null, '023465', '23', '0', '', '120');
INSERT INTO `employee` VALUES ('570', '120', '��ǿ', '000840', '��', '', null, '����', null, '000840', '23', '0', '', '120');
INSERT INTO `employee` VALUES ('571', '120', '��ռ��', '000839', '��', '', null, '����', null, '000839', '23', '0', '', '120');
INSERT INTO `employee` VALUES ('572', '120', '���', 'JX1055', '��', '', null, '��Ա', null, 'JX1055', '20', '0', null, null);
INSERT INTO `employee` VALUES ('573', '120', '���ڷ�', 'JX1121', '��', '', null, '��Ա', null, 'JX1121', '20', '0', null, null);
INSERT INTO `employee` VALUES ('574', '120', '������', '021194', '��', '', null, '����', null, '021194', '23', '0', '', '120');
INSERT INTO `employee` VALUES ('575', '120', '����ȫ', '023541', '��', '', null, '��Ա', null, '023541', '20', '0', null, null);
INSERT INTO `employee` VALUES ('576', '120', '������', '021069', '��', '', null, '����', null, '021069', '23', '0', '', '120');
INSERT INTO `employee` VALUES ('577', '120', '����', 'JX1045', '��', '', null, '��Ա', null, 'JX1045', '20', '0', null, null);
INSERT INTO `employee` VALUES ('578', '120', '�', 'JX1048', '��', '', null, '��Ա', null, 'JX1048', '20', '0', null, null);
INSERT INTO `employee` VALUES ('579', '120', '��껷�', 'JX0735', '��', '', null, '��Ա', null, 'JX0735', '20', '0', null, null);
INSERT INTO `employee` VALUES ('580', '120', '�ź��', '024809', '��', '', null, '��Ա', null, '024809', '20', '0', null, null);
INSERT INTO `employee` VALUES ('581', '120', '����', '024968', '��', '', null, '��Ա', null, '024968', '20', '0', null, null);
INSERT INTO `employee` VALUES ('582', '120', '����', '021053', '��', '', null, '��Ա', null, '021053', '20', '0', null, null);
INSERT INTO `employee` VALUES ('583', '107', '����', '021010', '��', '', null, '����', null, '021010', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('584', '107', '�Զ�', '020697', '��', '', null, '����', null, '020697', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('585', '107', '�Ż۾�', 'JX0444', '��', '', null, '����', null, 'JX0444', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('586', '107', '���', '021966', '��', '', null, '����', null, '021966', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('587', '107', '��ƽ��', '023540', '��', '', null, '����', null, '023540', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('588', '107', '��ҫ��', '023837', '��', '', null, '����', null, '023837', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('589', '107', '������', '001009', '��', '', null, '����', null, '001009', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('590', '107', 'ҦҢ', 'JX0561', '��', '', null, '����', null, 'JX0561', '23', '0', '', '107');
INSERT INTO `employee` VALUES ('591', '107', '��־��', 'JX0565', '��', '', null, '��Ա', null, 'JX0565', '20', '0', null, null);
INSERT INTO `employee` VALUES ('592', '107', '������', 'JX1038', '��', '', null, '��Ա', null, 'JX1038', '20', '0', null, null);
INSERT INTO `employee` VALUES ('593', '107', '������', 'JX1039', '��', '', null, '��Ա', null, 'JX1039', '20', '0', null, null);
INSERT INTO `employee` VALUES ('594', '114', '�����', '020711', '��', '', null, '����', null, '020711', '23', '0', '', '114');
INSERT INTO `employee` VALUES ('595', '114', '�Ϸ�ǿ', '020938', '��', '', null, '����', null, '020938', '23', '0', '', '114');
INSERT INTO `employee` VALUES ('596', '114', '������', 'JX1247', '��', '', null, '��Ա', null, 'JX1247', '20', '0', null, null);
INSERT INTO `employee` VALUES ('597', '114', '�����', '021344', '��', '', null, '��Ա', null, '021344', '20', '0', null, null);
INSERT INTO `employee` VALUES ('598', '114', '���ǿ', '024026', '��', '', null, '��Ա', null, '024026', '20', '0', null, null);
INSERT INTO `employee` VALUES ('599', '114', '����', 'JX0500', '��', '', null, '��Ա', null, 'JX0500', '20', '0', null, null);
INSERT INTO `employee` VALUES ('600', '114', '�Ž���', '020995', '��', '', null, '��Ա', null, '020995', '20', '0', null, null);
INSERT INTO `employee` VALUES ('601', '114', '������', 'JX1194', '��', '', null, '��Ա', null, 'JX1194', '20', '0', null, null);
INSERT INTO `employee` VALUES ('602', '114', '����', 'JX0992', '��', '', null, '��Ա', null, 'JX0992', '20', '0', null, null);
INSERT INTO `employee` VALUES ('603', '114', '������', 'JX0577', '��', '', null, '��Ա', null, 'JX0577', '20', '0', null, null);
INSERT INTO `employee` VALUES ('604', '164', 'Ȩ��', '021064', '��', '', null, '����', null, '021064', '23', '0', '', '164');
INSERT INTO `employee` VALUES ('605', '164', '������', '021033', '��', '', null, '����', null, '021033', '23', '0', '', '164');
INSERT INTO `employee` VALUES ('606', '164', '������', '021070', '��', '', null, '����', null, '021070', '23', '0', '', '164');
INSERT INTO `employee` VALUES ('607', '164', '����ǿ', 'JX0261', '��', '', null, '����', null, 'JX0261', '23', '0', '', '164');
INSERT INTO `employee` VALUES ('608', '164', '��ͼ', 'JX0265', '��', '', null, '��Ա', null, 'JX0265', '20', '0', null, null);
INSERT INTO `employee` VALUES ('609', '164', '����', 'JX0241', '��', '', null, '��Ա', null, 'JX0241', '20', '0', null, null);
INSERT INTO `employee` VALUES ('610', '164', 'ʷ��', '021075', '��', '', null, '��Ա', null, '021075', '20', '0', null, null);
INSERT INTO `employee` VALUES ('611', '164', '�ޱ�ȫ', '021226', '��', '', null, '��Ա', null, '021226', '20', '0', null, null);
INSERT INTO `employee` VALUES ('612', '164', '�챦��', '024019', '��', '', null, '��Ա', null, '024019', '20', '0', null, null);
INSERT INTO `employee` VALUES ('613', '164', '������', '024024', '��', '', null, '��Ա', null, '024024', '20', '0', null, null);
INSERT INTO `employee` VALUES ('614', '164', 'κ��', '024979', '��', '', null, '��Ա', null, '024979', '20', '0', null, null);
INSERT INTO `employee` VALUES ('615', '164', '��ΰ', '024996', '��', '', null, '��Ա', null, '024996', '20', '0', null, null);
INSERT INTO `employee` VALUES ('616', '80', '���', '021007', '��', '', null, '����', null, '021007', '22', '0', '', '80,107,106,105,104,103,102,101');
INSERT INTO `employee` VALUES ('617', '80', '������', '021059', '��', '', null, '����', null, '021059', '22', '0', '', '80,107,106,105,104,103,102,101');
INSERT INTO `employee` VALUES ('618', '80', '�����', '020898', '��', '', null, '����', null, '020898', '22', '0', '', '80,107,106,105,104,103,102,101');
INSERT INTO `employee` VALUES ('619', '80', '��ʤ��', '023518', '��', '', null, '����', null, '023518', '22', '0', '', '80,107,106,105,104,103,102,101');
INSERT INTO `employee` VALUES ('620', '80', '������', '020981', '��', '', null, '����', null, '020981', '22', '0', '', '80,107,106,105,104,103,102,101');
INSERT INTO `employee` VALUES ('621', '102', '������ͼ', '020975', '��', '', null, '����', null, '020975', '23', '0', '', '102');
INSERT INTO `employee` VALUES ('622', '102', 'Ԭ����', '021880', '��', '', null, '��Ա', null, '021880', '20', '0', null, null);
INSERT INTO `employee` VALUES ('623', '102', '�źӸ�', '023718', '��', '', null, '��Ա', null, '023718', '20', '0', null, null);
INSERT INTO `employee` VALUES ('624', '102', '�¹���', '024797', '��', '', null, '��Ա', null, '024797', '20', '0', null, null);
INSERT INTO `employee` VALUES ('625', '102', '������', '024839', '��', '', null, '��Ա', null, '024839', '20', '0', null, null);
INSERT INTO `employee` VALUES ('626', '102', '����', 'JX0435', '��', '', null, '��Ա', null, 'JX0435', '20', '0', null, null);
INSERT INTO `employee` VALUES ('627', '102', '�κ���', 'JX0547', '��', '', null, '��Ա', null, 'JX0547', '20', '0', null, null);
INSERT INTO `employee` VALUES ('628', '102', '��ͬ��', 'JX0548', '��', '', null, '��Ա', null, 'JX0548', '20', '0', null, null);
INSERT INTO `employee` VALUES ('629', '102', 'κǿ', 'JX0552', '��', '', null, '��Ա', null, 'JX0552', '20', '0', null, null);
INSERT INTO `employee` VALUES ('630', '102', '����', 'JX0553', '��', '', null, '��Ա', null, 'JX0553', '20', '0', null, null);
INSERT INTO `employee` VALUES ('631', '102', 'л����', 'JX0554', '��', '', null, '��Ա', null, 'JX0554', '20', '0', null, null);
INSERT INTO `employee` VALUES ('632', '102', '��ؽ�', 'JX0563', '��', '', null, '��Ա', null, 'JX0563', '20', '0', null, null);
INSERT INTO `employee` VALUES ('633', '102', '�����', 'JX0604', '��', '', null, '��Ա', null, 'JX0604', '20', '0', null, null);
INSERT INTO `employee` VALUES ('634', '102', '����', 'JX1073', '��', '', null, '��Ա', null, 'JX1073', '20', '0', null, null);
INSERT INTO `employee` VALUES ('635', '103', '��ǿ', 'JX0360', '��', '', null, '����', null, 'JX0360', '23', '0', '', '103');
INSERT INTO `employee` VALUES ('636', '103', '������', '021014', '��', '', null, '��Ա', null, '021014', '20', '0', null, null);
INSERT INTO `employee` VALUES ('637', '103', '���', '024197', '��', '', null, '��Ա', null, '024197', '20', '0', null, null);
INSERT INTO `employee` VALUES ('638', '103', '��־ǿ', '024721', '��', '', null, '��Ա', null, '024721', '20', '0', null, null);
INSERT INTO `employee` VALUES ('639', '103', '۬��', '024961', '��', '', null, '��Ա', null, '024961', '20', '0', null, null);
INSERT INTO `employee` VALUES ('640', '103', '������', '024999', '��', '', null, '��Ա', null, '024999', '20', '0', null, null);
INSERT INTO `employee` VALUES ('641', '103', '�����', 'JX0432', '��', '', null, '��Ա', null, 'JX0432', '20', '0', null, null);
INSERT INTO `employee` VALUES ('642', '103', '����', 'JX0545', '��', '', null, '��Ա', null, 'JX0545', '20', '0', null, null);
INSERT INTO `employee` VALUES ('643', '103', '����', 'JX0558', '��', '', null, '��Ա', null, 'JX0558', '20', '0', null, null);
INSERT INTO `employee` VALUES ('644', '103', '���ι�', 'JX0648', '��', '', null, '��Ա', null, 'JX0648', '20', '0', null, null);
INSERT INTO `employee` VALUES ('645', '103', '�³�', 'JX0695', '��', '', null, '��Ա', null, 'JX0695', '20', '0', null, null);
INSERT INTO `employee` VALUES ('646', '103', '������', 'JX0799', '��', '', null, '��Ա', null, 'JX0799', '20', '0', null, null);
INSERT INTO `employee` VALUES ('647', '103', '��ѧ��', 'JX1185', '��', '', null, '��Ա', null, 'JX1185', '20', '0', null, null);
INSERT INTO `employee` VALUES ('648', '103', '�¼���', 'JX1186', '��', '', null, '��Ա', null, 'JX1186', '20', '0', null, null);
INSERT INTO `employee` VALUES ('649', '103', '���ȳ�', 'JX1190', '��', '', null, '��Ա', null, 'JX1190', '20', '0', null, null);

-- ----------------------------
-- Table structure for `ftp_dir`
-- ----------------------------
DROP TABLE IF EXISTS `ftp_dir`;
CREATE TABLE `ftp_dir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ftp_ip` varchar(20) NOT NULL DEFAULT '127.0.0.1' COMMENT 'ftp������ip',
  `ftp_port` int(11) NOT NULL DEFAULT '21',
  `ftp_user` varchar(20) NOT NULL DEFAULT 'dh',
  `ftp_pwd` varchar(20) NOT NULL DEFAULT '123456',
  `web_path` varchar(128) NOT NULL DEFAULT '/pe_file/' COMMENT 'վ��������Ŀ¼,��ʽ:/pe_file<1λ��0λ�̷�>,��/pe_fileD��',
  `ftp_path` varchar(128) NOT NULL COMMENT '����·��.FTP�����ϴ�����Ŀ¼',
  `is_ftp_dir` int(1) NOT NULL DEFAULT '0' COMMENT '0:����;1:��',
  `ftp_lock` int(1) NOT NULL DEFAULT '0' COMMENT '0:���л�Ŀ¼��1������FTP�û���Ŀ¼��',
  `enable` int(1) NOT NULL DEFAULT '0' COMMENT '0:������ftp;1:����ftp',
  `symbol` varchar(20) DEFAULT NULL COMMENT 'ftp·�����ڵ��̷�',
  `total` double(20,0) DEFAULT '0' COMMENT 'ftpĿ¼�Ŀռ��С',
  `free` double(20,0) DEFAULT '0' COMMENT 'ftpĿ¼��ʣ��ռ��С(M)',
  `usage` double(6,2) DEFAULT '0.00' COMMENT 'ftpĿ¼�Ŀռ�ʹ����',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_web_path` (`web_path`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ftp_dir
-- ----------------------------
INSERT INTO `ftp_dir` VALUES ('1', '192.168.0.26', '621', 'dh', '123456', '/pe_file/', 'D:\\Workspace\\pe_file\\', '0', '0', '0', 'D:\\', '199999', '188578', '5.00');
INSERT INTO `ftp_dir` VALUES ('2', '192.168.0.26', '621', 'dh', '123456', '/pe_fileI/', 'I:\\', '1', '0', '0', 'I:\\', '0', '0', '0.00');
INSERT INTO `ftp_dir` VALUES ('3', '192.168.0.26', '621', 'dh', '123456', '/pe_fileJ/', 'J:\\', '1', '0', '0', 'J:\\', '0', '0', '0.00');
INSERT INTO `ftp_dir` VALUES ('4', '192.168.0.26', '621', 'dh', '123456', '/pe_fileK/', 'K:\\', '1', '0', '0', 'K:\\', '0', '0', '0.00');
INSERT INTO `ftp_dir` VALUES ('5', '192.168.0.26', '621', 'dh', '123456', '/pe_fileG/', 'G:\\', '1', '0', '1', 'G:\\', '199998', '197662', '1.00');
INSERT INTO `ftp_dir` VALUES ('6', '192.168.0.26', '21', 'dh', '123456', '/pe_fileH/', 'H:\\', '1', '0', '0', 'H:\\', '0', '0', '0.00');
INSERT INTO `ftp_dir` VALUES ('7', '192.168.0.26', '21', 'dh', '123456', '/pe_fileF/', 'F:\\', '1', '0', '0', 'F:\\', '199999', '161122', '19.00');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT '0' COMMENT '�˵���ID',
  `name` varchar(64) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '0',
  `iconcls` varchar(64) DEFAULT NULL,
  `enable` int(2) DEFAULT '1' COMMENT '0:����,1:����',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('100', '0', 'ϵͳ����', '', '0', 'icon-wrench', '1');
INSERT INTO `menu` VALUES ('101', '100', '��ɫ����', 'Role/index', '1', 'icon-folder_user', '1');
INSERT INTO `menu` VALUES ('103', '100', '���Ź���', 'Area/index', '3', 'icon-world', '1');
INSERT INTO `menu` VALUES ('200', '0', '�豸����', '', '2', 'icon-tux', '1');
INSERT INTO `menu` VALUES ('201', '200', 'ִ��������', 'Dev/pe_base_show', '1', 'icon-tux', '1');
INSERT INTO `menu` VALUES ('303', '300', '����վ��־', 'Log/log_show?logType=wslog', '2', null, '1');
INSERT INTO `menu` VALUES ('302', '300', 'ִ������־', 'Log/log_show?logType=pelog', '1', null, '1');
INSERT INTO `menu` VALUES ('301', '300', 'ϵͳ��־', 'Log/log_show?logType=syslog', '0', null, '1');
INSERT INTO `menu` VALUES ('300', '0', '��־��ѯ', null, '1', null, '1');
INSERT INTO `menu` VALUES ('400', '0', 'ͳ�Ʒ���', '', '3', 'icon-group_link', '1');
INSERT INTO `menu` VALUES ('401', '400', 'ִ����ͳ��', 'Dev/pe_show_status', '1', 'icon-group_link', '1');
INSERT INTO `menu` VALUES ('402', '400', '������ͳ��', 'Media/show_sat?satType=work_sat', '2', 'icon-user_comment', '1');
INSERT INTO `menu` VALUES ('404', '400', '����ͳ��', 'Media/show_sat?satType=assessmeny_sat', '3', 'icon-film_link', '1');
INSERT INTO `menu` VALUES ('500', '0', '���ݹ���', '', '4', 'icon-script', '1');
INSERT INTO `menu` VALUES ('502', '500', 'ִ����ѯ', 'Media/law_query', '1', null, '1');
INSERT INTO `menu` VALUES ('501', '500', '���ݱȶ�', 'Media/data_com', '0', null, '1');
INSERT INTO `menu` VALUES ('104', '100', '��Ա¼��', 'Employee/index', '4', 'icon-vcard', '1');
INSERT INTO `menu` VALUES ('105', '100', '��Ա�鿴', 'Employee/showEmpPhoto', '5', 'icon-picture_go', '1');
INSERT INTO `menu` VALUES ('203', '200', '����վ����', 'WorkStation/ws_base_show', '3', null, '1');
INSERT INTO `menu` VALUES ('600', '0', '���Ĺ���', null, '2', null, '1');
INSERT INTO `menu` VALUES ('602', '600', '�����б�', 'Apply/apply', '2', null, '1');
INSERT INTO `menu` VALUES ('603', '600', '����', 'Apply/allow_apply', '3', null, '1');
INSERT INTO `menu` VALUES ('604', '600', '���Ĳ�ѯ', 'Apply/apply_video', '4', null, '1');

-- ----------------------------
-- Table structure for `pe_base`
-- ----------------------------
DROP TABLE IF EXISTS `pe_base`;
CREATE TABLE `pe_base` (
  `cpxh` varchar(7) NOT NULL COMMENT '��Ʒ(ִ����)��� ',
  `standard` varchar(30) DEFAULT NULL COMMENT '�豸���',
  `product` varchar(100) DEFAULT NULL COMMENT '��������',
  `areacode` varchar(32) NOT NULL DEFAULT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '��λ,ͬarea_dep.areaname',
  `jybh` varchar(6) NOT NULL COMMENT '��Ա���',
  `jyxm` varchar(32) DEFAULT NULL COMMENT '��Ա����',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:ͣ��,1:ά��,2:����',
  `times` int(2) NOT NULL DEFAULT '0',
  `create_user` varchar(32) DEFAULT NULL COMMENT '������',
  PRIMARY KEY (`cpxh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pe_base
-- ----------------------------
INSERT INTO `pe_base` VALUES ('1000478', null, null, '0', null, 'JX0232', '����', '0', '0', null);
INSERT INTO `pe_base` VALUES ('1234511', null, null, '0', null, '020004', '����', '0', '0', null);
INSERT INTO `pe_base` VALUES ('TA00382', null, null, '0', null, '020707', '����', '0', '0', null);
INSERT INTO `pe_base` VALUES ('TA00471', null, null, '0', null, 'JX0856', '����ԭ', '0', '0', null);
INSERT INTO `pe_base` VALUES ('TA00472', null, null, '0', null, 'JX0224', '�', '0', '0', null);
INSERT INTO `pe_base` VALUES ('TA00474', null, null, '0', null, 'JX0867', '���۲�', '0', '0', null);
INSERT INTO `pe_base` VALUES ('TA00475', null, null, '0', null, 'JX1084', '�׺�', '0', '0', null);
INSERT INTO `pe_base` VALUES ('TA00716', null, null, '0', null, 'JX0227', '����', '0', '0', null);
INSERT INTO `pe_base` VALUES ('TA00720', null, null, '0', null, 'JX0243', '��Ԫһ', '0', '0', null);

-- ----------------------------
-- Table structure for `pe_log_list`
-- ----------------------------
DROP TABLE IF EXISTS `pe_log_list`;
CREATE TABLE `pe_log_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ(ִ����)���',
  `comment` varchar(100) DEFAULT NULL COMMENT '�ļ�����',
  `rzsj` datetime NOT NULL COMMENT '��־ʱ��',
  `jybh` varchar(6) NOT NULL COMMENT '��Ա���',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `gzz_ip` varchar(64) NOT NULL COMMENT '����վip',
  `auth_key` varchar(32) DEFAULT NULL COMMENT '��֤��Կ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pe_log_list
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(64) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `functionlist` varchar(4096) DEFAULT NULL,
  `level` int(2) DEFAULT NULL COMMENT '0-5��',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ϵͳ����Ա', 'ӵ�����в���Ȩ��', '100,101,102,103,104,105,200,201,202,203,300,301,302,303,304,400,401,402,403,404,405,406,407,408,500,501,502,503,504,505,600,602,603,604', '0');
INSERT INTO `role` VALUES ('19', '�оֹ���Ա', 'ӵ�����в���Ȩ��', '500,502,501,400,405,404,402,401,300,303,302,301,200,203,201,600,604,603,602,105,104,103', '1');
INSERT INTO `role` VALUES ('20', '��Ա', 'ӵ�����ݹ�����־��ѯ,���Ĳ�ѯ', '500,502,501,402,201,604,303,302', '4');
INSERT INTO `role` VALUES ('22', '�ؾֹ���Ա', 'û�н�ɫ����������Ȩ��', '500,502,501,400,405,404,402,401,200,203,201,600,604,603,602,300,303,302,301,105,104,103', '2');
INSERT INTO `role` VALUES ('23', '�������Ա', 'û�н�ɫ����������Ȩ��', '500,502,501,400,405,404,402,401,200,203,201,600,604,603,602,300,303,302,301,105,104,103', '3');

-- ----------------------------
-- Table structure for `server_machine`
-- ----------------------------
DROP TABLE IF EXISTS `server_machine`;
CREATE TABLE `server_machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areacode` varchar(32) NOT NULL COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '��λ,ͬarea_dep.areaname',
  `server_ip` varchar(20) NOT NULL COMMENT '������IP',
  `server_port` int(11) DEFAULT NULL,
  `trademark` varchar(32) DEFAULT NULL COMMENT '������Ʒ��',
  `config` varchar(128) DEFAULT NULL COMMENT '����������',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '������״̬��0:����,1:����',
  `account` varchar(32) DEFAULT NULL COMMENT '�˺�',
  `password` varchar(32) DEFAULT NULL COMMENT '����',
  `db_user` varchar(32) DEFAULT NULL COMMENT '���ݿ��û�',
  `db_pwd` varchar(32) DEFAULT NULL COMMENT '���ݿ�����',
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server_machine
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '0',
  `cmt` varchar(128) NOT NULL DEFAULT '',
  `dte` datetime NOT NULL,
  `module` varchar(32) DEFAULT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=659 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL COMMENT '�������',
  `content` varchar(512) DEFAULT NULL COMMENT '��������',
  `areacode` varchar(32) DEFAULT NULL COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '��������',
  `creater_id` varchar(32) DEFAULT NULL COMMENT '�����ˣ���½�û�id',
  `creater_name` varchar(32) DEFAULT NULL COMMENT '�����ˣ���½�û�',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `start_time` datetime NOT NULL COMMENT '������Ч��ʼʱ��',
  `end_time` datetime NOT NULL COMMENT '������Ч����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `ws_base`
-- ----------------------------
DROP TABLE IF EXISTS `ws_base`;
CREATE TABLE `ws_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gzz_ip` varchar(64) NOT NULL COMMENT '����վIP',
  `areacode` varchar(32) DEFAULT NULL COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT NULL COMMENT '��λ,ͬarea_dep.areaname',
  `fzr` varchar(64) DEFAULT NULL COMMENT '������',
  `dh` varchar(32) DEFAULT NULL COMMENT '�����˵绰',
  `zxzt` int(2) NOT NULL DEFAULT '1' COMMENT '����״̬,0:�����ߣ�1������',
  `ztsj` datetime NOT NULL COMMENT '״̬ʱ��',
  `qyzt` int(2) NOT NULL DEFAULT '1' COMMENT '����״̬ 0:δ���ã�1������',
  `auth_key` varchar(32) DEFAULT NULL COMMENT '��֤��Կ MD5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ws_base
-- ----------------------------
INSERT INTO `ws_base` VALUES ('1', '10.102.131.121', '0', '��ɽ��һ�ж�', '', '', '0', '2017-08-01 13:16:17', '1', null);
INSERT INTO `ws_base` VALUES ('2', '192.168.43.45', '0', '����վ', '', '', '0', '2017-08-01 13:16:18', '1', null);
INSERT INTO `ws_base` VALUES ('3', '192.168.0.26', null, null, null, null, '1', '2017-08-01 15:32:31', '1', null);
INSERT INTO `ws_base` VALUES ('4', '192.168.1.102', null, null, null, null, '1', '2017-08-01 20:38:39', '1', null);

-- ----------------------------
-- Table structure for `ws_log`
-- ----------------------------
DROP TABLE IF EXISTS `ws_log`;
CREATE TABLE `ws_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gzz_ip` varchar(64) NOT NULL COMMENT '����վip',
  `comment` varchar(128) NOT NULL DEFAULT '0' COMMENT '��־����,1:������2���ػ���3�������¼�ǣ�4���Ƴ���¼�ǣ�5���ɼ��ļ���',
  `dxbh` varchar(100) DEFAULT NULL COMMENT '������,ִ����¼�ǻ��ļ����',
  `rzsj` datetime NOT NULL COMMENT '��־ʱ��',
  `auth_key` varchar(32) DEFAULT NULL COMMENT '��֤��Կ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ws_log
-- ----------------------------
