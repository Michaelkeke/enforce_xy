/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : enforce_xy

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 936

Date: 2017-08-10 10:15:10
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
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '���Ŵ���',
  `rperson` varchar(64) DEFAULT NULL,
  `rphone` varchar(32) DEFAULT NULL,
  `code` varchar(10) DEFAULT '' COMMENT '���Ŵ���,�Զ���,���ڹ����û��Զ���ѡ��������Ȩ��',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '0:������1:����,2:����',
  `is_read` int(1) NOT NULL DEFAULT '1' COMMENT '����Ȩ�ޣ�1:��д,0:ֻ��;������0���Ӽ�������0;',
  PRIMARY KEY (`areaid`),
  UNIQUE KEY `idx_areacode` (`areacode`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=668 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of area_dep
-- ----------------------------
INSERT INTO `area_dep` VALUES ('196', '1', '0', '����ʡ������', '41', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('197', '1', '196', '�����й�����', '4115', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('198', '1', '197', '�ϳǷ־�', '411501', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('199', '1', '197', '���ӷ־�', '411502', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('200', '1', '197', '��ɽ�־�', '411503', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('201', '1', '197', '���۷־�', '411504', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('202', '1', '197', '��ӷ־�', '411505', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('203', '1', '197', 'ƽ�ŷ־�', '411506', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('204', '1', '197', '�����ݷ־�', '411507', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('205', '1', '197', '���·־�', '411508', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('206', '1', '197', '����ɽ�־�', '411509', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('207', '1', '197', '����־�', '411510', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('208', '1', '197', '�����ع�����', '411511', '������', '13949159672', '411511', '1', '0');
INSERT INTO `area_dep` VALUES ('209', '1', '197', 'ֱ���־�', '411512', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('210', '1', '197', '���ع�����', '411513', null, null, '411513', '1', '0');
INSERT INTO `area_dep` VALUES ('211', '1', '197', '��ɽ�ع�����', '411514', null, null, '411514', '1', '0');
INSERT INTO `area_dep` VALUES ('212', '1', '197', '�괨�ع�����', '411515', '�žֳ�', null, '411515', '1', '0');
INSERT INTO `area_dep` VALUES ('213', '1', '197', '��ɽ�ع�����', '411516', null, null, '411516', '1', '0');
INSERT INTO `area_dep` VALUES ('214', '1', '197', '�̳��ع�����', '411517', null, null, '411517', '1', '0');
INSERT INTO `area_dep` VALUES ('215', '1', '197', 'Ϣ�ع�����', '411518', '����', '13937666277', '411518', '1', '0');
INSERT INTO `area_dep` VALUES ('216', '1', '198', '�ϳǷ־�-�ϳ��ɳ���', '41150101', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('217', '1', '198', '�ϳǷ־�-��Ȩ�ɳ���', '41150102', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('218', '1', '198', '�ϳǷ־�-��վ�ɳ���', '41150103', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('219', '1', '198', '�ϳǷ־�-������ɳ���', '41150104', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('220', '1', '198', '�ϳǷ־�-��ţɽ�ɳ���', '41150105', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('221', '1', '198', '�ϳǷ־�-�����ɳ���', '41150106', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('222', '1', '198', '�ϳǷ־�-��ҵ�������ɳ���', '41150107', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('223', '1', '198', '�ϳǷ־�-�����ɳ���', '41150108', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('224', '1', '198', '�ϳǷ־�-��԰�ɳ���', '41150109', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('225', '1', '198', '�ϳǷ־�-�ϳǷ־־����ۺ���', '41150110', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('226', '1', '198', '�ϳǷ־�-�ϳǷ־�����������', '41150111', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('227', '1', '198', '�ϳǷ־�-�ϳǷ־�ִ��ִ�ͼල��', '41150112', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('228', '1', '198', '�ϳǷ־�-�ϳǷ־��ΰ�������', '41150113', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('229', '1', '198', '�ϳǷ־�-�ϳǷ־ְ��������', '41150114', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('230', '1', '198', '�ϳǷ־�-�ϳǷ־�Ѳ�߷��ش��', '41150115', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('231', '1', '199', '���ӷ־�-�����ɳ���', '41150201', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('232', '1', '199', '���ӷ־�-�����ɳ���', '41150202', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('233', '1', '199', '���ӷ־�-�κ��ɳ���', '41150203', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('234', '1', '199', '���ӷ־�-��˫���ɳ���', '41150204', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('235', '1', '199', '���ӷ־�-̷�Һ��ɳ���', '41150205', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('236', '1', '199', '���ӷ־�-ʮ�������ɳ���', '41150206', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('237', '1', '199', '���ӷ־�-���Һ��ɳ���', '41150207', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('238', '1', '199', '���ӷ־�-��ҵ��ɳ���', '41150208', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('239', '1', '199', '���ӷ־�-���Ӹ��ɳ���', '41150209', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('240', '1', '199', '���ӷ־�-�����ɳ���', '41150210', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('241', '1', '199', '���ӷ־�-���ӷ־־����ۺ���', '41150211', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('242', '1', '199', '���ӷ־�-���ӷ־�ִ��ִ�ͼල��', '41150212', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('243', '1', '199', '���ӷ־�-���ӷ־ַ��ƴ��', '41150213', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('244', '1', '199', '���ӷ־�-���ӷ־ְ��������', '41150214', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('245', '1', '199', '���ӷ־�-���ӷ־ֽ���Ѳ�����', '41150215', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('246', '1', '199', '���ӷ־�-���ӷ־�����������', '41150216', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('247', '1', '199', '���ӷ־�-���ӷ־��ΰ�������', '41150217', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('248', '1', '200', '��ɽ�־�-�������ɳ���', '41150301', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('249', '1', '200', '��ɽ�־�-ǰ���ɳ���', '41150302', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('250', '1', '200', '��ɽ�־�-����ɽ�ɳ���', '41150303', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('251', '1', '200', '��ɽ�־�-��ɽ�ɳ���', '41150304', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('252', '1', '200', '��ɽ�־�-���������ɳ���', '41150305', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('253', '1', '200', '��ɽ�־�-�����ɳ���', '41150306', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('254', '1', '200', '��ɽ�־�-��ɽ�־��ΰ����', '41150307', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('255', '1', '200', '��ɽ�־�-��ɽ�־ְ��������', '41150308', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('256', '1', '200', '��ɽ�־�-��ɽ�־����ڴ��', '41150309', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('257', '1', '200', '��ɽ�־�-��ɽ�־�Ѳ�߷��ش��', '41150310', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('258', '1', '200', '��ɽ�־�-��ɽ�־־����ۺ���', '41150311', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('259', '1', '200', '��ɽ�־�-��ɽ�־ּҾ�С������', '41150312', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('260', '1', '200', '��ɽ�־�-��ɽ�ɳ�������������', '41150313', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('261', '1', '200', '��ɽ�־�-��ɽ�־�ִ��ִ�ͼල��', '41150314', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('262', '1', '201', '���۷־�-�����ɳ���', '41150401', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('263', '1', '201', '���۷־�-�����ɳ���', '41150402', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('264', '1', '201', '���۷־�-�����ɳ���', '41150403', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('265', '1', '201', '���۷־�-�����ɳ���', '41150404', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('266', '1', '201', '���۷־�-�̼��ɳ���', '41150405', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('267', '1', '201', '���۷־�-�����ɳ���', '41150406', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('268', '1', '201', '���۷־�-�ʰ��ɳ���', '41150407', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('269', '1', '201', '���۷־�-��̨���ɳ���', '41150408', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('270', '1', '201', '���۷־�-������ַ�ɳ���', '41150409', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('271', '1', '201', '���۷־�-���۷־�ִ��ִ�ͼල��', '41150410', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('272', '1', '201', '���۷־�-���۷־ְ��������', '41150411', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('273', '1', '201', '���۷־�-���۷־��ΰ�������', '41150412', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('274', '1', '201', '���۷־�-���۷־�Ѳ�����', '41150413', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('275', '1', '201', '���۷־�-���۷־�����������', '41150414', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('276', '1', '201', '���۷־�-���۷־־����ۺ���', '41150415', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('277', '1', '201', '���۷־�-ƽ�����ɳ���', '41150416', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('278', '1', '201', '���۷־�-��ɽ�ɳ���', '41150417', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('279', '1', '201', '���۷־�-�������ɳ���', '41150418', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('280', '1', '202', '��ӷ־�-����ɳ���', '41150501', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('281', '1', '202', '��ӷ־�-�ŵ��ɳ���', '41150502', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('282', '1', '202', '��ӷ־�-������ɳ���', '41150503', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('283', '1', '202', '��ӷ־�-�����ɳ���', '41150504', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('284', '1', '202', '��ӷ־�-Ф���ɳ���', '41150505', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('285', '1', '202', '��ӷ־�-Ф���ɳ���', '41150506', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('286', '1', '202', '��ӷ־�-�����ɳ���', '41150507', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('287', '1', '202', '��ӷ־�-��ӷ־־����ۺ���', '41150508', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('288', '1', '202', '��ӷ־�-��ӷ־�ִ��ִ����', '41150509', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('289', '1', '202', '��ӷ־�-��ӷ־ְ��������', '41150510', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('290', '1', '202', '��ӷ־�-��ӷ־�����������', '41150511', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('291', '1', '202', '��ӷ־�-��ӷ־�Ѳ�߷��ش��', '41150512', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('292', '1', '203', 'ƽ�ŷ־�-ƽ���ɳ���', '41150601', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('293', '1', '203', 'ƽ�ŷ־�-��ҵ԰�ɳ���', '41150602', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('294', '1', '203', 'ƽ�ŷ־�-����ɽ�ɳ���', '41150603', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('295', '1', '203', 'ƽ�ŷ־�-ƽ���ɳ���', '41150604', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('296', '1', '203', 'ƽ�ŷ־�-�����ɳ���', '41150605', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('297', '1', '203', 'ƽ�ŷ־�-ƽ�ŷ־־����ۺ���', '41150606', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('298', '1', '203', 'ƽ�ŷ־�-ƽ�ŷ־�ִ��ִ�ͼල��', '41150607', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('299', '1', '203', 'ƽ�ŷ־�-ƽ�ŷ־��ΰ�������', '41150608', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('300', '1', '203', 'ƽ�ŷ־�-ƽ�ŷ־ְ��������', '41150609', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('301', '1', '203', 'ƽ�ŷ־�-ƽ�ŷ־ֽ���Ѳ�����', '41150610', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('302', '1', '203', 'ƽ�ŷ־�-ƽ�ŷ־�����������', '41150611', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('303', '1', '204', '�����ݷ־�-�����ɳ���', '41150701', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('304', '1', '204', '�����ݷ־�-�����ݷ־�����������', '41150702', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('305', '1', '204', '�����ݷ־�-�����ݷ־ְ��������', '41150703', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('306', '1', '204', '�����ݷ־�-�����ݷ־־����ۺ���', '41150704', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('307', '1', '204', '�����ݷ־�-�����ݷ־�ִ��ִ�ͼල��', '41150705', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('308', '1', '204', '�����ݷ־�-�����ݷ־�', '41150706', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('309', '1', '205', '���·־�-����·�ɳ���', '41150801', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('310', '1', '205', '���·־�-�Ƕ��ɳ���', '41150802', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('311', '1', '205', '���·־�-���·־־����ۺ���', '41150803', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('312', '1', '205', '���·־�-���·־�����������', '41150804', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('313', '1', '205', '���·־�-���·־ְ��������', '41150805', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('314', '1', '206', '����ɽ�־�-���կ�ɳ���', '41150901', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('315', '1', '206', '����ɽ�־�-����ɽ�ɳ���', '41150902', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('316', '1', '206', '����ɽ�־�-����ɽ�־־����ۺ���', '41150903', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('317', '1', '206', '����ɽ�־�-����ɽ�־ְ��������', '41150904', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('318', '1', '206', '����ɽ�־�-����ɽ�־�����������', '41150905', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('319', '1', '207', '����־�-�����ɳ���', '41151001', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('320', '1', '207', '����־�-��ɽ�ɳ���', '41151002', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('321', '1', '207', '����־�-����־־����ۺ���', '41151003', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('322', '1', '207', '����־�-����־ְ��������', '41151004', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('323', '1', '207', '����־�-����־�����������', '41151005', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('324', '1', '208', '�����ع�����-�ǹ��ɳ���', '41151101', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('325', '1', '208', '�����ع�����-�����ɳ���', '41151102', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('326', '1', '208', '�����ع�����-�����ɳ���', '41151103', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('327', '1', '208', '�����ع�����-�����ɳ���', '41151104', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('328', '1', '208', '�����ع�����-�����ɳ���', '41151105', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('329', '1', '208', '�����ع�����-���ɳ���', '41151106', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('330', '1', '208', '�����ع�����-«���ɳ���', '41151107', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('331', '1', '208', '�����ع�����-�����ɳ���', '41151108', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('332', '1', '208', '�����ع�����-̨ͷ�ɳ���', '41151109', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('333', '1', '208', '�����ع�����-Ѳ�ؾ����', '41151110', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('334', '1', '208', '�����ع�����-�ΰ����', '41151111', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('335', '1', '208', '�����ع�����-������', '41151112', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('336', '1', '208', '�����ع�����-�̾����', '41151113', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('337', '1', '208', '�����ع�����-��ҵ԰�ɳ���', '41151114', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('338', '1', '208', '�����ع�����-��˼�ɳ���', '41151115', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('339', '1', '208', '�����ع�����-�ȶ��ɳ���', '41151116', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('340', '1', '208', '�����ع�����-�����ɳ���', '41151117', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('341', '1', '208', '�����ع�����-�����ɳ���', '41151118', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('342', '1', '208', '�����ع�����-��ׯ�ɳ���', '41151119', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('343', '1', '208', '�����ع�����-�̳��ɳ���', '41151120', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('344', '1', '208', '�����ع�����-�������ɳ���', '41151121', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('345', '1', '208', '�����ع�����-�Լ��ɳ���', '41151122', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('346', '1', '208', '�����ع�����-�����ɳ���', '41151123', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('347', '1', '208', '�����ع�����-���Ҹ��ɳ���', '41151124', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('348', '1', '209', '�����й�����-���뾳���', '41151201', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('349', '1', '209', '�����й�����-�̾�֧��', '41151202', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('350', '1', '209', '�����й�����-110������', '41151203', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('351', '1', '209', '�����й�����-����֧��', '41151204', null, null, '', '2', '1');
INSERT INTO `area_dep` VALUES ('352', '1', '209', '�����й�����-Ѳ�ؾ�֧��', '41151205', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('353', '1', '209', '�����й�����-����֧��', '41151206', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('354', '1', '209', '�����й�����-����֧��', '41151207', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('355', '1', '209', '�����й�����-����֧��', '41151208', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('356', '1', '209', '�����й�����-�ΰ�֧��', '41151209', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('357', '1', '209', '�����й�����-����֧��', '41151210', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('358', '1', '209', '�����й�����-���ֲ�֧��', '41151211', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('359', '1', '209', '�����й�����-���֧��', '41151212', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('360', '1', '209', '�����й�����-��ͨ����֧��', '41151213', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('545', '1', '350', '110������-110���н�����վ', '4115120301', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('361', '1', '210', '���ع�����-Ѳ�ؾ����', '41151301', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('362', '1', '210', '���ع�����-�̾����', '41151302', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('363', '1', '210', '���ع�����-�참����', '41151303', null, null, '', '2', '0');
INSERT INTO `area_dep` VALUES ('364', '1', '210', '���ع�����-�ǹ��ɳ���', '41151304', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('365', '1', '210', '���ع�����-��ҵ�������ɳ���', '41151305', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('366', '1', '210', '���ع�����-�¼��ɳ���', '41151306', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('367', '1', '210', '���ع�����-����ɳ���', '41151307', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('368', '1', '210', '���ع�����-���ﷷ�ɳ���', '41151308', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('369', '1', '210', '���ع�����-ɳ���ɳ���', '41151309', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('370', '1', '210', '���ع�����-�ܺ��ɳ���', '41151310', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('371', '1', '210', '���ع�����-��º��ɳ���', '41151311', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('372', '1', '210', '���ع�����-ǧ���ɳ���', '41151312', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('373', '1', '210', '���ع�����-�պ��ɳ���', '41151313', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('374', '1', '210', '���ع�����-�����ɳ���', '41151314', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('375', '1', '210', '���ع�����-��ɽ���ɳ���', '41151315', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('376', '1', '210', '���ع�����-���Һ��ɳ���', '41151316', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('377', '1', '210', '���ع�����-�µ��ɳ���', '41151317', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('378', '1', '210', '���ع�����-�������ɳ���', '41151318', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('379', '1', '210', '���ع�����-�����ɳ���', '41151319', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('380', '1', '210', '���ع�����-�����ɳ���', '41151320', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('381', '1', '210', '���ع�����-��ɽ���ɳ���', '41151321', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('382', '1', '211', '��ɽ�ع�����-Ѳ�ؾ����', '41151401', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('383', '1', '211', '��ɽ�ع�����-ʮ���ɳ���', '41151402', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('384', '1', '211', '��ɽ�ع�����-��ɽ�ɳ���', '41151403', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('385', '1', '211', '��ɽ�ع�����-�������', '41151404', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('386', '1', '211', '��ɽ�ع�����-��ˮ�ɳ���', '41151405', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('387', '1', '211', '��ɽ�ع�����-�ΰ����', '41151406', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('388', '1', '211', '��ɽ�ع�����-կ���ɳ���', '41151407', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('389', '1', '211', '��ɽ�ع�����-�����ɳ���', '41151408', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('390', '1', '211', '��ɽ�ع�����-�̺��ɳ���', '41151409', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('391', '1', '211', '��ɽ�ع�����-�������ɳ���', '41151410', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('392', '1', '211', '��ɽ�ع�����-�ú��ɳ���', '41151411', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('393', '1', '211', '��ɽ�ع�����-����ɳ���', '41151412', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('394', '1', '211', '��ɽ�ع�����-��ȸ�ɳ���', '41151413', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('395', '1', '211', '��ɽ�ع�����-�̾����', '41151414', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('396', '1', '211', '��ɽ�ع�����-������ɳ���', '41151415', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('397', '1', '211', '��ɽ�ع�����-�ɾ��ɳ���', '41151416', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('398', '1', '211', '��ɽ�ع�����-�����ɳ���', '41151417', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('399', '1', '212', '�괨�ع�����-�����ɳ���', '41151501', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('400', '1', '212', '�괨�ع�����-�ϳ��ɳ���', '41151502', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('401', '1', '212', '�괨�ع�����-�����ɳ���', '41151503', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('402', '1', '212', '�괨�ع�����-�����ɳ���', '41151504', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('403', '1', '212', '�괨�ع�����-��ҵ�������ɳ���', '41151505', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('404', '1', '212', '�괨�ع�����-ɡ���ɳ���', '41151506', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('405', '1', '212', '�괨�ع�����-�����ɳ���', '41151507', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('406', '1', '212', '�괨�ع�����-κ���ɳ���', '41151508', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('407', '1', '212', '�괨�ع�����-ţ���ɳ���', '41151509', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('408', '1', '212', '�괨�ع�����-�Ƹ��ɳ���', '41151510', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('409', '1', '212', '�괨�ع�����-110רҵ������', '41151511', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('410', '1', '212', '�괨�ع�����-�참����', '41151512', null, null, '', '2', '0');
INSERT INTO `area_dep` VALUES ('411', '1', '212', '�괨�ع�����-Ѳ�ؾ����', '41151513', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('412', '1', '212', '�괨�ع�����-�������', '41151514', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('413', '1', '212', '�괨�ع�����-�̾����', '41151515', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('414', '1', '212', '�괨�ع�����-ɭ���ɳ���', '41151516', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('415', '1', '212', '�괨�ع�����-¡���ɳ���', '41151517', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('416', '1', '212', '�괨�ع�����-˫���ɳ���', '41151518', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('417', '1', '212', '�괨�ع�����-̸���ɳ���', '41151519', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('418', '1', '212', '�괨�ع�����-С�����ɳ���', '41151520', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('419', '1', '212', '�괨�ع�����-�����ɳ���', '41151521', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('420', '1', '212', '�괨�ع�����-�����ɳ���', '41151522', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('421', '1', '212', '�괨�ع�����-�׵��ɳ���', '41151523', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('422', '1', '212', '�괨�ع�����-�ʺ��ɳ���', '41151524', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('423', '1', '212', '�괨�ع�����-�����ɳ���', '41151525', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('424', '1', '212', '�괨�ع�����-����ɳ���', '41151526', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('425', '1', '212', '�괨�ع�����-���͸��ɳ���', '41151527', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('426', '1', '212', '�괨�ع�����-�����ɳ���', '41151528', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('427', '1', '212', '�괨�ع�����-�ż��ɳ���', '41151529', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('428', '1', '212', '�괨�ع�����-�����ɳ���', '41151530', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('429', '1', '212', '�괨�ع�����-�������ɳ���', '41151531', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('430', '1', '212', '�괨�ع�����-�°참����', '41151532', null, null, '', '2', '0');
INSERT INTO `area_dep` VALUES ('431', '1', '213', '��ɽ�ع�����-�����ɳ���', '41151601', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('432', '1', '213', '��ɽ�ع�����-��ɽ�ɳ���', '41151602', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('433', '1', '213', '��ɽ�ع�����-�̾����', '41151603', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('434', '1', '213', '��ɽ�ع�����-��ˮ�ɳ���', '41151604', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('435', '1', '213', '��ɽ�ع�����-������', '41151605', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('436', '1', '213', '��ɽ�ع�����-Ѳ�ؾ����', '41151606', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('437', '1', '213', '��ɽ�ع�����-�������', '41151607', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('438', '1', '213', '��ɽ�ع�����-�ΰ����', '41151608', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('439', '1', '213', '��ɽ�ع�����-ִ���참����', '41151609', null, null, '', '2', '0');
INSERT INTO `area_dep` VALUES ('440', '1', '213', '��ɽ�ع�����-������', '41151610', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('441', '1', '213', '��ɽ�ع�����-������', '41151611', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('442', '1', '213', '��ɽ�ع�����-����ɳ���', '41151612', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('443', '1', '213', '��ɽ�ع�����-�����ɳ���', '41151613', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('444', '1', '213', '��ɽ�ع�����-�ȵ��ɳ���', '41151614', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('445', '1', '213', '��ɽ�ع�����-�ߵ��ɳ���', '41151615', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('446', '1', '213', '��ɽ�ع�����-骸��ɳ���', '41151616', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('447', '1', '213', '��ɽ�ع�����-��һ�ɳ���', '41151617', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('448', '1', '213', '��ɽ�ع�����-��·�ɳ���', '41151618', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('449', '1', '213', '��ɽ�ع�����-��ɽ�ɳ���', '41151619', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('450', '1', '213', '��ɽ�ع�����-�����ɳ���', '41151620', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('451', '1', '213', '��ɽ�ع�����-ç���ɳ���', '41151621', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('452', '1', '213', '��ɽ�ع�����-�ܵ��ɳ���', '41151622', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('453', '1', '213', '��ɽ�ع�����-��Զ�ɳ���', '41151623', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('454', '1', '213', '��ɽ�ع�����-ɽ���ɳ���', '41151624', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('455', '1', '213', '��ɽ�ع�����-�����ɳ���', '41151625', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('456', '1', '213', '��ɽ�ع�����-�����ɳ���', '41151626', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('457', '1', '213', '��ɽ�ع�����-��ɽ�ɳ���', '41151627', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('458', '1', '213', '��ɽ�ع�����-��ɽ���ɳ���', '41151628', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('459', '1', '213', '��ɽ�ع�����-�����ɳ���', '41151629', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('460', '1', '213', '��ɽ�ع�����-�����ɳ���', '41151630', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('461', '1', '213', '��ɽ�ع�����-�ǹ��ɳ���', '41151631', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('462', '1', '213', '��ɽ�ع�����-���ִ��', '41151632', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('463', '1', '213', '��ɽ�ع�����-�淶�ŷ�����ִ�����', '41151633', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('464', '1', '213', '��ɽ�ع�����-������', '41151634', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('465', '1', '213', '��ɽ�ع�����-�������', '41151635', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('466', '1', '214', '�̳��ع�����-���ƴ��', '41151701', null, null, '', '2', '0');
INSERT INTO `area_dep` VALUES ('467', '1', '214', '�̳��ع�����-Ѳ�ؾ����', '41151702', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('468', '1', '214', '�̳��ع�����-�ǹ��ɳ���', '41151703', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('469', '1', '214', '�̳��ع�����-����ɽ�ɳ���', '41151704', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('470', '1', '214', '�̳��ع�����-��ʯ���ɳ���', '41151705', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('471', '1', '214', '�̳��ع�����-�����ɳ���', '41151706', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('472', '1', '214', '�̳��ع�����-�̾����', '41151707', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('473', '1', '214', '�̳��ع�����-�ΰ����', '41151708', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('474', '1', '214', '�̳��ع�����-˫�����ɳ���', '41151709', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('475', '1', '214', '�̳��ع�����-�༯�ɳ���', '41151710', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('476', '1', '214', '�̳��ع�����-�����ɳ���', '41151711', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('477', '1', '214', '�̳��ع�����-۳���ɳ���', '41151712', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('478', '1', '214', '�̳��ع�����-�����ɳ���', '41151713', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('479', '1', '214', '�̳��ع�����-�ӷ����ɳ���', '41151714', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('480', '1', '214', '�̳��ع�����-��ɽ�ɳ���', '41151715', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('481', '1', '214', '�̳��ع�����-��Ȩ���ɳ���', '41151716', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('482', '1', '214', '�̳��ع�����-�������', '41151717', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('483', '1', '214', '�̳��ع�����-���̨�ɳ���', '41151718', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('484', '1', '214', '�̳��ع�����-��ɳ���', '41151719', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('485', '1', '214', '�̳��ع�����-����ɳ���', '41151720', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('486', '1', '214', '�̳��ع�����-�Ἧ�ɳ���', '41151721', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('487', '1', '214', '�̳��ع�����-����ɳ���', '41151722', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('488', '1', '214', '�̳��ع�����-��ҵ�������ɳ���', '41151723', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('489', '1', '214', '�̳��ع�����-����԰�ɳ���', '41151724', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('490', '1', '214', '�̳��ع�����-����ʯ�ɳ���', '41151725', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('491', '1', '214', '�̳��ع�����-��Ȫ���ɳ���', '41151726', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('492', '1', '214', '�̳��ع�����-�������ɳ���', '41151727', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('493', '1', '214', '�̳��ع�����-������', '41151728', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('494', '1', '214', '�̳��ع�����-�������', '41151729', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('495', '1', '214', '�̳��ع�����-���뾳������', '41151730', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('496', '1', '214', '�̳��ع�����-�ư�ɽ����ɭ�ֹ�԰�ɳ���', '41151731', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('497', '1', '214', '�̳��ع�����-������', '41151732', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('498', '1', '214', '�̳ǹ�����-��ˮ�ɳ���', '41151733', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('499', '1', '215', 'Ϣ�ع�����-������', '41151801', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('500', '1', '215', 'Ϣ�ع�����-�̾����', '41151802', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('501', '1', '215', 'Ϣ�ع�����-�ΰ����', '41151803', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('502', '1', '215', 'Ϣ�ع�����-Ѳ�ؾ����', '41151804', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('503', '1', '215', 'Ϣ�ع�����-������', '41151805', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('504', '1', '215', 'Ϣ�ع�����-���뾳�����', '41151806', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('505', '1', '215', 'Ϣ�ع�����-�������', '41151807', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('506', '1', '215', 'Ϣ�ع�����-�������', '41151808', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('507', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151809', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('508', '1', '215', 'Ϣ�ع�����-������', '41151810', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('509', '1', '215', 'Ϣ�ع�����-��ί', '41151811', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('510', '1', '215', 'Ϣ�ع�����-������', '41151812', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('511', '1', '215', 'Ϣ�ع�����-���', '41151813', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('512', '1', '215', 'Ϣ�ع�����-������', '41151814', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('513', '1', '215', 'Ϣ�ع�����-������', '41151815', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('514', '1', '215', 'Ϣ�ع�����-��Ƶ���', '41151816', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('515', '1', '215', 'Ϣ�ع�����-�����', '41151817', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('516', '1', '215', 'Ϣ�ع�����-�鱨����', '41151818', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('517', '1', '215', 'Ϣ�ع�����-ͨ�Ź�', '41151819', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('518', '1', '215', 'Ϣ�ع�����-���δ�', '41151820', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('519', '1', '215', 'Ϣ�ع�����-װ�������', '41151821', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('520', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151822', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('521', '1', '215', 'Ϣ�ع�����-��¥�ɳ���', '41151823', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('522', '1', '215', 'Ϣ�ع�����-�жɵ��ɳ���', '41151824', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('523', '1', '215', 'Ϣ�ع�����-������ɳ���', '41151825', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('524', '1', '215', 'Ϣ�ع�����-�ܻ����ɳ���', '41151826', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('525', '1', '215', 'Ϣ�ع�����-�ص��ɳ���', '41151827', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('526', '1', '215', 'Ϣ�ع�����-����ɳ���', '41151828', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('527', '1', '215', 'Ϣ�ع�����-����ɳ���', '41151829', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('528', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151830', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('529', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151831', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('530', '1', '215', 'Ϣ�ع�����-·���ɳ���', '41151832', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('531', '1', '215', 'Ϣ�ع�����-�������ɳ���', '41151833', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('532', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151834', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('533', '1', '215', 'Ϣ�ع�����-����ɳ���', '41151835', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('534', '1', '215', 'Ϣ�ع�����-��ׯ�ɳ���', '41151836', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('535', '1', '215', 'Ϣ�ع�����-С���ɳ���', '41151837', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('536', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151838', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('537', '1', '215', 'Ϣ�ع�����-������ɳ���', '41151839', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('538', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151840', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('539', '1', '215', 'Ϣ�ع�����-�����ɳ���', '41151841', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('540', '1', '215', 'Ϣ�ع�����-�ٺ��ɳ���', '41151842', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('541', '1', '215', 'Ϣ�ع�����-����ɳ���', '41151843', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('542', '1', '215', 'Ϣ�ع�����-����ɳ���', '41151844', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('543', '1', '215', 'Ϣ�ع�����-���ƴ��', '41151845', null, null, '', '2', '0');
INSERT INTO `area_dep` VALUES ('544', '1', '215', 'Ϣ�ع�����-�������', '41151846', null, null, '', '1', '0');
INSERT INTO `area_dep` VALUES ('546', '1', '350', '110������-110��������վ', '4115120302', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('547', '1', '350', '110������-110ƽ������վ', '4115120303', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('548', '1', '350', '110������-110��ɽ����վ', '4115120304', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('549', '1', '350', '110������-110���������վ', '4115120305', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('550', '1', '350', '110������-110���ϻ�԰����վ', '4115120306', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('551', '1', '350', '110������-110С��������վ', '4115120307', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('552', '1', '350', '110������-110�Ļ���������վ', '4115120308', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('553', '1', '350', '110������-110�����̳�����վ', '4115120309', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('554', '1', '350', '110������-110ũ��ѧԺ����վ', '4115120310', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('555', '1', '350', '110������-110��ʿ��������վ', '4115120311', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('556', '1', '350', '110������-110����������վ', '4115120312', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('557', '1', '350', '110������-110�����㳡����վ', '4115120313', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('558', '1', '351', '�����а�����', '4115120401', null, null, '', '2', '1');
INSERT INTO `area_dep` VALUES ('559', '1', '351', 'ִ��������', '4115120402', null, null, '', '2', '1');
INSERT INTO `area_dep` VALUES ('560', '1', '351', '�����а참����', '4115120403', null, null, '', '2', '1');
INSERT INTO `area_dep` VALUES ('561', '1', '352', 'Ѳ�ؾ�֧�ӻ���', '4115120501', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('562', '1', '352', 'Ѳ�ؾ�֧�Ӱ������', '4115120502', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('563', '1', '352', 'Ѳ�ؾ�֧��ͻ�����', '4115120503', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('564', '1', '352', 'Ѳ�ؾ�֧���ؾ����', '4115120504', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('565', '1', '352', 'Ѳ�ؾ�֧�ӻ������', '4115120505', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('566', '1', '359', '������', '4115121201', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('567', '1', '360', '����������', '4115121301', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('568', '1', '360', 'ƽ��������', '4115121302', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('569', '1', '360', '����������', '4115121303', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('570', '1', '360', '��·Ѳ���񾯴��', '4115121304', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('571', '1', '360', '��ͨ�¹ʴ�����', '4115121305', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('572', '1', '360', '��ͨ�����ۺ�ִ�����', '4115121306', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('573', '1', '360', '������', '4115121307', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('574', '1', '360', '��ѵ��', '4115121308', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('575', '1', '360', '���ƿ�', '4115121309', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('576', '1', '360', '��ͨ�����', '4115121310', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('577', '1', '360', '�¹ʴ���ָ����', '4115121311', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('578', '1', '360', '���δ�', '4115121312', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('579', '1', '360', '������', '4115121313', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('580', '1', '360', 'װ�������', '4115121314', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('581', '1', '360', '�����', '4115121315', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('582', '1', '360', '��ί', '4115121316', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('583', '1', '360', '��ͨ��ʩ�����', '4115121317', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('584', '1', '360', '�ϸɿ�', '4115121318', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('585', '1', '360', '�������', '4115121319', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('586', '1', '360', '��ɽ�ؽ������', '4115121320', null, null, '411514', '0', '0');
INSERT INTO `area_dep` VALUES ('587', '1', '360', '���ؽ������', '4115121321', null, null, '411513', '0', '0');
INSERT INTO `area_dep` VALUES ('593', '1', '567', '�����ж�', '411512130101', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('588', '1', '360', '�̳��ؽ������', '4115121322', null, null, '411517', '0', '0');
INSERT INTO `area_dep` VALUES ('589', '1', '360', '�����ؽ������', '4115121323', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('590', '1', '360', 'Ϣ�ع�����ͨ������', '4115121324', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('591', '1', '360', '�괨�ع�����ͨ������', '4115121325', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('592', '1', '360', '��ɽ�ع�����ͨ������', '4115121326', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('594', '1', '567', '��ɽ�ж�', '411512130102', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('595', '1', '567', '��վ�ж�', '411512130103', null, null, '', '0', '1');
INSERT INTO `area_dep` VALUES ('596', '1', '586', '�޳��ж�', '411512132001', null, null, '411514', '0', '0');
INSERT INTO `area_dep` VALUES ('597', '1', '586', '��ȸ�ж�', '411512132002', null, null, '411514', '0', '0');
INSERT INTO `area_dep` VALUES ('598', '1', '586', '�¹��ж�', '411512132003', null, null, '411514', '0', '0');
INSERT INTO `area_dep` VALUES ('599', '1', '586', '�ú��ж�', '411512132004', null, null, '411514', '0', '0');
INSERT INTO `area_dep` VALUES ('600', '1', '587', '�����ӹ������վ', '411512132101', null, null, '411513', '0', '0');
INSERT INTO `area_dep` VALUES ('614', '1', '590', '���ж�', '411512132403', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('601', '1', '589', '�ǹ��ж�', '411512132301', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('602', '1', '589', '���ư�', '411512132302', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('603', '1', '589', 'Դͷ��', '411512132303', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('604', '1', '589', '�����ж�', '411512132304', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('605', '1', '589', '�칫��', '411512132305', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('606', '1', '589', '������', '411512132306', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('607', '1', '589', '�Լ��ж�', '411512132307', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('608', '1', '589', '���ж�', '411512132308', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('609', '1', '589', '�����ж�', '411512132309', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('610', '1', '589', '�¹��ж�', '411512132310', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('611', '1', '589', '�γ��ж�', '411512132311', null, null, '411511', '0', '0');
INSERT INTO `area_dep` VALUES ('612', '1', '590', '�ǹ��ж�', '411512132401', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('613', '1', '590', 'һ�ж�', '411512132402', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('615', '1', '590', '���ж�', '411512132404', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('616', '1', '590', '�����ж�', '411512132405', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('617', '1', '590', '�¹��ж�', '411512132406', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('618', '1', '590', '�γ��ж�', '411512132407', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('619', '1', '590', '�����', '411512132408', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('620', '1', '590', '������', '411512132409', null, null, '411518', '0', '0');
INSERT INTO `area_dep` VALUES ('621', '1', '591', '�����ж�', '411512132501', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('622', '1', '591', '�����ж�', '411512132502', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('623', '1', '591', '�ǹ��ж�', '411512132503', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('624', '1', '591', 'Ρ���ж�', '411512132504', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('625', '1', '591', '�ʺ��ж�', '411512132505', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('626', '1', '591', 'ɡ���ж�', '411512132506', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('627', '1', '591', '�����ж�', '411512132507', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('628', '1', '591', '��ڶ�', '411512132508', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('629', '1', '591', '�Ƽ��ж�', '411512132509', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('630', '1', '591', '�¹��ж�', '411512132510', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('631', '1', '591', '���ݹ�', '411512132511', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('632', '1', '591', 'Υ������', '411512132512', null, null, '411515', '0', '0');
INSERT INTO `area_dep` VALUES ('633', '1', '592', '�칫��', '411512132601', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('635', '1', '592', '�����ж�', '411512132603', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('634', '1', '592', '�¹ʴ����ж�', '411512132602', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('636', '1', '592', 'ɳ���ж�', '411512132604', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('637', '1', '592', '�Ƽ��ж�', '411512132605', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('638', '1', '592', '������', '411512132606', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('639', '1', '592', '������', '411512132607', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('640', '1', '592', '�ǹ��ж�', '411512132608', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('641', '1', '592', '������ж�', '411512132609', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('642', '1', '592', '����ж�', '411512132610', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('643', '1', '592', '�ܵ��ж�', '411512132611', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('644', '1', '592', 'ɬ���ж�', '411512132612', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('645', '1', '592', '�����ж�', '411512132613', null, null, '411516', '0', '0');
INSERT INTO `area_dep` VALUES ('647', '1', '228', '���ж�', '4115011302', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('648', '1', '228', '���ж�', '4115011303', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('646', '1', '228', 'һ�ж�', '4115011301', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('649', '1', '229', 'һ�ж�', '4115011401', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('650', '1', '229', '���ж�', '4115011402', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('651', '1', '229', '���ж�', '4115011403', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('652', '1', '229', '���ж�', '4115011404', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('653', '1', '229', '���ж�', '4115011405', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('654', '1', '229', '���ж�', '4115011406', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('655', '1', '229', '���ж�', '4115011407', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('656', '1', '229', '���ж�', '4115011408', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('657', '1', '229', '���ж�', '4115011409', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('658', '1', '230', 'һ�ж�', '4115011501', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('659', '1', '230', '���ж�', '4115011502', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('660', '1', '230', '���ж�', '4115011503', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('661', '1', '230', '���ж�', '4115011504', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('662', '1', '566', '�ܽ�һ�ж�', '411512120101', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('663', '1', '566', '�̶ܽ��ж�', '411512120102', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('664', '1', '566', 'Ѳ�Ӽ���ж�', '411512120103', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('665', '1', '566', '��Ѻ��Ѷ�ж�', '411512120104', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('666', '1', '566', '���ڱ����ж�', '411512120105', null, null, '', '1', '1');
INSERT INTO `area_dep` VALUES ('667', '1', '566', 'Ů�ӹ����ж�', '411512120106', null, null, '', '1', '1');

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
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��1�����˵�λ���',
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
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '�༭��',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201706
-- ----------------------------
INSERT INTO `case_201706` VALUES ('20170623093621_086338_4115', '20170623093621_����', '2017-06-23 09:36:21', '2017-06-23 09:36:54', '2017-08-09 15:28:14', '����', '086338', '4115', '�����й�����', '', '', '', '0', '', '', '0', null, null, '0', '', '', '', '', '', '0', '2017-08-09 15:28:14', null);

-- ----------------------------
-- Table structure for `case_201707`
-- ----------------------------
DROP TABLE IF EXISTS `case_201707`;
CREATE TABLE `case_201707` (
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ,��ʽ��<yyyymmddHHmiss>_<����>_<areacode>;���ܱ༭,�����ṩ��Ƶʱ���Զ�����;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '��������;',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��1�����˵�λ���',
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
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
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
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��1�����˵�λ���',
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
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `edit_name` varchar(128) DEFAULT NULL COMMENT '�༭��',
  PRIMARY KEY (`case_key`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_areacode` (`areacode`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_201708
-- ----------------------------
INSERT INTO `case_201708` VALUES ('20170807093621_JX0227_3602010201', '20170623093621_����', '2017-08-07 09:36:21', '2017-08-07 09:36:54', '2017-08-07 14:03:21', '����', '086338', '4115', '�����й�����', '', '', '', '0', '', '', '0', '', '', '0', '', '', '', '', '', '0', '2017-08-07 17:37:35', '');

-- ----------------------------
-- Table structure for `case_201709`
-- ----------------------------
DROP TABLE IF EXISTS `case_201709`;
CREATE TABLE `case_201709` (
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ,��ʽ��<yyyymmddHHmiss>_<����>_<areacode>;���ܱ༭,�����ṩ��Ƶʱ���Զ�����;',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '��������;',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '������ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��1�����˾�Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��1�����˾�Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��1�����˵�λ���',
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
  `apply_areacode` varchar(32) DEFAULT '' COMMENT '���������˲���ID',
  `apply_areaname` varchar(128) DEFAULT '' COMMENT '���������˲�����',
  `hand_status` int(1) NOT NULL DEFAULT '0' COMMENT '����״̬��0:��ʼ̬;1:�����;2:�ƽ����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
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
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `remark` varchar(256) DEFAULT '',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201706
-- ----------------------------
INSERT INTO `case_video_201706` VALUES ('TA00716_086338_20170623093621.MOV', '20170623093621_086338_4115', '2017-06-23 09:36:21', '2017-06-23 09:36:54', '33', '1', '����', '086338', '4115', '�����й�����', 'TA00716', '192.168.0.26', null, 'http://192.168.0.26:80/pe_fileG/pedata/TA00716/20170623/TA00716_086338_20170623093621.MOV', null, '2017-08-09 15:28:14', '0', '192.168.0.26', '0', '9', '1', '2017-08-09 15:28:14', '');

-- ----------------------------
-- Table structure for `case_video_201707`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201707`;
CREATE TABLE `case_video_201707` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '�ļ���� <�������>_<����>_<������ʱ����>.<����>',
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
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
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `remark` varchar(256) DEFAULT '',
  PRIMARY KEY (`wjbh`),
  KEY `idx_update_time` (`update_time`) USING BTREE,
  KEY `idx_case_key` (`case_key`) USING BTREE,
  KEY `idx_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_video_201708
-- ----------------------------
INSERT INTO `case_video_201708` VALUES ('TA00716_JX0227_20170807093621.MOV', '20170807093621_JX0227_3602010201', '2017-08-07 09:36:21', '2017-08-07 09:36:54', '33', '1', '����', '086338', '4115', '�����й�����', 'TA00716', '192.168.0.26', '', 'http://192.168.0.26:80/pe_fileG/pedata/TA00716/20170807/TA00716_JX0227_20170807093621.MOV', '', '2017-08-07 14:16:13', '0', '192.168.0.26', '0', '9', '1', '2017-08-07 14:16:13', '');

-- ----------------------------
-- Table structure for `case_video_201709`
-- ----------------------------
DROP TABLE IF EXISTS `case_video_201709`;
CREATE TABLE `case_video_201709` (
  `wjbh` varchar(100) NOT NULL DEFAULT '0' COMMENT '�ļ���� <�������>_<����>_<������ʱ����>.<����>',
  `case_key` varchar(64) NOT NULL DEFAULT '' COMMENT '������ʶ��ͬcase_201708.case_key',
  `start_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '��Ƶ����ʱ��',
  `wjcd` int(11) DEFAULT '0' COMMENT '�ļ�����',
  `wjlx` int(2) DEFAULT NULL COMMENT '0:δ֪,1:��Ƶ,2:��Ƶ,3:ͼƬ',
  `jyxm` varchar(60) DEFAULT NULL COMMENT '��Ա����',
  `jybh` varchar(6) NOT NULL DEFAULT '000000' COMMENT '��Ա���',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��λ,ͬarea_dep.areacode',
  `areaname` varchar(128) DEFAULT '' COMMENT '��λ����',
  `cpxh` varchar(7) NOT NULL DEFAULT '0000000' COMMENT '��Ʒ���(ִ���Ǳ��),�ļ����˹��ṩʱͳһ��99999',
  `ccfwq_ip` varchar(64) DEFAULT NULL COMMENT '�洢������',
  `ccwz` varchar(200) DEFAULT NULL COMMENT '�洢λ��',
  `bfwz` varchar(200) NOT NULL DEFAULT 'http://' COMMENT '����λ��',
  `wlwz` varchar(200) DEFAULT NULL COMMENT '����λ��,����·��',
  `scsj` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '�ϴ�ʱ��',
  `bzlx` int(2) DEFAULT '0' COMMENT '��ע����,0:δ��ע,1:��ע(���Ͱ���)',
  `gzz_ip` varchar(64) DEFAULT NULL COMMENT '����վIP',
  `upload` int(2) NOT NULL DEFAULT '0' COMMENT '0:���ϴ���1���ϴ������ķ�����(��Ҫ��Ƶ)',
  `video_type` int(2) DEFAULT '9' COMMENT '��Ƶ����(1:�Ƽݡ�2:�¹ʡ�3:���ݡ�4:Υ����9:����)',
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '��Դ;1:ִ����¼��,2:������,3:�ǹ�����',
  `update_time` datetime NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT '����ʱ��',
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
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '���Ŵ���',
  `name` varchar(32) NOT NULL DEFAULT '��' COMMENT '��Ա��',
  `code` varchar(32) NOT NULL DEFAULT '��' COMMENT '��½�˺�,һ���Ǿ�Ա���',
  `sex` char(4) DEFAULT '��',
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `photo_path` varchar(128) DEFAULT NULL COMMENT '��Ա��Ƭ����λ��(URL)',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '��½����',
  `roleid` int(11) NOT NULL DEFAULT '1',
  `bindingip` int(11) NOT NULL DEFAULT '0' COMMENT '0:δ��,1:��',
  `clientip` varchar(16) DEFAULT NULL,
  `userarea` text COMMENT '����Ա�Ƿǿ�.�û���Ȩ�޵�����ID���ϣ����ŷָ�',
  `login` int(1) NOT NULL DEFAULT '1' COMMENT '1:��½;0:����',
  PRIMARY KEY (`empid`),
  UNIQUE KEY `idx_code` (`code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=652 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('650', '41', '��������Ա', 'admin', '��', null, null, '����', null, '123456', '1', '0', null, '41', '1');
INSERT INTO `employee` VALUES ('651', '4115', '����', '086338', '��', '13849752188', null, '����', null, '086338', '19', '0', null, '4115', '1');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '�˵���ID',
  `name` varchar(64) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '0',
  `iconcls` varchar(64) DEFAULT NULL,
  `enable` int(2) DEFAULT '1' COMMENT '0:����,1:����',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=512 DEFAULT CHARSET=latin1;

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
INSERT INTO `menu` VALUES ('404', '400', '����ͳ��', 'Media/show_sat?satType=assessmeny_sat', '3', 'icon-film_link', '1');
INSERT INTO `menu` VALUES ('500', '0', '���ݹ���', '', '4', 'icon-script', '1');
INSERT INTO `menu` VALUES ('502', '500', '���ݲɼ�', 'Case/show_case', '1', '', '1');
INSERT INTO `menu` VALUES ('501', '500', '���ݱ༭', 'Case/show_case', '0', '', '1');
INSERT INTO `menu` VALUES ('104', '100', '��Ա¼��', 'Employee/index', '4', 'icon-vcard', '1');
INSERT INTO `menu` VALUES ('105', '100', '��Ա�鿴', 'Employee/showEmpPhoto', '5', 'icon-picture_go', '1');
INSERT INTO `menu` VALUES ('203', '200', '����վ����', 'WorkStation/ws_base_show', '3', null, '1');
INSERT INTO `menu` VALUES ('503', '500', '���ݲ�ѯ', 'Case/show_case', '2', '', '1');
INSERT INTO `menu` VALUES ('504', '0', '�����ƽ�', '', '2', '', '1');
INSERT INTO `menu` VALUES ('506', '504', '�����б�', 'Case/show_apply_case', '0', '', '1');
INSERT INTO `menu` VALUES ('507', '504', '�������', 'Case/allow_case', '1', '', '1');
INSERT INTO `menu` VALUES ('508', '504', '�ƽ���Ƶ', 'Case/show_applyed', '2', '', '1');
INSERT INTO `menu` VALUES ('509', '200', '����������', 'Server/server_show', '2', '', '1');
INSERT INTO `menu` VALUES ('510', '100', '�������', 'Announce/index', '5', '', '1');
INSERT INTO `menu` VALUES ('511', '400', '��������', 'Case/sat_case', '3', '', '1');

-- ----------------------------
-- Table structure for `pe_base`
-- ----------------------------
DROP TABLE IF EXISTS `pe_base`;
CREATE TABLE `pe_base` (
  `cpxh` varchar(7) NOT NULL COMMENT '��Ʒ(ִ����)��� ',
  `standard` varchar(30) DEFAULT NULL COMMENT '�豸���',
  `product` varchar(100) DEFAULT NULL COMMENT '��������',
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��λ,ͬarea_dep.areacode',
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
INSERT INTO `pe_base` VALUES ('TA00716', null, null, '4115', '�����й�����', '086338', '����', '0', '0', null);
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
INSERT INTO `role` VALUES ('1', 'ϵͳ����Ա', 'ӵ�����в���Ȩ��', '100,101,102,103,104,105,200,201,202,203,300,301,302,303,304,400,401,403,404,405,406,407,408,500,501,502,503,504,1,504,506,507,508,509,510,511', '0');
INSERT INTO `role` VALUES ('19', '�оֹ���Ա', 'ӵ�����в���Ȩ��', '500,502,501,400,405,404,401,300,303,302,301,200,203,201,105,104,103,1,509,511', '1');
INSERT INTO `role` VALUES ('20', '��Ա', 'ӵ�����ݹ�����־��ѯ,���Ĳ�ѯ', '500,502,501,201,303,302,1', '4');
INSERT INTO `role` VALUES ('22', '�ؾֹ���Ա', 'û�н�ɫ����������Ȩ��', '500,502,501,400,405,404,401,200,203,201,300,303,302,301,105,104,103,1,509,511', '2');
INSERT INTO `role` VALUES ('23', '�������Ա', 'û�н�ɫ����������Ȩ��', '500,502,501,400,405,404,401,200,203,201,300,303,302,301,105,104,103,1,509,511', '3');

-- ----------------------------
-- Table structure for `server_machine`
-- ----------------------------
DROP TABLE IF EXISTS `server_machine`;
CREATE TABLE `server_machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '��λ,ͬarea_dep.areacode',
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
-- Table structure for `sync_case`
-- ----------------------------
DROP TABLE IF EXISTS `sync_case`;
CREATE TABLE `sync_case` (
  `tab_name` varchar(32) NOT NULL COMMENT '��ر�',
  `case_key` varchar(64) NOT NULL COMMENT '������ʶ',
  `status` int(1) NOT NULL COMMENT '1:����;2:ɾ��;3:�޸�',
  `update_time` bigint(15) NOT NULL COMMENT '��ǰ����ʱ��'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_case
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_case_video`
-- ----------------------------
DROP TABLE IF EXISTS `sync_case_video`;
CREATE TABLE `sync_case_video` (
  `tab_name` varchar(32) NOT NULL COMMENT '��ر�',
  `wjbh` varchar(100) NOT NULL COMMENT '�ļ����',
  `status` int(1) NOT NULL COMMENT '1:����;2:ɾ��;3:�޸�',
  `update_time` bigint(15) NOT NULL COMMENT '��ǰ����ʱ��'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_case_video
-- ----------------------------

-- ----------------------------
-- Table structure for `sync_employee`
-- ----------------------------
DROP TABLE IF EXISTS `sync_employee`;
CREATE TABLE `sync_employee` (
  `areacode` varchar(32) NOT NULL DEFAULT '' COMMENT '���Ŵ���',
  `name` varchar(32) NOT NULL DEFAULT '��' COMMENT '��Ա��',
  `old_code` varchar(32) DEFAULT NULL,
  `code` varchar(32) NOT NULL COMMENT '��Ա���',
  `status` int(1) NOT NULL COMMENT '1:����;2:ɾ��;3:�޸�',
  `update_time` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_employee
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
  `areacode` varchar(32) DEFAULT '' COMMENT '��λ,ͬarea_dep.areacode',
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
