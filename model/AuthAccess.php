<?php
namespace think5\auth\model;


use think\Config;

class AuthAccess extends \think\Model
{
    // 设置完整的数据表（包含前缀）
    protected $name = 'auth_access';

	public function __construct($data = [])
	{
		//初始化参数
		$this->name = Config::get('think5.database_prefix').$this->name;
		parent::__construct($data);
	}

    //关联一对一 角色
    public function authRule()
    {
        return $this->hasOne('AuthRule','menu_id','menu_id');
    }
}
?>