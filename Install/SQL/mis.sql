/*
Navicat MySQL Data Transfer

Source Server         : mysql_高版本
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : mis

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-07-18 11:24:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('2', '人事');
INSERT INTO `auth_group` VALUES ('3', '库存');
INSERT INTO `auth_group` VALUES ('5', '经理');
INSERT INTO `auth_group` VALUES ('1', '职员');
INSERT INTO `auth_group` VALUES ('6', '财务');
INSERT INTO `auth_group` VALUES ('4', '采购');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('770', '1', '11');
INSERT INTO `auth_group_permissions` VALUES ('776', '1', '37');
INSERT INTO `auth_group_permissions` VALUES ('777', '1', '38');
INSERT INTO `auth_group_permissions` VALUES ('778', '1', '39');
INSERT INTO `auth_group_permissions` VALUES ('779', '1', '41');
INSERT INTO `auth_group_permissions` VALUES ('780', '1', '43');
INSERT INTO `auth_group_permissions` VALUES ('781', '1', '44');
INSERT INTO `auth_group_permissions` VALUES ('782', '1', '45');
INSERT INTO `auth_group_permissions` VALUES ('784', '1', '47');
INSERT INTO `auth_group_permissions` VALUES ('786', '1', '50');
INSERT INTO `auth_group_permissions` VALUES ('787', '1', '53');
INSERT INTO `auth_group_permissions` VALUES ('788', '1', '55');
INSERT INTO `auth_group_permissions` VALUES ('789', '1', '56');
INSERT INTO `auth_group_permissions` VALUES ('790', '1', '57');
INSERT INTO `auth_group_permissions` VALUES ('791', '1', '61');
INSERT INTO `auth_group_permissions` VALUES ('792', '1', '62');
INSERT INTO `auth_group_permissions` VALUES ('793', '1', '76');
INSERT INTO `auth_group_permissions` VALUES ('794', '1', '77');
INSERT INTO `auth_group_permissions` VALUES ('795', '1', '78');
INSERT INTO `auth_group_permissions` VALUES ('796', '1', '80');
INSERT INTO `auth_group_permissions` VALUES ('797', '1', '85');
INSERT INTO `auth_group_permissions` VALUES ('798', '1', '86');
INSERT INTO `auth_group_permissions` VALUES ('799', '1', '89');
INSERT INTO `auth_group_permissions` VALUES ('800', '1', '91');
INSERT INTO `auth_group_permissions` VALUES ('801', '1', '92');
INSERT INTO `auth_group_permissions` VALUES ('802', '1', '93');
INSERT INTO `auth_group_permissions` VALUES ('803', '1', '94');
INSERT INTO `auth_group_permissions` VALUES ('804', '1', '95');
INSERT INTO `auth_group_permissions` VALUES ('805', '1', '96');
INSERT INTO `auth_group_permissions` VALUES ('806', '1', '97');
INSERT INTO `auth_group_permissions` VALUES ('807', '1', '98');
INSERT INTO `auth_group_permissions` VALUES ('808', '1', '99');
INSERT INTO `auth_group_permissions` VALUES ('811', '1', '113');
INSERT INTO `auth_group_permissions` VALUES ('812', '1', '114');
INSERT INTO `auth_group_permissions` VALUES ('813', '1', '117');
INSERT INTO `auth_group_permissions` VALUES ('814', '1', '119');
INSERT INTO `auth_group_permissions` VALUES ('815', '1', '120');
INSERT INTO `auth_group_permissions` VALUES ('816', '1', '121');
INSERT INTO `auth_group_permissions` VALUES ('817', '1', '122');
INSERT INTO `auth_group_permissions` VALUES ('818', '1', '123');
INSERT INTO `auth_group_permissions` VALUES ('819', '1', '124');
INSERT INTO `auth_group_permissions` VALUES ('820', '1', '125');
INSERT INTO `auth_group_permissions` VALUES ('821', '1', '126');
INSERT INTO `auth_group_permissions` VALUES ('822', '1', '127');
INSERT INTO `auth_group_permissions` VALUES ('761', '1', '128');
INSERT INTO `auth_group_permissions` VALUES ('762', '1', '129');
INSERT INTO `auth_group_permissions` VALUES ('763', '1', '130');
INSERT INTO `auth_group_permissions` VALUES ('764', '1', '131');
INSERT INTO `auth_group_permissions` VALUES ('765', '1', '132');
INSERT INTO `auth_group_permissions` VALUES ('766', '1', '133');
INSERT INTO `auth_group_permissions` VALUES ('767', '1', '134');
INSERT INTO `auth_group_permissions` VALUES ('768', '1', '135');
INSERT INTO `auth_group_permissions` VALUES ('769', '1', '136');
INSERT INTO `auth_group_permissions` VALUES ('771', '1', '154');
INSERT INTO `auth_group_permissions` VALUES ('773', '1', '162');
INSERT INTO `auth_group_permissions` VALUES ('774', '1', '163');
INSERT INTO `auth_group_permissions` VALUES ('775', '1', '164');
INSERT INTO `auth_group_permissions` VALUES ('783', '1', '174');
INSERT INTO `auth_group_permissions` VALUES ('772', '1', '175');
INSERT INTO `auth_group_permissions` VALUES ('785', '1', '176');
INSERT INTO `auth_group_permissions` VALUES ('809', '1', '234');
INSERT INTO `auth_group_permissions` VALUES ('810', '1', '235');
INSERT INTO `auth_group_permissions` VALUES ('45', '2', '115');
INSERT INTO `auth_group_permissions` VALUES ('355', '3', '58');
INSERT INTO `auth_group_permissions` VALUES ('356', '3', '59');
INSERT INTO `auth_group_permissions` VALUES ('357', '3', '60');
INSERT INTO `auth_group_permissions` VALUES ('358', '3', '61');
INSERT INTO `auth_group_permissions` VALUES ('359', '3', '62');
INSERT INTO `auth_group_permissions` VALUES ('360', '3', '63');
INSERT INTO `auth_group_permissions` VALUES ('361', '3', '79');
INSERT INTO `auth_group_permissions` VALUES ('362', '3', '80');
INSERT INTO `auth_group_permissions` VALUES ('363', '3', '81');
INSERT INTO `auth_group_permissions` VALUES ('364', '3', '82');
INSERT INTO `auth_group_permissions` VALUES ('365', '3', '83');
INSERT INTO `auth_group_permissions` VALUES ('366', '3', '84');
INSERT INTO `auth_group_permissions` VALUES ('335', '3', '156');
INSERT INTO `auth_group_permissions` VALUES ('336', '3', '157');
INSERT INTO `auth_group_permissions` VALUES ('337', '3', '158');
INSERT INTO `auth_group_permissions` VALUES ('338', '3', '159');
INSERT INTO `auth_group_permissions` VALUES ('339', '3', '160');
INSERT INTO `auth_group_permissions` VALUES ('340', '3', '161');
INSERT INTO `auth_group_permissions` VALUES ('341', '3', '162');
INSERT INTO `auth_group_permissions` VALUES ('342', '3', '163');
INSERT INTO `auth_group_permissions` VALUES ('343', '3', '164');
INSERT INTO `auth_group_permissions` VALUES ('344', '3', '168');
INSERT INTO `auth_group_permissions` VALUES ('345', '3', '169');
INSERT INTO `auth_group_permissions` VALUES ('346', '3', '170');
INSERT INTO `auth_group_permissions` VALUES ('347', '3', '171');
INSERT INTO `auth_group_permissions` VALUES ('348', '3', '172');
INSERT INTO `auth_group_permissions` VALUES ('349', '3', '173');
INSERT INTO `auth_group_permissions` VALUES ('350', '3', '174');
INSERT INTO `auth_group_permissions` VALUES ('351', '3', '175');
INSERT INTO `auth_group_permissions` VALUES ('352', '3', '176');
INSERT INTO `auth_group_permissions` VALUES ('353', '3', '178');
INSERT INTO `auth_group_permissions` VALUES ('354', '3', '181');
INSERT INTO `auth_group_permissions` VALUES ('525', '4', '40');
INSERT INTO `auth_group_permissions` VALUES ('526', '4', '41');
INSERT INTO `auth_group_permissions` VALUES ('527', '4', '177');
INSERT INTO `auth_group_permissions` VALUES ('528', '4', '178');
INSERT INTO `auth_group_permissions` VALUES ('529', '4', '179');
INSERT INTO `auth_group_permissions` VALUES ('530', '4', '180');
INSERT INTO `auth_group_permissions` VALUES ('531', '4', '181');
INSERT INTO `auth_group_permissions` VALUES ('532', '4', '182');
INSERT INTO `auth_group_permissions` VALUES ('533', '4', '186');

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add Site', '7', 'add_site');
INSERT INTO `auth_permission` VALUES ('20', 'Can change Site', '7', 'change_site');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete Site', '7', 'delete_site');
INSERT INTO `auth_permission` VALUES ('22', 'Can add module', '8', 'add_module');
INSERT INTO `auth_permission` VALUES ('23', 'Can change module', '8', 'change_module');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete module', '8', 'delete_module');
INSERT INTO `auth_permission` VALUES ('25', 'Can add menu', '9', 'add_menu');
INSERT INTO `auth_permission` VALUES ('26', 'Can change menu', '9', 'change_menu');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete menu', '9', 'delete_menu');
INSERT INTO `auth_permission` VALUES ('28', 'Can add role', '10', 'add_role');
INSERT INTO `auth_permission` VALUES ('29', 'Can change role', '10', 'change_role');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete role', '10', 'delete_role');
INSERT INTO `auth_permission` VALUES ('31', 'Can add value list', '11', 'add_valuelist');
INSERT INTO `auth_permission` VALUES ('32', 'Can change value list', '11', 'change_valuelist');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete value list', '11', 'delete_valuelist');
INSERT INTO `auth_permission` VALUES ('34', 'Can add list item', '12', 'add_valuelistitem');
INSERT INTO `auth_permission` VALUES ('35', 'Can change list item', '12', 'change_valuelistitem');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete list item', '12', 'delete_valuelistitem');
INSERT INTO `auth_permission` VALUES ('37', 'Can add address', '13', 'add_address');
INSERT INTO `auth_permission` VALUES ('38', 'Can change address', '13', 'change_address');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete address', '13', 'delete_address');
INSERT INTO `auth_permission` VALUES ('40', 'Can add partner', '14', 'add_partner');
INSERT INTO `auth_permission` VALUES ('41', 'Can change partner', '14', 'change_partner');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete partner', '14', 'delete_partner');
INSERT INTO `auth_permission` VALUES ('43', 'Can add bank account', '15', 'add_bankaccount');
INSERT INTO `auth_permission` VALUES ('44', 'Can change bank account', '15', 'change_bankaccount');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete bank account', '15', 'delete_bankaccount');
INSERT INTO `auth_permission` VALUES ('46', 'Can add organization', '16', 'add_organization');
INSERT INTO `auth_permission` VALUES ('47', 'Can change organization', '16', 'change_organization');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete organization', '16', 'delete_organization');
INSERT INTO `auth_permission` VALUES ('49', 'Can add org unit', '17', 'add_orgunit');
INSERT INTO `auth_permission` VALUES ('50', 'Can change org unit', '17', 'change_orgunit');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete org unit', '17', 'delete_orgunit');
INSERT INTO `auth_permission` VALUES ('52', 'Can add position', '18', 'add_position');
INSERT INTO `auth_permission` VALUES ('53', 'Can change position', '18', 'change_position');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete position', '18', 'delete_position');
INSERT INTO `auth_permission` VALUES ('55', 'Can add project', '19', 'add_project');
INSERT INTO `auth_permission` VALUES ('56', 'Can change project', '19', 'change_project');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete project', '19', 'delete_project');
INSERT INTO `auth_permission` VALUES ('58', 'Can add warehouse', '20', 'add_warehouse');
INSERT INTO `auth_permission` VALUES ('59', 'Can change warehouse', '20', 'change_warehouse');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete warehouse', '20', 'delete_warehouse');
INSERT INTO `auth_permission` VALUES ('61', 'Can add measure', '21', 'add_measure');
INSERT INTO `auth_permission` VALUES ('62', 'Can change measure', '21', 'change_measure');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete measure', '21', 'delete_measure');
INSERT INTO `auth_permission` VALUES ('64', 'Can add trade', '22', 'add_trade');
INSERT INTO `auth_permission` VALUES ('65', 'Can change trade', '22', 'change_trade');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete trade', '22', 'delete_trade');
INSERT INTO `auth_permission` VALUES ('67', 'Can add brand', '23', 'add_brand');
INSERT INTO `auth_permission` VALUES ('68', 'Can change brand', '23', 'change_brand');
INSERT INTO `auth_permission` VALUES ('69', 'Can delete brand', '23', 'delete_brand');
INSERT INTO `auth_permission` VALUES ('70', 'Can add category', '24', 'add_category');
INSERT INTO `auth_permission` VALUES ('71', 'Can change category', '24', 'change_category');
INSERT INTO `auth_permission` VALUES ('72', 'Can delete category', '24', 'delete_category');
INSERT INTO `auth_permission` VALUES ('73', 'Can add technical parameter', '25', 'add_technicalparametername');
INSERT INTO `auth_permission` VALUES ('74', 'Can change technical parameter', '25', 'change_technicalparametername');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete technical parameter', '25', 'delete_technicalparametername');
INSERT INTO `auth_permission` VALUES ('76', 'Can add technical value', '26', 'add_technicalparametervalue');
INSERT INTO `auth_permission` VALUES ('77', 'Can change technical value', '26', 'change_technicalparametervalue');
INSERT INTO `auth_permission` VALUES ('78', 'Can delete technical value', '26', 'delete_technicalparametervalue');
INSERT INTO `auth_permission` VALUES ('79', 'Can add material', '27', 'add_material');
INSERT INTO `auth_permission` VALUES ('80', 'Can change material', '27', 'change_material');
INSERT INTO `auth_permission` VALUES ('81', 'Can delete material', '27', 'delete_material');
INSERT INTO `auth_permission` VALUES ('82', 'Can add material parameter', '28', 'add_materialparam');
INSERT INTO `auth_permission` VALUES ('83', 'Can change material parameter', '28', 'change_materialparam');
INSERT INTO `auth_permission` VALUES ('84', 'Can delete material parameter', '28', 'delete_materialparam');
INSERT INTO `auth_permission` VALUES ('85', 'Can add expenses account', '29', 'add_expenseaccount');
INSERT INTO `auth_permission` VALUES ('86', 'Can change expenses account', '29', 'change_expenseaccount');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete expenses account', '29', 'delete_expenseaccount');
INSERT INTO `auth_permission` VALUES ('88', 'Can add employee', '30', 'add_employee');
INSERT INTO `auth_permission` VALUES ('89', 'Can change employee', '30', 'change_employee');
INSERT INTO `auth_permission` VALUES ('90', 'Can delete employee', '30', 'delete_employee');
INSERT INTO `auth_permission` VALUES ('91', 'Can add family member', '31', 'add_family');
INSERT INTO `auth_permission` VALUES ('92', 'Can change family member', '31', 'change_family');
INSERT INTO `auth_permission` VALUES ('93', 'Can delete family member', '31', 'delete_family');
INSERT INTO `auth_permission` VALUES ('94', 'Can add education experience', '32', 'add_education');
INSERT INTO `auth_permission` VALUES ('95', 'Can change education experience', '32', 'change_education');
INSERT INTO `auth_permission` VALUES ('96', 'Can delete education experience', '32', 'delete_education');
INSERT INTO `auth_permission` VALUES ('97', 'Can add work experience', '33', 'add_workexperience');
INSERT INTO `auth_permission` VALUES ('98', 'Can change work experience', '33', 'change_workexperience');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete work experience', '33', 'delete_workexperience');
INSERT INTO `auth_permission` VALUES ('100', 'Can add workflow model', '34', 'add_modal');
INSERT INTO `auth_permission` VALUES ('101', 'Can change workflow model', '34', 'change_modal');
INSERT INTO `auth_permission` VALUES ('102', 'Can delete workflow model', '34', 'delete_modal');
INSERT INTO `auth_permission` VALUES ('103', 'Can add workflow node', '35', 'add_node');
INSERT INTO `auth_permission` VALUES ('104', 'Can change workflow node', '35', 'change_node');
INSERT INTO `auth_permission` VALUES ('105', 'Can delete workflow node', '35', 'delete_node');
INSERT INTO `auth_permission` VALUES ('106', 'Can add workflow instance', '36', 'add_instance');
INSERT INTO `auth_permission` VALUES ('107', 'Can change workflow instance', '36', 'change_instance');
INSERT INTO `auth_permission` VALUES ('108', 'Can delete workflow instance', '36', 'delete_instance');
INSERT INTO `auth_permission` VALUES ('109', 'Can add workflow history', '37', 'add_history');
INSERT INTO `auth_permission` VALUES ('110', 'Can change workflow history', '37', 'change_history');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete workflow history', '37', 'delete_history');
INSERT INTO `auth_permission` VALUES ('112', 'Can add workflow todo', '38', 'add_todolist');
INSERT INTO `auth_permission` VALUES ('113', 'Can change workflow todo', '38', 'change_todolist');
INSERT INTO `auth_permission` VALUES ('114', 'Can delete workflow todo', '38', 'delete_todolist');
INSERT INTO `auth_permission` VALUES ('115', 'view all employee', '30', 'view_all_employee');
INSERT INTO `auth_permission` VALUES ('116', 'Can add extra param', '39', 'add_extraparam');
INSERT INTO `auth_permission` VALUES ('117', 'Can change extra param', '39', 'change_extraparam');
INSERT INTO `auth_permission` VALUES ('118', 'Can delete extra param', '39', 'delete_extraparam');
INSERT INTO `auth_permission` VALUES ('119', 'Can add work order', '40', 'add_workorder');
INSERT INTO `auth_permission` VALUES ('120', 'Can change work order', '40', 'change_workorder');
INSERT INTO `auth_permission` VALUES ('121', 'Can delete work order', '40', 'delete_workorder');
INSERT INTO `auth_permission` VALUES ('122', 'Can add wo extra value', '41', 'add_woextravalue');
INSERT INTO `auth_permission` VALUES ('123', 'Can change wo extra value', '41', 'change_woextravalue');
INSERT INTO `auth_permission` VALUES ('124', 'Can delete wo extra value', '41', 'delete_woextravalue');
INSERT INTO `auth_permission` VALUES ('125', 'Can add wo item', '42', 'add_woitem');
INSERT INTO `auth_permission` VALUES ('126', 'Can change wo item', '42', 'change_woitem');
INSERT INTO `auth_permission` VALUES ('127', 'Can delete wo item', '42', 'delete_woitem');
INSERT INTO `auth_permission` VALUES ('128', 'Can add loan', '43', 'add_loan');
INSERT INTO `auth_permission` VALUES ('129', 'Can change loan', '43', 'change_loan');
INSERT INTO `auth_permission` VALUES ('130', 'Can delete loan', '43', 'delete_loan');
INSERT INTO `auth_permission` VALUES ('131', 'Can add reimbursement', '44', 'add_reimbursement');
INSERT INTO `auth_permission` VALUES ('132', 'Can change reimbursement', '44', 'change_reimbursement');
INSERT INTO `auth_permission` VALUES ('133', 'Can delete reimbursement', '44', 'delete_reimbursement');
INSERT INTO `auth_permission` VALUES ('134', 'Can add fee item ', '45', 'add_reimbursementitem');
INSERT INTO `auth_permission` VALUES ('135', 'Can change fee item ', '45', 'change_reimbursementitem');
INSERT INTO `auth_permission` VALUES ('136', 'Can delete fee item ', '45', 'delete_reimbursementitem');
INSERT INTO `auth_permission` VALUES ('137', 'Can add salary item', '46', 'add_salaryitem');
INSERT INTO `auth_permission` VALUES ('138', 'Can change salary item', '46', 'change_salaryitem');
INSERT INTO `auth_permission` VALUES ('139', 'Can delete salary item', '46', 'delete_salaryitem');
INSERT INTO `auth_permission` VALUES ('140', 'Can add employee entry', '47', 'add_entry');
INSERT INTO `auth_permission` VALUES ('141', 'Can change employee entry', '47', 'change_entry');
INSERT INTO `auth_permission` VALUES ('142', 'Can delete employee entry', '47', 'delete_entry');
INSERT INTO `auth_permission` VALUES ('143', 'Can add salary item', '48', 'add_employeesalaryitem');
INSERT INTO `auth_permission` VALUES ('144', 'Can change salary item', '48', 'change_employeesalaryitem');
INSERT INTO `auth_permission` VALUES ('145', 'Can delete salary item', '48', 'delete_employeesalaryitem');
INSERT INTO `auth_permission` VALUES ('146', 'Can add employee transfer', '49', 'add_transfer');
INSERT INTO `auth_permission` VALUES ('147', 'Can change employee transfer', '49', 'change_transfer');
INSERT INTO `auth_permission` VALUES ('148', 'Can delete employee transfer', '49', 'delete_transfer');
INSERT INTO `auth_permission` VALUES ('149', 'Can add employee departure', '50', 'add_departure');
INSERT INTO `auth_permission` VALUES ('150', 'Can change employee departure', '50', 'change_departure');
INSERT INTO `auth_permission` VALUES ('151', 'Can delete employee departure', '50', 'delete_departure');
INSERT INTO `auth_permission` VALUES ('152', 'modify salary item', '47', 'modify_salary_item');
INSERT INTO `auth_permission` VALUES ('153', 'Can add Inventory', '51', 'add_inventory');
INSERT INTO `auth_permission` VALUES ('154', 'Can change Inventory', '51', 'change_inventory');
INSERT INTO `auth_permission` VALUES ('155', 'Can delete Inventory', '51', 'delete_inventory');
INSERT INTO `auth_permission` VALUES ('156', 'Can add Initial Inventory', '52', 'add_initialinventory');
INSERT INTO `auth_permission` VALUES ('157', 'Can change Initial Inventory', '52', 'change_initialinventory');
INSERT INTO `auth_permission` VALUES ('158', 'Can delete Initial Inventory', '52', 'delete_initialinventory');
INSERT INTO `auth_permission` VALUES ('159', 'Can add StockIn', '53', 'add_stockin');
INSERT INTO `auth_permission` VALUES ('160', 'Can change StockIn', '53', 'change_stockin');
INSERT INTO `auth_permission` VALUES ('161', 'Can delete StockIn', '53', 'delete_stockin');
INSERT INTO `auth_permission` VALUES ('162', 'Can add StockOut', '54', 'add_stockout');
INSERT INTO `auth_permission` VALUES ('163', 'Can change StockOut', '54', 'change_stockout');
INSERT INTO `auth_permission` VALUES ('164', 'Can delete StockOut', '54', 'delete_stockout');
INSERT INTO `auth_permission` VALUES ('165', 'Can add in out detail', '55', 'add_inoutdetail');
INSERT INTO `auth_permission` VALUES ('166', 'Can change in out detail', '55', 'change_inoutdetail');
INSERT INTO `auth_permission` VALUES ('167', 'Can delete in out detail', '55', 'delete_inoutdetail');
INSERT INTO `auth_permission` VALUES ('168', 'Can add init item', '56', 'add_inititem');
INSERT INTO `auth_permission` VALUES ('169', 'Can change init item', '56', 'change_inititem');
INSERT INTO `auth_permission` VALUES ('170', 'Can delete init item', '56', 'delete_inititem');
INSERT INTO `auth_permission` VALUES ('171', 'Can add in item', '57', 'add_initem');
INSERT INTO `auth_permission` VALUES ('172', 'Can change in item', '57', 'change_initem');
INSERT INTO `auth_permission` VALUES ('173', 'Can delete in item', '57', 'delete_initem');
INSERT INTO `auth_permission` VALUES ('174', 'Can add out item', '58', 'add_outitem');
INSERT INTO `auth_permission` VALUES ('175', 'Can change out item', '58', 'change_outitem');
INSERT INTO `auth_permission` VALUES ('176', 'Can delete out item', '58', 'delete_outitem');
INSERT INTO `auth_permission` VALUES ('177', 'Can add purchase order', '59', 'add_purchaseorder');
INSERT INTO `auth_permission` VALUES ('178', 'Can change purchase order', '59', 'change_purchaseorder');
INSERT INTO `auth_permission` VALUES ('179', 'Can delete purchase order', '59', 'delete_purchaseorder');
INSERT INTO `auth_permission` VALUES ('180', 'Can add po item', '60', 'add_poitem');
INSERT INTO `auth_permission` VALUES ('181', 'Can change po item', '60', 'change_poitem');
INSERT INTO `auth_permission` VALUES ('182', 'Can delete po item', '60', 'delete_poitem');
INSERT INTO `auth_permission` VALUES ('183', 'view all customer', '15', 'view_all_customer');
INSERT INTO `auth_permission` VALUES ('184', 'view all supplier', '15', 'view_all_supplier');
INSERT INTO `auth_permission` VALUES ('185', 'view all customer', '14', 'view_all_customer');
INSERT INTO `auth_permission` VALUES ('186', 'view all supplier', '14', 'view_all_supplier');
INSERT INTO `auth_permission` VALUES ('187', 'Can add Invoice', '61', 'add_invoice');
INSERT INTO `auth_permission` VALUES ('188', 'Can change Invoice', '61', 'change_invoice');
INSERT INTO `auth_permission` VALUES ('189', 'Can delete Invoice', '61', 'delete_invoice');
INSERT INTO `auth_permission` VALUES ('190', 'Can add Payment', '62', 'add_payment');
INSERT INTO `auth_permission` VALUES ('191', 'Can change Payment', '62', 'change_payment');
INSERT INTO `auth_permission` VALUES ('192', 'Can delete Payment', '62', 'delete_payment');
INSERT INTO `auth_permission` VALUES ('193', 'Can add activity', '63', 'add_activity');
INSERT INTO `auth_permission` VALUES ('194', 'Can change activity', '63', 'change_activity');
INSERT INTO `auth_permission` VALUES ('195', 'Can delete activity', '63', 'delete_activity');
INSERT INTO `auth_permission` VALUES ('196', 'Can add feedback', '64', 'add_feedback');
INSERT INTO `auth_permission` VALUES ('197', 'Can change feedback', '64', 'change_feedback');
INSERT INTO `auth_permission` VALUES ('198', 'Can delete feedback', '64', 'delete_feedback');
INSERT INTO `auth_permission` VALUES ('199', 'Can add enroll', '65', 'add_enroll');
INSERT INTO `auth_permission` VALUES ('200', 'Can change enroll', '65', 'change_enroll');
INSERT INTO `auth_permission` VALUES ('201', 'Can delete enroll', '65', 'delete_enroll');
INSERT INTO `auth_permission` VALUES ('202', 'Can add sale order', '66', 'add_saleorder');
INSERT INTO `auth_permission` VALUES ('203', 'Can change sale order', '66', 'change_saleorder');
INSERT INTO `auth_permission` VALUES ('204', 'Can delete sale order', '66', 'delete_saleorder');
INSERT INTO `auth_permission` VALUES ('205', 'Can add order detail', '67', 'add_saleitem');
INSERT INTO `auth_permission` VALUES ('206', 'Can change order detail', '67', 'change_saleitem');
INSERT INTO `auth_permission` VALUES ('207', 'Can delete order detail', '67', 'delete_saleitem');
INSERT INTO `auth_permission` VALUES ('208', 'Can add Payment Collection', '68', 'add_paymentcollection');
INSERT INTO `auth_permission` VALUES ('209', 'Can change Payment Collection', '68', 'change_paymentcollection');
INSERT INTO `auth_permission` VALUES ('210', 'Can delete Payment Collection', '68', 'delete_paymentcollection');
INSERT INTO `auth_permission` VALUES ('211', 'Can add offer sheet', '69', 'add_offersheet');
INSERT INTO `auth_permission` VALUES ('212', 'Can change offer sheet', '69', 'change_offersheet');
INSERT INTO `auth_permission` VALUES ('213', 'Can delete offer sheet', '69', 'delete_offersheet');
INSERT INTO `auth_permission` VALUES ('214', 'Can add offer detail', '70', 'add_offeritem');
INSERT INTO `auth_permission` VALUES ('215', 'Can change offer detail', '70', 'change_offeritem');
INSERT INTO `auth_permission` VALUES ('216', 'Can delete offer detail', '70', 'delete_offeritem');
INSERT INTO `auth_permission` VALUES ('217', 'Can add ware return', '71', 'add_warereturn');
INSERT INTO `auth_permission` VALUES ('218', 'Can change ware return', '71', 'change_warereturn');
INSERT INTO `auth_permission` VALUES ('219', 'Can delete ware return', '71', 'delete_warereturn');
INSERT INTO `auth_permission` VALUES ('220', 'Can add return item', '72', 'add_returnitem');
INSERT INTO `auth_permission` VALUES ('221', 'Can change return item', '72', 'change_returnitem');
INSERT INTO `auth_permission` VALUES ('222', 'Can delete return item', '72', 'delete_returnitem');
INSERT INTO `auth_permission` VALUES ('223', 'Can add ware adjust', '73', 'add_wareadjust');
INSERT INTO `auth_permission` VALUES ('224', 'Can change ware adjust', '73', 'change_wareadjust');
INSERT INTO `auth_permission` VALUES ('225', 'Can delete ware adjust', '73', 'delete_wareadjust');
INSERT INTO `auth_permission` VALUES ('226', 'Can add adjust item', '74', 'add_adjustitem');
INSERT INTO `auth_permission` VALUES ('227', 'Can change adjust item', '74', 'change_adjustitem');
INSERT INTO `auth_permission` VALUES ('228', 'Can delete adjust item', '74', 'delete_adjustitem');
INSERT INTO `auth_permission` VALUES ('229', 'Can add data import', '75', 'add_dataimport');
INSERT INTO `auth_permission` VALUES ('230', 'Can change data import', '75', 'change_dataimport');
INSERT INTO `auth_permission` VALUES ('231', 'Can delete data import', '75', 'delete_dataimport');
INSERT INTO `auth_permission` VALUES ('232', 'financial pay', '43', 'financial_pay');
INSERT INTO `auth_permission` VALUES ('233', 'financial pay', '44', 'financial_pay');
INSERT INTO `auth_permission` VALUES ('234', 'Can add document', '76', 'add_document');
INSERT INTO `auth_permission` VALUES ('235', 'Can change document', '76', 'change_document');
INSERT INTO `auth_permission` VALUES ('236', 'Can delete document', '76', 'delete_document');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('11', 'pbkdf2_sha256$20000$65muyWSOyY0I$AJfRNDE6kHRx5nC+mpIokzi8SbBxOgkHvhUSV9aEsPs=', '2015-07-30 21:20:26', '1', 'chengcai', '才', '成', 'chengcai@abc.com', '1', '1', '2015-06-28 06:07:28');
INSERT INTO `auth_user` VALUES ('12', 'pbkdf2_sha256$100000$S3ZhXfOzjlNn$xTGBBMPFaDYqBkQLIplgO15EDARTdZ2qBAqXL4NMV18=', '2015-06-28 06:21:54', '0', 'admin', '管理员', '系统', 'admin@abc.com', '1', '1', '2015-06-28 06:21:16');
INSERT INTO `auth_user` VALUES ('13', 'pbkdf2_sha256$20000$PEAP6nZQMRCd$tZYq/lxTE8D4AfxuTvDp6SwhXzhjlti1Md21z0sM+CQ=', '2015-07-30 21:24:15', '0', 'zhangsan', '张三', '', '', '1', '1', '2015-07-02 05:16:00');
INSERT INTO `auth_user` VALUES ('14', 'pbkdf2_sha256$20000$JHBOGao9PQ8B$fkSipKaxiKPc1wSDF+goL3CTq9Vn8FChVwECsedyGAw=', '2015-07-30 21:23:39', '0', 'lisi', '李四', '', '', '1', '1', '2015-07-02 05:17:00');
INSERT INTO `auth_user` VALUES ('15', 'pbkdf2_sha256$100000$S3ZhXfOzjlNn$xTGBBMPFaDYqBkQLIplgO15EDARTdZ2qBAqXL4NMV18=', null, '0', 'wangwu', '王五', '', '', '1', '1', '2015-07-02 05:17:00');
INSERT INTO `auth_user` VALUES ('16', 'pbkdf2_sha256$20000$8x5VhF4ohGFd$YEBmAxWAb8xkIBcbzsLLAgCNCoMt7hMQlO4K2v80isM=', '2015-07-30 21:22:33', '0', 'dongyong', '董永', '', '', '1', '1', '2015-07-02 05:17:00');
INSERT INTO `auth_user` VALUES ('17', 'pbkdf2_sha256$20000$NR4ED19mIltP$nBnvpsnPPDdQniXIq/H2TRZny9KDo4w/LdM9yRRrJmk=', '2015-07-15 12:06:07', '0', '9001', '曹菊芳', '', 'caojf@163.com', '1', '1', '2015-07-15 12:04:17');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES ('15', '12', '1');
INSERT INTO `auth_user_groups` VALUES ('23', '13', '1');
INSERT INTO `auth_user_groups` VALUES ('21', '14', '1');
INSERT INTO `auth_user_groups` VALUES ('22', '15', '1');
INSERT INTO `auth_user_groups` VALUES ('20', '16', '1');
INSERT INTO `auth_user_groups` VALUES ('24', '17', '1');

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_address
-- ----------------------------
DROP TABLE IF EXISTS `basedata_address`;
CREATE TABLE `basedata_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `zipcode` varchar(8) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `contacts` varchar(40) DEFAULT NULL,
  `address_type` varchar(2) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_address_417f1b1c` (`content_type_id`),
  CONSTRAINT `basedata_addr_content_type_id_17983026_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_address
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_bankaccount
-- ----------------------------
DROP TABLE IF EXISTS `basedata_bankaccount`;
CREATE TABLE `basedata_bankaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `account` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `memo` varchar(20) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_bankaccount_partner_id_561018ee_fk_basedata_partner_id` (`partner_id`),
  KEY `basedata_bankaccount_9cf869aa` (`org_id`),
  CONSTRAINT `basedata_bankaccount_org_id_6017321e_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `basedata_bankaccount_partner_id_561018ee_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_bankaccount
-- ----------------------------
INSERT INTO `basedata_bankaccount` VALUES ('2', null, null, null, null, '2015-06-14 18:08:21', '2015-06-14 18:08:21', '2335635412398092', '杭州银行', '', null, '1');

-- ----------------------------
-- Table structure for basedata_brand
-- ----------------------------
DROP TABLE IF EXISTS `basedata_brand`;
CREATE TABLE `basedata_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `trade_id` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_brand_09249466` (`trade_id`),
  CONSTRAINT `basedata_brand_trade_id_bdcfb86_fk_basedata_trade_id` FOREIGN KEY (`trade_id`) REFERENCES `basedata_trade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_brand
-- ----------------------------
INSERT INTO `basedata_brand` VALUES ('1', 'LENOVO-联想', '', null, '99');
INSERT INTO `basedata_brand` VALUES ('2', 'DELL', '', '3', '99');

-- ----------------------------
-- Table structure for basedata_category
-- ----------------------------
DROP TABLE IF EXISTS `basedata_category`;
CREATE TABLE `basedata_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `trade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_category_parent_id_43280ad5_fk_basedata_category_id` (`parent_id`),
  KEY `basedata_category_09249466` (`trade_id`),
  CONSTRAINT `basedata_category_parent_id_43280ad5_fk_basedata_category_id` FOREIGN KEY (`parent_id`) REFERENCES `basedata_category` (`id`),
  CONSTRAINT `basedata_category_trade_id_7d069922_fk_basedata_trade_id` FOREIGN KEY (`trade_id`) REFERENCES `basedata_trade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_category
-- ----------------------------
INSERT INTO `basedata_category` VALUES ('1', 'F01', '内部服务', '', null, null);
INSERT INTO `basedata_category` VALUES ('2', 'F02', '办公设备', '', null, null);
INSERT INTO `basedata_category` VALUES ('3', 'F03', '笔记本电脑', '办公设备', '2', null);

-- ----------------------------
-- Table structure for basedata_dataimport
-- ----------------------------
DROP TABLE IF EXISTS `basedata_dataimport`;
CREATE TABLE `basedata_dataimport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `imp_date` date DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `description` longtext,
  `attach` varchar(100) DEFAULT NULL,
  `is_clear` tinyint(1) NOT NULL,
  `handler` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_data_content_type_id_2051ca2a_fk_django_content_type_id` (`content_type_id`),
  CONSTRAINT `basedata_data_content_type_id_2051ca2a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_dataimport
-- ----------------------------
INSERT INTO `basedata_dataimport` VALUES ('20', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 09:03:59', '2015-07-15 12:10:58', '2015-06-28', '【上线准备】-【部门|岗位|员工】第一步', '====操作步骤====\r\n1）请从【文档】中下载模板文档【FD0001】；\r\n2）在您的电脑上用excel编辑文档，按照要求录入部门信息、岗位信息、员工信息；\r\n3）在您整理好的文档后，点击【选择文件】按钮，上传您的文档；\r\n4）点击【保存】按钮先保存您的文档到服务器；\r\n5）点击【导入】按钮将您的数据导入至系统中；\r\n====提示信息====\r\n1）请勿修改【处理类】中的【OPS】内容，本类数据的【处理类】为指定值；\r\n2）在组织机构重组时，您可批量导入重组后的数据，原先的旧组织机构将被设置为过期，仍然保留在系统中；', '', '0', 'OPS', '0', '18');
INSERT INTO `basedata_dataimport` VALUES ('21', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 09:09:24', '2015-06-28 09:16:37', '2015-06-28', '【上线准备】-【用户信息】第二步', '====操作步骤====\r\n1）请从【文档】中下载模板文档【FD0005】；\r\n2）在您的电脑上用excel编辑文档，按照要求录入用户信息；\r\n3）在您整理好的文档后，点击【选择文件】按钮，上传您的文档；\r\n4）点击【保存】按钮先保存您的文档到服务器；\r\n5）点击【导入】按钮将您的数据导入至系统中；\r\n====提示信息====\r\n1）请勿修改【处理类】中的【admin.user】内容，本类数据的【处理类】为指定值；', '', '0', 'admin.user', '0', '4');
INSERT INTO `basedata_dataimport` VALUES ('22', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 09:13:34', '2015-06-28 09:20:20', '2015-06-28', '【上线准备】-【合作伙伴信息】第三步', '====操作步骤====\r\n1）请从【文档】中下载模板文档【FD0003】；\r\n2）在您的电脑上用excel编辑文档，按照要求录入合作伙伴（客户|供应商）信息；\r\n3）在您整理好的文档后，点击【选择文件】按钮，上传您的文档；\r\n4）点击【保存】按钮先保存您的文档到服务器；\r\n5）点击【导入】按钮将您的数据导入至系统中；\r\n====提示信息====\r\n1）模板中的”C“代表客户，”S“代表供应商；', '', '0', '', '0', '14');
INSERT INTO `basedata_dataimport` VALUES ('23', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 09:18:59', '2015-06-28 09:20:48', '2015-06-28', '【上线准备】-【项目信息】第四步（可选）', '====操作步骤====\r\n1）请从【文档】中下载模板文档【FD0004】；\r\n2）在您的电脑上用excel编辑文档，按照要求录入项目信息；\r\n3）在您整理好的文档后，点击【选择文件】按钮，上传您的文档；\r\n4）点击【保存】按钮先保存您的文档到服务器；\r\n5）点击【导入】按钮将您的数据导入至系统中；\r\n====提示信息====\r\n1）本项工作可选，非必需项；', '', '0', '', '0', '19');

-- ----------------------------
-- Table structure for basedata_document
-- ----------------------------
DROP TABLE IF EXISTS `basedata_document`;
CREATE TABLE `basedata_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `keywords` varchar(120) DEFAULT NULL,
  `description` longtext,
  `tp` varchar(2) NOT NULL,
  `business_domain` varchar(4) NOT NULL,
  `status` varchar(2) NOT NULL,
  `pub_date` datetime DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_document_user_id_105428c7_fk_auth_user_id` (`user_id`),
  CONSTRAINT `basedata_document_user_id_105428c7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_document
-- ----------------------------
INSERT INTO `basedata_document` VALUES ('1', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 07:27:18', '2015-06-28 08:54:09', 'FD0001', '【模板文档】-【基础数据】-1001部门岗位员工导入模板', '导入模板 部门 岗位 员工', '1）在系统上线的时候，用于大批量的导入部门、岗位、员工信息；\r\n2）操作路径为：【基础数据】>【导入】；\r\n3）在列表页面选择“增加 导入”按钮，打开表单页面；\r\n4）在表单页面，填写“处理类”字段的值为：OPS，选择本地文档上传；\r\n5）注意：先保存，后执行“导入”；\r\n6）提示：在组织机构重组时，可使用本模板进行大批量更改；', '00', 'OT', '1', '2015-07-06 20:47:19', null, 'doc/1001部门岗位员工导入模板.xls', '11');
INSERT INTO `basedata_document` VALUES ('2', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 08:23:01', '2015-06-28 08:32:43', 'FD0002', '【模板文档】-【基础数据】-1002期初库存导入模板', '导入模板 期初库存', '1）在系统上线的时候，用于批量的导入期初库存信息；\r\n2）操作路径为：【库存管理】>【期初库存】；\r\n3）在列表页面，选择“增加 期初库存”按钮，进入表单页面；\r\n4）输入相关信息，从本地上传修改后的CSV文档；\r\n5）先保存，后执行“入库”操作；\r\n6）注意：本文档为csv格式，请使用excel编辑；\r\n', '00', 'OT', '1', '2015-07-06 20:47:19', null, 'doc/1002期初库存导入模板.csv', '11');
INSERT INTO `basedata_document` VALUES ('3', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 08:30:17', '2015-06-28 08:32:33', 'FD0003', '【模板文档】-【基础数据】-1003合作伙伴导入模板', '导入模板 合作伙伴', '1）在系统上线的时候，用于大批量的导入合作伙伴（客户、供应商）信息；\r\n2）操作路径为：【基础数据】>【导入】；\r\n3）在列表页面选择“增加 导入”按钮，打开表单页面；\r\n4）在表单页面，选择本地文档上传；\r\n5）注意：先保存，后执行“导入”；', '00', 'OT', '1', '2015-07-06 20:47:19', null, 'doc/1003合作伙伴导入模板.xls', '11');
INSERT INTO `basedata_document` VALUES ('4', '2015-06-28', '9999-12-31', 'chengcai', null, '2015-06-28 08:32:25', '2015-06-28 08:32:25', 'FD0004', '【模板文档】-【基础数据】-1004项目信息导入模板', '导入模板 项目信息', '', '00', 'OT', '1', '2015-07-06 20:47:19', null, 'doc/1004项目导入模板.xls', '11');
INSERT INTO `basedata_document` VALUES ('5', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 08:35:37', '2015-06-28 08:35:59', 'FD0005', '【模板文档】-【基础数据】-1005用户信息导入模板', '导入模板 用户', '1）在系统上线的时候，用于大批量的导入用户信息；\r\n2）操作路径为：【基础数据】>【导入】；\r\n3）在列表页面选择“增加 导入”按钮，打开表单页面；\r\n4）在表单页面，填写“处理类”字段的值为：admin.user，选择本地文档上传；\r\n5）注意：先保存，后执行“导入”；', '00', 'OT', '1', '2015-07-06 20:47:19', null, '', '11');
INSERT INTO `basedata_document` VALUES ('6', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 08:39:50', '2015-06-28 08:45:56', 'FD0006', '【模板文档】-【明细数据】-2001报价单明细导入模板', '导入模板 报价单明细 ', '1）在创建报价单的时候，若物料明细太多，可选择从excel批量导入；\r\n2）在保存报价单的时候，系统依据上传的文档自动加载物料；\r\n3）导入的物料遵循“没有即创建”原则，若系统中没有此物料则直接创建，检查的依据为【物料编号】，请慎重填写【物料编号】，避免造成重复导入；\r\n4）本模板有开关功能，当【B1】单元格为【0演示数据】时，不导入，为【1正式报价】时导入', '00', 'BU', '1', '2015-07-06 20:47:19', null, 'doc/2001报价单明细样例.xls', '11');
INSERT INTO `basedata_document` VALUES ('7', '2015-06-28', '9999-12-31', 'chengcai', 'chengcai', '2015-06-28 08:47:41', '2015-06-28 08:48:09', 'FD0007', '【模板文档】-【明细数据】-2002需求单明细导入模板', '导入模板 需求单明细 工单服务 ', '1）在创建【工单服务】的时候，若需求物料明细太多，可选择从excel批量导入；\r\n2）在保存【工单服务】的时候，系统依据上传的文档自动加载物料；\r\n3）导入的物料遵循“没有即创建”原则，若系统中没有此物料则直接创建，检查的依据为【物料编号】，请慎重填写【物料编号】，避免造成重复导入；\r\n4）本模板有开关功能，当【B1】单元格为【0演示数据】时，不导入，为【1正式报价】时导入', '00', 'OT', '1', '2015-07-06 20:47:19', null, 'doc/2002需求计划明细样例.xls', '11');
INSERT INTO `basedata_document` VALUES ('8', '2015-06-28', '9999-12-31', 'chengcai', null, '2015-06-28 08:50:09', '2015-06-28 08:50:09', 'FD0008', '【模板文档】-【明细数据】-2003采购单明细导入模板', '导入模板 采购单明细 ', '1）在创建【采购单】的时候，若物料明细太多，可选择从excel批量导入；\r\n2）在保存【采购单】的时候，系统依据上传的文档自动加载物料；\r\n3）导入的物料遵循“没有即创建”原则，若系统中没有此物料则直接创建，检查的依据为【物料编号】，请慎重填写【物料编号】，避免造成重复导入；\r\n4）本模板有开关功能，当【B1】单元格为【0演示数据】时，不导入，为【1正式报价】时导入', '00', 'PO', '1', '2015-07-06 20:47:19', null, 'doc/2003采购单明细样例.xls', '11');
INSERT INTO `basedata_document` VALUES ('9', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:28:30', '2015-07-03 21:28:30', 'FD0009', '【使用手册】-功能概述', 'maximus 功能概述', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('10', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:28:58', '2015-07-03 21:28:58', 'FD0010', '【使用手册】-基本操作', 'maximus 基本操作', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('11', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:29:29', '2015-07-03 21:29:29', 'FD0011', '【使用手册】-个人自助', 'maximus 个人自助', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('12', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:29:58', '2015-07-03 21:29:58', 'FD0012', '【使用手册】-销售管理', 'maximus 销售管理', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('13', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:30:39', '2015-07-03 21:30:39', 'FD0013', '【使用手册】-采购管理', 'maximus 采购管理', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('14', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:31:19', '2015-07-03 21:31:19', 'FD0014', '【使用手册】-库存管理', 'maximus 库存管理', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('15', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:31:41', '2015-07-03 21:31:41', 'FD0015', '【使用手册】-组织机构', 'maximus 组织机构', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('16', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:32:03', '2015-07-03 21:32:03', 'FD0016', '【使用手册】-基础数据', 'maximus 基础数据', '', '00', 'OT', '0', null, null, '', '11');
INSERT INTO `basedata_document` VALUES ('17', '2015-07-03', '9999-12-31', 'chengcai', null, '2015-07-03 21:32:26', '2015-07-03 21:32:26', 'FD0017', '【使用手册】-工作流管理', 'maximus 工作流', '', '00', 'OT', '0', null, null, '', '11');

-- ----------------------------
-- Table structure for basedata_education
-- ----------------------------
DROP TABLE IF EXISTS `basedata_education`;
CREATE TABLE `basedata_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `edu_type` varchar(2) NOT NULL,
  `school` varchar(120) NOT NULL,
  `major` varchar(120) DEFAULT NULL,
  `degree` varchar(2) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_education_employee_id_54096a10_fk_basedata_employee_id` (`employee_id`),
  CONSTRAINT `basedata_education_employee_id_54096a10_fk_basedata_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `basedata_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_education
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_employee
-- ----------------------------
DROP TABLE IF EXISTS `basedata_employee`;
CREATE TABLE `basedata_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(2) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `country` varchar(2) DEFAULT NULL,
  `hometown` varchar(40) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `banknum` varchar(40) DEFAULT NULL,
  `bankname` varchar(80) DEFAULT NULL,
  `emergency` varchar(40) DEFAULT NULL,
  `rank` varchar(2) NOT NULL,
  `workday` date DEFAULT NULL,
  `startday` date DEFAULT NULL,
  `religion` varchar(2) DEFAULT NULL,
  `marital` varchar(2) DEFAULT NULL,
  `party` varchar(2) DEFAULT NULL,
  `nation` varchar(2) DEFAULT NULL,
  `ygxs` varchar(2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `category` varchar(2) DEFAULT NULL,
  `literacy` varchar(2) DEFAULT NULL,
  `major` varchar(2) DEFAULT NULL,
  `degree` varchar(2) DEFAULT NULL,
  `tag1` varchar(2) DEFAULT NULL,
  `tag2` varchar(2) DEFAULT NULL,
  `tag3` varchar(2) DEFAULT NULL,
  `tag4` varchar(2) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `position_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `office` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `health` varchar(2) DEFAULT NULL,
  `spjob` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_emplo_organization_id_3b46dfdc_fk_organ_organization_id` (`organization_id`),
  KEY `basedata_employee_position_id_3d7368b4_fk_organ_position_id` (`position_id`),
  KEY `basedata_employee_user_id_6883fc78_fk_auth_user_id` (`user_id`),
  CONSTRAINT `basedata_employee_position_id_3d7368b4_fk_organ_position_id` FOREIGN KEY (`position_id`) REFERENCES `organ_position` (`id`),
  CONSTRAINT `basedata_employee_user_id_6883fc78_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `basedata_emplo_organization_id_3b46dfdc_fk_organ_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organ_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_employee
-- ----------------------------
INSERT INTO `basedata_employee` VALUES ('1', null, null, null, 'chengcai', '2015-06-27 13:08:28', '2015-07-02 05:24:41', '1001', '李四', 'lisi', '1956-11-21', '1', '110112195611212118', 'CN', '', '', '', '', '', '10', '1983-09-01', '2001-10-21', '00', '10', '13', '01', '2', '10', '21', '10', '99', '4', '99', '9', '00', '0', null, '99', '14', '', '', '', '1', '00');
INSERT INTO `basedata_employee` VALUES ('2', '2015-07-02', '9999-12-31', 'chengcai', 'chengcai', '2015-07-02 05:22:26', '2015-07-02 05:25:23', '1002', '张三', 'zhangsan', '1988-12-02', '1', '321027198812021234', 'CN', '', '', '', '', '', '12', '2008-07-02', '2012-07-02', '00', '10', '13', '01', '2', '10', '21', '10', '99', '4', '99', '9', '00', '0', null, '92', '13', '', '', '', '1', '00');
INSERT INTO `basedata_employee` VALUES ('3', '2015-07-02', '9999-12-31', 'chengcai', null, '2015-07-02 05:27:10', '2015-07-02 05:27:10', '1003', '王五', 'wangwu', '1973-12-03', '1', '310202197312038921', 'CN', '', '', '', '', '', '12', '2015-07-02', '2015-07-02', '00', '10', '13', '01', '2', '10', '21', '10', '99', '4', '99', '9', '00', '0', null, '91', '11', '', '', '', '1', '00');
INSERT INTO `basedata_employee` VALUES ('4', '2015-07-02', '9999-12-31', 'chengcai', 'chengcai', '2015-07-02 05:28:44', '2015-07-02 06:07:37', '1004', '董永', 'dongyong', '1981-02-13', '1', '1011123119810213892x', 'CN', '', '', '', '', '', '10', '2015-07-02', '2015-07-02', '00', '10', '13', '01', '2', '10', '21', '10', '99', '4', '99', '9', '00', '0', null, '87', '16', '', '', '', '1', '00');
INSERT INTO `basedata_employee` VALUES ('5', null, null, null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', '9001', '曹菊芳', 'caojufang', '1972-09-12', '2', '31011019720912574x', 'CN', null, null, null, null, null, '00', '1985-09-01', '2000-10-01', '00', '10', '13', '01', '2', '10', '21', '10', '99', '4', '99', '9', '00', '0', null, '96', '17', null, null, null, '1', '00');

-- ----------------------------
-- Table structure for basedata_expenseaccount
-- ----------------------------
DROP TABLE IF EXISTS `basedata_expenseaccount`;
CREATE TABLE `basedata_expenseaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `category` varchar(4) NOT NULL,
  `description` longtext,
  `status` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_expens_parent_id_61334aac_fk_basedata_expenseaccount_id` (`parent_id`),
  KEY `basedata_expenseaccount_9cf869aa` (`org_id`),
  CONSTRAINT `basedata_expenseaccount_org_id_5661eb95_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `basedata_expens_parent_id_61334aac_fk_basedata_expenseaccount_id` FOREIGN KEY (`parent_id`) REFERENCES `basedata_expenseaccount` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_expenseaccount
-- ----------------------------
INSERT INTO `basedata_expenseaccount` VALUES ('1', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:03:23', '2015-05-02 21:03:23', 'FC0001', '差旅补助', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('2', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:03:28', '2015-05-02 21:03:28', 'FC0002', '住宿费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('3', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:03:45', '2015-05-02 21:03:45', 'FC0003', '市内交通费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('4', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:04:00', '2015-05-02 21:04:00', 'FC0004', '长途交通（大巴）费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('5', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:04:11', '2015-05-02 21:04:11', 'FC0005', '长途交通（火车）费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('6', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:04:22', '2015-05-02 21:04:22', 'FC0006', '机票费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('7', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:04:31', '2015-05-02 21:04:31', 'FC0007', '业务咨询费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('8', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:05:09', '2015-05-02 21:05:09', 'FC0008', '赞助费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('9', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:05:32', '2015-05-02 21:05:32', 'FC0009', '教育培训费', 'HR', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('10', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:05:55', '2015-05-02 21:05:55', 'FC0010', '集体活动费', 'HR', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('11', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:06:16', '2015-05-02 21:06:16', 'FC0011', '劳务外包费', 'HR', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('12', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:06:33', '2015-05-02 21:06:33', 'FC0012', '结婚礼金', 'HR', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('13', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:06:43', '2015-05-02 21:06:43', 'FC0013', '生育礼金', 'HR', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('14', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:06:54', '2015-05-02 21:06:54', 'FC0014', '丧葬抚恤', 'HR', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('15', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:07:08', '2015-05-02 21:07:08', 'FC0015', '独生子女费', 'HR', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('16', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:09:31', '2015-05-02 21:09:31', 'FC0016', 'IT设备及服务费用', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('17', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:09:48', '2015-05-02 21:09:48', 'FC0017', '通信及网络费用', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('18', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:10:06', '2015-05-02 21:10:06', 'FC0018', '印刷品费用', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('19', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:10:30', '2015-05-02 21:10:30', 'FC0019', '劳保用品费用', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('20', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:10:58', '2015-05-02 21:10:58', 'FC0020', '办公用品费用', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('21', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:11:32', '2015-05-02 21:11:32', 'FC0021', '车辆维修营运保养费', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('22', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:12:00', '2015-05-02 21:12:00', 'FC0022', '固定资产购置修缮费', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('23', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:13:39', '2015-05-02 21:13:39', 'FC0023', '运输费', 'MU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('24', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:13:49', '2015-05-02 21:13:49', 'FC0024', '包装费', 'MU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('25', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:14:08', '2015-05-02 21:14:08', 'FC0025', '设备维修费', 'MU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('26', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:14:33', '2015-05-02 21:14:33', 'FC0026', '技术咨询费', 'MU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('27', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:14:58', '2015-05-02 21:14:58', 'FC0027', '礼品费', 'BU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('28', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:15:10', '2015-05-02 21:15:10', 'FC0028', '业务招待费', 'BU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('29', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:15:25', '2015-05-02 21:15:25', 'FC0029', '广告费', 'BU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('30', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:19:28', '2015-05-02 21:19:28', 'FC0030', '土地房屋设备租赁费', 'OF', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('31', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:20:46', '2015-05-02 21:20:46', 'FC0031', '诉讼费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('32', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:21:07', '2015-05-02 21:21:07', 'FC0032', '审计费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('33', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:22:52', '2015-05-02 21:22:52', 'FC0033', '商业保险费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('34', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:23:31', '2015-05-02 21:23:31', 'FC0034', '代理服务费', 'PU', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('35', '2015-05-02', '9999-12-31', 'zhugl', null, '2015-05-02 21:26:27', '2015-05-02 21:26:27', 'FC0035', '其他不便归类的费用', 'OT', '', '1', null, null);
INSERT INTO `basedata_expenseaccount` VALUES ('36', '2015-06-27', '9999-12-31', 'zhangliangjun', null, '2015-06-27 08:15:17', '2015-06-27 08:15:17', 'FC0036', '食堂粮油', 'OF', '', '1', null, null);

-- ----------------------------
-- Table structure for basedata_extraparam
-- ----------------------------
DROP TABLE IF EXISTS `basedata_extraparam`;
CREATE TABLE `basedata_extraparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `data_type` varchar(6) NOT NULL,
  `data_source` varchar(40) DEFAULT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_extraparam_material_id_615a14c3_fk_basedata_material_id` (`material_id`),
  CONSTRAINT `basedata_extraparam_material_id_615a14c3_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_extraparam
-- ----------------------------
INSERT INTO `basedata_extraparam` VALUES ('1', '出发日期', 'DATE', '', '1');
INSERT INTO `basedata_extraparam` VALUES ('2', '预计返回日期', 'DATE', '', '1');
INSERT INTO `basedata_extraparam` VALUES ('3', '目的地', 'CHAR', 'S043', '1');
INSERT INTO `basedata_extraparam` VALUES ('4', '起始里程', 'NUM', '', '3');
INSERT INTO `basedata_extraparam` VALUES ('5', '结束里程', 'NUM', '', '3');
INSERT INTO `basedata_extraparam` VALUES ('6', '所用里程', 'NUM', '', '3');
INSERT INTO `basedata_extraparam` VALUES ('7', '目的地', 'CHAR', '', '3');
INSERT INTO `basedata_extraparam` VALUES ('8', '加班时长（小时）', 'NUM', '', '57');
INSERT INTO `basedata_extraparam` VALUES ('9', '调休时长（小时）', 'NUM', '', '58');
INSERT INTO `basedata_extraparam` VALUES ('10', '休假时长（小时）', 'NUM', '', '59');
INSERT INTO `basedata_extraparam` VALUES ('11', '工卡/饭卡/门禁卡', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('12', '计算机编号/IP地址', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('13', '员工手册/保密培训', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('14', '办公用品', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('15', '工位安排', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('16', '宿舍安排', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('17', 'ERP系统/帐号', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('18', '邮箱开通/邮箱地址', 'CHAR', '', '60');
INSERT INTO `basedata_extraparam` VALUES ('19', '贷款银行抬头', 'CHAR', '', '62');
INSERT INTO `basedata_extraparam` VALUES ('20', '薪水截止日期', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('21', '社保及公积金办理', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('22', '工卡/门禁卡/饭卡回收', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('23', 'ERP系统/帐号停用', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('24', '邮箱帐号停用', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('25', '计算机/IP地址注销', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('26', '工作内容交接', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('27', '离职证明开具', 'CHAR', '', '63');
INSERT INTO `basedata_extraparam` VALUES ('28', '培训课程', 'CHAR', '', '64');
INSERT INTO `basedata_extraparam` VALUES ('29', '培训机构', 'CHAR', '', '64');
INSERT INTO `basedata_extraparam` VALUES ('30', '培训天数', 'NUM', '', '64');

-- ----------------------------
-- Table structure for basedata_family
-- ----------------------------
DROP TABLE IF EXISTS `basedata_family`;
CREATE TABLE `basedata_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `relation` varchar(2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `birthday` date DEFAULT NULL,
  `organization` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `emergency` tinyint(1) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_family_employee_id_2c56437d_fk_basedata_employee_id` (`employee_id`),
  CONSTRAINT `basedata_family_employee_id_2c56437d_fk_basedata_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `basedata_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_family
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_material
-- ----------------------------
DROP TABLE IF EXISTS `basedata_material`;
CREATE TABLE `basedata_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `barcode` varchar(40) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `spec` varchar(120) DEFAULT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_equip` tinyint(1) NOT NULL,
  `can_sale` tinyint(1) NOT NULL,
  `is_virtual` tinyint(1) NOT NULL,
  `stock_price` decimal(14,4) DEFAULT NULL,
  `purchase_price` decimal(14,4) DEFAULT NULL,
  `sale_price` decimal(14,4) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `tp` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_material_brand_id_70cca220_fk_basedata_brand_id` (`brand_id`),
  KEY `basedata_material_category_id_7ca5506e_fk_basedata_category_id` (`category_id`),
  KEY `basedata_material_9744817e` (`warehouse_id`),
  KEY `basedata_material_9cf869aa` (`org_id`),
  CONSTRAINT `basedata_material_brand_id_70cca220_fk_basedata_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `basedata_brand` (`id`),
  CONSTRAINT `basedata_material_category_id_7ca5506e_fk_basedata_category_id` FOREIGN KEY (`category_id`) REFERENCES `basedata_category` (`id`),
  CONSTRAINT `basedata_material_org_id_1ac5ffff_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `basedata_material_warehouse_id_1e7533f6_fk_basedata_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `basedata_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_material
-- ----------------------------
INSERT INTO `basedata_material` VALUES ('1', '2015-05-22', '9999-12-31', 'zhugl', 'chengcai', '2015-05-22 22:03:36', '2015-06-29 21:18:44', 'IT00001', '', '出差申请', '差旅【费用报销】需有出差申请', null, '1', '0', '0', '1', null, null, null, null, '1', '2', null, '80');
INSERT INTO `basedata_material` VALUES ('2', '2015-05-23', '9999-12-31', 'zhugl', null, '2015-05-23 07:47:02', '2015-06-14 13:33:05', 'IT00002', '', '戴尔（DELL）Inspiron 3455-R1248 灵越23.8英寸一体电脑 ', 'E2-7110 4G 500G WIFI 蓝牙 WIN8.1 3年上门', null, '1', '1', '0', '0', '4512.8205', '5280.0000', null, '2', '3', '3', null, '10');
INSERT INTO `basedata_material` VALUES ('3', '2015-05-24', '9999-12-31', 'zhugl', 'chengcai', '2015-05-24 15:13:47', '2015-06-29 21:23:43', 'IT00003', '', '用车申请', '请提前24小时申请', null, '1', '0', '0', '1', null, null, null, null, '1', null, null, '80');
INSERT INTO `basedata_material` VALUES ('4', '2015-06-03', '9999-12-31', 'zhugl', 'caojufang', '2015-06-03 21:23:43', '2015-07-17 12:29:02', 'IT00004', '', '福光杯子', '500ml 真空保温', null, '1', '0', '0', '0', '27.3504', '32.0000', null, null, null, null, null, '10');
INSERT INTO `basedata_material` VALUES ('5', '2015-06-03', '9999-12-31', 'zhugl', null, '2015-06-03 21:43:33', '2015-06-03 21:43:33', 'IT00005', '', '手套', '', null, '1', '0', '1', '0', null, null, null, null, null, null, null, '10');
INSERT INTO `basedata_material` VALUES ('6', '2015-06-11', '9999-12-31', 'zhugl', 'chengcai', '2015-06-11 22:36:17', '2015-06-29 21:40:04', 'IT00006', '', '2号楼3楼大会议室', '投影、话筒、视频会议、白板', null, '1', '1', '0', '0', null, null, null, null, null, null, null, '20');
INSERT INTO `basedata_material` VALUES ('40', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9001', null, '陕西红富士苹果', '#80', null, '1', '0', '1', '0', '5.6000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('41', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9002', null, '丰水梨', '#75', null, '1', '0', '1', '0', '8.2000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('42', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9003', null, '冰糖心富士', '#80', null, '1', '0', '1', '0', '9.5000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('43', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9004', null, '常香玉', '', null, '1', '0', '1', '0', '6.5000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('44', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9005', null, '砀山梨', '', null, '1', '0', '1', '0', '7.8000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('45', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9006', null, '赣南橙', '', null, '1', '0', '1', '0', '6.9000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('46', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9007', null, '红毛丹', '', null, '1', '0', '1', '0', '12.6000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('47', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9008', null, '红心火龙果', '', null, '1', '0', '1', '0', '8.2000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('48', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9009', null, '黄圣女果', '', null, '1', '0', '1', '0', '8.9000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('49', null, null, null, null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'IT9010', null, '国产柠檬', '', null, '1', '0', '1', '0', '14.6000', null, null, null, null, '11', null, '10');
INSERT INTO `basedata_material` VALUES ('52', null, null, null, null, '2015-06-17 21:29:52', '2015-06-17 21:29:52', 'IT9981', null, 'PZ-30配电箱', '', null, '1', '0', '1', '0', null, '210.4500', '320.0000', null, null, null, null, '10');
INSERT INTO `basedata_material` VALUES ('53', null, null, null, null, '2015-06-27 19:19:52', '2015-06-27 19:19:52', 'IT5001', null, '联想T440笔记本电脑', '14寸双核4G内存1T硬盘', null, '1', '0', '1', '0', null, '6219.0000', '7150.0000', null, null, null, null, '10');
INSERT INTO `basedata_material` VALUES ('54', null, null, null, null, '2015-06-27 19:21:33', '2015-06-27 19:21:33', 'IT5002', null, '戴尔M-10塔式服务器', '9核16G内存500G硬盘', null, '1', '0', '1', '0', null, '8125.0000', '9999.0000', null, null, null, null, '10');
INSERT INTO `basedata_material` VALUES ('55', null, null, null, null, '2015-06-27 20:06:15', '2015-07-17 12:29:02', 'IT5003', null, '格力电风扇', '遥控功能，1.2m高', null, '1', '0', '1', '0', '255.5556', '299.0000', null, null, null, null, null, '10');
INSERT INTO `basedata_material` VALUES ('56', null, null, null, null, '2015-06-27 20:58:04', '2015-06-27 20:58:04', 'IT5004', null, '进口红蛇果', '#85', null, '1', '0', '1', '0', null, null, null, null, null, null, null, '10');
INSERT INTO `basedata_material` VALUES ('57', '2015-06-29', '9999-12-31', 'chengcai', 'chengcai', '2015-06-29 21:02:51', '2015-06-29 21:16:37', 'IT00057', '', '加班申请', '加班时长可调休', null, '1', '0', '0', '1', null, null, null, null, null, '2', null, '80');
INSERT INTO `basedata_material` VALUES ('58', '2015-06-29', '9999-12-31', 'chengcai', 'chengcai', '2015-06-29 21:03:37', '2015-06-29 21:16:46', 'IT00058', '', '调休申请', '调休申请需要有加班单据，请在【参考工单】中选择加班单据', null, '1', '0', '0', '1', null, null, null, null, null, '2', null, '80');
INSERT INTO `basedata_material` VALUES ('59', '2015-06-29', '9999-12-31', 'chengcai', 'chengcai', '2015-06-29 21:06:13', '2015-06-29 21:16:56', 'IT00059', '', '休假申请', '请注明休假类别：年假、病假、事假、婚假、丧假、探亲假', null, '1', '0', '0', '1', null, null, null, null, null, '2', null, '80');
INSERT INTO `basedata_material` VALUES ('60', '2015-06-29', '9999-12-31', 'chengcai', 'chengcai', '2015-06-29 21:13:47', '2015-06-29 21:27:04', 'IT00060', '', '入职办理', '员工入职办理手续', null, '1', '0', '0', '1', null, null, null, null, null, '2', null, '80');
INSERT INTO `basedata_material` VALUES ('61', '2015-06-29', '9999-12-31', 'chengcai', 'chengcai', '2015-06-29 21:22:36', '2015-06-29 22:02:04', 'IT00061', '', '用印申请', '公章、法人章、人事章、财务章、合同章、投标章、采购章', null, '1', '0', '0', '1', null, null, null, null, null, '2', null, '80');
INSERT INTO `basedata_material` VALUES ('62', '2015-06-29', '9999-12-31', 'chengcai', 'chengcai', '2015-06-29 21:33:14', '2015-06-29 21:42:26', 'IT00062', '', '收入证明', '收入证明有效期为2个月', null, '1', '0', '0', '1', null, null, null, null, '1', '2', null, '80');
INSERT INTO `basedata_material` VALUES ('63', '2015-06-29', '9999-12-31', 'chengcai', 'chengcai', '2015-06-29 21:38:11', '2015-06-30 20:07:48', 'IT00063', '', '离职办理', '请提前30天提出申请', null, '1', '0', '0', '1', null, null, null, null, null, '2', null, '80');
INSERT INTO `basedata_material` VALUES ('64', '2015-06-30', '9999-12-31', 'chengcai', null, '2015-06-30 20:09:12', '2015-06-30 20:09:12', 'IT00064', '', '培训申请', '外部培训3000元以上需签订服务期协议', null, '1', '0', '0', '1', null, null, null, null, null, null, null, '80');

-- ----------------------------
-- Table structure for basedata_materialparam
-- ----------------------------
DROP TABLE IF EXISTS `basedata_materialparam`;
CREATE TABLE `basedata_materialparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation` date NOT NULL,
  `material_id` int(11) NOT NULL,
  `param_name_id` int(11) DEFAULT NULL,
  `param_value_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_materialpa_material_id_666e08d1_fk_basedata_material_id` (`material_id`),
  KEY `basedata_materialparam_996e5113` (`param_name_id`),
  KEY `basedata_materialparam_2f9b9c2f` (`param_value_id`),
  CONSTRAINT `basedata_materialpa_material_id_666e08d1_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `bas_param_name_id_3c50302d_fk_basedata_technicalparametername_id` FOREIGN KEY (`param_name_id`) REFERENCES `basedata_technicalparametername` (`id`),
  CONSTRAINT `b_param_value_id_18882fba_fk_basedata_technicalparametervalue_id` FOREIGN KEY (`param_value_id`) REFERENCES `basedata_technicalparametervalue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_materialparam
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_material_measure
-- ----------------------------
DROP TABLE IF EXISTS `basedata_material_measure`;
CREATE TABLE `basedata_material_measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) NOT NULL,
  `measure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `material_id` (`material_id`,`measure_id`),
  KEY `basedata_material_mea_measure_id_5c0d90fc_fk_basedata_measure_id` (`measure_id`),
  CONSTRAINT `basedata_material_mea_measure_id_5c0d90fc_fk_basedata_measure_id` FOREIGN KEY (`measure_id`) REFERENCES `basedata_measure` (`id`),
  CONSTRAINT `basedata_material_me_material_id_572f4c8_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_material_measure
-- ----------------------------
INSERT INTO `basedata_material_measure` VALUES ('49', '1', '8');
INSERT INTO `basedata_material_measure` VALUES ('5', '2', '9');
INSERT INTO `basedata_material_measure` VALUES ('51', '3', '8');
INSERT INTO `basedata_material_measure` VALUES ('10', '4', '1');
INSERT INTO `basedata_material_measure` VALUES ('9', '5', '1');
INSERT INTO `basedata_material_measure` VALUES ('56', '6', '1');
INSERT INTO `basedata_material_measure` VALUES ('23', '40', '3');
INSERT INTO `basedata_material_measure` VALUES ('24', '41', '3');
INSERT INTO `basedata_material_measure` VALUES ('25', '42', '3');
INSERT INTO `basedata_material_measure` VALUES ('26', '43', '3');
INSERT INTO `basedata_material_measure` VALUES ('27', '44', '3');
INSERT INTO `basedata_material_measure` VALUES ('28', '45', '3');
INSERT INTO `basedata_material_measure` VALUES ('29', '46', '3');
INSERT INTO `basedata_material_measure` VALUES ('30', '47', '3');
INSERT INTO `basedata_material_measure` VALUES ('31', '48', '3');
INSERT INTO `basedata_material_measure` VALUES ('32', '49', '3');
INSERT INTO `basedata_material_measure` VALUES ('45', '57', '8');
INSERT INTO `basedata_material_measure` VALUES ('46', '58', '8');
INSERT INTO `basedata_material_measure` VALUES ('47', '59', '8');
INSERT INTO `basedata_material_measure` VALUES ('52', '60', '8');
INSERT INTO `basedata_material_measure` VALUES ('59', '61', '8');
INSERT INTO `basedata_material_measure` VALUES ('58', '62', '8');
INSERT INTO `basedata_material_measure` VALUES ('60', '63', '8');
INSERT INTO `basedata_material_measure` VALUES ('61', '64', '8');

-- ----------------------------
-- Table structure for basedata_measure
-- ----------------------------
DROP TABLE IF EXISTS `basedata_measure`;
CREATE TABLE `basedata_measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_measure
-- ----------------------------
INSERT INTO `basedata_measure` VALUES ('1', 'ge', '个', '1');
INSERT INTO `basedata_measure` VALUES ('2', 'zhi', '只', '1');
INSERT INTO `basedata_measure` VALUES ('3', 'kg', '千克', '1');
INSERT INTO `basedata_measure` VALUES ('4', 't', '吨', '1');
INSERT INTO `basedata_measure` VALUES ('5', 'g', '克', '1');
INSERT INTO `basedata_measure` VALUES ('6', 'gen', '根', '1');
INSERT INTO `basedata_measure` VALUES ('7', 'xi', '箱', '1');
INSERT INTO `basedata_measure` VALUES ('8', 'CI', '次', '1');
INSERT INTO `basedata_measure` VALUES ('9', 'TAI', '台', '1');

-- ----------------------------
-- Table structure for basedata_partner
-- ----------------------------
DROP TABLE IF EXISTS `basedata_partner`;
CREATE TABLE `basedata_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `short` varchar(20) DEFAULT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `partner_type` varchar(2) NOT NULL,
  `level` varchar(2) NOT NULL,
  `tax_num` varchar(40) DEFAULT NULL,
  `tax_address` varchar(40) DEFAULT NULL,
  `tax_account` varchar(80) DEFAULT NULL,
  `contacts` varchar(40) DEFAULT NULL,
  `memo` longtext,
  `phone` varchar(40) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_partner_9cf869aa` (`org_id`),
  CONSTRAINT `basedata_partner_org_id_29c57159_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_partner
-- ----------------------------
INSERT INTO `basedata_partner` VALUES ('17', null, null, null, 'chengcai', '2015-06-27 22:27:23', '2015-06-29 22:01:03', 'C1001', '中国船舶重工业集团', '中船集团', 'cdt', 'C', 'A', '10111293847', '北京市海淀区10号', '北京银行海淀支行 330291837', '周强', '', '13813898213', null);
INSERT INTO `basedata_partner` VALUES ('18', '2015-06-30', '9999-12-31', 'chengcai', null, '2015-06-30 20:22:27', '2015-06-30 20:22:27', '90018', '京东商城', '', '', 'S', 'A', '', '', '', '', '', '', null);

-- ----------------------------
-- Table structure for basedata_project
-- ----------------------------
DROP TABLE IF EXISTS `basedata_project`;
CREATE TABLE `basedata_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `short` varchar(20) DEFAULT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `prj_type` varchar(2) DEFAULT NULL,
  `description` longtext,
  `budget` decimal(10,2) DEFAULT NULL,
  `income` decimal(10,2) DEFAULT NULL,
  `expand` decimal(10,2) DEFAULT NULL,
  `blueprint` varchar(100) DEFAULT NULL,
  `offer` varchar(100) DEFAULT NULL,
  `business` varchar(100) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_project_partner_id_36721156_fk_basedata_partner_id` (`partner_id`),
  KEY `basedata_project_9cf869aa` (`org_id`),
  CONSTRAINT `basedata_project_org_id_5726486_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `basedata_project_partner_id_36721156_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_project
-- ----------------------------
INSERT INTO `basedata_project` VALUES ('7', null, null, null, 'chengcai', '2015-06-27 22:39:27', '2015-07-30 21:24:06', 'PJ-C-1001', '内部运营项目', '', '', '02', '00', '', '50000.00', null, null, '', '', '', null, null);
INSERT INTO `basedata_project` VALUES ('8', null, null, null, null, '2015-06-27 22:39:27', '2015-07-03 05:50:38', 'PJ-C-1002', '办公用品分摊项目', '', '', '03', '00', null, null, null, null, '', '', '', null, null);
INSERT INTO `basedata_project` VALUES ('9', '2015-07-04', '9999-12-31', 'zhangsan', null, '2015-07-04 11:05:59', '2015-07-12 01:26:21', 'PJ0009', '中海洋船舶工业集团张江工业园配电柜项目', '', '', '03', '00', '', null, null, null, '', '', '', null, null);

-- ----------------------------
-- Table structure for basedata_project_users
-- ----------------------------
DROP TABLE IF EXISTS `basedata_project_users`;
CREATE TABLE `basedata_project_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`,`user_id`),
  KEY `basedata_project_users_user_id_2b10e1a1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `basedata_project_users_project_id_1560ad8_fk_basedata_project_id` FOREIGN KEY (`project_id`) REFERENCES `basedata_project` (`id`),
  CONSTRAINT `basedata_project_users_user_id_2b10e1a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_project_users
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_technicalparametername
-- ----------------------------
DROP TABLE IF EXISTS `basedata_technicalparametername`;
CREATE TABLE `basedata_technicalparametername` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_technicalpa_category_id_8e419b4_fk_basedata_category_id` (`category_id`),
  CONSTRAINT `basedata_technicalpa_category_id_8e419b4_fk_basedata_category_id` FOREIGN KEY (`category_id`) REFERENCES `basedata_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_technicalparametername
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_technicalparametervalue
-- ----------------------------
DROP TABLE IF EXISTS `basedata_technicalparametervalue`;
CREATE TABLE `basedata_technicalparametervalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(80) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `tech_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_tech_name_id_401b4baa_fk_basedata_technicalparametername_id` (`tech_name_id`),
  CONSTRAINT `base_tech_name_id_401b4baa_fk_basedata_technicalparametername_id` FOREIGN KEY (`tech_name_id`) REFERENCES `basedata_technicalparametername` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_technicalparametervalue
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_trade
-- ----------------------------
DROP TABLE IF EXISTS `basedata_trade`;
CREATE TABLE `basedata_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `name` varchar(120) NOT NULL,
  `memo` varchar(120) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_trade_parent_id_40eb4a8a_fk_basedata_trade_id` (`parent_id`),
  CONSTRAINT `basedata_trade_parent_id_40eb4a8a_fk_basedata_trade_id` FOREIGN KEY (`parent_id`) REFERENCES `basedata_trade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_trade
-- ----------------------------
INSERT INTO `basedata_trade` VALUES ('1', 'A', '农、林、牧、渔业', '', null);
INSERT INTO `basedata_trade` VALUES ('2', 'B', '采矿业', '', null);
INSERT INTO `basedata_trade` VALUES ('3', 'C', '制造业', '', null);
INSERT INTO `basedata_trade` VALUES ('4', 'D', '电力、燃气及水的生产和供应业', '', null);
INSERT INTO `basedata_trade` VALUES ('5', 'E', '建筑业', '', null);
INSERT INTO `basedata_trade` VALUES ('6', 'F', '交通运输、仓储和邮政业', '', null);
INSERT INTO `basedata_trade` VALUES ('7', 'G', '信息传输、计算机服务和软件业', '', null);
INSERT INTO `basedata_trade` VALUES ('8', 'H', '批发和零售业', '', null);
INSERT INTO `basedata_trade` VALUES ('9', 'I', '住宿和餐饮业', '', null);
INSERT INTO `basedata_trade` VALUES ('10', 'J', '金融业', '', null);
INSERT INTO `basedata_trade` VALUES ('11', 'K', '房地产业', '', null);
INSERT INTO `basedata_trade` VALUES ('12', 'L', '租赁和商务服务业', '', null);
INSERT INTO `basedata_trade` VALUES ('13', 'M', '科学研究、技术服务和地质勘查业', '', null);
INSERT INTO `basedata_trade` VALUES ('14', 'N', '水利、环境和公共设施管理业', '', null);
INSERT INTO `basedata_trade` VALUES ('15', 'O', '居民服务和其他服务业', '', null);
INSERT INTO `basedata_trade` VALUES ('16', 'P', '教育', '', null);
INSERT INTO `basedata_trade` VALUES ('17', 'Q', '卫生、社会保障和社会福利业', '', null);
INSERT INTO `basedata_trade` VALUES ('18', 'R', '文化、体育和娱乐业', '', null);
INSERT INTO `basedata_trade` VALUES ('19', 'S', '公共管理和社会组织', '', null);
INSERT INTO `basedata_trade` VALUES ('20', 'T', '国际组织', '', null);

-- ----------------------------
-- Table structure for basedata_valuelist
-- ----------------------------
DROP TABLE IF EXISTS `basedata_valuelist`;
CREATE TABLE `basedata_valuelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `init` tinyint(1) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `lock_time` datetime DEFAULT NULL,
  `locked_by_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_valuelist_module_id_249f4ef9_fk_syscfg_module_id` (`module_id`),
  KEY `basedata_valuelist_locked_by_id_3ddaefa_fk_auth_user_id` (`locked_by_id`),
  CONSTRAINT `basedata_valuelist_locked_by_id_3ddaefa_fk_auth_user_id` FOREIGN KEY (`locked_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `basedata_valuelist_module_id_249f4ef9_fk_syscfg_module_id` FOREIGN KEY (`module_id`) REFERENCES `syscfg_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_valuelist
-- ----------------------------
INSERT INTO `basedata_valuelist` VALUES ('10', '2015-05-01', '9999-12-31', 'zhugl', 'zhugl', '2015-05-01 09:58:32', '2015-05-03 08:16:48', 'gender', '性别', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('11', '2015-05-01', '9999-12-31', 'zhugl', 'zhugl', '2015-05-01 10:31:10', '2015-05-03 07:08:51', 'S011', '地址类型', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('12', '2015-05-02', '9999-12-31', 'zhugl', 'zhugl', '2015-05-02 10:00:30', '2015-05-03 07:08:44', 'S012', '项目状态', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('13', '2015-05-02', '9999-12-31', 'zhugl', 'zhugl', '2015-05-02 10:03:27', '2015-05-03 07:08:28', 'S013', '项目类别', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('14', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 06:49:41', '2015-05-03 06:49:41', 'S014', '岗位序列', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('15', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 06:56:08', '2015-05-09 15:41:55', 'S015', '岗位级别', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('16', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 07:13:31', '2015-05-03 07:13:31', 'S016', '人员状态', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('17', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 07:19:43', '2015-05-03 07:19:50', 'S017', '职员级别', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('18', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 07:22:10', '2015-05-03 07:22:10', 'S018', '人员类别', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('19', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 07:24:00', '2015-05-03 15:12:54', 'S019', '用工形式', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('20', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 07:33:41', '2015-05-03 07:33:41', 'S020', '宗教信仰', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('21', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 07:42:12', '2015-05-03 08:32:32', 'S021', '民族', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('22', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 07:54:20', '2015-05-03 07:54:20', 'S022', '国家', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('23', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 08:00:47', '2015-05-03 08:33:02', 'S023', '婚姻状况', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('24', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 08:11:20', '2015-05-03 08:32:51', 'S024', '文化程度', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('25', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 08:26:49', '2015-05-03 08:32:42', 'S025', '家庭关系', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('26', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 08:39:02', '2015-05-03 08:43:11', 'S026', '政治面貌', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('27', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 08:41:44', '2015-05-03 08:41:44', 'S027', '兵役状况', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('28', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 08:44:29', '2015-05-03 08:44:29', 'S028', '血型', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('29', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 08:51:03', '2015-05-03 08:51:03', 'S029', '人员身份', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('30', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 08:52:49', '2015-05-03 08:52:49', 'S030', '合同类型', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('31', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 08:54:11', '2015-05-03 08:54:19', 'S031', '合同期限类型', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('32', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 08:55:13', '2015-05-03 08:56:32', 'S032', '合同密级', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('33', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 08:56:17', '2015-05-03 08:56:17', 'S033', '合同变动类型', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('34', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 08:58:32', '2015-05-03 08:58:32', 'S034', '工时制度', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('35', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 09:56:24', '2015-05-03 09:56:24', 'S035', '教育类型', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('36', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 10:02:20', '2015-05-03 10:02:38', 'S036', '从学单位类别', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('37', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 10:13:32', '2015-05-03 10:16:48', 'S037', '学位', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('38', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 10:16:17', '2015-05-03 10:17:06', 'S038', '专业类别', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('39', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 13:41:51', '2015-05-03 13:41:51', 'S039', '复转军人标识', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('40', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 14:04:26', '2015-05-03 14:07:50', 'S040', '党委负责人标识', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('41', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 14:07:37', '2015-05-03 14:08:16', 'S041', '董事监事标识', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('42', '2015-05-03', '9999-12-31', 'zhugl', 'zhugl', '2015-05-03 14:14:35', '2015-05-03 14:18:08', 'S042', '特殊工种', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('43', '2015-05-03', '9999-12-31', 'zhugl', null, '2015-05-03 14:21:31', '2015-05-03 14:21:31', 'S043', '身体状况', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('44', '2015-05-22', '9999-12-31', 'zhugl', 'zhugl', '2015-05-22 22:38:58', '2015-05-25 20:58:34', 'S044', '工单类型', '1', '0', '0', null, null, '2');
INSERT INTO `basedata_valuelist` VALUES ('45', '2015-05-22', '9999-12-31', 'zhugl', 'zhugl', '2015-05-22 22:41:19', '2015-05-25 20:26:41', 'S045', '业务域', '1', '0', '0', null, null, '4');
INSERT INTO `basedata_valuelist` VALUES ('46', '2015-05-22', '9999-12-31', 'zhugl', 'zhugl', '2015-05-22 22:44:49', '2015-05-24 20:07:18', 'S046', '工单状态', '1', '0', '0', null, null, '4');
INSERT INTO `basedata_valuelist` VALUES ('47', '2015-05-24', '9999-12-31', 'zhugl', 'zhugl', '2015-05-24 20:04:37', '2015-05-24 20:06:09', 'S047', '试用期', '1', '1', '1', null, null, '3');
INSERT INTO `basedata_valuelist` VALUES ('48', '2015-05-24', '9999-12-31', 'zhugl', null, '2015-05-24 20:11:06', '2015-05-24 20:11:06', 'S048', '工资项类别', '1', '0', '0', null, null, '3');
INSERT INTO `basedata_valuelist` VALUES ('49', '2015-05-24', '9999-12-31', 'zhugl', 'zhugl', '2015-05-24 20:13:08', '2015-05-24 20:13:15', 'S049', '增减属性', '1', '0', '0', null, null, '3');
INSERT INTO `basedata_valuelist` VALUES ('50', '2015-05-24', '9999-12-31', 'zhugl', 'zhugl', '2015-05-24 20:20:10', '2015-05-24 20:37:22', 'S050', '计算方式', '1', '0', '0', null, null, '3');
INSERT INTO `basedata_valuelist` VALUES ('51', '2015-05-24', '9999-12-31', 'zhugl', 'zhugl', '2015-05-24 21:32:21', '2015-05-24 21:32:31', 'S051', '离职类别', '1', '0', '0', null, null, '3');
INSERT INTO `basedata_valuelist` VALUES ('52', '2015-06-03', '9999-12-31', 'zhugl', null, '2015-06-03 20:01:03', '2015-06-03 20:01:03', 'S052', '税率', '1', '0', '0', null, null, '5');
INSERT INTO `basedata_valuelist` VALUES ('53', '2015-06-14', '9999-12-31', 'zhugl', 'zhugl', '2015-06-14 11:09:43', '2015-06-14 12:43:38', 'S053', '发票类别 ', '1', '0', '0', null, null, '6');
INSERT INTO `basedata_valuelist` VALUES ('54', '2015-06-20', '9999-12-31', 'zhugl', 'zhugl', '2015-06-20 21:33:08', '2015-06-21 11:30:19', 'S054', '物料性质', '1', '0', '0', null, null, '2');

-- ----------------------------
-- Table structure for basedata_valuelistitem
-- ----------------------------
DROP TABLE IF EXISTS `basedata_valuelistitem`;
CREATE TABLE `basedata_valuelistitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_code` varchar(6) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_valuelistitem_group_id_13b9f5f2_idx` (`group_id`,`group_code`),
  CONSTRAINT `basedata_valuelistite_group_id_435c66f8_fk_basedata_valuelist_id` FOREIGN KEY (`group_id`) REFERENCES `basedata_valuelist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_valuelistitem
-- ----------------------------
INSERT INTO `basedata_valuelistitem` VALUES ('13', 'S011', '01', '送货地址', '1', '9', '11');
INSERT INTO `basedata_valuelistitem` VALUES ('14', 'S011', '02', '发票地址', '1', '9', '11');
INSERT INTO `basedata_valuelistitem` VALUES ('15', 'S011', '03', '临时地址', '1', '9', '11');
INSERT INTO `basedata_valuelistitem` VALUES ('16', 'S011', '04', '家庭地址', '0', '9', '11');
INSERT INTO `basedata_valuelistitem` VALUES ('17', 'S012', '00', '跟踪/新建', '1', '1', '12');
INSERT INTO `basedata_valuelistitem` VALUES ('18', 'S012', '01', '投标/报价', '1', '2', '12');
INSERT INTO `basedata_valuelistitem` VALUES ('19', 'S012', '02', '签订合同', '1', '3', '12');
INSERT INTO `basedata_valuelistitem` VALUES ('20', 'S012', '03', '生产/交付', '1', '4', '12');
INSERT INTO `basedata_valuelistitem` VALUES ('21', 'S012', '04', '验收/回款', '1', '5', '12');
INSERT INTO `basedata_valuelistitem` VALUES ('22', 'S012', '99', '关闭', '1', '6', '12');
INSERT INTO `basedata_valuelistitem` VALUES ('23', 'S013', '00', '产品/服务交付类', '1', '9', '13');
INSERT INTO `basedata_valuelistitem` VALUES ('24', 'S013', '10', '技术/设备改造类', '1', '9', '13');
INSERT INTO `basedata_valuelistitem` VALUES ('25', 'S013', '20', '内部运营类', '1', '9', '13');
INSERT INTO `basedata_valuelistitem` VALUES ('26', 'S013', '40', '其他临时项目', '1', '9', '13');
INSERT INTO `basedata_valuelistitem` VALUES ('27', 'S014', 'A', '管理/行政类', '1', '9', '14');
INSERT INTO `basedata_valuelistitem` VALUES ('28', 'S014', 'S', '营销/市场类', '1', '9', '14');
INSERT INTO `basedata_valuelistitem` VALUES ('29', 'S014', 'T', '技术/研发类', '1', '9', '14');
INSERT INTO `basedata_valuelistitem` VALUES ('30', 'S014', 'P', '生产/操作类', '1', '9', '14');
INSERT INTO `basedata_valuelistitem` VALUES ('31', 'S015', '01', '员级', '1', '9', '15');
INSERT INTO `basedata_valuelistitem` VALUES ('32', 'S015', '02', '初级', '1', '9', '15');
INSERT INTO `basedata_valuelistitem` VALUES ('33', 'S015', '03', '中级', '1', '9', '15');
INSERT INTO `basedata_valuelistitem` VALUES ('34', 'S015', '04', '高级', '1', '9', '15');
INSERT INTO `basedata_valuelistitem` VALUES ('35', 'S015', '05', '专家', '1', '9', '15');
INSERT INTO `basedata_valuelistitem` VALUES ('36', 'S016', '10', '在岗工作', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('37', 'S016', '11', '见习期（试用）', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('38', 'S016', '12', '待岗', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('39', 'S016', '20', '离职', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('40', 'S016', '21', '退休', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('41', 'S016', '22', '终止劳动合同', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('42', 'S016', '23', '协商解除劳动合同', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('43', 'S016', '24', '劳动者主张解除劳动合同', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('44', 'S016', '25', '用人单位主张解除劳动合同', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('45', 'S016', '30', '死亡', '1', '9', '16');
INSERT INTO `basedata_valuelistitem` VALUES ('46', 'S017', '10', '领导班子', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('47', 'S017', '11', '副总师（助理）', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('48', 'S017', '12', '部门负责人（正职）', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('49', 'S017', '13', '部门负责人（副职）', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('50', 'S017', '14', '部门内设机构负责人（正职）', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('51', 'S017', '15', '部门内设机构负责人（副职）', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('52', 'S017', '20', '一级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('53', 'S017', '21', '二级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('54', 'S017', '22', '三级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('55', 'S017', '23', '四级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('56', 'S017', '24', '五级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('57', 'S017', '25', '六级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('58', 'S017', '26', '七级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('59', 'S017', '27', '八级职员', '1', '9', '17');
INSERT INTO `basedata_valuelistitem` VALUES ('60', 'S018', '10', '经营者', '1', '9', '18');
INSERT INTO `basedata_valuelistitem` VALUES ('61', 'S018', '20', '中层管理人员', '1', '9', '18');
INSERT INTO `basedata_valuelistitem` VALUES ('62', 'S018', '21', '一般管理人员', '1', '9', '18');
INSERT INTO `basedata_valuelistitem` VALUES ('63', 'S018', '30', '专业技术人员', '1', '9', '18');
INSERT INTO `basedata_valuelistitem` VALUES ('64', 'S018', '40', '技能人员', '1', '9', '18');
INSERT INTO `basedata_valuelistitem` VALUES ('65', 'S018', '50', '服务人员', '1', '9', '18');
INSERT INTO `basedata_valuelistitem` VALUES ('66', 'S018', '90', '其他人员', '1', '9', '18');
INSERT INTO `basedata_valuelistitem` VALUES ('67', 'S019', '1', '劳动合同制（长期）', '1', '9', '19');
INSERT INTO `basedata_valuelistitem` VALUES ('68', 'S019', '2', '劳动合同制（短期）', '1', '9', '19');
INSERT INTO `basedata_valuelistitem` VALUES ('69', 'S019', '3', '人事代理制', '1', '9', '19');
INSERT INTO `basedata_valuelistitem` VALUES ('70', 'S019', '4', '劳务派遣制', '1', '9', '19');
INSERT INTO `basedata_valuelistitem` VALUES ('71', 'S019', '5', '非全日制', '1', '9', '19');
INSERT INTO `basedata_valuelistitem` VALUES ('72', 'S019', '6', '业务外包', '1', '9', '19');
INSERT INTO `basedata_valuelistitem` VALUES ('73', 'S019', '9', '其他', '1', '9', '19');
INSERT INTO `basedata_valuelistitem` VALUES ('74', 'S020', '00', '无宗教信仰', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('75', 'S020', '10', '佛教', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('76', 'S020', '20', '喇嘛教', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('77', 'S020', '30', '道教', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('78', 'S020', '40', '天主教', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('79', 'S020', '50', '基督教', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('80', 'S020', '70', '东正教', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('81', 'S020', '80', '伊斯兰教', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('82', 'S020', '99', '其他', '1', '9', '20');
INSERT INTO `basedata_valuelistitem` VALUES ('83', 'S021', '01', '汉族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('84', 'S021', '02', '蒙古族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('85', 'S021', '03', '回族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('86', 'S021', '04', '藏族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('87', 'S021', '05', '维吾尔族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('88', 'S021', '06', '苗族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('89', 'S021', '07', '彝族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('90', 'S021', '08', '壮族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('91', 'S021', '09', '布依族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('92', 'S021', '10', '朝鲜族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('93', 'S021', '11', '满族', '1', '9', '21');
INSERT INTO `basedata_valuelistitem` VALUES ('94', 'S022', 'CN', '中国', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('95', 'S022', 'EG', '埃及', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('96', 'S022', 'AT', '奥地利', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('97', 'S022', 'AU', '澳大利亚', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('98', 'S022', 'PK', '巴基斯坦', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('99', 'S022', 'BR', '巴西', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('100', 'S022', 'KP', '北朝鲜', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('101', 'S022', 'BE', '比利时', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('102', 'S022', 'IS', '冰岛', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('103', 'S022', 'PL', '波兰', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('104', 'S022', 'DK', '丹麦', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('105', 'S022', 'DE', '德国', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('106', 'S022', 'FR', '法国', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('107', 'S022', 'KR', '韩国', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('108', 'S022', 'NL', '荷兰', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('109', 'S022', 'CA', '加拿大', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('110', 'S022', 'US', '美国', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('111', 'S022', 'JP', '日本', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('112', 'S022', 'TW', '中国台湾', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('113', 'S022', 'HK', '中国香港', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('114', 'S022', 'ES', '西班牙', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('115', 'S022', 'GR', '希腊', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('116', 'S022', 'SG', '新加坡', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('117', 'S022', 'NZ', '新西兰', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('118', 'S022', 'IT', '意大利', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('119', 'S022', 'GB', '英国', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('120', 'S022', 'MO', '中国澳门', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('121', 'S022', 'IL', '以色列', '1', '9', '22');
INSERT INTO `basedata_valuelistitem` VALUES ('122', 'S023', '10', '未婚', '1', '9', '23');
INSERT INTO `basedata_valuelistitem` VALUES ('123', 'S023', '20', '初婚', '1', '9', '23');
INSERT INTO `basedata_valuelistitem` VALUES ('124', 'S023', '21', '再婚', '1', '9', '23');
INSERT INTO `basedata_valuelistitem` VALUES ('125', 'S023', '22', '复婚', '1', '9', '23');
INSERT INTO `basedata_valuelistitem` VALUES ('126', 'S023', '30', '丧偶', '1', '9', '23');
INSERT INTO `basedata_valuelistitem` VALUES ('127', 'S023', '40', '离婚', '1', '9', '23');
INSERT INTO `basedata_valuelistitem` VALUES ('128', 'S023', '90', '其他', '1', '9', '23');
INSERT INTO `basedata_valuelistitem` VALUES ('129', 'S024', '0', '研究生', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('132', 'S024', '10', '大学本科', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('136', 'S024', '20', '大学专科和专科学校', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('144', 'S024', '40', '技工学校', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('146', 'S024', '50', '高中', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('147', 'S024', '60', '初中', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('148', 'S024', '70', '小学', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('149', 'S024', '80', '文盲或半文盲', '1', '9', '24');
INSERT INTO `basedata_valuelistitem` VALUES ('150', 'gender', '0', '未知的性别', '1', '9', '10');
INSERT INTO `basedata_valuelistitem` VALUES ('151', 'gender', '1', '男性', '1', '9', '10');
INSERT INTO `basedata_valuelistitem` VALUES ('152', 'gender', '2', '女性', '1', '9', '10');
INSERT INTO `basedata_valuelistitem` VALUES ('153', 'gender', '9', '未说明的性别', '1', '9', '10');
INSERT INTO `basedata_valuelistitem` VALUES ('154', 'S025', '11', '丈夫', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('155', 'S025', '12', '妻子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('156', 'S025', '21', '独生子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('157', 'S025', '22', '长子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('158', 'S025', '23', '次子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('159', 'S025', '24', '三子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('160', 'S025', '25', '四子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('161', 'S025', '26', '五子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('162', 'S025', '27', '养子或继子', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('163', 'S025', '28', '女婿', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('164', 'S025', '31', '独生女', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('165', 'S025', '32', '长女', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('166', 'S025', '33', '次女', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('167', 'S025', '34', '三女', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('168', 'S025', '35', '四女', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('169', 'S025', '36', '五女', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('170', 'S025', '37', '养女或继女', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('171', 'S025', '51', '父亲', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('172', 'S025', '52', '母亲', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('173', 'S025', '53', '公公', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('174', 'S025', '54', '婆婆', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('175', 'S025', '55', '岳父', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('176', 'S025', '56', '岳母', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('177', 'S025', '57', '继父或养父', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('178', 'S025', '58', '继母或养母', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('179', 'S025', '71', '兄', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('180', 'S025', '72', '嫂', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('181', 'S025', '73', '弟', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('182', 'S025', '74', '弟媳', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('183', 'S025', '75', '姐姐', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('184', 'S025', '76', '姐夫', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('185', 'S025', '77', '妹妹', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('186', 'S025', '78', '妹夫', '1', '9', '25');
INSERT INTO `basedata_valuelistitem` VALUES ('187', 'S026', '01', '中国共产党党员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('188', 'S026', '02', '中国共产党预备党员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('189', 'S026', '03', '中国共产主义青年团团员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('190', 'S026', '04', '中国国民党革命委员会会员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('191', 'S026', '05', '中国民主同盟盟员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('192', 'S026', '06', '中国民主建国会会员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('193', 'S026', '07', '中国民主促进会会员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('194', 'S026', '08', '中国农工民主党党员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('195', 'S026', '09', '中国致公党党员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('196', 'S026', '10', '九三学社社员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('197', 'S026', '11', '台湾民主自治同盟盟员', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('198', 'S026', '12', '无党派民主人士', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('199', 'S026', '13', '群众', '1', '9', '26');
INSERT INTO `basedata_valuelistitem` VALUES ('200', 'S027', '0', '未服兵役', '1', '9', '27');
INSERT INTO `basedata_valuelistitem` VALUES ('201', 'S027', '1', '退出现役', '1', '9', '27');
INSERT INTO `basedata_valuelistitem` VALUES ('202', 'S027', '2', '士兵预备役', '1', '9', '27');
INSERT INTO `basedata_valuelistitem` VALUES ('203', 'S027', '3', '军官预备役', '1', '9', '27');
INSERT INTO `basedata_valuelistitem` VALUES ('204', 'S027', '4', '服现役', '1', '9', '27');
INSERT INTO `basedata_valuelistitem` VALUES ('205', 'S027', '9', '其他', '1', '9', '27');
INSERT INTO `basedata_valuelistitem` VALUES ('206', 'S028', '0', '不明', '1', '9', '28');
INSERT INTO `basedata_valuelistitem` VALUES ('207', 'S028', '1', 'A型', '1', '9', '28');
INSERT INTO `basedata_valuelistitem` VALUES ('208', 'S028', '2', 'B型', '1', '9', '28');
INSERT INTO `basedata_valuelistitem` VALUES ('209', 'S028', '3', 'O型', '1', '9', '28');
INSERT INTO `basedata_valuelistitem` VALUES ('210', 'S028', '4', 'AB型', '1', '9', '28');
INSERT INTO `basedata_valuelistitem` VALUES ('211', 'S028', '9', '其他', '1', '9', '28');
INSERT INTO `basedata_valuelistitem` VALUES ('212', 'S029', '11', '国家公务员', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('213', 'S029', '13', '专业技术人员', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('214', 'S029', '17', '职员', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('215', 'S029', '21', '企业管理人员', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('216', 'S029', '24', '工人', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('217', 'S029', '27', '农民', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('218', 'S029', '31', '学生', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('219', 'S029', '37', '现役军人', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('220', 'S029', '51', '自由职业者', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('221', 'S029', '54', '个人经营者', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('222', 'S029', '70', '无业人员', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('223', 'S029', '80', '退（离）休人员', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('224', 'S029', '90', '其他', '1', '9', '29');
INSERT INTO `basedata_valuelistitem` VALUES ('225', 'S030', '1', '劳动合同', '1', '9', '30');
INSERT INTO `basedata_valuelistitem` VALUES ('226', 'S030', '2', '岗位聘用合同', '1', '9', '30');
INSERT INTO `basedata_valuelistitem` VALUES ('227', 'S030', '3', '聘任合同', '1', '9', '30');
INSERT INTO `basedata_valuelistitem` VALUES ('228', 'S030', '9', '其他', '1', '9', '30');
INSERT INTO `basedata_valuelistitem` VALUES ('229', 'S031', '1', '有固定期限', '1', '9', '31');
INSERT INTO `basedata_valuelistitem` VALUES ('230', 'S031', '2', '无固定期限', '1', '9', '31');
INSERT INTO `basedata_valuelistitem` VALUES ('231', 'S031', '3', '以任务为限', '1', '9', '31');
INSERT INTO `basedata_valuelistitem` VALUES ('232', 'S031', '9', '其他', '1', '9', '31');
INSERT INTO `basedata_valuelistitem` VALUES ('233', 'S032', '1', '严格保密', '1', '9', '32');
INSERT INTO `basedata_valuelistitem` VALUES ('234', 'S032', '2', '需要保密', '1', '9', '32');
INSERT INTO `basedata_valuelistitem` VALUES ('235', 'S032', '3', '无需保密', '1', '9', '32');
INSERT INTO `basedata_valuelistitem` VALUES ('236', 'S033', '01', '初定', '1', '9', '33');
INSERT INTO `basedata_valuelistitem` VALUES ('237', 'S033', '02', '续订', '1', '9', '33');
INSERT INTO `basedata_valuelistitem` VALUES ('238', 'S033', '03', '变更', '1', '9', '33');
INSERT INTO `basedata_valuelistitem` VALUES ('239', 'S033', '04', '终止', '1', '9', '33');
INSERT INTO `basedata_valuelistitem` VALUES ('240', 'S033', '05', '解除', '1', '9', '33');
INSERT INTO `basedata_valuelistitem` VALUES ('241', 'S034', '1', '定时', '1', '9', '34');
INSERT INTO `basedata_valuelistitem` VALUES ('242', 'S034', '2', '不定时', '1', '9', '34');
INSERT INTO `basedata_valuelistitem` VALUES ('243', 'S034', '3', '综合计算工时', '1', '9', '34');
INSERT INTO `basedata_valuelistitem` VALUES ('244', 'S035', '10', '研究生教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('245', 'S035', '20', '大学本科教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('246', 'S035', '30', '大学专科教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('247', 'S035', '40', '中等职业教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('248', 'S035', '60', '普通高级中学教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('249', 'S035', '70', '初级中学教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('250', 'S035', '80', '小学教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('251', 'S035', '90', '其他', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('252', 'S035', '99', '非学历教育', '1', '9', '35');
INSERT INTO `basedata_valuelistitem` VALUES ('254', 'S036', '11', '全日制小学', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('255', 'S036', '12', '全日制中学', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('256', 'S036', '13', '全日制中专', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('257', 'S036', '14', '全日制高等学校', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('259', 'S036', '41', '国家行政学院', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('260', 'S036', '42', '省行政学院', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('261', 'S036', '49', '其他行政学院（校）', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('262', 'S036', '71', '中央党校', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('263', 'S036', '72', '省委党校', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('264', 'S036', '73', '地、市委党校', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('265', 'S036', '81', '军队（武警）高等院校', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('266', 'S036', '82', '军队（武警）中等专科学校', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('267', 'S036', '83', '军队（武警）党校', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('268', 'S036', '84', '军队（武警）科研机构', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('269', 'S036', '85', '军队（武警）医院', '1', '9', '36');
INSERT INTO `basedata_valuelistitem` VALUES ('270', 'S037', '1', '名誉博士 ', '1', '9', '37');
INSERT INTO `basedata_valuelistitem` VALUES ('271', 'S037', '2', '博士', '1', '9', '37');
INSERT INTO `basedata_valuelistitem` VALUES ('272', 'S037', '3', '硕士', '1', '9', '37');
INSERT INTO `basedata_valuelistitem` VALUES ('273', 'S037', '4', '学士', '1', '9', '37');
INSERT INTO `basedata_valuelistitem` VALUES ('274', 'S037', '5', '双学士', '1', '9', '37');
INSERT INTO `basedata_valuelistitem` VALUES ('275', 'S038', '01', '哲学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('276', 'S038', '02', '经济学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('277', 'S038', '03', '法学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('278', 'S038', '04', '教育学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('279', 'S038', '05', '文学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('280', 'S038', '06', '历史学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('281', 'S038', '07', '理学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('282', 'S038', '08', '工学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('283', 'S038', '09', '农学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('284', 'S038', '10', '医学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('285', 'S038', '11', '军事学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('286', 'S038', '12', '管理学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('287', 'S038', '14', '建筑学', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('288', 'S037', '9', '其他', '1', '9', '37');
INSERT INTO `basedata_valuelistitem` VALUES ('289', 'S038', '99', '其他', '1', '9', '38');
INSERT INTO `basedata_valuelistitem` VALUES ('290', 'S039', '15', '复员干部', '1', '9', '39');
INSERT INTO `basedata_valuelistitem` VALUES ('291', 'S039', '10', '军转干部', '1', '9', '39');
INSERT INTO `basedata_valuelistitem` VALUES ('292', 'S039', '20', '转业士官', '1', '9', '39');
INSERT INTO `basedata_valuelistitem` VALUES ('293', 'S039', '30', '复员士官', '1', '9', '39');
INSERT INTO `basedata_valuelistitem` VALUES ('294', 'S039', '40', '退役士兵', '1', '9', '39');
INSERT INTO `basedata_valuelistitem` VALUES ('295', 'S039', '99', '非复转军人', '1', '9', '39');
INSERT INTO `basedata_valuelistitem` VALUES ('296', 'S040', '1', '党委（党组）书记', '1', '9', '40');
INSERT INTO `basedata_valuelistitem` VALUES ('297', 'S040', '2', '党委（党组）副书记', '1', '9', '40');
INSERT INTO `basedata_valuelistitem` VALUES ('298', 'S040', '3', '党委常委（党组成员）', '1', '9', '40');
INSERT INTO `basedata_valuelistitem` VALUES ('299', 'S040', '4', '纪委书记（纪检组组长）', '1', '9', '40');
INSERT INTO `basedata_valuelistitem` VALUES ('300', 'S040', '6', '工会主席', '1', '9', '40');
INSERT INTO `basedata_valuelistitem` VALUES ('301', 'S040', '8', '其他党委（党组）负责人', '1', '9', '40');
INSERT INTO `basedata_valuelistitem` VALUES ('302', 'S040', '9', '非党委负责人', '1', '9', '40');
INSERT INTO `basedata_valuelistitem` VALUES ('303', 'S041', '010101', '董事长', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('304', 'S041', '010102', '副董事长', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('305', 'S041', '010103', '董事', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('306', 'S041', '010104', '职工董事', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('307', 'S041', '0201', '监事会主席', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('308', 'S041', '0202', '监事会副主席', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('309', 'S041', '0203', '监事', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('310', 'S041', '0204', '国资委派出监事', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('311', 'S041', '0205', '职工监事', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('312', 'S041', '00', '非董事监事', '1', '9', '41');
INSERT INTO `basedata_valuelistitem` VALUES ('313', 'S042', '00', '非特殊工种', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('314', 'S042', '11', '汽机运行值班工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('315', 'S042', '12', '锅炉运行值班工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('316', 'S042', '13', '燃料运行值班工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('317', 'S042', '14', '锅炉本体检修工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('318', 'S042', '15', '保温工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('319', 'S042', '16', '钢球磨煤机及制粉系统检修工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('320', 'S042', '17', '水轮机检修工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('321', 'S042', '6', '其他（由地方社会保障部门认可的特殊工种）', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('322', 'S042', '21', '锅炉本体安装工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('323', 'S042', '22', '管道安装工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('324', 'S042', '23', '筑炉瓦工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('325', 'S042', '24', '装模工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('326', 'S042', '31', '水轮机安装工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('327', 'S042', '32', '采石工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('328', 'S042', '33', '爆破', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('329', 'S042', '34', '石料粉碎工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('330', 'S042', '35', '潜水员', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('331', 'S042', '35', '轮机工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('332', 'S042', '37', '水手', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('333', 'S042', '41', '翻砂铸造工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('334', 'S042', '42', '喷砂工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('335', 'S042', '43', '镀锌工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('336', 'S042', '44', '电镀工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('337', 'S042', '45', '印刷线路制板工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('338', 'S042', '46', '浸漆工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('339', 'S042', '47', '电焊条制作工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('340', 'S042', '48', '注塑工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('341', 'S042', '49', '铆工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('342', 'S042', '51', '混凝土工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('343', 'S042', '52', '钢筋工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('344', 'S042', '53', '架子工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('345', 'S042', '54', '推土机司机', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('346', 'S042', '55', '挖土机司机', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('347', 'S042', '56', '重型载重汽车司机', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('348', 'S042', '57', '野外勘测工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('349', 'S042', '58', '沥青工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('350', 'S042', '59', '环氧树脂工', '1', '9', '42');
INSERT INTO `basedata_valuelistitem` VALUES ('351', 'S043', '1', '健康或良好', '1', '9', '43');
INSERT INTO `basedata_valuelistitem` VALUES ('352', 'S043', '2', '一般或较弱', '1', '9', '43');
INSERT INTO `basedata_valuelistitem` VALUES ('353', 'S043', '3', '有慢性病（一）', '1', '9', '43');
INSERT INTO `basedata_valuelistitem` VALUES ('354', 'S043', '4', '有慢性病（二）', '1', '9', '43');
INSERT INTO `basedata_valuelistitem` VALUES ('355', 'S043', '6', '残疾', '1', '9', '43');
INSERT INTO `basedata_valuelistitem` VALUES ('356', 'S043', '7', '军残', '1', '9', '43');
INSERT INTO `basedata_valuelistitem` VALUES ('357', 'S044', 'S', '内部服务', '1', '9', '44');
INSERT INTO `basedata_valuelistitem` VALUES ('358', 'S044', 'R', '设备维修', '1', '9', '44');
INSERT INTO `basedata_valuelistitem` VALUES ('359', 'S044', 'Q', '问题咨询', '1', '9', '44');
INSERT INTO `basedata_valuelistitem` VALUES ('360', 'S045', 'HR', '人事', '1', '1', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('361', 'S045', 'FI', '财务', '1', '2', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('362', 'S045', 'AD', '行政', '1', '4', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('363', 'S045', 'MA', '市场', '1', '4', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('364', 'S045', 'BU', '商务', '1', '5', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('365', 'S045', 'CS', '客服', '1', '6', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('366', 'S045', 'OT', '其他', '1', '7', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('367', 'S046', 'NEW', '新建', '1', '9', '46');
INSERT INTO `basedata_valuelistitem` VALUES ('368', 'S046', 'SCHE', '调度', '1', '9', '46');
INSERT INTO `basedata_valuelistitem` VALUES ('369', 'S046', 'PROC', '处理', '1', '9', '46');
INSERT INTO `basedata_valuelistitem` VALUES ('370', 'S046', 'CLOSE', '关闭', '1', '9', '46');
INSERT INTO `basedata_valuelistitem` VALUES ('371', 'S044', 'D', '采购申请', '1', '9', '44');
INSERT INTO `basedata_valuelistitem` VALUES ('372', 'S047', '0', '无试用期', '1', '1', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('373', 'S047', '1', '1个月', '1', '2', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('374', 'S047', '2', '2个月', '1', '2', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('375', 'S047', '3', '3个月', '1', '3', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('376', 'S047', '4', '4个月', '1', '4', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('377', 'S047', '5', '5个月', '1', '5', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('378', 'S047', '6', '6个月', '1', '6', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('379', 'S047', '12', '1年', '1', '12', '47');
INSERT INTO `basedata_valuelistitem` VALUES ('380', 'S048', '10', '工资', '1', '9', '48');
INSERT INTO `basedata_valuelistitem` VALUES ('381', 'S048', '20', '社保', '1', '9', '48');
INSERT INTO `basedata_valuelistitem` VALUES ('382', 'S048', '30', '奖金', '1', '9', '48');
INSERT INTO `basedata_valuelistitem` VALUES ('383', 'S048', '40', '福利', '1', '9', '48');
INSERT INTO `basedata_valuelistitem` VALUES ('384', 'S048', '99', '其他', '1', '9', '48');
INSERT INTO `basedata_valuelistitem` VALUES ('385', 'S049', '+', '增加', '1', '9', '49');
INSERT INTO `basedata_valuelistitem` VALUES ('386', 'S049', '-', '扣款', '1', '9', '49');
INSERT INTO `basedata_valuelistitem` VALUES ('387', 'S050', '10', '固定值', '1', '9', '50');
INSERT INTO `basedata_valuelistitem` VALUES ('388', 'S050', '20', '比例值', '1', '9', '50');
INSERT INTO `basedata_valuelistitem` VALUES ('390', 'S050', '30', '计算值', '1', '9', '50');
INSERT INTO `basedata_valuelistitem` VALUES ('391', 'S051', '10', '个人辞职', '1', '9', '51');
INSERT INTO `basedata_valuelistitem` VALUES ('392', 'S051', '20', '合同到期', '1', '9', '51');
INSERT INTO `basedata_valuelistitem` VALUES ('393', 'S051', '30', '公司辞退', '1', '9', '51');
INSERT INTO `basedata_valuelistitem` VALUES ('394', 'S051', '40', '人员死亡', '1', '9', '51');
INSERT INTO `basedata_valuelistitem` VALUES ('395', 'S051', '50', '法定退休', '1', '9', '51');
INSERT INTO `basedata_valuelistitem` VALUES ('396', 'S051', '60', '其他', '1', '9', '51');
INSERT INTO `basedata_valuelistitem` VALUES ('397', 'S045', 'PO', '采购', '1', '3', '45');
INSERT INTO `basedata_valuelistitem` VALUES ('398', 'S052', '0.00', '0%', '1', '9', '52');
INSERT INTO `basedata_valuelistitem` VALUES ('399', 'S052', '0.03', '3%', '1', '9', '52');
INSERT INTO `basedata_valuelistitem` VALUES ('400', 'S052', '0.05', '5%', '1', '9', '52');
INSERT INTO `basedata_valuelistitem` VALUES ('401', 'S052', '0.07', '7%', '1', '9', '52');
INSERT INTO `basedata_valuelistitem` VALUES ('402', 'S052', '0.10', '10%', '1', '9', '52');
INSERT INTO `basedata_valuelistitem` VALUES ('403', 'S052', '0.17', '17%', '1', '9', '52');
INSERT INTO `basedata_valuelistitem` VALUES ('404', 'S053', '10', '普通发票', '1', '9', '53');
INSERT INTO `basedata_valuelistitem` VALUES ('405', 'S053', '20', '增值税专用发票', '1', '9', '53');
INSERT INTO `basedata_valuelistitem` VALUES ('406', 'S053', '30', '专业发票', '1', '9', '53');
INSERT INTO `basedata_valuelistitem` VALUES ('407', 'S054', '10', '生产物料', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('408', 'S054', '20', '建筑物/培训室', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('409', 'S054', '30', '员工宿舍', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('410', 'S054', '40', '工卡/饭卡', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('411', 'S054', '50', '车辆', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('412', 'S054', '60', '图书', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('413', 'S054', '70', '工位', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('414', 'S054', '80', '工单服务', '1', '9', '54');
INSERT INTO `basedata_valuelistitem` VALUES ('415', 'S054', '11', '办公用品', '1', '9', '54');

-- ----------------------------
-- Table structure for basedata_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `basedata_warehouse`;
CREATE TABLE `basedata_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `location` varchar(120) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_warehouse_9cf869aa` (`org_id`),
  CONSTRAINT `basedata_warehouse_org_id_1160a0d2_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_warehouse
-- ----------------------------
INSERT INTO `basedata_warehouse` VALUES ('1', 'A01', '电力信息一号库', '1', '', null);
INSERT INTO `basedata_warehouse` VALUES ('2', 'A02', '内部运营服务', '1', '', null);
INSERT INTO `basedata_warehouse` VALUES ('3', 'A03', '办公用品仓库', '1', '', null);
INSERT INTO `basedata_warehouse` VALUES ('11', 'FR', '水果库', '1', null, null);

-- ----------------------------
-- Table structure for basedata_warehouse_users
-- ----------------------------
DROP TABLE IF EXISTS `basedata_warehouse_users`;
CREATE TABLE `basedata_warehouse_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouse_id` (`warehouse_id`,`user_id`),
  KEY `basedata_warehouse_users_user_id_c95aacd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `basedata_warehouse_users_user_id_c95aacd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `basedata_warehous_warehouse_id_2b476168_fk_basedata_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `basedata_warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_warehouse_users
-- ----------------------------

-- ----------------------------
-- Table structure for basedata_workexperience
-- ----------------------------
DROP TABLE IF EXISTS `basedata_workexperience`;
CREATE TABLE `basedata_workexperience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `organization` varchar(120) NOT NULL,
  `position` varchar(120) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_workexperi_employee_id_1ccfb6d0_fk_basedata_employee_id` (`employee_id`),
  CONSTRAINT `basedata_workexperi_employee_id_1ccfb6d0_fk_basedata_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `basedata_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basedata_workexperience
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1148 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('986', '2015-06-28 06:19:13', '18', '用户信息', '3', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('987', '2015-06-28 06:19:51', '19', '用户信息导入', '1', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('988', '2015-06-28 06:21:08', '19', '用户信息导入', '2', '已修改 attach 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('989', '2015-06-28 07:27:18', '1', '规章制度-考勤手册', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('990', '2015-06-28 07:40:49', '1', '职员', '2', '已修改 permissions 。', '3', '11');
INSERT INTO `django_admin_log` VALUES ('991', '2015-06-28 08:16:44', '1', '【模板文档】-【基础数据】-1001部门岗位员工导入模板', '2', '已修改 title，keywords，description，tp 和 attach 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('992', '2015-06-28 08:18:34', '1', '【模板文档】-【基础数据】-1001部门岗位员工导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('993', '2015-06-28 08:20:33', '1', '【模板文档】-【基础数据】-1001部门岗位员工导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('994', '2015-06-28 08:21:18', '1', '【模板文档】-【基础数据】-1001部门岗位员工导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('995', '2015-06-28 08:23:01', '2', '【模板文档】-【基础数据】-1002期初库存导入模板', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('996', '2015-06-28 08:23:55', '2', '【模板文档】-【基础数据】-1002期初库存导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('997', '2015-06-28 08:26:09', '2', '【模板文档】-【基础数据】-1002期初库存导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('998', '2015-06-28 08:27:02', '2', '【模板文档】-【基础数据】-1002期初库存导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('999', '2015-06-28 08:30:17', '3', '【模板文档】-【基础数据】-1003合作伙伴导入模板', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1000', '2015-06-28 08:31:03', '3', '【模板文档】-【基础数据】-1003合作伙伴导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1001', '2015-06-28 08:32:25', '4', '【模板文档】-【基础数据】-1004项目信息导入模板', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1002', '2015-06-28 08:32:33', '3', '【模板文档】-【基础数据】-1003合作伙伴导入模板', '2', '已修改 tp 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1003', '2015-06-28 08:32:43', '2', '【模板文档】-【基础数据】-1002期初库存导入模板', '2', '已修改 tp 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1004', '2015-06-28 08:35:37', '5', '【模板文档】-【基础数据】-1005用户信息导入模板', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1005', '2015-06-28 08:35:59', '5', '【模板文档】-【基础数据】-1005用户信息导入模板', '2', '已修改 tp 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1006', '2015-06-28 08:39:50', '6', '【模板文档】-【明细数据】-2001报价单明细导入模板', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1007', '2015-06-28 08:44:03', '6', '【模板文档】-【明细数据】-2001报价单明细导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1008', '2015-06-28 08:45:56', '6', '【模板文档】-【明细数据】-2001报价单明细导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1009', '2015-06-28 08:47:41', '7', '【模板文档】-【明细数据】-2002需求单明细导入模板', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1010', '2015-06-28 08:48:09', '7', '【模板文档】-【明细数据】-2002需求单明细导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1011', '2015-06-28 08:50:09', '8', '【模板文档】-【明细数据】-2003采购单明细导入模板', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1012', '2015-06-28 08:54:09', '1', '【模板文档】-【基础数据】-1001部门岗位员工导入模板', '2', '已修改 description 。', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1013', '2015-06-28 08:58:43', '19', '用户信息导入', '3', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1014', '2015-06-28 08:58:43', '16', '项目导入', '3', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1015', '2015-06-28 08:58:43', '15', '合作伙伴', '3', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1016', '2015-06-28 09:03:59', '20', '【上线准备】-【部门|岗位|员工】数据导入', '1', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1017', '2015-06-28 09:06:51', '20', '【上线准备】-【部门|岗位|员工】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1018', '2015-06-28 09:07:25', '20', '【上线准备】-【部门|岗位|员工】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1019', '2015-06-28 09:07:45', '20', '【上线准备】-【部门|岗位|员工】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1020', '2015-06-28 09:08:36', '20', '【上线准备】-【部门|岗位|员工】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1021', '2015-06-28 09:09:24', '21', '【上线准备】-【用户信息】数据导入', '1', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1022', '2015-06-28 09:10:16', '21', '【上线准备】-【用户信息】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1023', '2015-06-28 09:10:30', '21', '【上线准备】-【用户信息】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1024', '2015-06-28 09:11:53', '21', '【上线准备】-【用户信息】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1025', '2015-06-28 09:12:02', '20', '【上线准备】-【部门|岗位|员工】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1026', '2015-06-28 09:12:46', '21', '【上线准备】-【用户信息】数据导入', '2', '已修改 is_clear 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1027', '2015-06-28 09:13:34', '22', '【上线准备】-【合作伙伴信息】数据导入', '1', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1028', '2015-06-28 09:14:29', '22', '【上线准备】-【合作伙伴信息】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1029', '2015-06-28 09:14:45', '22', '【上线准备】-【合作伙伴信息】数据导入', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1030', '2015-06-28 09:16:24', '20', '【上线准备】-【部门|岗位|员工】第一步', '2', '已修改 title 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1031', '2015-06-28 09:16:37', '21', '【上线准备】-【用户信息】第二步', '2', '已修改 title 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1032', '2015-06-28 09:16:49', '22', '【上线准备】-【合作伙伴信息】第三步', '2', '已修改 title 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1033', '2015-06-28 09:18:59', '23', '【上线准备】-【项目信息】数据导入', '1', '', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1034', '2015-06-28 09:19:11', '23', '【上线准备】-【项目信息】第四步', '2', '已修改 title 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1035', '2015-06-28 09:19:28', '23', '【上线准备】-【项目信息】第四步（可选）', '2', '已修改 title 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1036', '2015-06-28 09:20:20', '22', '【上线准备】-【合作伙伴信息】第三步', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1037', '2015-06-28 09:20:48', '23', '【上线准备】-【项目信息】第四步（可选）', '2', '已修改 description 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1038', '2015-06-29 21:02:51', '57', ' 加班申请', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1039', '2015-06-29 21:03:37', '58', ' 调休申请', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1040', '2015-06-29 21:03:55', '58', 'IT00058 调休申请', '2', '已修改 tp 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1041', '2015-06-29 21:06:13', '59', ' 休假申请', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1042', '2015-06-29 21:07:24', '58', 'IT00058 调休申请', '2', '已修改 spec 和 warehouse 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1043', '2015-06-29 21:09:02', '57', 'IT00057 加班申请', '2', '已修改 spec 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1044', '2015-06-29 21:13:47', '60', ' 入职办理', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1045', '2015-06-29 21:15:17', '3', 'IT00003 用车申请', '2', '已变更 name 和 data_type for 扩展参数 \"起始里程\". 已变更 name 和 data_type for 扩展参数 \"结束里程\". 已变更 name for 扩展参数 \"所用里程\". 已变更 name for 扩展参数 \"目的地\".', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1046', '2015-06-29 21:16:00', '3', 'IT00003 用车申请', '2', '已修改 spec 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1047', '2015-06-29 21:16:37', '57', 'IT00057 加班申请', '2', '已修改 is_virtual 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1048', '2015-06-29 21:16:46', '58', 'IT00058 调休申请', '2', '已修改 can_sale 和 is_virtual 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1049', '2015-06-29 21:16:56', '59', 'IT00059 休假申请', '2', '已修改 can_sale 和 is_virtual 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1050', '2015-06-29 21:17:15', '60', 'IT00060 入职办理', '2', '已修改 is_virtual 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1051', '2015-06-29 21:18:44', '1', 'IT00001 出差申请', '2', '已修改 spec 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1052', '2015-06-29 21:22:36', '61', ' 用印申请', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1053', '2015-06-29 21:23:43', '3', 'IT00003 用车申请', '2', '已修改 spec 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1054', '2015-06-29 21:27:04', '60', 'IT00060 入职办理', '2', '已添加 扩展参数 \"ERP系统/帐号\". 已添加 扩展参数 \"邮箱开通/邮箱地址\". 已变更 name for 扩展参数 \"员工手册/保密培训\".', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1055', '2015-06-29 21:33:14', '62', ' 收入证明开具', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1056', '2015-06-29 21:38:11', '63', ' 员工离职', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1057', '2015-06-29 21:39:13', '6', 'IT00006 F2-H03 罗浮厅', '2', '已修改 spec 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1058', '2015-06-29 21:40:04', '6', 'IT00006 2号楼3楼大会议室', '2', '已修改 name 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1059', '2015-06-29 21:42:10', '62', 'IT00062 收入证明', '2', '已修改 name 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1060', '2015-06-29 21:42:26', '62', 'IT00062 收入证明', '2', '已修改 spec 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1061', '2015-06-29 22:00:18', '18', ' ', '3', '', '14', '11');
INSERT INTO `django_admin_log` VALUES ('1062', '2015-06-29 22:01:03', '17', '中国船舶重工业集团', '2', '已修改 name 和 short 。', '14', '11');
INSERT INTO `django_admin_log` VALUES ('1063', '2015-06-29 22:02:04', '61', 'IT00061 用印申请', '2', '已修改 spec 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1064', '2015-06-30 20:07:48', '63', 'IT00063 离职办理', '2', '已修改 name 。', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1065', '2015-06-30 20:09:12', '64', ' 培训申请', '1', '', '27', '11');
INSERT INTO `django_admin_log` VALUES ('1066', '2015-06-30 20:22:27', '18', '京东商城', '1', '', '14', '11');
INSERT INTO `django_admin_log` VALUES ('1067', '2015-06-30 20:23:07', '1', ' 采购物品', '1', '', '59', '11');
INSERT INTO `django_admin_log` VALUES ('1068', '2015-06-30 20:23:36', '1', 'CG00001 采购物品', '2', '已变更 price 和 tax for 采购明细 \"POItem object\". 已变更 measure，price 和 tax for 采购明细 \"POItem object\".', '59', '11');
INSERT INTO `django_admin_log` VALUES ('1069', '2015-07-01 05:58:07', 'None', '1', '1', '', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1070', '2015-07-01 06:17:53', '2', '2', '1', '', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1071', '2015-07-01 06:18:24', '2', '2', '2', '没有字段被修改。', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1072', '2015-07-01 06:29:17', '2', '2', '2', '已修改 description 。', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1073', '2015-07-01 06:32:18', '2', '2', '2', '已修改 description 。', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1074', '2015-07-01 06:34:14', '2', '2', '2', '已修改 description 。', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1075', '2015-07-01 06:35:11', '2', '2', '2', '已修改 description 。', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1076', '2015-07-01 06:35:55', '2', '2', '2', '已修改 description 。', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1077', '2015-07-01 06:37:00', '2', '2', '2', '已修改 description 。', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1078', '2015-07-01 06:37:21', '3', '123', '1', '', '63', '11');
INSERT INTO `django_admin_log` VALUES ('1079', '2015-07-01 06:46:22', '2', '项目审批流程', '1', '', '34', '11');
INSERT INTO `django_admin_log` VALUES ('1080', '2015-07-02 05:04:19', '1', '张三', '2', '已修改 code，gender 和 rank 。', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1081', '2015-07-02 05:16:59', '13', 'zhangsan', '1', '', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1082', '2015-07-02 05:17:08', '14', 'lisi', '1', '', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1083', '2015-07-02 05:17:21', '15', 'wangwu', '1', '', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1084', '2015-07-02 05:17:32', '16', 'dongyong', '1', '', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1085', '2015-07-02 05:18:01', '16', 'dongyong', '2', '已修改 first_name 和 groups 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1086', '2015-07-02 05:18:14', '14', 'lisi', '2', '已修改 first_name 和 groups 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1087', '2015-07-02 05:18:32', '15', 'wangwu', '2', '已修改 first_name 和 groups 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1088', '2015-07-02 05:18:47', '13', 'zhangsan', '2', '已修改 first_name 和 groups 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1089', '2015-07-02 05:19:41', '16', 'dongyong', '2', '已修改 is_staff 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1090', '2015-07-02 05:19:48', '14', 'lisi', '2', '已修改 is_staff 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1091', '2015-07-02 05:19:54', '15', 'wangwu', '2', '已修改 is_staff 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1092', '2015-07-02 05:20:01', '13', 'zhangsan', '2', '已修改 is_staff 。', '4', '11');
INSERT INTO `django_admin_log` VALUES ('1093', '2015-07-02 05:22:26', '2', '张三', '1', '', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1094', '2015-07-02 05:23:53', '2', '张三', '2', '已修改 birthday 和 user 。', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1095', '2015-07-02 05:24:41', '1', '李四', '2', '已修改 name，pinyin，gender 和 user 。', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1096', '2015-07-02 05:25:23', '2', '张三', '2', '已修改 workday 和 startday 。', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1097', '2015-07-02 05:27:10', '3', '王五', '1', '', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1098', '2015-07-02 05:28:44', '4', '董永', '1', '', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1099', '2015-07-02 05:44:31', '5', 'N01-商务主管审批', '2', '已修改 next_user_handler 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1100', '2015-07-02 06:07:37', '4', '1004 董永', '2', '已修改 user 。', '30', '11');
INSERT INTO `django_admin_log` VALUES ('1101', '2015-07-02 06:18:45', '5', 'N01-商务主管审批', '2', '已修改 status_field 和 status_value 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1102', '2015-07-02 06:19:06', '6', 'N02-财务经理审批', '2', '已修改 next_user_handler，status_field 和 status_value 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1103', '2015-07-02 06:19:27', '7', 'N03-总经理审批', '2', '已修改 handler_type 和 positions 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1104', '2015-07-02 20:50:47', '5', 'N01-商务主管审批', '2', '已修改 next 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1105', '2015-07-02 20:58:30', '5', 'N01-商务主管审批', '2', '已修改 next 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1106', '2015-07-02 21:43:08', '5', 'N01-商务主管审批', '2', '已修改 can_edit 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1107', '2015-07-02 21:50:00', '5', 'N01-商务主管审批', '2', '已修改 can_edit 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1108', '2015-07-02 21:51:23', '5', 'N01-商务主管审批', '2', '已修改 can_edit 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1109', '2015-07-03 05:46:47', '6', 'N02-财务经理审批', '2', '已修改 action 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1110', '2015-07-03 06:19:36', '7', '内部运营项目', '2', '已修改 budget 。', '19', '11');
INSERT INTO `django_admin_log` VALUES ('1111', '2015-07-03 06:24:43', '5', 'N01-商务主管审批', '2', '已修改 next_node_handler 。', '35', '11');
INSERT INTO `django_admin_log` VALUES ('1112', '2015-07-03 21:28:30', '9', '【使用手册】-功能概述', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1113', '2015-07-03 21:28:58', '10', '【使用手册】-基本操作', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1114', '2015-07-03 21:29:29', '11', '【使用手册】-个人自助', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1115', '2015-07-03 21:29:58', '12', '【使用手册】-销售管理', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1116', '2015-07-03 21:30:39', '13', '【使用手册】-采购管理', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1117', '2015-07-03 21:31:19', '14', '【使用手册】-库存管理', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1118', '2015-07-03 21:31:41', '15', '【使用手册】-组织机构', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1119', '2015-07-03 21:32:03', '16', '【使用手册】-基础数据', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1120', '2015-07-03 21:32:26', '17', '【使用手册】-工作流管理', '1', '', '76', '11');
INSERT INTO `django_admin_log` VALUES ('1121', '2015-07-04 10:56:34', '1', '-申请采购办公用品一批', '1', '', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1122', '2015-07-04 11:06:00', '9', '中海洋船舶工业集团张江工业园配电柜项目', '1', '', '19', '13');
INSERT INTO `django_admin_log` VALUES ('1123', '2015-07-04 11:58:58', '2', '-出差申请（重庆）', '1', '', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1124', '2015-07-04 12:15:27', '3', '-用车申请（张江）', '1', '', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1125', '2015-07-04 12:18:14', '4', '-用车申请（张江）', '1', '', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1126', '2015-07-04 12:20:21', '3', 'WO00003-用车申请（张江）', '2', '已修改 classification 。', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1127', '2015-07-04 13:36:53', '1', ' 张三 2015年3月份行政部备用金 J:3000.00 Y:3000.00', '1', '', '43', '13');
INSERT INTO `django_admin_log` VALUES ('1128', '2015-07-04 13:38:14', '1', '15年3月份行政部费用报销', '1', '', '44', '13');
INSERT INTO `django_admin_log` VALUES ('1129', '2015-07-04 13:39:34', '1', '15年3月份行政部费用报销', '2', '已添加 费用明细 \"ReimbursementItem object\". 已添加 费用明细 \"ReimbursementItem object\".', '44', '13');
INSERT INTO `django_admin_log` VALUES ('1130', '2015-07-04 13:39:59', '1', '15年3月份行政部费用报销', '2', '已修改 description 。', '44', '13');
INSERT INTO `django_admin_log` VALUES ('1131', '2015-07-04 15:18:13', '3', 'WO00003-用车申请（张江）', '2', '已修改 classification 。', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1132', '2015-07-04 15:19:05', '3', 'WO00003-2号楼3楼男厕所小便池堵塞', '2', '已修改 title 和 description 。', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1133', '2015-07-04 18:15:02', '1', 'WO00001-申请采购办公用品一批', '2', '已修改 description 。', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1134', '2015-07-04 18:21:01', '1', 'WO00001-申请采购办公用品一批', '2', '已修改 service 。', '40', '13');
INSERT INTO `django_admin_log` VALUES ('1135', '2015-07-07 21:09:47', '1', '123', '1', '', '69', '11');
INSERT INTO `django_admin_log` VALUES ('1136', '2015-07-07 21:10:14', '1', '123', '2', '已变更 measure 和 sale_price for 报价明细 \"OfferItem object\". 已变更 measure for 报价明细 \"OfferItem object\". 已变更 measure for 报价明细 \"OfferItem object\".', '69', '11');
INSERT INTO `django_admin_log` VALUES ('1137', '2015-07-15 12:04:06', '20', '【上线准备】-【部门|岗位|员工】第一步', '2', '已修改 attach 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1138', '2015-07-15 12:10:58', '20', '【上线准备】-【部门|岗位|员工】第一步', '2', '已修改 attach 。', '75', '11');
INSERT INTO `django_admin_log` VALUES ('1139', '2015-07-15 12:36:18', '1', '11', '1', '', '54', '11');
INSERT INTO `django_admin_log` VALUES ('1140', '2015-07-15 12:36:39', '1', '11', '2', '已变更 inventory for 出库明细 \"OutItem object\".', '54', '11');
INSERT INTO `django_admin_log` VALUES ('1141', '2015-07-15 12:39:11', '1', '会议接待领用水果', '2', '已修改 title 。 已变更 cnt for 出库明细 \"OutItem object\".', '54', '11');
INSERT INTO `django_admin_log` VALUES ('1142', '2015-07-17 12:07:05', '1', '一批物资入库', '1', '', '53', '11');
INSERT INTO `django_admin_log` VALUES ('1143', '2015-07-17 12:07:23', '1', '一批办公物资入库', '2', '已修改 title 。', '53', '11');
INSERT INTO `django_admin_log` VALUES ('1144', '2015-07-17 12:09:39', '2', '调整一批物资库存', '1', '', '73', '11');
INSERT INTO `django_admin_log` VALUES ('1145', '2015-07-17 12:12:39', '1', '归还物资', '1', '', '71', '11');
INSERT INTO `django_admin_log` VALUES ('1146', '2015-07-17 12:14:55', '1', '归还物资', '2', '已变更 cnt for 返库明细 \"ReturnItem object\".', '71', '11');
INSERT INTO `django_admin_log` VALUES ('1147', '2015-07-17 12:16:36', '1', '上海某集团有限公司', '2', '已修改 name 。', '16', '11');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('13', 'basedata', 'address');
INSERT INTO `django_content_type` VALUES ('15', 'basedata', 'bankaccount');
INSERT INTO `django_content_type` VALUES ('23', 'basedata', 'brand');
INSERT INTO `django_content_type` VALUES ('24', 'basedata', 'category');
INSERT INTO `django_content_type` VALUES ('75', 'basedata', 'dataimport');
INSERT INTO `django_content_type` VALUES ('76', 'basedata', 'document');
INSERT INTO `django_content_type` VALUES ('32', 'basedata', 'education');
INSERT INTO `django_content_type` VALUES ('30', 'basedata', 'employee');
INSERT INTO `django_content_type` VALUES ('29', 'basedata', 'expenseaccount');
INSERT INTO `django_content_type` VALUES ('39', 'basedata', 'extraparam');
INSERT INTO `django_content_type` VALUES ('31', 'basedata', 'family');
INSERT INTO `django_content_type` VALUES ('27', 'basedata', 'material');
INSERT INTO `django_content_type` VALUES ('28', 'basedata', 'materialparam');
INSERT INTO `django_content_type` VALUES ('21', 'basedata', 'measure');
INSERT INTO `django_content_type` VALUES ('14', 'basedata', 'partner');
INSERT INTO `django_content_type` VALUES ('19', 'basedata', 'project');
INSERT INTO `django_content_type` VALUES ('25', 'basedata', 'technicalparametername');
INSERT INTO `django_content_type` VALUES ('26', 'basedata', 'technicalparametervalue');
INSERT INTO `django_content_type` VALUES ('22', 'basedata', 'trade');
INSERT INTO `django_content_type` VALUES ('11', 'basedata', 'valuelist');
INSERT INTO `django_content_type` VALUES ('12', 'basedata', 'valuelistitem');
INSERT INTO `django_content_type` VALUES ('20', 'basedata', 'warehouse');
INSERT INTO `django_content_type` VALUES ('33', 'basedata', 'workexperience');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('50', 'hr', 'departure');
INSERT INTO `django_content_type` VALUES ('48', 'hr', 'employeesalaryitem');
INSERT INTO `django_content_type` VALUES ('47', 'hr', 'entry');
INSERT INTO `django_content_type` VALUES ('46', 'hr', 'salaryitem');
INSERT INTO `django_content_type` VALUES ('49', 'hr', 'transfer');
INSERT INTO `django_content_type` VALUES ('74', 'invent', 'adjustitem');
INSERT INTO `django_content_type` VALUES ('57', 'invent', 'initem');
INSERT INTO `django_content_type` VALUES ('52', 'invent', 'initialinventory');
INSERT INTO `django_content_type` VALUES ('56', 'invent', 'inititem');
INSERT INTO `django_content_type` VALUES ('55', 'invent', 'inoutdetail');
INSERT INTO `django_content_type` VALUES ('51', 'invent', 'inventory');
INSERT INTO `django_content_type` VALUES ('58', 'invent', 'outitem');
INSERT INTO `django_content_type` VALUES ('72', 'invent', 'returnitem');
INSERT INTO `django_content_type` VALUES ('53', 'invent', 'stockin');
INSERT INTO `django_content_type` VALUES ('54', 'invent', 'stockout');
INSERT INTO `django_content_type` VALUES ('73', 'invent', 'wareadjust');
INSERT INTO `django_content_type` VALUES ('71', 'invent', 'warereturn');
INSERT INTO `django_content_type` VALUES ('16', 'organ', 'organization');
INSERT INTO `django_content_type` VALUES ('17', 'organ', 'orgunit');
INSERT INTO `django_content_type` VALUES ('18', 'organ', 'position');
INSERT INTO `django_content_type` VALUES ('61', 'purchase', 'invoice');
INSERT INTO `django_content_type` VALUES ('62', 'purchase', 'payment');
INSERT INTO `django_content_type` VALUES ('60', 'purchase', 'poitem');
INSERT INTO `django_content_type` VALUES ('59', 'purchase', 'purchaseorder');
INSERT INTO `django_content_type` VALUES ('70', 'sale', 'offeritem');
INSERT INTO `django_content_type` VALUES ('69', 'sale', 'offersheet');
INSERT INTO `django_content_type` VALUES ('68', 'sale', 'paymentcollection');
INSERT INTO `django_content_type` VALUES ('67', 'sale', 'saleitem');
INSERT INTO `django_content_type` VALUES ('66', 'sale', 'saleorder');
INSERT INTO `django_content_type` VALUES ('63', 'selfhelp', 'activity');
INSERT INTO `django_content_type` VALUES ('65', 'selfhelp', 'enroll');
INSERT INTO `django_content_type` VALUES ('64', 'selfhelp', 'feedback');
INSERT INTO `django_content_type` VALUES ('43', 'selfhelp', 'loan');
INSERT INTO `django_content_type` VALUES ('44', 'selfhelp', 'reimbursement');
INSERT INTO `django_content_type` VALUES ('45', 'selfhelp', 'reimbursementitem');
INSERT INTO `django_content_type` VALUES ('41', 'selfhelp', 'woextravalue');
INSERT INTO `django_content_type` VALUES ('42', 'selfhelp', 'woitem');
INSERT INTO `django_content_type` VALUES ('40', 'selfhelp', 'workorder');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('9', 'syscfg', 'menu');
INSERT INTO `django_content_type` VALUES ('8', 'syscfg', 'module');
INSERT INTO `django_content_type` VALUES ('10', 'syscfg', 'role');
INSERT INTO `django_content_type` VALUES ('7', 'syscfg', 'site');
INSERT INTO `django_content_type` VALUES ('37', 'workflow', 'history');
INSERT INTO `django_content_type` VALUES ('36', 'workflow', 'instance');
INSERT INTO `django_content_type` VALUES ('34', 'workflow', 'modal');
INSERT INTO `django_content_type` VALUES ('35', 'workflow', 'node');
INSERT INTO `django_content_type` VALUES ('38', 'workflow', 'todolist');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('4', 'contenttypes', '0002_remove_content_type_name', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0002_alter_permission_name_max_length', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0003_alter_user_email_max_length', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0004_alter_user_username_opts', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0005_alter_user_last_login_null', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0006_require_contenttypes_0002', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('10', 'sessions', '0001_initial', '2015-05-01 07:28:26');
INSERT INTO `django_migrations` VALUES ('11', 'syscfg', '0001_initial', '2015-05-01 07:28:27');
INSERT INTO `django_migrations` VALUES ('12', 'basedata', '0001_initial', '2015-05-01 09:25:30');
INSERT INTO `django_migrations` VALUES ('13', 'basedata', '0002_auto_20150501_0929', '2015-05-01 09:30:01');
INSERT INTO `django_migrations` VALUES ('14', 'basedata', '0003_auto_20150501_0931', '2015-05-01 09:31:07');
INSERT INTO `django_migrations` VALUES ('15', 'basedata', '0004_address', '2015-05-01 10:52:00');
INSERT INTO `django_migrations` VALUES ('16', 'basedata', '0005_auto_20150501_1121', '2015-05-01 11:21:30');
INSERT INTO `django_migrations` VALUES ('17', 'basedata', '0006_partner', '2015-05-01 12:02:16');
INSERT INTO `django_migrations` VALUES ('18', 'basedata', '0007_bankaccount', '2015-05-01 15:35:20');
INSERT INTO `django_migrations` VALUES ('19', 'basedata', '0008_auto_20150501_1547', '2015-05-01 15:48:03');
INSERT INTO `django_migrations` VALUES ('20', 'organ', '0001_initial', '2015-05-01 19:14:41');
INSERT INTO `django_migrations` VALUES ('21', 'organ', '0002_auto_20150501_2036', '2015-05-01 20:36:43');
INSERT INTO `django_migrations` VALUES ('22', 'organ', '0003_auto_20150501_2045', '2015-05-01 20:46:03');
INSERT INTO `django_migrations` VALUES ('23', 'basedata', '0009_auto_20150502_0817', '2015-05-02 08:17:55');
INSERT INTO `django_migrations` VALUES ('24', 'basedata', '0010_auto_20150502_0851', '2015-05-02 08:51:53');
INSERT INTO `django_migrations` VALUES ('25', 'basedata', '0011_auto_20150502_0934', '2015-05-02 09:34:17');
INSERT INTO `django_migrations` VALUES ('26', 'basedata', '0012_auto_20150502_0946', '2015-05-02 09:46:24');
INSERT INTO `django_migrations` VALUES ('27', 'basedata', '0013_auto_20150502_1311', '2015-05-02 13:11:33');
INSERT INTO `django_migrations` VALUES ('28', 'basedata', '0014_auto_20150502_1314', '2015-05-02 13:14:16');
INSERT INTO `django_migrations` VALUES ('29', 'basedata', '0015_brand_weight', '2015-05-02 13:21:10');
INSERT INTO `django_migrations` VALUES ('30', 'basedata', '0016_auto_20150502_1402', '2015-05-02 14:04:33');
INSERT INTO `django_migrations` VALUES ('31', 'basedata', '0017_auto_20150502_1731', '2015-05-02 17:31:10');
INSERT INTO `django_migrations` VALUES ('32', 'basedata', '0018_auto_20150502_2100', '2015-05-02 21:00:06');
INSERT INTO `django_migrations` VALUES ('33', 'organ', '0004_auto_20150503_1445', '2015-05-03 14:46:12');
INSERT INTO `django_migrations` VALUES ('34', 'basedata', '0019_auto_20150503_1445', '2015-05-03 14:46:12');
INSERT INTO `django_migrations` VALUES ('35', 'basedata', '0020_auto_20150503_1501', '2015-05-03 15:01:41');
INSERT INTO `django_migrations` VALUES ('36', 'basedata', '0021_auto_20150503_1518', '2015-05-03 15:18:14');
INSERT INTO `django_migrations` VALUES ('37', 'basedata', '0022_auto_20150503_1538', '2015-05-03 15:38:24');
INSERT INTO `django_migrations` VALUES ('38', 'basedata', '0023_auto_20150504_2120', '2015-05-04 21:20:32');
INSERT INTO `django_migrations` VALUES ('39', 'basedata', '0024_education_family_workexperience', '2015-05-04 21:59:53');
INSERT INTO `django_migrations` VALUES ('44', 'organ', '0005_auto_20150510_1141', '2015-05-10 11:41:46');
INSERT INTO `django_migrations` VALUES ('49', 'workflow', '0001_initial', '2015-05-10 12:18:40');
INSERT INTO `django_migrations` VALUES ('50', 'workflow', '0002_auto_20150513_2124', '2015-05-13 21:24:50');
INSERT INTO `django_migrations` VALUES ('51', 'basedata', '0025_auto_20150516_1829', '2015-05-16 18:30:12');
INSERT INTO `django_migrations` VALUES ('52', 'basedata', '0026_extraparam', '2015-05-22 22:01:36');
INSERT INTO `django_migrations` VALUES ('53', 'selfhelp', '0001_initial', '2015-05-22 23:06:19');
INSERT INTO `django_migrations` VALUES ('54', 'selfhelp', '0002_auto_20150522_2330', '2015-05-22 23:30:14');
INSERT INTO `django_migrations` VALUES ('55', 'selfhelp', '0003_auto_20150523_0621', '2015-05-23 06:21:46');
INSERT INTO `django_migrations` VALUES ('56', 'basedata', '0027_auto_20150523_2007', '2015-05-23 20:07:34');
INSERT INTO `django_migrations` VALUES ('57', 'selfhelp', '0004_auto_20150523_2007', '2015-05-23 20:07:35');
INSERT INTO `django_migrations` VALUES ('58', 'selfhelp', '0005_auto_20150523_2031', '2015-05-23 20:31:54');
INSERT INTO `django_migrations` VALUES ('59', 'selfhelp', '0006_auto_20150523_2050', '2015-05-23 20:50:08');
INSERT INTO `django_migrations` VALUES ('60', 'selfhelp', '0007_auto_20150523_2052', '2015-05-23 20:52:17');
INSERT INTO `django_migrations` VALUES ('61', 'selfhelp', '0008_auto_20150523_2133', '2015-05-23 21:33:23');
INSERT INTO `django_migrations` VALUES ('62', 'selfhelp', '0009_auto_20150523_2146', '2015-05-23 21:46:15');
INSERT INTO `django_migrations` VALUES ('65', 'workflow', '0003_auto_20150524_2208', '2015-05-24 22:23:11');
INSERT INTO `django_migrations` VALUES ('67', 'hr', '0001_initial', '2015-05-25 22:12:43');
INSERT INTO `django_migrations` VALUES ('68', 'selfhelp', '0010_auto_20150525_2255', '2015-05-25 22:55:20');
INSERT INTO `django_migrations` VALUES ('69', 'selfhelp', '0011_auto_20150603_1344', '2015-06-03 13:44:59');
INSERT INTO `django_migrations` VALUES ('70', 'basedata', '0028_auto_20150603_1444', '2015-06-03 14:44:39');
INSERT INTO `django_migrations` VALUES ('71', 'invent', '0001_initial', '2015-06-03 15:56:04');
INSERT INTO `django_migrations` VALUES ('72', 'purchase', '0001_initial', '2015-06-03 20:27:01');
INSERT INTO `django_migrations` VALUES ('73', 'purchase', '0002_auto_20150603_2117', '2015-06-03 21:17:30');
INSERT INTO `django_migrations` VALUES ('74', 'purchase', '0003_auto_20150603_2202', '2015-06-03 22:02:53');
INSERT INTO `django_migrations` VALUES ('75', 'basedata', '0029_auto_20150606_0944', '2015-06-06 09:44:41');
INSERT INTO `django_migrations` VALUES ('76', 'basedata', '0030_auto_20150606_0949', '2015-06-06 09:49:22');
INSERT INTO `django_migrations` VALUES ('77', 'purchase', '0004_auto_20150606_1050', '2015-06-06 10:50:56');
INSERT INTO `django_migrations` VALUES ('78', 'invent', '0002_auto_20150606_1050', '2015-06-06 10:50:57');
INSERT INTO `django_migrations` VALUES ('79', 'invent', '0003_auto_20150606_1147', '2015-06-06 11:48:06');
INSERT INTO `django_migrations` VALUES ('80', 'purchase', '0005_poitem_measure', '2015-06-06 11:48:07');
INSERT INTO `django_migrations` VALUES ('81', 'invent', '0004_initem_po_item', '2015-06-06 11:54:49');
INSERT INTO `django_migrations` VALUES ('82', 'invent', '0005_auto_20150606_1205', '2015-06-06 12:06:09');
INSERT INTO `django_migrations` VALUES ('83', 'invent', '0006_stockin_batch', '2015-06-06 12:08:31');
INSERT INTO `django_migrations` VALUES ('84', 'invent', '0007_auto_20150606_2008', '2015-06-06 20:08:50');
INSERT INTO `django_migrations` VALUES ('85', 'invent', '0008_inoutdetail_status', '2015-06-06 20:30:43');
INSERT INTO `django_migrations` VALUES ('86', 'invent', '0009_auto_20150607_1132', '2015-06-07 11:33:09');
INSERT INTO `django_migrations` VALUES ('87', 'invent', '0010_auto_20150607_1202', '2015-06-07 12:03:02');
INSERT INTO `django_migrations` VALUES ('88', 'purchase', '0006_auto_20150607_1202', '2015-06-07 12:03:04');
INSERT INTO `django_migrations` VALUES ('89', 'purchase', '0007_auto_20150607_1353', '2015-06-07 13:53:55');
INSERT INTO `django_migrations` VALUES ('90', 'invent', '0011_outitem_inventory', '2015-06-08 21:07:50');
INSERT INTO `django_migrations` VALUES ('91', 'basedata', '0031_auto_20150608_2143', '2015-06-08 21:44:17');
INSERT INTO `django_migrations` VALUES ('92', 'invent', '0012_auto_20150608_2143', '2015-06-08 21:44:18');
INSERT INTO `django_migrations` VALUES ('93', 'invent', '0013_auto_20150609_0623', '2015-06-09 06:23:21');
INSERT INTO `django_migrations` VALUES ('94', 'purchase', '0008_invoice', '2015-06-10 20:51:34');
INSERT INTO `django_migrations` VALUES ('95', 'purchase', '0009_auto_20150610_2133', '2015-06-10 21:33:08');
INSERT INTO `django_migrations` VALUES ('96', 'selfhelp', '0012_activity_enroll_feedback', '2015-06-11 21:37:16');
INSERT INTO `django_migrations` VALUES ('97', 'selfhelp', '0013_activity_code', '2015-06-11 21:41:50');
INSERT INTO `django_migrations` VALUES ('98', 'invent', '0014_auto_20150613_1747', '2015-06-13 17:48:07');
INSERT INTO `django_migrations` VALUES ('99', 'sale', '0001_initial', '2015-06-14 12:07:39');
INSERT INTO `django_migrations` VALUES ('100', 'sale', '0002_auto_20150614_1748', '2015-06-14 17:48:34');
INSERT INTO `django_migrations` VALUES ('101', 'sale', '0003_paymentcollection_org', '2015-06-14 17:51:18');
INSERT INTO `django_migrations` VALUES ('102', 'purchase', '0010_auto_20150614_1822', '2015-06-14 18:22:22');
INSERT INTO `django_migrations` VALUES ('103', 'sale', '0004_auto_20150614_2026', '2015-06-14 20:26:59');
INSERT INTO `django_migrations` VALUES ('104', 'sale', '0005_offeritem_discount_price', '2015-06-14 20:31:16');
INSERT INTO `django_migrations` VALUES ('105', 'sale', '0006_auto_20150617_2108', '2015-06-17 21:08:38');
INSERT INTO `django_migrations` VALUES ('106', 'sale', '0007_saleitem_discount_price', '2015-06-20 21:16:32');
INSERT INTO `django_migrations` VALUES ('107', 'basedata', '0032_material_tp', '2015-06-20 21:35:33');
INSERT INTO `django_migrations` VALUES ('108', 'invent', '0015_auto_20150621_0836', '2015-06-21 08:36:19');
INSERT INTO `django_migrations` VALUES ('109', 'invent', '0016_auto_20150621_1425', '2015-06-21 14:25:45');
INSERT INTO `django_migrations` VALUES ('110', 'basedata', '0033_auto_20150622_1009', '2015-06-22 10:09:50');
INSERT INTO `django_migrations` VALUES ('111', 'selfhelp', '0014_auto_20150627_0534', '2015-06-27 05:34:44');
INSERT INTO `django_migrations` VALUES ('112', 'selfhelp', '0015_loan_is_clear', '2015-06-27 06:45:06');
INSERT INTO `django_migrations` VALUES ('113', 'purchase', '0011_purchaseorder_attach', '2015-06-27 19:58:41');
INSERT INTO `django_migrations` VALUES ('114', 'selfhelp', '0016_auto_20150627_2039', '2015-06-27 20:40:10');
INSERT INTO `django_migrations` VALUES ('115', 'basedata', '0034_auto_20150627_2055', '2015-06-27 20:56:46');
INSERT INTO `django_migrations` VALUES ('116', 'selfhelp', '0017_woitem_measure', '2015-06-27 20:56:47');
INSERT INTO `django_migrations` VALUES ('117', 'basedata', '0035_document', '2015-06-28 07:13:21');
INSERT INTO `django_migrations` VALUES ('118', 'workflow', '0004_auto_20150630_2042', '2015-06-30 20:43:08');
INSERT INTO `django_migrations` VALUES ('119', 'workflow', '0005_auto_20150630_2138', '2015-06-30 21:38:29');
INSERT INTO `django_migrations` VALUES ('120', 'workflow', '0006_node_action', '2015-06-30 22:10:27');
INSERT INTO `django_migrations` VALUES ('121', 'workflow', '0007_node_can_edit', '2015-07-02 21:12:10');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2rdw4agh630yjfqhy14jie3dgzhi8v8i', 'OGEyMjM1MDM3YmU1ZmE4NjYxNmIzOWE5MTY3NjYzZjhhNDUyMWQxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzODFkNDg2MjM0YTlmMTQ0YjBkM2Y4ZWY4NWNmMDZlMmRkYjE1MWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-05-16 08:18:20');
INSERT INTO `django_session` VALUES ('9yr00u8rvtplvssvra5nkw29ykbs9cxo', 'OGEyMjM1MDM3YmU1ZmE4NjYxNmIzOWE5MTY3NjYzZjhhNDUyMWQxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzODFkNDg2MjM0YTlmMTQ0YjBkM2Y4ZWY4NWNmMDZlMmRkYjE1MWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-06-24 20:54:54');
INSERT INTO `django_session` VALUES ('bffad131mfdzd3ti0eat4ixwbaedqqfn', 'OGEyMjM1MDM3YmU1ZmE4NjYxNmIzOWE5MTY3NjYzZjhhNDUyMWQxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzODFkNDg2MjM0YTlmMTQ0YjBkM2Y4ZWY4NWNmMDZlMmRkYjE1MWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-05-15 07:39:11');

-- ----------------------------
-- Table structure for hr_departure
-- ----------------------------
DROP TABLE IF EXISTS `hr_departure`;
CREATE TABLE `hr_departure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hr_departure_employee_id_cd15087_fk_basedata_employee_id` (`employee_id`),
  CONSTRAINT `hr_departure_employee_id_cd15087_fk_basedata_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `basedata_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_departure
-- ----------------------------

-- ----------------------------
-- Table structure for hr_employeesalaryitem
-- ----------------------------
DROP TABLE IF EXISTS `hr_employeesalaryitem`;
CREATE TABLE `hr_employeesalaryitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calculate_way` varchar(2) NOT NULL,
  `fixed_value` decimal(10,2) DEFAULT NULL,
  `base_value` decimal(10,2) DEFAULT NULL,
  `org_percent` decimal(4,2) DEFAULT NULL,
  `employee_percent` decimal(4,2) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `entry_id` int(11) NOT NULL,
  `salary_item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hr_employeesalaryitem_entry_id_3a7aa921_uniq` (`entry_id`,`salary_item_id`),
  KEY `hr_employeesalaryit_employee_id_3ca63cb3_fk_basedata_employee_id` (`employee_id`),
  KEY `hr_employeesalaryitem_b64a62ea` (`entry_id`),
  KEY `hr_employeesalaryitem_dc6d0554` (`salary_item_id`),
  CONSTRAINT `hr_employeesalaryitem_entry_id_24d5804c_fk_hr_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `hr_entry` (`id`),
  CONSTRAINT `hr_employeesalaryite_salary_item_id_308f4922_fk_hr_salaryitem_id` FOREIGN KEY (`salary_item_id`) REFERENCES `hr_salaryitem` (`id`),
  CONSTRAINT `hr_employeesalaryit_employee_id_3ca63cb3_fk_basedata_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `basedata_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_employeesalaryitem
-- ----------------------------

-- ----------------------------
-- Table structure for hr_entry
-- ----------------------------
DROP TABLE IF EXISTS `hr_entry`;
CREATE TABLE `hr_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(2) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `address` varchar(120) DEFAULT NULL,
  `zipcode` varchar(8) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `rank` varchar(2) NOT NULL,
  `ygxs` varchar(2) DEFAULT NULL,
  `category` varchar(2) DEFAULT NULL,
  `probation_months` varchar(2) NOT NULL,
  `probation_begin` date NOT NULL,
  `probation_end` date DEFAULT NULL,
  `memo` longtext,
  `profile` varchar(100) DEFAULT NULL,
  `guider_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hr_entry_guider_id_677409a1_fk_basedata_employee_id` (`guider_id`),
  KEY `hr_entry_position_id_70f8683c_fk_organ_position_id` (`position_id`),
  CONSTRAINT `hr_entry_guider_id_677409a1_fk_basedata_employee_id` FOREIGN KEY (`guider_id`) REFERENCES `basedata_employee` (`id`),
  CONSTRAINT `hr_entry_position_id_70f8683c_fk_organ_position_id` FOREIGN KEY (`position_id`) REFERENCES `organ_position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_entry
-- ----------------------------

-- ----------------------------
-- Table structure for hr_salaryitem
-- ----------------------------
DROP TABLE IF EXISTS `hr_salaryitem`;
CREATE TABLE `hr_salaryitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `classification` varchar(2) NOT NULL,
  `plus_or_minus` varchar(2) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_salaryitem
-- ----------------------------
INSERT INTO `hr_salaryitem` VALUES ('1', '1001', '基本工资', '10', '+', '1');
INSERT INTO `hr_salaryitem` VALUES ('2', '1002', '岗位工资', '10', '+', '1');
INSERT INTO `hr_salaryitem` VALUES ('3', '1003', '技能工资', '10', '+', '1');
INSERT INTO `hr_salaryitem` VALUES ('4', '1004', '学历工资', '10', '+', '1');
INSERT INTO `hr_salaryitem` VALUES ('5', '1006', '职务工资', '10', '+', '1');
INSERT INTO `hr_salaryitem` VALUES ('6', '2001', '养老保险', '20', '-', '1');
INSERT INTO `hr_salaryitem` VALUES ('7', '2002', '医疗保险', '20', '-', '1');
INSERT INTO `hr_salaryitem` VALUES ('8', '2003', '生育保险', '20', '-', '1');
INSERT INTO `hr_salaryitem` VALUES ('9', '2004', '失业保险', '20', '-', '1');
INSERT INTO `hr_salaryitem` VALUES ('10', '2005', '工伤保险', '20', '-', '1');
INSERT INTO `hr_salaryitem` VALUES ('11', '2006', '住房公积金', '20', '-', '1');
INSERT INTO `hr_salaryitem` VALUES ('12', '3001', '销售佣金', '30', '+', '0');
INSERT INTO `hr_salaryitem` VALUES ('13', '3002', '伯乐奖', '30', '+', '0');
INSERT INTO `hr_salaryitem` VALUES ('14', '4001', '高温费', '40', '+', '0');
INSERT INTO `hr_salaryitem` VALUES ('15', '4002', '取暖费', '40', '+', '0');
INSERT INTO `hr_salaryitem` VALUES ('16', '4003', '独生子女费', '40', '+', '0');
INSERT INTO `hr_salaryitem` VALUES ('17', '4004', '交通费', '40', '+', '0');
INSERT INTO `hr_salaryitem` VALUES ('18', '4005', '住房补贴', '40', '+', '0');

-- ----------------------------
-- Table structure for hr_transfer
-- ----------------------------
DROP TABLE IF EXISTS `hr_transfer`;
CREATE TABLE `hr_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hr_transfer_employee_id_58f1c915_fk_basedata_employee_id` (`employee_id`),
  CONSTRAINT `hr_transfer_employee_id_58f1c915_fk_basedata_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `basedata_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_transfer
-- ----------------------------

-- ----------------------------
-- Table structure for invent_adjustitem
-- ----------------------------
DROP TABLE IF EXISTS `invent_adjustitem`;
CREATE TABLE `invent_adjustitem` (
  `inoutdetail_ptr_id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `master_id` int(11) NOT NULL,
  PRIMARY KEY (`inoutdetail_ptr_id`),
  KEY `invent_adjustitem_inventory_id_26479e75_fk_invent_inventory_id` (`inventory_id`),
  KEY `invent_adjustitem_90349b61` (`master_id`),
  CONSTRAINT `invent_adjustitem_inventory_id_26479e75_fk_invent_inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `invent_inventory` (`id`),
  CONSTRAINT `invent_adjustitem_master_id_4e55f6a0_fk_invent_wareadjust_id` FOREIGN KEY (`master_id`) REFERENCES `invent_wareadjust` (`id`),
  CONSTRAINT `invent_adju_inoutdetail_ptr_id_56d701c4_fk_invent_inoutdetail_id` FOREIGN KEY (`inoutdetail_ptr_id`) REFERENCES `invent_inoutdetail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_adjustitem
-- ----------------------------
INSERT INTO `invent_adjustitem` VALUES ('102', '49', '1');
INSERT INTO `invent_adjustitem` VALUES ('103', '48', '1');
INSERT INTO `invent_adjustitem` VALUES ('104', '47', '1');
INSERT INTO `invent_adjustitem` VALUES ('108', '51', '2');
INSERT INTO `invent_adjustitem` VALUES ('109', '49', '2');
INSERT INTO `invent_adjustitem` VALUES ('110', '45', '2');

-- ----------------------------
-- Table structure for invent_initem
-- ----------------------------
DROP TABLE IF EXISTS `invent_initem`;
CREATE TABLE `invent_initem` (
  `inoutdetail_ptr_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `po_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`inoutdetail_ptr_id`),
  KEY `invent_initem_master_id_777093cc_fk_invent_stockin_id` (`master_id`),
  KEY `invent_initem_2a7dcb03` (`po_item_id`),
  CONSTRAINT `invent_initem_master_id_777093cc_fk_invent_stockin_id` FOREIGN KEY (`master_id`) REFERENCES `invent_stockin` (`id`),
  CONSTRAINT `invent_initem_po_item_id_10308e1c_fk_purchase_poitem_id` FOREIGN KEY (`po_item_id`) REFERENCES `purchase_poitem` (`id`),
  CONSTRAINT `invent_init_inoutdetail_ptr_id_62cb8948_fk_invent_inoutdetail_id` FOREIGN KEY (`inoutdetail_ptr_id`) REFERENCES `invent_inoutdetail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_initem
-- ----------------------------
INSERT INTO `invent_initem` VALUES ('106', '1', '1');
INSERT INTO `invent_initem` VALUES ('107', '1', '2');

-- ----------------------------
-- Table structure for invent_initialinventory
-- ----------------------------
DROP TABLE IF EXISTS `invent_initialinventory`;
CREATE TABLE `invent_initialinventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `status` varchar(2) NOT NULL,
  `execute_time` datetime DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(14,4) DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invent_initialinventory_org_id_5505a597_fk_organ_organization_id` (`org_id`),
  KEY `invent_initialinventory_user_id_52fe41ef_fk_auth_user_id` (`user_id`),
  CONSTRAINT `invent_initialinventory_org_id_5505a597_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `invent_initialinventory_user_id_52fe41ef_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_initialinventory
-- ----------------------------
INSERT INTO `invent_initialinventory` VALUES ('15', '2015-06-14', '9999-12-31', 'zhugl', null, '2015-06-14 13:22:36', '2015-06-14 13:22:54', 'QC015', '期初库存x12', '9', '2015-06-14 13:22:54', '1', null, '19438.0000', 'inventory/INVENTORY_PPfDioe.csv');

-- ----------------------------
-- Table structure for invent_inititem
-- ----------------------------
DROP TABLE IF EXISTS `invent_inititem`;
CREATE TABLE `invent_inititem` (
  `inoutdetail_ptr_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  PRIMARY KEY (`inoutdetail_ptr_id`),
  KEY `invent_inititem_master_id_2e3b4e8d_fk_invent_initialinventory_id` (`master_id`),
  CONSTRAINT `invent_inititem_master_id_2e3b4e8d_fk_invent_initialinventory_id` FOREIGN KEY (`master_id`) REFERENCES `invent_initialinventory` (`id`),
  CONSTRAINT `invent_init_inoutdetail_ptr_id_4be99311_fk_invent_inoutdetail_id` FOREIGN KEY (`inoutdetail_ptr_id`) REFERENCES `invent_inoutdetail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_inititem
-- ----------------------------
INSERT INTO `invent_inititem` VALUES ('76', '15');
INSERT INTO `invent_inititem` VALUES ('77', '15');
INSERT INTO `invent_inititem` VALUES ('78', '15');
INSERT INTO `invent_inititem` VALUES ('79', '15');
INSERT INTO `invent_inititem` VALUES ('80', '15');
INSERT INTO `invent_inititem` VALUES ('81', '15');
INSERT INTO `invent_inititem` VALUES ('82', '15');
INSERT INTO `invent_inititem` VALUES ('83', '15');
INSERT INTO `invent_inititem` VALUES ('84', '15');
INSERT INTO `invent_inititem` VALUES ('85', '15');

-- ----------------------------
-- Table structure for invent_inoutdetail
-- ----------------------------
DROP TABLE IF EXISTS `invent_inoutdetail`;
CREATE TABLE `invent_inoutdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `event_time` datetime DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `price` decimal(14,4) DEFAULT NULL,
  `prop` varchar(2) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `measure_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `cnt` decimal(14,4) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invent_inoutdetail_eb4b9aaa` (`material_id`),
  KEY `invent_inoutdetail_80c371ce` (`measure_id`),
  KEY `invent_inoutdetail_9744817e` (`warehouse_id`),
  CONSTRAINT `invent_inoutdetail_material_id_61f641de_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `invent_inoutdetail_measure_id_24903062_fk_basedata_measure_id` FOREIGN KEY (`measure_id`) REFERENCES `basedata_measure` (`id`),
  CONSTRAINT `invent_inoutdetail_warehouse_id_b6de15f_fk_basedata_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `basedata_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_inoutdetail
-- ----------------------------
INSERT INTO `invent_inoutdetail` VALUES ('76', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '5.6000', '+', 'QC015', '40', '3', '11', '120.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('77', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '8.2000', '+', 'QC015', '41', '3', '11', '105.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('78', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '9.5000', '+', 'QC015', '42', '3', '11', '569.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('79', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '6.5000', '+', 'QC015', '43', '3', '11', '159.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('80', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '7.8000', '+', 'QC015', '44', '3', '11', '276.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('81', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '6.9000', '+', 'QC015', '45', '3', '11', '309.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('82', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '12.6000', '+', 'QC015', '46', '3', '11', '38.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('83', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '8.2000', '+', 'QC015', '47', '3', '11', '98.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('84', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '8.9000', '+', 'QC015', '48', '3', '11', '315.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('85', '2015-06-14 13:22:36', '2015-06-14 13:22:54', null, '14.6000', '+', 'QC015', '49', '3', '11', '212.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('102', '2015-06-21 14:34:47', '2015-06-21 14:42:33', null, null, '+', 'TZ001', '47', '3', '11', '1.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('103', '2015-06-21 14:34:47', '2015-06-21 14:42:33', null, null, '+', 'TZ001', '46', '3', '11', '1.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('104', '2015-06-21 14:34:47', '2015-06-21 14:42:33', null, null, '+', 'TZ001', '45', '3', '11', '1.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('105', '2015-07-15 12:36:18', '2015-07-15 12:43:35', null, '5.6000', '-', 'CK00001', '40', '3', '11', '5.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('106', '2015-07-17 12:07:05', '2015-07-17 12:29:02', '', '27.3504', '+', 'RK00001', '4', '1', '3', '5.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('107', '2015-07-17 12:07:05', '2015-07-17 12:29:02', '', '255.5556', '+', 'RK00001', '55', '1', '3', '5.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('108', '2015-07-17 12:09:39', '2015-07-17 12:37:12', null, null, '+', 'TZ002', '49', '3', '11', '1.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('109', '2015-07-17 12:09:39', '2015-07-17 12:37:12', null, null, '-', 'TZ002', '47', '3', '11', '2.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('110', '2015-07-17 12:09:39', '2015-07-17 12:37:12', null, null, '+', 'TZ002', '43', '3', '11', '1.0000', '1');
INSERT INTO `invent_inoutdetail` VALUES ('111', '2015-07-17 12:12:39', '2015-07-17 12:56:25', null, '5.6000', '+', 'FK0001', '40', '3', '11', '2.0000', '1');

-- ----------------------------
-- Table structure for invent_inventory
-- ----------------------------
DROP TABLE IF EXISTS `invent_inventory`;
CREATE TABLE `invent_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `price` decimal(14,4) NOT NULL,
  `material_id` int(11) NOT NULL,
  `measure_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `cnt` decimal(14,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invent_inventory_material_id_7b04cfa0_fk_basedata_material_id` (`material_id`),
  KEY `invent_inventory_measure_id_66c34c34_fk_basedata_measure_id` (`measure_id`),
  KEY `invent_inventory_org_id_3e72901a_fk_organ_organization_id` (`org_id`),
  KEY `invent_inventory_warehouse_id_7b12f523_fk_basedata_warehouse_id` (`warehouse_id`),
  CONSTRAINT `invent_inventory_material_id_7b04cfa0_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `invent_inventory_measure_id_66c34c34_fk_basedata_measure_id` FOREIGN KEY (`measure_id`) REFERENCES `basedata_measure` (`id`),
  CONSTRAINT `invent_inventory_org_id_3e72901a_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `invent_inventory_warehouse_id_7b12f523_fk_basedata_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `basedata_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_inventory
-- ----------------------------
INSERT INTO `invent_inventory` VALUES ('42', null, null, null, null, '2015-06-14 13:22:54', '2015-07-17 12:56:25', null, '5.6000', '40', '3', null, '11', '114.0000');
INSERT INTO `invent_inventory` VALUES ('43', null, null, null, null, '2015-06-14 13:22:54', '2015-06-14 13:22:54', null, '8.2000', '41', '3', null, '11', '105.0000');
INSERT INTO `invent_inventory` VALUES ('44', null, null, null, null, '2015-06-14 13:22:54', '2015-06-14 13:22:54', null, '9.5000', '42', '3', null, '11', '569.0000');
INSERT INTO `invent_inventory` VALUES ('45', null, null, null, null, '2015-06-14 13:22:54', '2015-07-17 12:37:12', null, '6.5000', '43', '3', null, '11', '160.0000');
INSERT INTO `invent_inventory` VALUES ('46', null, null, null, null, '2015-06-14 13:22:54', '2015-06-14 13:22:54', null, '7.8000', '44', '3', null, '11', '276.0000');
INSERT INTO `invent_inventory` VALUES ('47', null, null, null, null, '2015-06-14 13:22:54', '2015-06-21 14:42:33', null, '6.9000', '45', '3', null, '11', '310.0000');
INSERT INTO `invent_inventory` VALUES ('48', null, null, null, null, '2015-06-14 13:22:54', '2015-06-21 14:42:33', null, '12.6000', '46', '3', null, '11', '39.0000');
INSERT INTO `invent_inventory` VALUES ('49', null, null, null, null, '2015-06-14 13:22:54', '2015-07-17 12:37:12', null, '8.2000', '47', '3', null, '11', '97.0000');
INSERT INTO `invent_inventory` VALUES ('50', null, null, null, null, '2015-06-14 13:22:54', '2015-06-14 13:22:54', null, '8.9000', '48', '3', null, '11', '315.0000');
INSERT INTO `invent_inventory` VALUES ('51', null, null, null, null, '2015-06-14 13:22:54', '2015-07-17 12:37:12', null, '14.6000', '49', '3', null, '11', '208.0000');
INSERT INTO `invent_inventory` VALUES ('52', null, null, null, null, '2015-06-14 13:33:05', '2015-06-21 10:23:35', null, '4512.8205', '2', '9', null, '3', '2.0000');
INSERT INTO `invent_inventory` VALUES ('53', null, null, null, null, '2015-07-17 12:29:02', '2015-07-17 12:29:02', null, '27.3504', '4', '1', null, '3', '5.0000');
INSERT INTO `invent_inventory` VALUES ('54', null, null, null, null, '2015-07-17 12:29:02', '2015-07-17 12:29:02', null, '255.5556', '55', '1', null, '3', '5.0000');

-- ----------------------------
-- Table structure for invent_outitem
-- ----------------------------
DROP TABLE IF EXISTS `invent_outitem`;
CREATE TABLE `invent_outitem` (
  `inoutdetail_ptr_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`inoutdetail_ptr_id`),
  KEY `invent_outitem_master_id_5d572ab8_fk_invent_stockout_id` (`master_id`),
  KEY `invent_outitem_98fac743` (`inventory_id`),
  CONSTRAINT `invent_outitem_inventory_id_1a5f5da3_fk_invent_inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `invent_inventory` (`id`),
  CONSTRAINT `invent_outitem_master_id_5d572ab8_fk_invent_stockout_id` FOREIGN KEY (`master_id`) REFERENCES `invent_stockout` (`id`),
  CONSTRAINT `invent_outi_inoutdetail_ptr_id_60f3e3dc_fk_invent_inoutdetail_id` FOREIGN KEY (`inoutdetail_ptr_id`) REFERENCES `invent_inoutdetail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_outitem
-- ----------------------------
INSERT INTO `invent_outitem` VALUES ('105', '1', '42');

-- ----------------------------
-- Table structure for invent_returnitem
-- ----------------------------
DROP TABLE IF EXISTS `invent_returnitem`;
CREATE TABLE `invent_returnitem` (
  `inoutdetail_ptr_id` int(11) NOT NULL,
  `out_cnt` decimal(14,4) NOT NULL,
  `master_id` int(11) NOT NULL,
  `out_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`inoutdetail_ptr_id`),
  KEY `invent_returnitem_90349b61` (`master_id`),
  KEY `invent_returnitem_99ef2a78` (`out_item_id`),
  CONSTRAINT `invent_out_item_id_735b9d2f_fk_invent_outitem_inoutdetail_ptr_id` FOREIGN KEY (`out_item_id`) REFERENCES `invent_outitem` (`inoutdetail_ptr_id`),
  CONSTRAINT `invent_returnitem_master_id_11698bd3_fk_invent_warereturn_id` FOREIGN KEY (`master_id`) REFERENCES `invent_warereturn` (`id`),
  CONSTRAINT `invent_retu_inoutdetail_ptr_id_616dfca9_fk_invent_inoutdetail_id` FOREIGN KEY (`inoutdetail_ptr_id`) REFERENCES `invent_inoutdetail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_returnitem
-- ----------------------------
INSERT INTO `invent_returnitem` VALUES ('111', '5.0000', '1', '105');

-- ----------------------------
-- Table structure for invent_stockin
-- ----------------------------
DROP TABLE IF EXISTS `invent_stockin`;
CREATE TABLE `invent_stockin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `status` varchar(2) NOT NULL,
  `execute_time` datetime DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `po_id` int(11) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `amount` decimal(14,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invent_stockin_org_id_138faa53_fk_organ_organization_id` (`org_id`),
  KEY `invent_stockin_user_id_7ca6d2b_fk_auth_user_id` (`user_id`),
  KEY `invent_stockin_warehouse_id_77701ff6_fk_basedata_warehouse_id` (`warehouse_id`),
  KEY `invent_stockin_c73ffa0a` (`po_id`),
  CONSTRAINT `invent_stockin_org_id_138faa53_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `invent_stockin_po_id_54608973_fk_purchase_purchaseorder_id` FOREIGN KEY (`po_id`) REFERENCES `purchase_purchaseorder` (`id`),
  CONSTRAINT `invent_stockin_user_id_7ca6d2b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `invent_stockin_warehouse_id_77701ff6_fk_basedata_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `basedata_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_stockin
-- ----------------------------
INSERT INTO `invent_stockin` VALUES ('1', '2015-07-17', '9999-12-31', 'chengcai', 'chengcai', '2015-07-17 12:07:05', '2015-07-17 12:29:02', 'RK00001', '一批办公物资入库', '9', '2015-07-17 12:29:02', null, '11', '3', '1', '', '1414.5300');

-- ----------------------------
-- Table structure for invent_stockout
-- ----------------------------
DROP TABLE IF EXISTS `invent_stockout`;
CREATE TABLE `invent_stockout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `description` longtext,
  `status` varchar(2) NOT NULL,
  `execute_time` datetime DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `wo_id` int(11) DEFAULT NULL,
  `amount` decimal(14,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invent_stockout_org_id_71a748a3_fk_organ_organization_id` (`org_id`),
  KEY `invent_stockout_project_id_4e2d4cbc_fk_basedata_project_id` (`project_id`),
  KEY `invent_stockout_wo_id_3c16dd70_fk_selfhelp_workorder_id` (`wo_id`),
  KEY `invent_stockout_user_id_537784b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `invent_stockout_org_id_71a748a3_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `invent_stockout_project_id_4e2d4cbc_fk_basedata_project_id` FOREIGN KEY (`project_id`) REFERENCES `basedata_project` (`id`),
  CONSTRAINT `invent_stockout_user_id_537784b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `invent_stockout_wo_id_3c16dd70_fk_selfhelp_workorder_id` FOREIGN KEY (`wo_id`) REFERENCES `selfhelp_workorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_stockout
-- ----------------------------
INSERT INTO `invent_stockout` VALUES ('1', '2015-07-15', '9999-12-31', 'chengcai', 'chengcai', '2015-07-15 12:36:18', '2015-07-15 12:43:35', 'CK00001', '会议接待领用水果', '', '9', '2015-07-15 12:43:35', null, '8', '11', '1', '28.0000');

-- ----------------------------
-- Table structure for invent_wareadjust
-- ----------------------------
DROP TABLE IF EXISTS `invent_wareadjust`;
CREATE TABLE `invent_wareadjust` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `description` longtext,
  `status` varchar(2) NOT NULL,
  `execute_time` datetime DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invent_wareadjust_org_id_4dd80263_fk_organ_organization_id` (`org_id`),
  KEY `invent_wareadjust_user_id_5f3e6fc5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `invent_wareadjust_org_id_4dd80263_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `invent_wareadjust_user_id_5f3e6fc5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_wareadjust
-- ----------------------------
INSERT INTO `invent_wareadjust` VALUES ('1', '2015-06-21', '9999-12-31', 'zhugl', null, '2015-06-21 14:34:47', '2015-06-21 14:42:33', 'TZ001', '水果库存调整', '', '9', '2015-06-21 14:42:33', null, null);
INSERT INTO `invent_wareadjust` VALUES ('2', '2015-07-17', '9999-12-31', 'chengcai', null, '2015-07-17 12:09:39', '2015-07-17 12:37:12', 'TZ002', '调整一批物资库存', '因前期盘点有误，调整库存数量', '9', '2015-07-17 12:37:12', null, '11');

-- ----------------------------
-- Table structure for invent_warereturn
-- ----------------------------
DROP TABLE IF EXISTS `invent_warereturn`;
CREATE TABLE `invent_warereturn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `amount` decimal(14,4) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `execute_time` datetime DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `out_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invent_warereturn_org_id_c9a93c_fk_organ_organization_id` (`org_id`),
  KEY `invent_warereturn_out_id_3a81433a_fk_invent_stockout_id` (`out_id`),
  KEY `invent_warereturn_user_id_5a6b8d9c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `invent_warereturn_org_id_c9a93c_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `invent_warereturn_out_id_3a81433a_fk_invent_stockout_id` FOREIGN KEY (`out_id`) REFERENCES `invent_stockout` (`id`),
  CONSTRAINT `invent_warereturn_user_id_5a6b8d9c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invent_warereturn
-- ----------------------------
INSERT INTO `invent_warereturn` VALUES ('1', '2015-07-17', '9999-12-31', 'chengcai', 'chengcai', '2015-07-17 12:12:39', '2015-07-17 12:56:25', 'FK0001', '归还物资', '11.2000', '9', '2015-07-17 12:56:25', null, '1', '11');

-- ----------------------------
-- Table structure for organ_organization
-- ----------------------------
DROP TABLE IF EXISTS `organ_organization`;
CREATE TABLE `organ_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `short` varchar(20) DEFAULT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `tax_num` varchar(40) DEFAULT NULL,
  `tax_address` varchar(40) DEFAULT NULL,
  `tax_account` varchar(80) DEFAULT NULL,
  `represent` varchar(40) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `zipcode` varchar(8) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `contacts` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `website` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `lic_code` varchar(40) DEFAULT NULL,
  `cer_code` varchar(40) DEFAULT NULL,
  `license` varchar(100) DEFAULT NULL,
  `certificate` varchar(100) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organ_organization
-- ----------------------------
INSERT INTO `organ_organization` VALUES ('1', '2015-05-01', '9999-12-31', 'zhugl', 'chengcai', '2015-05-01 20:26:05', '2015-07-17 12:16:36', 'O01', '上海某集团有限公司', '上海机场', 'Shanghai Airport', '1', '310120000001357', '上海市浦东机场启航路900号', '交通银行上海分行浦东支行', '李德润', '上海市肇嘉浜路301号', '200032', '021-58698201', '王勇', '021-58698202', 'www.shairport.com', 'webadmin@sgs.gov.cn', '310120000001357', '20120620102952945', '', '', '9');

-- ----------------------------
-- Table structure for organ_orgunit
-- ----------------------------
DROP TABLE IF EXISTS `organ_orgunit`;
CREATE TABLE `organ_orgunit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `short` varchar(20) DEFAULT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `unit_type` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `virtual` tinyint(1) NOT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `contacts` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `organ_orgunit_organization_id_56741454_fk_organ_organization_id` (`organization_id`),
  KEY `organ_orgunit_parent_id_20b497af_fk_organ_orgunit_id` (`parent_id`),
  CONSTRAINT `organ_orgunit_organization_id_56741454_fk_organ_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `organ_orgunit_parent_id_20b497af_fk_organ_orgunit_id` FOREIGN KEY (`parent_id`) REFERENCES `organ_orgunit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organ_orgunit
-- ----------------------------
INSERT INTO `organ_orgunit` VALUES ('70', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'B1001', '董事会', '董事会', 'board', '2', '1', '0', null, null, null, null, '99', null, null);
INSERT INTO `organ_orgunit` VALUES ('71', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'B1002', '总经理办公室', '总办', 'president office', '2', '1', '0', null, null, null, null, '99', null, null);
INSERT INTO `organ_orgunit` VALUES ('72', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'B1003', '人事行政部', '人事部', 'hr', '2', '1', '0', null, null, null, null, '99', null, null);
INSERT INTO `organ_orgunit` VALUES ('73', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'B1004', '财务部', '财务部', 'finace', '2', '1', '0', null, null, null, null, '99', null, null);
INSERT INTO `organ_orgunit` VALUES ('74', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'B1005', '采购部', '采购部', 'purchase', '2', '1', '0', null, null, null, null, '99', null, null);
INSERT INTO `organ_orgunit` VALUES ('75', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'B1006', '生产中心', '生产中心', 'produce center', '2', '1', '0', null, null, null, null, '99', null, null);
INSERT INTO `organ_orgunit` VALUES ('76', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'B1007', '质检中心', '质检中心', 'qulification center', '2', '1', '0', null, null, null, null, '99', null, null);
INSERT INTO `organ_orgunit` VALUES ('77', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'B1001', '董事会', '董事会', 'board', '2', '1', '0', null, null, null, null, '1', null, null);
INSERT INTO `organ_orgunit` VALUES ('78', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'B1002', '总经理办公室', '总办', 'president office', '2', '1', '0', null, null, null, null, '2', null, null);
INSERT INTO `organ_orgunit` VALUES ('79', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'B1003', '人事行政部', '人事部', 'hr', '2', '1', '0', null, null, null, null, '3', null, null);
INSERT INTO `organ_orgunit` VALUES ('80', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'B1004', '财务部', '财务部', 'finace', '2', '1', '0', null, null, null, null, '4', null, null);
INSERT INTO `organ_orgunit` VALUES ('81', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'B1005', '采购部', '采购部', 'purchase', '2', '1', '0', null, null, null, null, '5', null, null);
INSERT INTO `organ_orgunit` VALUES ('82', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'B1006', '生产中心', '生产中心', 'produce center', '2', '1', '0', null, null, null, null, '6', null, null);
INSERT INTO `organ_orgunit` VALUES ('83', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'B1007', '质检中心', '质检中心', 'qulification center', '2', '1', '0', null, null, null, null, '7', null, null);

-- ----------------------------
-- Table structure for organ_position
-- ----------------------------
DROP TABLE IF EXISTS `organ_position`;
CREATE TABLE `organ_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `short` varchar(20) DEFAULT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `series` varchar(1) NOT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `virtual` tinyint(1) NOT NULL,
  `description` longtext,
  `qualification` longtext,
  `document` varchar(100) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `unit_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organ_position_parent_id_1d9e732d_fk_organ_position_id` (`parent_id`),
  KEY `organ_position_unit_id_411e3ee9_fk_organ_orgunit_id` (`unit_id`),
  KEY `organ_position_26b2345e` (`organization_id`),
  CONSTRAINT `organ_position_organization_id_3435c72a_fk_organ_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `organ_position_parent_id_1d9e732d_fk_organ_position_id` FOREIGN KEY (`parent_id`) REFERENCES `organ_position` (`id`),
  CONSTRAINT `organ_position_unit_id_411e3ee9_fk_organ_orgunit_id` FOREIGN KEY (`unit_id`) REFERENCES `organ_orgunit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organ_position
-- ----------------------------
INSERT INTO `organ_position` VALUES ('86', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1001', '董事长', null, null, 'A', '01', '0', null, null, '', '99', null, '70', null, '1');
INSERT INTO `organ_position` VALUES ('87', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1002', '总经理', null, null, 'A', '01', '0', null, null, '', '99', '86', '70', null, '1');
INSERT INTO `organ_position` VALUES ('88', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1003', '副总经理', null, null, 'A', '01', '0', null, null, '', '99', '87', '71', null, '1');
INSERT INTO `organ_position` VALUES ('89', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1004', '总工程师', null, null, 'A', '01', '0', null, null, '', '99', '87', '71', null, '1');
INSERT INTO `organ_position` VALUES ('90', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1005', '总经济师', null, null, 'A', '01', '0', null, null, '', '99', '87', '71', null, '1');
INSERT INTO `organ_position` VALUES ('91', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1006', '人事经理', null, null, 'A', '01', '0', null, null, '', '99', '87', '72', null, '1');
INSERT INTO `organ_position` VALUES ('92', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1007', '行政经理', null, null, 'A', '01', '0', null, null, '', '99', '87', '72', null, '1');
INSERT INTO `organ_position` VALUES ('93', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1008', '财务经理', null, null, 'A', '01', '0', null, null, '', '99', '87', '73', null, '1');
INSERT INTO `organ_position` VALUES ('94', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1009', '生产总监', null, null, 'A', '01', '0', null, null, '', '99', '87', '75', null, '1');
INSERT INTO `organ_position` VALUES ('95', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1010', '采购经理', null, null, 'A', '01', '0', null, null, '', '99', '87', '74', null, '1');
INSERT INTO `organ_position` VALUES ('96', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1011', '会计', null, null, 'A', '01', '0', null, null, '', '99', '93', '73', null, '1');
INSERT INTO `organ_position` VALUES ('97', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1012', '出纳', null, null, 'A', '01', '0', null, null, '', '99', '93', '73', null, '1');
INSERT INTO `organ_position` VALUES ('98', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1013', '人事专员', null, null, 'A', '01', '0', null, null, '', '99', '91', '72', null, '1');
INSERT INTO `organ_position` VALUES ('99', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1014', '司机', null, null, 'A', '01', '0', null, null, '', '99', '92', '72', null, '1');
INSERT INTO `organ_position` VALUES ('100', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1015', '行政专员', null, null, 'A', '01', '0', null, null, '', '99', '92', '72', null, '1');
INSERT INTO `organ_position` VALUES ('101', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1016', '报价员', null, null, 'A', '01', '0', null, null, '', '99', '94', '75', null, '1');
INSERT INTO `organ_position` VALUES ('102', '2015-06-27', '9999-12-31', null, null, '2015-06-27 13:08:27', '2015-06-27 13:08:27', 'P1017', '技术工程师', null, null, 'A', '01', '0', null, null, '', '99', '94', '75', null, '1');
INSERT INTO `organ_position` VALUES ('103', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1001', '董事长', null, null, 'A', '01', '0', null, null, '', '1', null, '70', null, '1');
INSERT INTO `organ_position` VALUES ('104', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1002', '总经理', null, null, 'A', '01', '0', null, null, '', '2', '86', '70', null, '1');
INSERT INTO `organ_position` VALUES ('105', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1003', '副总经理', null, null, 'A', '01', '0', null, null, '', '3', '87', '71', null, '1');
INSERT INTO `organ_position` VALUES ('106', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1004', '总工程师', null, null, 'A', '01', '0', null, null, '', '4', '87', '71', null, '1');
INSERT INTO `organ_position` VALUES ('107', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1005', '总经济师', null, null, 'A', '01', '0', null, null, '', '5', '87', '71', null, '1');
INSERT INTO `organ_position` VALUES ('108', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1006', '人事经理', null, null, 'A', '01', '0', null, null, '', '6', '87', '72', null, '1');
INSERT INTO `organ_position` VALUES ('109', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1007', '行政经理', null, null, 'A', '01', '0', null, null, '', '7', '87', '72', null, '1');
INSERT INTO `organ_position` VALUES ('110', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1008', '财务经理', null, null, 'A', '01', '0', null, null, '', '8', '87', '73', null, '1');
INSERT INTO `organ_position` VALUES ('111', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1009', '生产总监', null, null, 'A', '01', '0', null, null, '', '9', '87', '75', null, '1');
INSERT INTO `organ_position` VALUES ('112', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1010', '采购经理', null, null, 'A', '01', '0', null, null, '', '10', '87', '74', null, '1');
INSERT INTO `organ_position` VALUES ('113', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1011', '会计', null, null, 'A', '01', '0', null, null, '', '11', '93', '73', null, '1');
INSERT INTO `organ_position` VALUES ('114', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1012', '出纳', null, null, 'A', '01', '0', null, null, '', '12', '93', '73', null, '1');
INSERT INTO `organ_position` VALUES ('115', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1013', '人事专员', null, null, 'A', '01', '0', null, null, '', '13', '91', '72', null, '1');
INSERT INTO `organ_position` VALUES ('116', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1014', '司机', null, null, 'A', '01', '0', null, null, '', '14', '92', '72', null, '1');
INSERT INTO `organ_position` VALUES ('117', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1015', '行政专员', null, null, 'A', '01', '0', null, null, '', '15', '92', '72', null, '1');
INSERT INTO `organ_position` VALUES ('118', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1016', '报价员', null, null, 'A', '01', '0', null, null, '', '16', '94', '75', null, '1');
INSERT INTO `organ_position` VALUES ('119', '2015-07-15', '9999-12-31', null, null, '2015-07-15 12:04:17', '2015-07-15 12:04:17', 'P1017', '技术工程师', null, null, 'A', '01', '0', null, null, '', '17', '94', '75', null, '1');

-- ----------------------------
-- Table structure for purchase_invoice
-- ----------------------------
DROP TABLE IF EXISTS `purchase_invoice`;
CREATE TABLE `purchase_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `vo_date` date DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `po_amount` decimal(14,4) DEFAULT NULL,
  `vo_amount` decimal(14,4) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `po_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_invoice_partner_id_7ee3f712_fk_basedata_partner_id` (`partner_id`),
  KEY `purchase_invoice_po_id_3777f562_fk_purchase_purchaseorder_id` (`po_id`),
  CONSTRAINT `purchase_invoice_partner_id_7ee3f712_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`),
  CONSTRAINT `purchase_invoice_po_id_3777f562_fk_purchase_purchaseorder_id` FOREIGN KEY (`po_id`) REFERENCES `purchase_purchaseorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_payment
-- ----------------------------
DROP TABLE IF EXISTS `purchase_payment`;
CREATE TABLE `purchase_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `py_date` date DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `po_amount` decimal(14,4) DEFAULT NULL,
  `py_amount` decimal(14,4) NOT NULL,
  `response_code` varchar(80) DEFAULT NULL,
  `memo` longtext,
  `bank_id` int(11) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `po_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_payment_partner_id_102965e7_fk_basedata_partner_id` (`partner_id`),
  KEY `purchase_payment_po_id_3291acc9_fk_purchase_purchaseorder_id` (`po_id`),
  KEY `purchase_payment_bank_id_66ac7b06_fk_basedata_bankaccount_id` (`bank_id`),
  KEY `purchase_payment_9cf869aa` (`org_id`),
  CONSTRAINT `purchase_payment_bank_id_66ac7b06_fk_basedata_bankaccount_id` FOREIGN KEY (`bank_id`) REFERENCES `basedata_bankaccount` (`id`),
  CONSTRAINT `purchase_payment_org_id_33cf80e9_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `purchase_payment_partner_id_102965e7_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`),
  CONSTRAINT `purchase_payment_po_id_3291acc9_fk_purchase_purchaseorder_id` FOREIGN KEY (`po_id`) REFERENCES `purchase_purchaseorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_payment
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_poitem
-- ----------------------------
DROP TABLE IF EXISTS `purchase_poitem`;
CREATE TABLE `purchase_poitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(12,4) DEFAULT NULL,
  `cnt` decimal(12,4) DEFAULT NULL,
  `discount_price` decimal(12,4) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `discount_amount` decimal(12,2) DEFAULT NULL,
  `tax` varchar(6) NOT NULL,
  `material_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `woitem_id` int(11) DEFAULT NULL,
  `in_stock_time` datetime DEFAULT NULL,
  `is_in_stock` tinyint(1) NOT NULL,
  `measure_id` int(11) DEFAULT NULL,
  `entry_cnt` decimal(12,4) DEFAULT NULL,
  `left_cnt` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_poitem_material_id_10910564_fk_basedata_material_id` (`material_id`),
  KEY `purchase_poitem_c73ffa0a` (`po_id`),
  KEY `purchase_poitem_1f526118` (`woitem_id`),
  KEY `purchase_poitem_80c371ce` (`measure_id`),
  CONSTRAINT `purchase_poitem_material_id_10910564_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `purchase_poitem_measure_id_115682d0_fk_basedata_measure_id` FOREIGN KEY (`measure_id`) REFERENCES `basedata_measure` (`id`),
  CONSTRAINT `purchase_poitem_po_id_698de2ca_fk_purchase_purchaseorder_id` FOREIGN KEY (`po_id`) REFERENCES `purchase_purchaseorder` (`id`),
  CONSTRAINT `purchase_poitem_woitem_id_7ee62f3a_fk_selfhelp_woitem_id` FOREIGN KEY (`woitem_id`) REFERENCES `selfhelp_woitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_poitem
-- ----------------------------
INSERT INTO `purchase_poitem` VALUES ('1', '32.0000', '5.0000', null, '160.00', null, '0.17', '4', '1', null, '2015-07-17 12:29:02', '1', '1', '5.0000', '0.0000');
INSERT INTO `purchase_poitem` VALUES ('2', '299.0000', '5.0000', null, '1495.00', null, '0.17', '55', '1', null, '2015-07-17 12:29:02', '1', '1', '5.0000', '0.0000');

-- ----------------------------
-- Table structure for purchase_purchaseorder
-- ----------------------------
DROP TABLE IF EXISTS `purchase_purchaseorder`;
CREATE TABLE `purchase_purchaseorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `order_date` date NOT NULL,
  `arrive_date` date NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` longtext,
  `status` varchar(2) NOT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `discount_amount` decimal(12,2) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `entry_status` tinyint(1) NOT NULL,
  `entry_time` datetime DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_purchaseorder_org_id_5454e9a_fk_organ_organization_id` (`org_id`),
  KEY `purchase_purchaseorder_partner_id_4f47a8a_fk_basedata_partner_id` (`partner_id`),
  KEY `purchase_purchaseorder_user_id_6da1490e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `purchase_purchaseorder_org_id_5454e9a_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `purchase_purchaseorder_partner_id_4f47a8a_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`),
  CONSTRAINT `purchase_purchaseorder_user_id_6da1490e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_purchaseorder
-- ----------------------------
INSERT INTO `purchase_purchaseorder` VALUES ('1', '2015-06-30', '9999-12-31', 'chengcai', 'chengcai', '2015-06-30 20:23:07', '2015-07-17 12:29:02', 'CG00001', '2015-06-30', '2015-07-30', '采购物品', '', '99', '1655.00', '0.00', null, '18', '11', '1', '2015-07-17 12:29:02', '');

-- ----------------------------
-- Table structure for sale_offeritem
-- ----------------------------
DROP TABLE IF EXISTS `sale_offeritem`;
CREATE TABLE `sale_offeritem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnt` decimal(14,4) NOT NULL,
  `stock_price` decimal(14,4) DEFAULT NULL,
  `sale_price` decimal(14,4) DEFAULT NULL,
  `tax` varchar(6) NOT NULL,
  `create_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `event_time` datetime DEFAULT NULL,
  `master_id` int(11) NOT NULL,
  `material_id` int(11) DEFAULT NULL,
  `measure_id` int(11) DEFAULT NULL,
  `discount_price` decimal(14,4) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `cost_price` decimal(14,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_offeritem_90349b61` (`master_id`),
  KEY `sale_offeritem_eb4b9aaa` (`material_id`),
  KEY `sale_offeritem_80c371ce` (`measure_id`),
  CONSTRAINT `sale_offeritem_master_id_759ed829_fk_sale_offersheet_id` FOREIGN KEY (`master_id`) REFERENCES `sale_offersheet` (`id`),
  CONSTRAINT `sale_offeritem_material_id_1984f90_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `sale_offeritem_measure_id_3e74b43c_fk_basedata_measure_id` FOREIGN KEY (`measure_id`) REFERENCES `basedata_measure` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_offeritem
-- ----------------------------
INSERT INTO `sale_offeritem` VALUES ('1', '2.0000', null, '550.0000', '0.00', '2015-07-07 21:09:47', '0', null, '1', '55', '2', null, null, null);
INSERT INTO `sale_offeritem` VALUES ('2', '2.0000', null, '9999.0000', '0.00', '2015-07-07 21:09:47', '0', null, '1', '54', '2', null, null, null);
INSERT INTO `sale_offeritem` VALUES ('3', '2.0000', null, '320.0000', '0.00', '2015-07-07 21:09:47', '0', null, '1', '52', '2', null, null, null);

-- ----------------------------
-- Table structure for sale_offersheet
-- ----------------------------
DROP TABLE IF EXISTS `sale_offersheet`;
CREATE TABLE `sale_offersheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `offer_date` date NOT NULL,
  `deliver_date` date NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` longtext,
  `amount` decimal(12,2) DEFAULT NULL,
  `discount_amount` decimal(12,2) DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `event_time` datetime DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_offersheet_org_id_4224cc19_fk_organ_organization_id` (`org_id`),
  KEY `sale_offersheet_partner_id_180d0c89_fk_basedata_partner_id` (`partner_id`),
  KEY `sale_offersheet_user_id_34ea58c1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `sale_offersheet_org_id_4224cc19_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `sale_offersheet_partner_id_180d0c89_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`),
  CONSTRAINT `sale_offersheet_user_id_34ea58c1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_offersheet
-- ----------------------------
INSERT INTO `sale_offersheet` VALUES ('1', '2015-07-07', '9999-12-31', 'chengcai', 'chengcai', '2015-07-07 21:09:46', '2015-07-07 21:10:14', 'BJ00001', '2015-07-07', '2015-08-06', '123', '', '21738.00', '0.00', '', '0', null, null, '17', '11');

-- ----------------------------
-- Table structure for sale_paymentcollection
-- ----------------------------
DROP TABLE IF EXISTS `sale_paymentcollection`;
CREATE TABLE `sale_paymentcollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `collection_date` date DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `order_amount` decimal(14,4) DEFAULT NULL,
  `collection_amount` decimal(14,4) NOT NULL,
  `memo` longtext,
  `bank_id` int(11) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `so_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_paymentcollecti_bank_id_5db2135c_fk_basedata_bankaccount_id` (`bank_id`),
  KEY `sale_paymentcollectio_partner_id_545062b1_fk_basedata_partner_id` (`partner_id`),
  KEY `sale_paymentcollection_5a20014e` (`so_id`),
  KEY `sale_paymentcollection_9cf869aa` (`org_id`),
  CONSTRAINT `sale_paymentcollection_org_id_3858f3f_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `sale_paymentcollection_so_id_1640456e_fk_sale_saleorder_id` FOREIGN KEY (`so_id`) REFERENCES `sale_saleorder` (`id`),
  CONSTRAINT `sale_paymentcollectio_partner_id_545062b1_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`),
  CONSTRAINT `sale_paymentcollecti_bank_id_5db2135c_fk_basedata_bankaccount_id` FOREIGN KEY (`bank_id`) REFERENCES `basedata_bankaccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_paymentcollection
-- ----------------------------

-- ----------------------------
-- Table structure for sale_saleitem
-- ----------------------------
DROP TABLE IF EXISTS `sale_saleitem`;
CREATE TABLE `sale_saleitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnt` decimal(14,4) NOT NULL,
  `stock_price` decimal(14,4) DEFAULT NULL,
  `sale_price` decimal(14,4) DEFAULT NULL,
  `tax` varchar(6) NOT NULL,
  `create_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `event_time` datetime DEFAULT NULL,
  `master_id` int(11) NOT NULL,
  `material_id` int(11) DEFAULT NULL,
  `measure_id` int(11) DEFAULT NULL,
  `discount_price` decimal(14,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_saleitem_90349b61` (`master_id`),
  KEY `sale_saleitem_eb4b9aaa` (`material_id`),
  KEY `sale_saleitem_80c371ce` (`measure_id`),
  CONSTRAINT `sale_saleitem_master_id_7aa6dde1_fk_sale_saleorder_id` FOREIGN KEY (`master_id`) REFERENCES `sale_saleorder` (`id`),
  CONSTRAINT `sale_saleitem_material_id_4cb3eb8_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `sale_saleitem_measure_id_317dc10c_fk_basedata_measure_id` FOREIGN KEY (`measure_id`) REFERENCES `basedata_measure` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_saleitem
-- ----------------------------

-- ----------------------------
-- Table structure for sale_saleorder
-- ----------------------------
DROP TABLE IF EXISTS `sale_saleorder`;
CREATE TABLE `sale_saleorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `order_date` date NOT NULL,
  `deliver_date` date NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` longtext,
  `contact` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `deliver_address` varchar(120) DEFAULT NULL,
  `invoice_type` varchar(6) NOT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `discount_amount` decimal(12,2) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_saleorder_org_id_1d0df2d2_fk_organ_organization_id` (`org_id`),
  KEY `sale_saleorder_partner_id_31af6b7e_fk_basedata_partner_id` (`partner_id`),
  KEY `sale_saleorder_user_id_1b41e486_fk_auth_user_id` (`user_id`),
  CONSTRAINT `sale_saleorder_org_id_1d0df2d2_fk_organ_organization_id` FOREIGN KEY (`org_id`) REFERENCES `organ_organization` (`id`),
  CONSTRAINT `sale_saleorder_partner_id_31af6b7e_fk_basedata_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `basedata_partner` (`id`),
  CONSTRAINT `sale_saleorder_user_id_1b41e486_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_saleorder
-- ----------------------------

-- ----------------------------
-- Table structure for selfhelp_activity
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_activity`;
CREATE TABLE `selfhelp_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `begin_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `enroll_deadline` datetime DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `description` longtext,
  `host` varchar(80) DEFAULT NULL,
  `speaker` varchar(80) DEFAULT NULL,
  `accept_enroll` tinyint(1) NOT NULL,
  `location` varchar(80) DEFAULT NULL,
  `classification` varchar(2) DEFAULT NULL,
  `mail_list` longtext,
  `mail_notice` tinyint(1) NOT NULL,
  `short_message_notice` tinyint(1) NOT NULL,
  `weixin_notice` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `publish_time` datetime DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_activity_parent_id_1638e788_fk_selfhelp_activity_id` (`parent_id`),
  KEY `selfhelp_activity_room_id_76f73121_fk_basedata_material_id` (`room_id`),
  CONSTRAINT `selfhelp_activity_parent_id_1638e788_fk_selfhelp_activity_id` FOREIGN KEY (`parent_id`) REFERENCES `selfhelp_activity` (`id`),
  CONSTRAINT `selfhelp_activity_room_id_76f73121_fk_basedata_material_id` FOREIGN KEY (`room_id`) REFERENCES `basedata_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_activity
-- ----------------------------
INSERT INTO `selfhelp_activity` VALUES ('1', '2015-06-11', '9999-12-31', 'zhugl', null, '2015-06-11 22:36:57', '2015-06-11 22:36:57', '2015-06-12 10:34:00', '2015-06-12 16:34:00', null, 'hadoop大数据应用Qcon分享', '关于hadoop大数据技术分享', '张三', '李四', '1', '', 'T', 'nsg@abc.com;cuc@abc.com;', '1', '1', '1', '0', null, '', null, '6', 'AC00001');
INSERT INTO `selfhelp_activity` VALUES ('2', '2015-07-01', '9999-12-31', 'chengcai', 'chengcai', '2015-07-01 06:17:53', '2015-07-01 06:37:00', '2015-07-01 18:17:00', '2015-07-02 00:17:00', null, '2', '1234567', '', '', '1', '', 'M', '', '1', '1', '1', '0', null, '', null, '6', 'AC00002');
INSERT INTO `selfhelp_activity` VALUES ('3', '2015-07-01', '9999-12-31', 'chengcai', null, '2015-07-01 06:37:21', '2015-07-01 06:37:21', '2015-07-01 18:37:00', '2015-07-02 00:37:00', null, '123', '123', '', '', '1', '', 'M', '', '1', '1', '1', '0', null, '', null, '6', 'AC00003');

-- ----------------------------
-- Table structure for selfhelp_enroll
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_enroll`;
CREATE TABLE `selfhelp_enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enroll_time` datetime NOT NULL,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_enroll_activity_id_5615acbc_fk_selfhelp_activity_id` (`activity_id`),
  KEY `selfhelp_enroll_user_id_a71585e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `selfhelp_enroll_activity_id_5615acbc_fk_selfhelp_activity_id` FOREIGN KEY (`activity_id`) REFERENCES `selfhelp_activity` (`id`),
  CONSTRAINT `selfhelp_enroll_user_id_a71585e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_enroll
-- ----------------------------

-- ----------------------------
-- Table structure for selfhelp_feedback
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_feedback`;
CREATE TABLE `selfhelp_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_time` datetime NOT NULL,
  `rank` varchar(2) DEFAULT NULL,
  `comment` varchar(80) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_feedback_activity_id_1591e8eb_fk_selfhelp_activity_id` (`activity_id`),
  KEY `selfhelp_feedback_user_id_10b5739_fk_auth_user_id` (`user_id`),
  CONSTRAINT `selfhelp_feedback_activity_id_1591e8eb_fk_selfhelp_activity_id` FOREIGN KEY (`activity_id`) REFERENCES `selfhelp_activity` (`id`),
  CONSTRAINT `selfhelp_feedback_user_id_10b5739_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for selfhelp_loan
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_loan`;
CREATE TABLE `selfhelp_loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `loan_amount` decimal(10,2) DEFAULT NULL,
  `logout_amount` decimal(10,2) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` longtext,
  `pay_time` datetime DEFAULT NULL,
  `pay_user` varchar(40) DEFAULT NULL,
  `is_clear` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_loan_project_id_7b541607_fk_basedata_project_id` (`project_id`),
  KEY `selfhelp_loan_user_id_1d36464e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `selfhelp_loan_project_id_7b541607_fk_basedata_project_id` FOREIGN KEY (`project_id`) REFERENCES `basedata_project` (`id`),
  CONSTRAINT `selfhelp_loan_user_id_1d36464e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_loan
-- ----------------------------
INSERT INTO `selfhelp_loan` VALUES ('1', '2015-07-04', '9999-12-31', 'zhangsan', null, '2015-07-04 13:36:53', '2015-07-04 13:36:53', 'JK00001', '2015年3月份行政部备用金', 'N', null, '3000.00', null, '7', '13', '行政部零星采购使用', null, null, '0');

-- ----------------------------
-- Table structure for selfhelp_reimbursement
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_reimbursement`;
CREATE TABLE `selfhelp_reimbursement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `bank_account` varchar(120) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `loan_amount` decimal(10,2) DEFAULT NULL,
  `logout_amount` decimal(10,2) DEFAULT NULL,
  `pay_amount` decimal(10,2) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `wo_id` int(11) DEFAULT NULL,
  `description` longtext,
  `pay_user` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_reimbursement_org_id_1e6a35f_fk_organ_orgunit_id` (`org_id`),
  KEY `selfhelp_reimbursement_project_id_ed3db4e_fk_basedata_project_id` (`project_id`),
  KEY `selfhelp_reimbursement_user_id_5d122f07_fk_auth_user_id` (`user_id`),
  KEY `selfhelp_reimbursement_wo_id_ac8ed7a_fk_selfhelp_workorder_id` (`wo_id`),
  KEY `selfhelp_reimbursement_loan_id_44fd1f10_fk_selfhelp_loan_id` (`loan_id`),
  CONSTRAINT `selfhelp_reimbursement_loan_id_44fd1f10_fk_selfhelp_loan_id` FOREIGN KEY (`loan_id`) REFERENCES `selfhelp_loan` (`id`),
  CONSTRAINT `selfhelp_reimbursement_org_id_1e6a35f_fk_organ_orgunit_id` FOREIGN KEY (`org_id`) REFERENCES `organ_orgunit` (`id`),
  CONSTRAINT `selfhelp_reimbursement_project_id_ed3db4e_fk_basedata_project_id` FOREIGN KEY (`project_id`) REFERENCES `basedata_project` (`id`),
  CONSTRAINT `selfhelp_reimbursement_user_id_5d122f07_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `selfhelp_reimbursement_wo_id_ac8ed7a_fk_selfhelp_workorder_id` FOREIGN KEY (`wo_id`) REFERENCES `selfhelp_workorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_reimbursement
-- ----------------------------
INSERT INTO `selfhelp_reimbursement` VALUES ('1', '2015-07-04', '9999-12-31', 'zhangsan', 'zhangsan', '2015-07-04 13:38:14', '2015-07-04 13:39:59', 'BX00001', '15年3月份行政部费用报销', null, 'N', '1348.00', null, '1348.00', '0.00', null, '1', '72', '7', '13', null, '印刷宣传册及维修费', null);

-- ----------------------------
-- Table structure for selfhelp_reimbursementitem
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_reimbursementitem`;
CREATE TABLE `selfhelp_reimbursementitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `memo` varchar(40) DEFAULT NULL,
  `expense_account_id` int(11) NOT NULL,
  `reimbursement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp__reimbursement_id_37efbf0e_fk_selfhelp_reimbursement_id` (`reimbursement_id`),
  KEY `selfhe_expense_account_id_65c44030_fk_basedata_expenseaccount_id` (`expense_account_id`),
  CONSTRAINT `selfhelp__reimbursement_id_37efbf0e_fk_selfhelp_reimbursement_id` FOREIGN KEY (`reimbursement_id`) REFERENCES `selfhelp_reimbursement` (`id`),
  CONSTRAINT `selfhe_expense_account_id_65c44030_fk_basedata_expenseaccount_id` FOREIGN KEY (`expense_account_id`) REFERENCES `basedata_expenseaccount` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_reimbursementitem
-- ----------------------------
INSERT INTO `selfhelp_reimbursementitem` VALUES ('1', '2015-07-04', '1258.00', '印刷企业宣传册', '18', '1');
INSERT INTO `selfhelp_reimbursementitem` VALUES ('2', '2015-07-04', '90.00', '维修公司打印机', '25', '1');

-- ----------------------------
-- Table structure for selfhelp_woextravalue
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_woextravalue`;
CREATE TABLE `selfhelp_woextravalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param_value` varchar(40) DEFAULT NULL,
  `param_name_id` int(11) NOT NULL,
  `workorder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_woextr_param_name_id_34779449_fk_basedata_extraparam_id` (`param_name_id`),
  KEY `selfhelp_woextravalue_be2c0a1b` (`workorder_id`),
  CONSTRAINT `selfhelp_woextrav_workorder_id_781e29d2_fk_selfhelp_workorder_id` FOREIGN KEY (`workorder_id`) REFERENCES `selfhelp_workorder` (`id`),
  CONSTRAINT `selfhelp_woextr_param_name_id_34779449_fk_basedata_extraparam_id` FOREIGN KEY (`param_name_id`) REFERENCES `basedata_extraparam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_woextravalue
-- ----------------------------
INSERT INTO `selfhelp_woextravalue` VALUES ('1', null, '1', '2');
INSERT INTO `selfhelp_woextravalue` VALUES ('2', null, '2', '2');
INSERT INTO `selfhelp_woextravalue` VALUES ('3', null, '3', '2');
INSERT INTO `selfhelp_woextravalue` VALUES ('4', null, '4', '4');
INSERT INTO `selfhelp_woextravalue` VALUES ('5', null, '5', '4');
INSERT INTO `selfhelp_woextravalue` VALUES ('6', null, '6', '4');
INSERT INTO `selfhelp_woextravalue` VALUES ('7', null, '7', '4');
INSERT INTO `selfhelp_woextravalue` VALUES ('8', null, '19', '1');

-- ----------------------------
-- Table structure for selfhelp_woitem
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_woitem`;
CREATE TABLE `selfhelp_woitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,4) DEFAULT NULL,
  `price` decimal(10,4) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `workorder_id` int(11) NOT NULL,
  `measure_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_woitem_material_id_34e897bf_fk_basedata_material_id` (`material_id`),
  KEY `selfhelp_woitem_be2c0a1b` (`workorder_id`),
  KEY `selfhelp_woitem_80c371ce` (`measure_id`),
  CONSTRAINT `selfhelp_woitem_material_id_34e897bf_fk_basedata_material_id` FOREIGN KEY (`material_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `selfhelp_woitem_measure_id_2352ebad_fk_basedata_measure_id` FOREIGN KEY (`measure_id`) REFERENCES `basedata_measure` (`id`),
  CONSTRAINT `selfhelp_woitem_workorder_id_6a435420_fk_selfhelp_workorder_id` FOREIGN KEY (`workorder_id`) REFERENCES `selfhelp_workorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_woitem
-- ----------------------------

-- ----------------------------
-- Table structure for selfhelp_workorder
-- ----------------------------
DROP TABLE IF EXISTS `selfhelp_workorder`;
CREATE TABLE `selfhelp_workorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `description` longtext,
  `business_domain` varchar(4) NOT NULL,
  `classification` varchar(4) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `answer` longtext,
  `service_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `refer_id` int(11) DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `selfhelp_workorder_service_id_17a66979_fk_basedata_material_id` (`service_id`),
  KEY `selfhelp_workorder_user_id_72d939fa_fk_auth_user_id` (`user_id`),
  KEY `selfhelp_workorder_b098ad43` (`project_id`),
  KEY `selfhelp_workorder_12b2c0fd` (`refer_id`),
  CONSTRAINT `selfhelp_workorder_project_id_66ab927f_fk_basedata_project_id` FOREIGN KEY (`project_id`) REFERENCES `basedata_project` (`id`),
  CONSTRAINT `selfhelp_workorder_refer_id_212bc854_fk_selfhelp_workorder_id` FOREIGN KEY (`refer_id`) REFERENCES `selfhelp_workorder` (`id`),
  CONSTRAINT `selfhelp_workorder_service_id_17a66979_fk_basedata_material_id` FOREIGN KEY (`service_id`) REFERENCES `basedata_material` (`id`),
  CONSTRAINT `selfhelp_workorder_user_id_72d939fa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selfhelp_workorder
-- ----------------------------
INSERT INTO `selfhelp_workorder` VALUES ('1', '2015-07-04', '9999-12-31', 'zhangsan', 'zhangsan', '2015-07-04 10:56:34', '2015-07-04 18:21:01', '申请采购办公用品一批', '2015年3月份办公用品采购，详细查看明细,2', 'OT', 'D', 'NEW', null, '62', '13', '8', 'WO00001', null, '', '');
INSERT INTO `selfhelp_workorder` VALUES ('2', '2015-07-04', '9999-12-31', 'zhangsan', null, '2015-07-04 11:58:58', '2015-07-04 11:58:58', '出差申请（重庆）', '因项目需要，前往重庆出差。', 'OT', 'S', 'NEW', null, '1', '13', null, 'WO00002', null, '', '');
INSERT INTO `selfhelp_workorder` VALUES ('3', '2015-07-04', '9999-12-31', 'zhangsan', 'zhangsan', '2015-07-04 12:15:27', '2015-07-04 15:19:05', '2号楼3楼男厕所小便池堵塞', '内有烟头，请安排人员清理', 'OT', 'R', 'NEW', null, null, '13', null, 'WO00003', null, '', '');
INSERT INTO `selfhelp_workorder` VALUES ('4', '2015-07-04', '9999-12-31', 'zhangsan', null, '2015-07-04 12:18:14', '2015-07-04 12:18:14', '用车申请（张江）', '', 'OT', 'S', 'NEW', null, '3', '13', null, 'WO00004', null, '', '');

-- ----------------------------
-- Table structure for syscfg_menu
-- ----------------------------
DROP TABLE IF EXISTS `syscfg_menu`;
CREATE TABLE `syscfg_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `url` varchar(80) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `syscfg_menu_c9799665` (`module_id`),
  CONSTRAINT `syscfg_menu_module_id_14fa2e70_fk_syscfg_module_id` FOREIGN KEY (`module_id`) REFERENCES `syscfg_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscfg_menu
-- ----------------------------
INSERT INTO `syscfg_menu` VALUES ('1', '2015-05-01', '9999-12-31', 'zhugl', null, '2015-05-01 07:30:19', '2015-05-01 07:30:19', 'M001', '模块管理', '', '99', '', '1', '1');
INSERT INTO `syscfg_menu` VALUES ('2', '2015-05-01', '9999-12-31', 'zhugl', null, '2015-05-01 07:30:32', '2015-05-01 07:30:32', 'M002', '菜单管理', '', '99', '', '1', '1');
INSERT INTO `syscfg_menu` VALUES ('3', '2015-05-01', '9999-12-31', 'zhugl', null, '2015-05-01 07:52:20', '2015-05-01 07:52:20', 'M003', '角色管理', '', '99', '', '1', '1');

-- ----------------------------
-- Table structure for syscfg_module
-- ----------------------------
DROP TABLE IF EXISTS `syscfg_module`;
CREATE TABLE `syscfg_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `url` varchar(80) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `syscfg_module_parent_id_350dc54d_fk_syscfg_module_id` (`parent_id`),
  CONSTRAINT `syscfg_module_parent_id_350dc54d_fk_syscfg_module_id` FOREIGN KEY (`parent_id`) REFERENCES `syscfg_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscfg_module
-- ----------------------------
INSERT INTO `syscfg_module` VALUES ('1', '2015-05-01', '9999-12-31', 'zhugl', null, '2015-05-01 07:30:01', '2015-05-01 07:30:01', 'U001', '系统管理', '', '99', '', '1', null);
INSERT INTO `syscfg_module` VALUES ('2', '2015-05-01', '9999-12-31', 'zhugl', null, '2015-05-01 07:51:45', '2015-05-01 07:51:45', 'U002', '基础数据', '', '99', '', '1', null);
INSERT INTO `syscfg_module` VALUES ('3', '2015-05-24', '9999-12-31', 'zhugl', null, '2015-05-24 20:02:43', '2015-05-24 20:02:43', 'HR', '人力资源', '', '99', '', '1', null);
INSERT INTO `syscfg_module` VALUES ('4', '2015-05-24', '9999-12-31', 'zhugl', null, '2015-05-24 20:07:15', '2015-05-24 20:07:15', 'U004', '个人自助', '', '99', '', '1', null);
INSERT INTO `syscfg_module` VALUES ('5', '2015-06-03', '9999-12-31', 'zhugl', null, '2015-06-03 20:00:04', '2015-06-03 20:00:04', 'U005', '采购管理', '', '99', '', '1', null);
INSERT INTO `syscfg_module` VALUES ('6', '2015-06-14', '9999-12-31', 'zhugl', null, '2015-06-14 11:08:29', '2015-06-14 11:08:29', 'SA', '销售管理', '', '99', '', '1', null);

-- ----------------------------
-- Table structure for syscfg_role
-- ----------------------------
DROP TABLE IF EXISTS `syscfg_role`;
CREATE TABLE `syscfg_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `syscfg_role_parent_id_161850bd_fk_syscfg_role_id` (`parent_id`),
  CONSTRAINT `syscfg_role_parent_id_161850bd_fk_syscfg_role_id` FOREIGN KEY (`parent_id`) REFERENCES `syscfg_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscfg_role
-- ----------------------------
INSERT INTO `syscfg_role` VALUES ('1', '2015-05-01', '9999-12-31', 'zhugl', 'zhugl', '2015-05-01 07:31:46', '2015-05-10 16:53:23', 'R001', '职员', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('2', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:41:11', '2015-06-23 20:41:11', 'R002', '部门经理', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('3', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:41:23', '2015-06-23 20:41:23', 'R003', '副总经理', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('4', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:41:47', '2015-06-23 20:41:47', 'R004', '人事经理', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('5', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:41:55', '2015-06-23 20:41:55', 'R005', '财务经理', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('6', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:42:12', '2015-06-23 20:42:12', 'R006', '人事专员', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('7', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:42:18', '2015-06-23 20:42:18', 'R007', '财务会计', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('9', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:42:37', '2015-06-23 20:42:37', 'R009', '财务出纳', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('10', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:43:02', '2015-06-23 20:43:02', 'R010', '行政专员', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('11', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:43:12', '2015-06-23 20:43:12', 'R011', '市场销售', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('12', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:43:24', '2015-06-23 20:43:24', 'R012', '库存专员', '', '1', null);
INSERT INTO `syscfg_role` VALUES ('13', '2015-06-23', '9999-12-31', 'zhugl', null, '2015-06-23 20:43:32', '2015-06-23 20:43:32', 'R013', '总经理', '', '1', null);

-- ----------------------------
-- Table structure for syscfg_role_menus
-- ----------------------------
DROP TABLE IF EXISTS `syscfg_role_menus`;
CREATE TABLE `syscfg_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id` (`role_id`,`menu_id`),
  KEY `syscfg_role_menus_menu_id_4fb81053_fk_syscfg_menu_id` (`menu_id`),
  CONSTRAINT `syscfg_role_menus_menu_id_4fb81053_fk_syscfg_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `syscfg_menu` (`id`),
  CONSTRAINT `syscfg_role_menus_role_id_2c83ed04_fk_syscfg_role_id` FOREIGN KEY (`role_id`) REFERENCES `syscfg_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscfg_role_menus
-- ----------------------------

-- ----------------------------
-- Table structure for syscfg_role_users
-- ----------------------------
DROP TABLE IF EXISTS `syscfg_role_users`;
CREATE TABLE `syscfg_role_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id` (`role_id`,`user_id`),
  KEY `syscfg_role_users_user_id_3ede60c3_fk_auth_user_id` (`user_id`),
  CONSTRAINT `syscfg_role_users_role_id_50b58548_fk_syscfg_role_id` FOREIGN KEY (`role_id`) REFERENCES `syscfg_role` (`id`),
  CONSTRAINT `syscfg_role_users_user_id_3ede60c3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscfg_role_users
-- ----------------------------

-- ----------------------------
-- Table structure for syscfg_site
-- ----------------------------
DROP TABLE IF EXISTS `syscfg_site`;
CREATE TABLE `syscfg_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscfg_site
-- ----------------------------
INSERT INTO `syscfg_site` VALUES ('1', '2015-05-01', '9999-05-01', '启腾控股集团', '');

-- ----------------------------
-- Table structure for syscfg_site_user
-- ----------------------------
DROP TABLE IF EXISTS `syscfg_site_user`;
CREATE TABLE `syscfg_site_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`site_id`,`user_id`),
  KEY `syscfg_site_user_user_id_31f8aecc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `syscfg_site_user_site_id_e6ec06c_fk_syscfg_site_id` FOREIGN KEY (`site_id`) REFERENCES `syscfg_site` (`id`),
  CONSTRAINT `syscfg_site_user_user_id_31f8aecc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscfg_site_user
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_history
-- ----------------------------
DROP TABLE IF EXISTS `workflow_history`;
CREATE TABLE `workflow_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_time` datetime NOT NULL,
  `pro_type` int(11) NOT NULL,
  `memo` varchar(40) DEFAULT NULL,
  `inst_id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_history_d2b1b1e1` (`inst_id`),
  KEY `workflow_history_c693ebc8` (`node_id`),
  KEY `workflow_history_e8701ad4` (`user_id`),
  CONSTRAINT `workflow_history_inst_id_2237d3b0_fk_workflow_instance_id` FOREIGN KEY (`inst_id`) REFERENCES `workflow_instance` (`id`),
  CONSTRAINT `workflow_history_node_id_54527354_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_history_user_id_4dee98c5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_history
-- ----------------------------
INSERT INTO `workflow_history` VALUES ('1', '2015-07-02 06:19:52', '0', null, '1', null, '14');
INSERT INTO `workflow_history` VALUES ('2', '2015-07-03 05:48:11', '1', '同意', '1', '5', '13');
INSERT INTO `workflow_history` VALUES ('3', '2015-07-03 05:50:38', '1', '好', '1', '6', '16');
INSERT INTO `workflow_history` VALUES ('4', '2015-07-03 05:51:08', '1', '', '1', '7', '16');
INSERT INTO `workflow_history` VALUES ('7', '2015-07-05 09:44:25', '0', null, '3', null, '14');
INSERT INTO `workflow_history` VALUES ('14', '2015-07-09 21:25:38', '1', '123', '3', '5', '13');
INSERT INTO `workflow_history` VALUES ('15', '2015-07-12 01:26:21', '1', '12', '3', '6', '16');
INSERT INTO `workflow_history` VALUES ('16', '2015-07-12 01:26:40', '1', '123', '3', '7', '16');
INSERT INTO `workflow_history` VALUES ('20', '2015-07-30 21:24:06', '0', null, '8', null, '14');

-- ----------------------------
-- Table structure for workflow_instance
-- ----------------------------
DROP TABLE IF EXISTS `workflow_instance`;
CREATE TABLE `workflow_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `start_time` datetime NOT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `modal_id` int(11) NOT NULL,
  `starter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_instance_9b2b8663` (`modal_id`),
  KEY `workflow_instance_11d91f21` (`starter_id`),
  CONSTRAINT `workflow_instance_modal_id_3eb1d1ea_fk_workflow_modal_id` FOREIGN KEY (`modal_id`) REFERENCES `workflow_modal` (`id`),
  CONSTRAINT `workflow_instance_starter_id_3e0b14b6_fk_auth_user_id` FOREIGN KEY (`starter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_instance
-- ----------------------------
INSERT INTO `workflow_instance` VALUES ('1', 'S00001', '8', '2015-07-02 06:19:52', '2015-07-03 05:51:08', '99', '2', '14');
INSERT INTO `workflow_instance` VALUES ('3', 'S00003', '9', '2015-07-05 09:44:25', '2015-07-12 01:26:40', '99', '2', '14');
INSERT INTO `workflow_instance` VALUES ('8', 'S00008', '7', '2015-07-30 21:24:06', null, '1', '2', '14');

-- ----------------------------
-- Table structure for workflow_instance_current_nodes
-- ----------------------------
DROP TABLE IF EXISTS `workflow_instance_current_nodes`;
CREATE TABLE `workflow_instance_current_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instance_id` (`instance_id`,`node_id`),
  KEY `workflow_instance_current_n_node_id_54bc8d3a_fk_workflow_node_id` (`node_id`),
  CONSTRAINT `workflow_instance_current_n_node_id_54bc8d3a_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_instance_cu_instance_id_556870f_fk_workflow_instance_id` FOREIGN KEY (`instance_id`) REFERENCES `workflow_instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_instance_current_nodes
-- ----------------------------
INSERT INTO `workflow_instance_current_nodes` VALUES ('3', '8', '5');

-- ----------------------------
-- Table structure for workflow_modal
-- ----------------------------
DROP TABLE IF EXISTS `workflow_modal`;
CREATE TABLE `workflow_modal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `description` longtext,
  `app_name` varchar(60) DEFAULT NULL,
  `model_name` varchar(60) DEFAULT NULL,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_moda_content_type_id_7646d9af_fk_django_content_type_id` (`content_type_id`),
  CONSTRAINT `workflow_moda_content_type_id_7646d9af_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_modal
-- ----------------------------
INSERT INTO `workflow_modal` VALUES ('1', 'WF001', '新员工入职流程', '', 'basedata', 'employee', '2015-05-10', '9999-12-31', '30');
INSERT INTO `workflow_modal` VALUES ('2', 'WF002', '项目审批流程', '', 'basedata', 'project', '2015-07-01', '9999-12-31', '19');

-- ----------------------------
-- Table structure for workflow_node
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node`;
CREATE TABLE `workflow_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `tooltip` varchar(120) DEFAULT NULL,
  `start` tinyint(1) NOT NULL,
  `stop` tinyint(1) NOT NULL,
  `can_terminate` tinyint(1) NOT NULL,
  `can_deny` tinyint(1) NOT NULL,
  `email_notice` tinyint(1) NOT NULL,
  `short_message_notice` tinyint(1) NOT NULL,
  `approve_node` tinyint(1) NOT NULL,
  `handler` longtext,
  `handler_type` int(11) NOT NULL,
  `modal_id` int(11) NOT NULL,
  `next_node_handler` varchar(40) DEFAULT NULL,
  `next_user_handler` varchar(40) DEFAULT NULL,
  `status_field` varchar(40) DEFAULT NULL,
  `status_value` varchar(40) DEFAULT NULL,
  `action` varchar(40) DEFAULT NULL,
  `can_edit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_node_modal_id_3aa9d381_fk_workflow_modal_id` (`modal_id`),
  CONSTRAINT `workflow_node_modal_id_3aa9d381_fk_workflow_modal_id` FOREIGN KEY (`modal_id`) REFERENCES `workflow_modal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_node
-- ----------------------------
INSERT INTO `workflow_node` VALUES ('3', 'N01', '薪酬专员审批', '', '0', '0', '0', '1', '1', '0', '0', '', '1', '1', null, null, null, null, null, '0');
INSERT INTO `workflow_node` VALUES ('4', 'N02', '合同专员审批', '', '0', '0', '0', '1', '1', '0', '0', '', '1', '1', null, null, null, null, null, '0');
INSERT INTO `workflow_node` VALUES ('5', 'N01', '商务主管审批', null, '0', '0', '0', '1', '1', '0', '0', '', '1', '2', 'project.budge.gt.10000', 'up.position.user', 'status', '02', '', '1');
INSERT INTO `workflow_node` VALUES ('6', 'N02', '财务经理审批', null, '0', '0', '0', '1', '1', '0', '0', '', '1', '2', '', 'up.position.user', 'status', '03', 'action.test', '0');
INSERT INTO `workflow_node` VALUES ('7', 'N03', '总经理审批', null, '0', '0', '0', '1', '1', '0', '0', '', '2', '2', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for workflow_node_departments
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node_departments`;
CREATE TABLE `workflow_node_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `orgunit_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`orgunit_id`),
  KEY `workflow_node_department_orgunit_id_276f2bb6_fk_organ_orgunit_id` (`orgunit_id`),
  CONSTRAINT `workflow_node_departments_node_id_379e5725_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_department_orgunit_id_276f2bb6_fk_organ_orgunit_id` FOREIGN KEY (`orgunit_id`) REFERENCES `organ_orgunit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_node_departments
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_node_next
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node_next`;
CREATE TABLE `workflow_node_next` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_node_id` int(11) NOT NULL,
  `to_node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_node_id` (`from_node_id`,`to_node_id`),
  KEY `workflow_node_next_to_node_id_71e709f3_fk_workflow_node_id` (`to_node_id`),
  CONSTRAINT `workflow_node_next_from_node_id_78e6ce74_fk_workflow_node_id` FOREIGN KEY (`from_node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_next_to_node_id_71e709f3_fk_workflow_node_id` FOREIGN KEY (`to_node_id`) REFERENCES `workflow_node` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_node_next
-- ----------------------------
INSERT INTO `workflow_node_next` VALUES ('3', '3', '4');

-- ----------------------------
-- Table structure for workflow_node_positions
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node_positions`;
CREATE TABLE `workflow_node_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`position_id`),
  KEY `workflow_node_position_position_id_187bce75_fk_organ_position_id` (`position_id`),
  CONSTRAINT `workflow_node_positions_node_id_64f898c6_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_position_position_id_187bce75_fk_organ_position_id` FOREIGN KEY (`position_id`) REFERENCES `organ_position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_node_positions
-- ----------------------------
INSERT INTO `workflow_node_positions` VALUES ('1', '7', '87');

-- ----------------------------
-- Table structure for workflow_node_roles
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node_roles`;
CREATE TABLE `workflow_node_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`role_id`),
  KEY `workflow_node_roles_role_id_1b05e9ff_fk_syscfg_role_id` (`role_id`),
  CONSTRAINT `workflow_node_roles_node_id_c6ea3f5_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_roles_role_id_1b05e9ff_fk_syscfg_role_id` FOREIGN KEY (`role_id`) REFERENCES `syscfg_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_node_roles
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_node_users
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node_users`;
CREATE TABLE `workflow_node_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`user_id`),
  KEY `workflow_node_users_user_id_36b0d3c5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `workflow_node_users_node_id_4b2940ca_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_users_user_id_36b0d3c5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_node_users
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_todolist
-- ----------------------------
DROP TABLE IF EXISTS `workflow_todolist`;
CREATE TABLE `workflow_todolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(60) DEFAULT NULL,
  `model_name` varchar(60) DEFAULT NULL,
  `arrived_time` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `inst_id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_todolist_inst_id_5f7d95_fk_workflow_instance_id` (`inst_id`),
  KEY `workflow_todolist_user_id_5209b40_fk_auth_user_id` (`user_id`),
  KEY `workflow_todolist_node_id_6be79401_fk_workflow_node_id` (`node_id`),
  CONSTRAINT `workflow_todolist_inst_id_5f7d95_fk_workflow_instance_id` FOREIGN KEY (`inst_id`) REFERENCES `workflow_instance` (`id`),
  CONSTRAINT `workflow_todolist_node_id_6be79401_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_todolist_user_id_5209b40_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_todolist
-- ----------------------------
INSERT INTO `workflow_todolist` VALUES ('1', 'basedata', 'project', '2015-07-02 06:19:52', '1', '2015-07-02 06:20:23', '1', '5', '13', 'TD00001', '1');
INSERT INTO `workflow_todolist` VALUES ('2', 'basedata', 'project', '2015-07-03 05:48:11', '1', '2015-07-03 05:50:21', '1', '6', '16', 'TD00002', '1');
INSERT INTO `workflow_todolist` VALUES ('3', 'basedata', 'project', '2015-07-03 05:50:38', '1', '2015-07-03 05:50:39', '1', '7', '16', 'TD00003', '1');
INSERT INTO `workflow_todolist` VALUES ('5', 'basedata', 'project', '2015-07-05 09:44:25', '1', '2015-07-05 09:49:38', '3', '5', '13', 'TD00005', '1');
INSERT INTO `workflow_todolist` VALUES ('12', 'basedata', 'project', '2015-07-09 21:25:38', '1', '2015-07-12 01:26:17', '3', '6', '16', 'TD00012', '1');
INSERT INTO `workflow_todolist` VALUES ('13', 'basedata', 'project', '2015-07-12 01:26:21', '1', '2015-07-12 01:26:21', '3', '7', '16', 'TD00013', '1');
INSERT INTO `workflow_todolist` VALUES ('17', 'basedata', 'project', '2015-07-30 21:24:06', '1', '2015-07-30 21:24:17', '8', '5', '13', 'TD00017', '0');
INSERT INTO `workflow_todolist` VALUES ('18', 'basedata', 'project', '2015-07-30 21:24:06', '1', '2015-07-30 21:24:06', '8', null, '14', 'TD00018', '1');
