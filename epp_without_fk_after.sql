/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : epp_test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-11-20 11:15:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `answer_title` varchar(100) NOT NULL,
  `answer_content` text NOT NULL,
  `answer_extra_file` varchar(150) DEFAULT NULL,
  `answer_create_time` datetime NOT NULL,
  `answer_update_time` datetime NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='答案表';

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for mb_academy
-- ----------------------------
DROP TABLE IF EXISTS `mb_academy`;
CREATE TABLE `mb_academy` (
  `academy_id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_name` varchar(100) DEFAULT NULL,
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
  `gender_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(100) NOT NULL,
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
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(100) DEFAULT NULL,
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
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(100) DEFAULT NULL,
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
  `problem_difficulty_mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_difficulty_mode` double(11,1) DEFAULT NULL,
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
  `problem_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_field_name` varchar(100) DEFAULT NULL,
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
  `problem_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_type` varchar(100) DEFAULT NULL,
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
  `profession_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession_name` varchar(100) DEFAULT NULL,
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
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='模块表';

-- ----------------------------
-- Records of module
-- ----------------------------

-- ----------------------------
-- Table structure for module_privilege
-- ----------------------------
DROP TABLE IF EXISTS `module_privilege`;
CREATE TABLE `module_privilege` (
  `module_privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `privilege_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='模块权限表';

-- ----------------------------
-- Records of module_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(100) NOT NULL,
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
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `question_type` int(11) DEFAULT NULL,
  `question_field` int(11) DEFAULT NULL,
  `question_title` varchar(100) DEFAULT NULL,
  `question_content` text,
  `question_difficulty_mode` int(11) DEFAULT NULL,
  `question_extra_file` varchar(150) DEFAULT NULL,
  `question_status` int(11) DEFAULT NULL,
  `question_create_time` datetime NOT NULL,
  `question_end_time` datetime DEFAULT NULL,
  `question_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`),
  KEY `problem_questioner_id` (`user_id`),
  KEY `problem_type` (`question_type`),
  KEY `problem_difficulty_mode` (`question_difficulty_mode`),
  KEY `problem_field` (`question_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='问题表';

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `role_privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `module_privilege_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色权限表(基于模块权限)';

-- ----------------------------
-- Records of role_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for score_in_solution
-- ----------------------------
DROP TABLE IF EXISTS `score_in_solution`;
CREATE TABLE `score_in_solution` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) NOT NULL,
  `score` int(6) DEFAULT NULL,
  `score_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='问题分数表';

-- ----------------------------
-- Records of score_in_solution
-- ----------------------------

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) NOT NULL,
  `tame_leader` int(11) NOT NULL,
  `team_total_users` int(11) DEFAULT NULL,
  `team_create_time` datetime DEFAULT NULL,
  `team_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
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
  `team_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
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
  `total_score_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_score` int(11) DEFAULT NULL,
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
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_gender` int(11) DEFAULT NULL,
  `user_username` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_grade` int(11) DEFAULT NULL,
  `user_profession` int(11) DEFAULT NULL,
  `user_academy` int(11) DEFAULT NULL,
  `user_position` int(11) DEFAULT NULL,
  `user_shortbrief` text,
  `user_contact` varchar(100) DEFAULT NULL,
  `user_team_id` int(11) DEFAULT NULL COMMENT '冗余字段',
  `user_register_time` datetime DEFAULT NULL,
  `user_update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_username` (`user_username`),
  KEY `user_gender` (`user_gender`),
  KEY `user_profession` (`user_profession`),
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
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
