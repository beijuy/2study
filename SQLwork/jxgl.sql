/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : jxgl

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-02-21 12:41:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` char(7) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `cpno` char(7) DEFAULT NULL COMMENT '先修课课号',
  `ccredit` int(2) NOT NULL COMMENT '学分',
  PRIMARY KEY (`cno`),
  KEY `fk_c_cpno_idx` (`cpno`),
  CONSTRAINT `fk_c_cpno` FOREIGN KEY (`cpno`) REFERENCES `course` (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('0000001', '数据库OCP考证', null, '4');
INSERT INTO `course` VALUES ('0000002', 'C语言基础', '0000027', '8');
INSERT INTO `course` VALUES ('0000003', 'Linux操作系统', '0000013', '5');
INSERT INTO `course` VALUES ('0000004', 'C#程序设计', '0000002', '6');
INSERT INTO `course` VALUES ('0000005', 'DB_Design', null, '4');
INSERT INTO `course` VALUES ('0000006', '信息系统分析与设计', '0000010', '6');
INSERT INTO `course` VALUES ('0000007', 'JAVA程序设计', '0000002', '8');
INSERT INTO `course` VALUES ('0000008', '电子商务', '0000027', '4');
INSERT INTO `course` VALUES ('0000009', '实用英语', null, '6');
INSERT INTO `course` VALUES ('0000010', '数据结构', '0000002', '4');
INSERT INTO `course` VALUES ('0000011', '平板撑', null, '2');
INSERT INTO `course` VALUES ('0000012', '邓小平理论', null, '4');
INSERT INTO `course` VALUES ('0000013', '操作系统', '0000002', '4');
INSERT INTO `course` VALUES ('0000014', '决胜股市终极课程', null, '4');
INSERT INTO `course` VALUES ('0000015', 'Web前端开发', '0000002', '4');
INSERT INTO `course` VALUES ('0000016', '电子商务', null, '3');
INSERT INTO `course` VALUES ('0000017', '应用统计学', '0000034', '2');
INSERT INTO `course` VALUES ('0000018', 'ERP原理', '0000039', '3');
INSERT INTO `course` VALUES ('0000019', '业务流程管理', '0000018', '2');
INSERT INTO `course` VALUES ('0000020', '信息管理学', null, '2');
INSERT INTO `course` VALUES ('0000027', '计算机基础', null, '4');
INSERT INTO `course` VALUES ('0000032', '多媒体技术', '0000027', '5');
INSERT INTO `course` VALUES ('0000034', '高等数学', null, '6');
INSERT INTO `course` VALUES ('0000039', '基础会计', null, '2');
INSERT INTO `course` VALUES ('0000045', '敏捷开发', '0000006', '4');
INSERT INTO `course` VALUES ('0000052', '财务会计', '0000039', '4');
INSERT INTO `course` VALUES ('0000053', '现代物流实操', null, '4');
INSERT INTO `course` VALUES ('0000054', 'DBA实战-数据库管理员之路', null, '3');
INSERT INTO `course` VALUES ('0000055', 'NoSQL数据库', null, '1');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sno` char(7) NOT NULL,
  `cno` char(7) NOT NULL,
  `score` decimal(4,1) DEFAULT NULL,
  `point` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`sno`,`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('0301101', '0000001', '85.0', '2.5');
INSERT INTO `sc` VALUES ('0301101', '0000002', '80.0', '2.0');
INSERT INTO `sc` VALUES ('0301101', '0000006', '91.0', '3.0');
INSERT INTO `sc` VALUES ('0301101', '0000007', '87.0', '2.5');
INSERT INTO `sc` VALUES ('0301101', '0000008', '57.8', '0.0');
INSERT INTO `sc` VALUES ('0301101', '0000010', '69.3', '1.0');
INSERT INTO `sc` VALUES ('0301101', '0000011', '63.0', '1.0');
INSERT INTO `sc` VALUES ('0301101', '0000013', '90.0', '3.0');
INSERT INTO `sc` VALUES ('0301101', '0000034', '81.0', '2.0');
INSERT INTO `sc` VALUES ('0301102', '0000002', '98.0', '3.5');
INSERT INTO `sc` VALUES ('0301102', '0000008', '83.0', '2.0');
INSERT INTO `sc` VALUES ('0301102', '0000009', '76.0', '1.5');
INSERT INTO `sc` VALUES ('0301102', '0000010', '78.0', '1.5');
INSERT INTO `sc` VALUES ('0301102', '0000011', '72.5', '1.5');
INSERT INTO `sc` VALUES ('0301102', '0000013', '82.0', '2.0');
INSERT INTO `sc` VALUES ('0301102', '0000027', '79.0', '1.5');
INSERT INTO `sc` VALUES ('0301102', '0000034', '67.2', '1.0');
INSERT INTO `sc` VALUES ('0311101', '0000008', '86.0', '1.0');
INSERT INTO `sc` VALUES ('0311101', '0000009', '60.9', '0.0');
INSERT INTO `sc` VALUES ('0311101', '0000011', '52.5', '0.0');
INSERT INTO `sc` VALUES ('0311101', '0000027', '87.0', '1.0');
INSERT INTO `sc` VALUES ('0311101', '0000034', '88.0', '1.0');
INSERT INTO `sc` VALUES ('0311101', '0000039', '85.0', '1.0');
INSERT INTO `sc` VALUES ('0311101', '0000052', '66.2', '0.0');
INSERT INTO `sc` VALUES ('0311102', '0000006', '64.1', '0.0');
INSERT INTO `sc` VALUES ('0311102', '0000008', '78.0', '1.0');
INSERT INTO `sc` VALUES ('0311102', '0000009', '76.0', '1.0');
INSERT INTO `sc` VALUES ('0311102', '0000011', '80.0', '1.0');
INSERT INTO `sc` VALUES ('0311102', '0000027', '84.0', '1.0');
INSERT INTO `sc` VALUES ('0311102', '0000034', '78.0', '1.0');
INSERT INTO `sc` VALUES ('0311102', '0000052', '75.6', '1.5');
INSERT INTO `sc` VALUES ('0311202', '0000008', '78.0', '1.0');
INSERT INTO `sc` VALUES ('0311202', '0000009', '70.0', '1.0');
INSERT INTO `sc` VALUES ('0311202', '0000011', '53.0', '0.0');
INSERT INTO `sc` VALUES ('0311202', '0000027', '80.0', '1.0');
INSERT INTO `sc` VALUES ('0311202', '0000034', '79.0', '1.0');
INSERT INTO `sc` VALUES ('0311202', '0000039', '63.0', '0.0');
INSERT INTO `sc` VALUES ('0311202', '0000052', '87.0', '1.0');
INSERT INTO `sc` VALUES ('0811102', '0000001', '90.0', '3.0');
INSERT INTO `sc` VALUES ('0811102', '0000007', '80.0', '2.0');
INSERT INTO `sc` VALUES ('0811102', '0000008', '75.0', '1.5');
INSERT INTO `sc` VALUES ('0811102', '0000027', '78.0', '1.5');
INSERT INTO `sc` VALUES ('0811102', '0000034', '85.0', '2.5');
INSERT INTO `sc` VALUES ('0811102', '0000052', '58.8', '0.0');
INSERT INTO `sc` VALUES ('0911201', '0000008', '69.0', '1.0');
INSERT INTO `sc` VALUES ('0911201', '0000009', '81.0', '1.0');
INSERT INTO `sc` VALUES ('0911201', '0000011', '72.0', '1.5');
INSERT INTO `sc` VALUES ('0911201', '0000027', '84.0', '1.0');
INSERT INTO `sc` VALUES ('0911201', '0000034', '78.2', '0.0');
INSERT INTO `sc` VALUES ('0911201', '0000039', '77.0', '1.5');
INSERT INTO `sc` VALUES ('0911201', '0000052', '71.0', '2.0');
INSERT INTO `sc` VALUES ('1211201', '0000008', '75.0', '1.5');
INSERT INTO `sc` VALUES ('1211201', '0000009', '77.7', '1.5');
INSERT INTO `sc` VALUES ('1211201', '0000011', '42.0', '0.0');
INSERT INTO `sc` VALUES ('1211201', '0000027', '84.0', '2.0');
INSERT INTO `sc` VALUES ('1211201', '0000034', '75.6', '1.5');
INSERT INTO `sc` VALUES ('1211201', '0000039', '69.3', '1.0');
INSERT INTO `sc` VALUES ('1211201', '0000052', '78.0', '1.5');
INSERT INTO `sc` VALUES ('1211211', '0000006', '70.0', '1.5');
INSERT INTO `sc` VALUES ('1211211', '0000008', '74.0', '1.0');
INSERT INTO `sc` VALUES ('1211211', '0000009', '52.0', '0.0');
INSERT INTO `sc` VALUES ('1211211', '0000011', '55.0', '0.0');
INSERT INTO `sc` VALUES ('1211211', '0000027', '75.0', '1.0');
INSERT INTO `sc` VALUES ('1211211', '0000034', '79.0', '1.5');
INSERT INTO `sc` VALUES ('1211211', '0000052', '82.0', '2.0');
INSERT INTO `sc` VALUES ('1401102', '0000010', '67.0', '1.0');
INSERT INTO `sc` VALUES ('1401102', '0000013', '89.0', '2.5');
INSERT INTO `sc` VALUES ('1401102', '0000045', null, null);
INSERT INTO `sc` VALUES ('1411101', '0000001', null, null);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `sno` char(7) NOT NULL COMMENT '学号',
  `sname` char(8) NOT NULL,
  `class` char(10) DEFAULT NULL,
  `ssex` char(2) DEFAULT NULL,
  `bday` date DEFAULT NULL COMMENT '出生日期',
  `bplace` char(10) DEFAULT NULL COMMENT '生源地',
  `IDNum` char(18) DEFAULT NULL COMMENT '身份证号',
  `sdept` char(16) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('0301101', '陈红', '03计应1', '女', '1982-12-02', '浙江宁波', '330102198212020021', '信息学院', '15900001111');
INSERT INTO `students` VALUES ('0301102', '黄圣依', '03计应1', '女', '1983-06-09', '浙江杭州', '330102198306090020', '信息学院', '15900001122');
INSERT INTO `students` VALUES ('0301103', '刘涛', '03计应1', '女', '1982-09-18', '山东潍坊', '330102198209180182', '信息学院', '15900001133');
INSERT INTO `students` VALUES ('0301104', '晓静', '03计应1', '女', '1983-03-10', '广西桂林', '330104198303109928', '信息学院', '15900001144');
INSERT INTO `students` VALUES ('0301105', '许晴', '03计应1', '女', '1983-06-24', '北京', '330105198306243004', '信息学院', '15900001155');
INSERT INTO `students` VALUES ('0301106', '黎明', '03计应1', '男', '1983-03-15', '香港', '330122198303152826', '信息学院', null);
INSERT INTO `students` VALUES ('0311101', '赵薇', '03物流1', '女', '1982-02-11', '安徽合肥', '330203198202110925', '经管学院', '15900001177');
INSERT INTO `students` VALUES ('0311102', '董洁', '03物流1', '女', '1982-02-17', '上海', '330203198202170017', '经管学院', '15900001188');
INSERT INTO `students` VALUES ('0311103', '王力宏', '03物流1', '男', '1982-05-31', '台湾', '330203198205310027', '经管学院', '15900001199');
INSERT INTO `students` VALUES ('0311202', '佟小为', '03物流2', '男', '1982-06-07', '北京', '330205198206070617', '经管学院', '15900002255');
INSERT INTO `students` VALUES ('0311203', '谢霆锋', '03物流2', '男', '1982-11-02', '香港', '330205198211020964', '经管学院', '15900002266');
INSERT INTO `students` VALUES ('0311306', '李若彤', '03物流3', '女', '1982-08-09', '浙江宁波', '330206198208090317', '经管学院', '15911112200');
INSERT INTO `students` VALUES ('0311310', '萧亚轩', '03物流3', '女', '1982-03-31', '山东青岛', '330203198203310029', '经管学院', '15911112244');
INSERT INTO `students` VALUES ('0801101', '林志颖', '08计科1', '男', '1989-09-23', '福建厦门', '330203198909230655', '信息学院', '15911112255');
INSERT INTO `students` VALUES ('0801102', '陈奕迅', '08计科1', '男', '1989-06-25', '福建厦门', '330203198906252418', '信息学院', '15911112266');
INSERT INTO `students` VALUES ('0801103', '古明乐', '08计科1', '男', '1989-01-19', '福建厦门', '330124198901191421', '信息学院', '15911112277');
INSERT INTO `students` VALUES ('0811101', '郭富城', '08信管1', '男', '1990-10-17', '北京', '330204199010173022', '信息学院', '15911112288');
INSERT INTO `students` VALUES ('0811102', '王晓菲', '08信管1', '女', '1990-11-16', '河北衡水', '330204199011161017', '信息学院', '15911112299');
INSERT INTO `students` VALUES ('0811201', '蒋勤勤', '08信管2', '女', '1989-01-09', '河北保定', '330206198901094616', '信息学院', '15911112299');
INSERT INTO `students` VALUES ('0811202', '吴彦祖', '08信管2', '男', '1989-06-01', '山东济南', '330206198906013416', '信息学院', '15911113300');
INSERT INTO `students` VALUES ('0811301', '刘烨', '10信管3', '男', '1991-12-23', '山东烟台', '330206199112234634', '信息学院', '15911113311');
INSERT INTO `students` VALUES ('0811302', '周迅', '08信管3', '女', '1990-08-07', '山东威海', '33020619900201141x', '信息学院', '15911113322');
INSERT INTO `students` VALUES ('0811303', '朱茵', '08信管3', '女', '1990-02-14', '辽宁大连', '330206199002140914', '信息学院', '15911113333');
INSERT INTO `students` VALUES ('0911102', '张信哲', '13信管1', '男', '1995-07-14', '山东烟台', '330204199107145027', '信息学院', '15911113377');
INSERT INTO `students` VALUES ('0911201', '陈坤', '09信管2', '男', '1990-07-19', '山东烟台', '330204199007199604', '信息学院', '15911113388');
INSERT INTO `students` VALUES ('0911203', '刘德华', '09信管2', '男', '1994-10-31', '天津', '330206199110313462', '信息学院', '15911114400');
INSERT INTO `students` VALUES ('0911301', '刘嘉玲', '14网络1', '女', '1996-07-18', '河北邢台', '330206199207181426', '信息学院', '15911114411');
INSERT INTO `students` VALUES ('1211201', '王祖贤', '12物流2', '女', '1992-07-25', '西藏拉萨', '330204198207253015', '经管学院', '15900002244');
INSERT INTO `students` VALUES ('1211205', '胡晓军', '12软工2', '男', '1991-07-16', '浙江杭州', '330206198107163128', '信息学院', '15900002277');
INSERT INTO `students` VALUES ('1211206', '陈红', '12软工2', '女', '1991-11-09', '浙江金华', '330206198111095710', '信息学院', '15900002288');
INSERT INTO `students` VALUES ('1211211', '李小鹏', '12软工2', '男', '1991-11-10', '浙江湖州', '33020619811110312x', '信息学院', '15900002299');
INSERT INTO `students` VALUES ('1311104', '李嘉欣', '13英语1', '女', '1994-05-28', '山西太原', '330204198105281056', '人文学院', '15900002211');
INSERT INTO `students` VALUES ('1311105', '苏有明', '13英语1', '男', '1995-04-16', '内蒙古包头', '330204198204162036', '人文学院', '15900002222');
INSERT INTO `students` VALUES ('1311106', '夏小雨', '13英语1', '男', '1996-10-12', '甘肃兰州', '330204198210121046', '人文学院', '15900002233');
INSERT INTO `students` VALUES ('1401101', '徐若萱', '14计科1', '女', '1996-07-09', '河北唐山', '330203199007090617', '信息学院', '15911113344');
INSERT INTO `students` VALUES ('1401102', '陈晓东', '14计科1', '男', '1996-03-21', '浙江杭州', '330203199003210034', '信息学院', '15911113355');
INSERT INTO `students` VALUES ('1409891', '柴静', null, null, null, null, null, '信息学院', null);
INSERT INTO `students` VALUES ('1409892', '特斯拉', null, null, null, null, null, '机电学院', null);
INSERT INTO `students` VALUES ('1411101', '张柏芝', '14计科3', '女', '1991-03-29', '浙江温州', '33020419910329267x', '信息学院', '15911113366');
INSERT INTO `students` VALUES ('1411302', '周晓', '14计科3', '男', '1997-08-05', '河北秦皇岛', '330206199108051212', '信息学院', '18620810098');
INSERT INTO `students` VALUES ('1411307', '陆毅', '14电气1', '男', '1996-01-20', '浙江绍兴', '330203198301201848', '机电学院', '15911112211');
INSERT INTO `students` VALUES ('1411308', '袁莉', '14电气1', '女', '1997-10-01', '江苏南京', '33020319821001094x', '机电学院', '15911112222');
INSERT INTO `students` VALUES ('1411309', '刘亦菲\r\n', '14电气1', '女', '1996-05-26', '江苏南京', '330203198205268062', '机电学院', '15911112233');
INSERT INTO `students` VALUES ('9521104', '陈冬', null, '男', null, null, null, null, '');

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `tno` char(3) NOT NULL,
  `tname` char(8) DEFAULT NULL,
  `ps` char(10) DEFAULT NULL,
  `tbirthday` date DEFAULT NULL,
  `tdept` char(16) DEFAULT NULL,
  `tsex` char(2) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('001', '谭浩强', '教授', '1958-01-01', '计科', '男');
INSERT INTO `teachers` VALUES ('002', '王珊', '教授', '1962-02-13', '计科', '女');
INSERT INTO `teachers` VALUES ('003', '萨师煊', '教授', '1953-05-01', '计科', '男');
INSERT INTO `teachers` VALUES ('004', '严蔚敏', '副教授', '1968-07-02', '软工', '女');
INSERT INTO `teachers` VALUES ('005', '李琳', '讲师', '1988-11-15', '软工', '女');
INSERT INTO `teachers` VALUES ('006', '韩万江', '助教', '1992-10-17', '信管', '男');
INSERT INTO `teachers` VALUES ('007', '陈辉', '副教授', '1980-08-24', '软工', '男');
INSERT INTO `teachers` VALUES ('008', '谢世凡', '讲师', '1986-09-05', '信管', '男');
INSERT INTO `teachers` VALUES ('009', '郑卓', '教授', '1976-04-23', '信管', '女');
INSERT INTO `teachers` VALUES ('010', '梅清', '讲师', '1982-06-16', '网络', '女');
INSERT INTO `teachers` VALUES ('011', '谢良', '副教授', '1979-03-15', '网络', '男');
INSERT INTO `teachers` VALUES ('012', '张敏之', '讲师', '1988-05-22', '计科', '男');
INSERT INTO `teachers` VALUES ('013', '叶晨曦', '讲师', '1987-06-17', '电商', '男');
INSERT INTO `teachers` VALUES ('014', '熊庆阳', '教授', '1976-09-06', '电商', '男');
INSERT INTO `teachers` VALUES ('015', '黄盼盼', '助教', '1990-05-04', '英语', '女');
INSERT INTO `teachers` VALUES ('016', '梅丽', '讲师', '1985-09-05', '英语', '女');
INSERT INTO `teachers` VALUES ('017', '陈琦志', '教授', '1967-07-19', '英语', '男');
INSERT INTO `teachers` VALUES ('018', '方严', '副教授', '1972-10-05', '物流', '男');
INSERT INTO `teachers` VALUES ('019', '程源', '副教授', '1975-05-16', '物流', '女');
INSERT INTO `teachers` VALUES ('020', '杨慕芳', '讲师', '1984-12-24', '会计', '女');
INSERT INTO `teachers` VALUES ('021', '黄嘉琪', '副教授', '1978-11-12', '会计', '女');
INSERT INTO `teachers` VALUES ('022', '姜雨晴', '助教', '1990-06-15', '金融', '女');
INSERT INTO `teachers` VALUES ('023', '朱佩玲', '讲师', '1980-05-22', '会计', '女');
INSERT INTO `teachers` VALUES ('024', '陈卿', '教授', '1973-03-17', '金融', '男');
INSERT INTO `teachers` VALUES ('025', '王启晖', '副教授', '1979-04-09', '网络', '男');

-- ----------------------------
-- Table structure for teaching
-- ----------------------------
DROP TABLE IF EXISTS `teaching`;
CREATE TABLE `teaching` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `cterm` int(1) DEFAULT NULL COMMENT '学期',
  `class` char(10) DEFAULT NULL,
  `cno` char(7) NOT NULL,
  `tno` char(3) DEFAULT NULL,
  `period` int(3) DEFAULT NULL COMMENT '学时',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teaching
-- ----------------------------
INSERT INTO `teaching` VALUES ('1', '1', '03物流1', '0000011', '001', '36');
INSERT INTO `teaching` VALUES ('2', '1', '03物流1', '0000034', '002', '72');
INSERT INTO `teaching` VALUES ('3', '3', '03物流1', '0000052', '003', '60');
INSERT INTO `teaching` VALUES ('4', '1', '03物流1', '0000027', '004', '108');
INSERT INTO `teaching` VALUES ('5', '2', '03物流1', '0000039', '005', '36');
INSERT INTO `teaching` VALUES ('6', '6', '03物流1', '0000005', '006', '72');
INSERT INTO `teaching` VALUES ('7', '5', '03物流1', '0000001', '007', '36');
INSERT INTO `teaching` VALUES ('8', '1', '03物流2', '0000011', null, '36');
INSERT INTO `teaching` VALUES ('9', '1', '03物流2', '0000034', '002', '72');
INSERT INTO `teaching` VALUES ('10', '3', '03物流2', '0000052', '003', '60');
INSERT INTO `teaching` VALUES ('11', '1', '03物流2', '0000027', '004', '108');
INSERT INTO `teaching` VALUES ('12', '2', '03物流2', '0000039', '009', '36');
INSERT INTO `teaching` VALUES ('13', '6', '03物流2', '0000005', '010', '72');
INSERT INTO `teaching` VALUES ('14', '5', '03物流2', '0000001', '007', '36');
INSERT INTO `teaching` VALUES ('15', '1', '14计科3', '0000011', '022', '36');
INSERT INTO `teaching` VALUES ('16', '1', '14计科3', '0000034', null, '54');
INSERT INTO `teaching` VALUES ('17', '7', '14计科3', '0000045', '013', '108');
INSERT INTO `teaching` VALUES ('18', '1', '14计科3', '0000027', '014', '144');
INSERT INTO `teaching` VALUES ('19', '2', '14计科1', '0000039', '015', '36');
INSERT INTO `teaching` VALUES ('20', '6', '14计科1', '0000005', '016', '72');
INSERT INTO `teaching` VALUES ('21', '5', '14计科1', '0000001', '007', '36');
INSERT INTO `teaching` VALUES ('22', '3', '03物流1', '0000007', '017', '108');
INSERT INTO `teaching` VALUES ('23', '2', '03物流1', '0000012', null, '54');
INSERT INTO `teaching` VALUES ('24', '6', '03物流1', '0000005', '019', '72');
INSERT INTO `teaching` VALUES ('25', '3', '03物流1', '0000008', '020', '108');
INSERT INTO `teaching` VALUES ('26', '2', '03物流1', '0000032', '007', '36');
INSERT INTO `teaching` VALUES ('27', '3', '03物流1', '0000004', '021', '72');
INSERT INTO `teaching` VALUES ('28', '3', '03物流1', '0000003', '022', '36');
INSERT INTO `teaching` VALUES ('29', '3', '03物流2', '0000007', '017', '108');
INSERT INTO `teaching` VALUES ('30', '2', '03物流2', '0000012', '018', '54');
INSERT INTO `teaching` VALUES ('31', '6', '03物流2', '0000005', '010', '72');
INSERT INTO `teaching` VALUES ('32', '3', '03物流2', '0000008', '020', '108');
INSERT INTO `teaching` VALUES ('33', '2', '03物流2', '0000032', '007', '36');
INSERT INTO `teaching` VALUES ('34', '3', '03物流2', '0000004', '021', '72');
INSERT INTO `teaching` VALUES ('35', '3', '03物流2', '0000003', '022', '36');
INSERT INTO `teaching` VALUES ('36', '2', '14计科1', '0000002', '023', '144');
INSERT INTO `teaching` VALUES ('37', '2', '14计科1', '0000010', '014', '72');
INSERT INTO `teaching` VALUES ('38', '2', '14计科1', '0000013', null, '72');
INSERT INTO `teaching` VALUES ('39', '1', '14计科1', '0000034', '025', '54');
INSERT INTO `teaching` VALUES ('40', '6', '14计科3', '0000005', '016', '72');
INSERT INTO `teaching` VALUES ('41', '2', '14计科3', '0000032', '007', '36');
INSERT INTO `teaching` VALUES ('42', '3', '14计科3', '0000003', '001', '36');
