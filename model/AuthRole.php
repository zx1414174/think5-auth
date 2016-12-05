<?php
namespace think5\auth\model;


use think\Config;

class AuthRole extends \think\Model
{
    // 设置完整的数据表（包含前缀）
    protected $name = 'auth_role';

	public function __construct($data = [])
	{
		//初始化参数
		$this->name = Config::get('think5.database_prefix').$this->name;
		parent::__construct($data);
	}

    //一对多 权限授权
    public function authAccess()
    {
        return $this->hasMany('AuthAccess','role_id','id');
    }

    /**
     * 关联删除 AuthAccess
     * @return bool
     */
    public function authRoleDelete(){
        if($this->delete()){
            if($this->authAccess){
                AuthAccess::where(['role_id'=>$this->id])->delete();
            }
            return true;
        }
        return false;
    }

}
?>