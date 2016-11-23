/*
Navicat MySQL Data Transfer

Source Server         : text
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : epp_test

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-11-23 11:35:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_academy
-- ----------------------------
DROP TABLE IF EXISTS `mb_academy`;
CREATE TABLE `mb_academy` (
  `academy_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学院ID',
  `academy_name` varchar(100) DEFAULT NULL COMMENT '学院名字',
  PRIMARY KEY (`academy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='学院类型表';

-- ----------------------------
-- Records of mb_academy
-- ----------------------------
INSERT INTO `mb_academy` VALUES ('1', '信息与软件学院');
INSERT INTO `mb_academy` VALUES ('2', '计算机学院');
INSERT INTO `mb_academy` VALUES ('3', '生命学院');

-- ----------------------------
-- Table structure for mb_gender
-- ----------------------------
DROP TABLE IF EXISTS `mb_gender`;
CREATE TABLE `mb_gender` (
  `gender_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '性别ID',
  `gender_name` varchar(100) NOT NULL COMMENT '性别',
  PRIMARY KEY (`gender_id`),
  KEY `gender_name` (`gender_name`),
  KEY `gender_id` (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='性别表';

-- ----------------------------
-- Records of mb_gender
-- ----------------------------
INSERT INTO `mb_gender` VALUES ('2', '女');
INSERT INTO `mb_gender` VALUES ('1', '男');

-- ----------------------------
-- Table structure for mb_grade
-- ----------------------------
DROP TABLE IF EXISTS `mb_grade`;
CREATE TABLE `mb_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生年级ID',
  `grade` varchar(100) DEFAULT NULL COMMENT '年级名',
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='学生年级表';

-- ----------------------------
-- Records of mb_grade
-- ----------------------------
INSERT INTO `mb_grade` VALUES ('1', '大一');
INSERT INTO `mb_grade` VALUES ('2', '大二');
INSERT INTO `mb_grade` VALUES ('3', '大三');
INSERT INTO `mb_grade` VALUES ('4', '大四');

-- ----------------------------
-- Table structure for mb_position
-- ----------------------------
DROP TABLE IF EXISTS `mb_position`;
CREATE TABLE `mb_position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '职位ID',
  `position_name` varchar(100) DEFAULT NULL COMMENT '职位名',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='职位表';

-- ----------------------------
-- Records of mb_position
-- ----------------------------
INSERT INTO `mb_position` VALUES ('1', '教授');
INSERT INTO `mb_position` VALUES ('2', '副教授');

-- ----------------------------
-- Table structure for mb_problem_difficulty_mode
-- ----------------------------
DROP TABLE IF EXISTS `mb_problem_difficulty_mode`;
CREATE TABLE `mb_problem_difficulty_mode` (
  `problem_difficulty_mode_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题难度系数ID',
  `problem_difficulty_mode` double(11,1) DEFAULT NULL COMMENT '难度系数值',
  PRIMARY KEY (`problem_difficulty_mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='问题难度系数表';

-- ----------------------------
-- Records of mb_problem_difficulty_mode
-- ----------------------------
INSERT INTO `mb_problem_difficulty_mode` VALUES ('1', '0.1');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('2', '0.2');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('3', '0.3');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('4', '0.4');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('5', '0.5');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('6', '0.6');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('7', '0.7');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('8', '0.8');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('9', '0.9');
INSERT INTO `mb_problem_difficulty_mode` VALUES ('10', '1.0');

-- ----------------------------
-- Table structure for mb_problem_field
-- ----------------------------
DROP TABLE IF EXISTS `mb_problem_field`;
CREATE TABLE `mb_problem_field` (
  `problem_field_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题方向ID(针对哪个专业)',
  `problem_field_name` varchar(100) DEFAULT NULL COMMENT '问题专业方向名字',
  PRIMARY KEY (`problem_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='问题方向表(针对哪个专业)';

-- ----------------------------
-- Records of mb_problem_field
-- ----------------------------
INSERT INTO `mb_problem_field` VALUES ('1', '软件工程(软件技术)');
INSERT INTO `mb_problem_field` VALUES ('2', '软件工程(网络工程)');

-- ----------------------------
-- Table structure for mb_problem_type
-- ----------------------------
DROP TABLE IF EXISTS `mb_problem_type`;
CREATE TABLE `mb_problem_type` (
  `problem_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题类型ID(领域方向)',
  `problem_type` varchar(100) DEFAULT NULL COMMENT '问题类型',
  PRIMARY KEY (`problem_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='问题类型表(领域方向)';

-- ----------------------------
-- Records of mb_problem_type
-- ----------------------------
INSERT INTO `mb_problem_type` VALUES ('1', 'Java');
INSERT INTO `mb_problem_type` VALUES ('2', 'C++');

-- ----------------------------
-- Table structure for mb_profession
-- ----------------------------
DROP TABLE IF EXISTS `mb_profession`;
CREATE TABLE `mb_profession` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业ID',
  `profession_name` varchar(100) DEFAULT NULL COMMENT '专业名字',
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='专业表';

-- ----------------------------
-- Records of mb_profession
-- ----------------------------
INSERT INTO `mb_profession` VALUES ('1', '软件工程');
INSERT INTO `mb_profession` VALUES ('2', '生命与科学');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `module_name` varchar(100) DEFAULT NULL COMMENT '模块名字',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='模块表';

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', '后台管理');
INSERT INTO `module` VALUES ('2', '提问模块');
INSERT INTO `module` VALUES ('3', '回答模块');
INSERT INTO `module` VALUES ('4', '个人资料设置');

-- ----------------------------
-- Table structure for module_privilege
-- ----------------------------
DROP TABLE IF EXISTS `module_privilege`;
CREATE TABLE `module_privilege` (
  `module_privilege_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模块权限ID',
  `module_id` int(11) DEFAULT NULL COMMENT '模块ID',
  `privilege_id` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`module_privilege_id`),
  KEY `module_code` (`module_id`),
  KEY `privilege_code` (`privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='模块权限表';

-- ----------------------------
-- Records of module_privilege
-- ----------------------------
INSERT INTO `module_privilege` VALUES ('1', '0', '0');
INSERT INTO `module_privilege` VALUES ('2', '0', '0');
INSERT INTO `module_privilege` VALUES ('3', '0', '0');
INSERT INTO `module_privilege` VALUES ('4', '0', '0');

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `privilege_name` varchar(100) NOT NULL COMMENT '权限名字',
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='权限表';

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('1', '添加问题');
INSERT INTO `privilege` VALUES ('2', '编辑问题');
INSERT INTO `privilege` VALUES ('3', '删除问题');
INSERT INTO `privilege` VALUES ('4', '添加回答');
INSERT INTO `privilege` VALUES ('5', '编辑回答');
INSERT INTO `privilege` VALUES ('6', '删除回答');
INSERT INTO `privilege` VALUES ('7', '修改个人资料');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `problem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `problem_type_id` int(11) DEFAULT NULL COMMENT '问题类型ID',
  `problem_field_id` int(11) DEFAULT NULL COMMENT '问题领域ID',
  `problem_title` varchar(100) DEFAULT NULL COMMENT '问题题目',
  `problem_content` text COMMENT '问题内容',
  `problem_difficulty_mode_id` int(11) DEFAULT NULL COMMENT '问题难度系数ID',
  `problem_extra_file` varchar(150) DEFAULT NULL COMMENT '问题所需文件',
  `problem_status` int(11) DEFAULT NULL COMMENT '问题状态',
  `problem_create_time` datetime NOT NULL COMMENT '问题创建时间',
  `problem_end_time` datetime DEFAULT NULL COMMENT '问题结束时间',
  `problem_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '问题更新时间',
  PRIMARY KEY (`problem_id`),
  KEY `problem_questioner_id` (`user_id`),
  KEY `problem_type` (`problem_type_id`),
  KEY `problem_difficulty_mode` (`problem_difficulty_mode_id`),
  KEY `problem_field` (`problem_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='问题表';

-- ----------------------------
-- Records of problem
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名字',
  PRIMARY KEY (`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '提问者');
INSERT INTO `role` VALUES ('3', '回答者');

-- ----------------------------
-- Table structure for role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `role_privilege_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色权限ID(基于模块权限)',
  `module_privilege_id` int(11) DEFAULT NULL COMMENT '模块权限ID',
  PRIMARY KEY (`role_privilege_id`),
  KEY `module_privilege_id` (`module_privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限表(基于模块权限)';

-- ----------------------------
-- Records of role_privilege
-- ----------------------------
INSERT INTO `role_privilege` VALUES ('6', '1');
INSERT INTO `role_privilege` VALUES ('1', '2');
INSERT INTO `role_privilege` VALUES ('2', '3');
INSERT INTO `role_privilege` VALUES ('3', '4');
INSERT INTO `role_privilege` VALUES ('4', '4');
INSERT INTO `role_privilege` VALUES ('5', '4');

-- ----------------------------
-- Table structure for score_in_solution
-- ----------------------------
DROP TABLE IF EXISTS `score_in_solution`;
CREATE TABLE `score_in_solution` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题分数ID',
  `solution_id` int(11) NOT NULL COMMENT '答案ID',
  `score` int(6) DEFAULT NULL COMMENT '问题得分',
  `score_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '分数更新时间',
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='问题分数表';

-- ----------------------------
-- Records of score_in_solution
-- ----------------------------

-- ----------------------------
-- Table structure for solution
-- ----------------------------
DROP TABLE IF EXISTS `solution`;
CREATE TABLE `solution` (
  `solution_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '答案ID',
  `problem_id` int(11) NOT NULL COMMENT '问题ID',
  `team_id` int(11) DEFAULT NULL COMMENT '团队ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `solution_title` varchar(100) NOT NULL COMMENT '答案标题',
  `solution_content` text NOT NULL COMMENT '答案内容',
  `solution_extra_file` varchar(150) DEFAULT NULL COMMENT '答案上传文件',
  `solution_update_time` datetime NOT NULL COMMENT '答案更新时间',
  `solution_create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '答案创建时间',
  PRIMARY KEY (`solution_id`),
  KEY `solution_answerer_id` (`user_id`),
  KEY `solution_belongs_to_problem_id` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='答案表';

-- ----------------------------
-- Records of solution
-- ----------------------------

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '团队ID',
  `team_name` varchar(100) NOT NULL COMMENT '团队名字',
  `team_leader_id` int(100) NOT NULL COMMENT '团队领导者ID',
  `team_total_users` int(11) DEFAULT NULL COMMENT '团队人数',
  `team_create_time` datetime DEFAULT NULL COMMENT '团队创建时间',
  `team_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '团队更新时间',
  PRIMARY KEY (`team_id`,`team_name`),
  KEY `team_id` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团队表';

-- ----------------------------
-- Records of team
-- ----------------------------

-- ----------------------------
-- Table structure for team_user
-- ----------------------------
DROP TABLE IF EXISTS `team_user`;
CREATE TABLE `team_user` (
  `team_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '团队_成员关联ID',
  `team_id` int(11) DEFAULT NULL COMMENT '团队ID',
  `user_id` int(11) DEFAULT NULL COMMENT '成员ID',
  PRIMARY KEY (`team_user_id`),
  KEY `team_id` (`team_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团队成员表';

-- ----------------------------
-- Records of team_user
-- ----------------------------

-- ----------------------------
-- Table structure for total_score
-- ----------------------------
DROP TABLE IF EXISTS `total_score`;
CREATE TABLE `total_score` (
  `total_score_id` int(11) NOT NULL COMMENT '总成绩ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `total_score` int(11) DEFAULT NULL COMMENT '总得分',
  PRIMARY KEY (`total_score_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='总成绩表';

-- ----------------------------
-- Records of total_score
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `user_gender_id` int(11) DEFAULT NULL COMMENT '用户性别ID',
  `user_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `user_password` varchar(100) DEFAULT NULL COMMENT '用户密码',
  `user_grade` int(11) DEFAULT NULL,
  `user_profession_id` int(11) DEFAULT NULL COMMENT '用户专业ID',
  `user_academy` int(11) DEFAULT NULL COMMENT '用户学院ID',
  `user_position` int(11) DEFAULT NULL COMMENT '用户职位ID',
  `user_shortbrief` text COMMENT '用户简介',
  `user_contact` varchar(100) DEFAULT NULL COMMENT '用户联系方式',
  `user_team_id` int(11) DEFAULT NULL COMMENT '用户_团队ID',
  `user_register_time` datetime DEFAULT NULL COMMENT '用户注册时间',
  `user_update_time` timestamp NULL DEFAULT NULL COMMENT '用户更新时间',
  PRIMARY KEY (`user_id`),
  KEY `user_username` (`user_username`),
  KEY `user_gender` (`user_gender_id`),
  KEY `user_profession` (`user_profession_id`),
  KEY `user_academy` (`user_academy`),
  KEY `user_position` (`user_position`),
  KEY `user_grade` (`user_grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `user_username` varchar(13) NOT NULL COMMENT '用户名',
  `role_id` varchar(13) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_role_id`),
  KEY `role_code_in_user_role` (`role_id`),
  KEY `user_username` (`user_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
