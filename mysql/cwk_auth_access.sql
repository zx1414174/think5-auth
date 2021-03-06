

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cwk_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `cwk_auth_access`;
CREATE TABLE `cwk_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  `menu_id` int(11) DEFAULT NULL COMMENT '后台菜单ID',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
--  Records of `cwk_auth_access`
-- ----------------------------
BEGIN;
INSERT INTO `cwk_auth_access` VALUES ('2', 'index/auth/default', 'admin_url', '1'), ('2', 'index/auth/default', 'admin_url', '8'), ('2', 'index/auth/menu', 'admin_url', '9'), ('2', 'index/auth/menuadd', 'admin_url', '10'), ('2', 'index/auth/menuedit', 'admin_url', '11'), ('2', 'index/auth/menudelete', 'admin_url', '12'), ('2', 'index/auth/menuorder', 'admin_url', '13');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
