

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cwk_auth_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `cwk_auth_role_user`;
CREATE TABLE `cwk_auth_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
--  Records of `cwk_auth_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `cwk_auth_role_user` VALUES ('2', '16');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
