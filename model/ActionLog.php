<?php
namespace think5\auth\model;


use think\Config;

class ActionLog extends \think\Model
{
    // 设置完整的数据表（包含前缀）
    protected $name = 'action_log';

	public function __construct($data = [])
	{
		//初始化参数
		$this->name = Config::get('think5.database_prefix').$this->name;
		parent::__construct($data);
	}

    // 读取器 订单状态
    protected function getActionIpAttr($reg='',$data='')
    {
        return long2ip($data['action_ip']);
    }
}
?>