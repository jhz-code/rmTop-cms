<?php


namespace app\entrance;

use app\Request;
use app\rmcore\business\AdminBusiness;
use RmTop\RmCmsService\core\RmTop;
use RmTop\RmCmsService\lib\RmDb;
use think\db\exception\DbException;
use think\facade\View;

class Install
{



    public function __construct()
    {

        View::config(['view_path' => root_path()]);
    }


    function index(Request $request){
        $step = input('step');
        if($step){
            return   $this->$step($request);
        }else{
            if ($this->check($request) !== true) {
                return $this->check($request);
            }
        }
        return view('./install/view/main');
    }


    /**
     * 环境监测
     * @param string $r
     * @param string $type
     * @return bool|\think\response\View
     */
    private function check($r = "", $type = '')
    {

        if (file_exists(root_path() . '/install/install.lock') || phpversion() < '7.4.20') {
            if (phpversion() < '7.4.20') {
                $this->_outData['headJeep'] = '<meta http-equiv="refresh" content="%d;url=%s">';
                $this->_outData['tips_info'] = "您的php版本过低，不能安装本软件，请升级到%s或更高版本再安装，谢谢！";
                $this->_outData['tips_subheading'] = "您的PHP版本低于使用要求";

            }
            if (file_exists(root_path('data') . './install.lock')) {
                $this->_outData['headJeep'] = lang('i_head_jeep', ['50', '/']);
                $this->_outData['tips_info'] = '您已经安装过该系统!';
                $this->_outData['tips_subheading'] = '你已经安装过该系统，如果想重新安装，请先删除站点%s目录下的 %s 文件，然后再安装。';
            }

            return view('./install/view/tips');

        }


        $check = $r->checkToken('__token__');

        if ($type == 'checkdb') {
            if (false === $check || !$r->param('dbcheckok')) {
                return view('./install/view/tips');
            }
        }
        return true;

    }




    //安装步骤
    private function step($r)
    {
        $step = input('type');
        //当前完成步骤
        $complete_step = session('step');
        //当前步骤
        $current_step = $step;
        //检测基本环境
        if ($this->check($r) !== true) {
            return $this->check($r);
        }
        switch ($step) {
            case 'check':
                $env = [];
                foreach (RmTop::checkEnv() as $key =>$value){$env[$key] = $value;}
                View::assign("envList",$env);
                return view('/install/view/check');
            case 'db':
                return view('/install/view/db');
            case 'create':
                return view('/install/view/createdb');
            case 'finish':
                return view('/install/view/finish');
            default:
                return redirect('/install');
        }
    }


    /**
     * 测试是数据链接
     * @return \think\response\Json
     *
     */
    function test(){
        $param = \request()->param();
        $param['charset'] = $param['charset']??'UTF-8';
        // 创建数据连接
        $testDbConn = RmDb::get_mysql_conn($param);
        // 判断连接是否有效
        $status = false;
        if ($testDbConn) {
            $status = RmDb::pdo_ping($testDbConn);
        }
        $testDbConn = null;
        try {
            $res['status'] = $status;
            $res['msg'] = "数据库连接成功";
            return  json($res);
        }catch (DbException $dbException){
            $res['status'] = false;
            $res['msg'] = "数据库连接失败";
            return  json($res);
        }
    }










    /**
     * 创建数据库
     */
    function build(){
        $param = \request()->param();
        $s = $param['s'];//过程步骤
        $ss = intval($param['ss']??0);//过程步骤
        $status = $param['status'];//过程状态记录器
        $res['status'] = $status;
        $step = 0 ;
        $m = 0;
        $param['charset'] = $param['charset']??'UTF-8';

        //第一步数据初始化处理
        if ($s[0] == ++$step && !intval($s[3])) {
            //1-1
            if ($s[1] == $m++) {
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['msg'] = RmDb::resMsg($s, '数据初始化处理', '完成第' . $step . '步所有数据的采集！准备第' . ($step + 1) . '步的数据库创建');
                $s = [++$step, 0, '', '0'];
                $res['s'] = $s;
                return json($res);
            }
        }

//        第二步创建数据库
//        if ($s[0] == ++$step && !intval($s[3])) {
//            if ($s[1] == $m++) {
//                $s = [$step, $m, '', '0'];
//                $res['status'] = 0;
//                $res['s'] = $s;
//                $res['msg'] = RmDb::resMsg($s, '创建数据库', '判断是否安装PDO_MYSQL扩展');
//                return json($res);
//            }
//            if ($s[1] == $m++) {
//                if (!extension_loaded('pdo_mysql')) {
//                    $s = [$step, $m, '', '0'];
//                    $res['status'] = -2;
//                    $res['s'] = $s;
//                    $res['msg'] = RmDb::resMsg($s, '创建数据库', '请安装 pdo_mysql 扩展!', 0);
//                    return json($res);
//                }
//                $s = [$step, $m, '', '0'];
//                $res['status'] = 0;
//                $res['s'] = $s;
//                $res['msg'] = RmDb::resMsg($s, '创建数据库', 'PDO_MYSQL扩展存在，准备采集处理数据库预定义参数!');
//                return json($res);
//            }
//            //执行数据库操作
//            if ($s[1] == $m++) {
//                $conn = new \PDO("mysql:host=" . $param['host'] . ";port=" . $param['port'] . "", $param['user'], $param['password']);
//                $connStatus = RmDb::pdo_ping($conn);
//                if ($connStatus) {
//                    $db_isCreated = $conn->prepare("SHOW TABLES FROM `" . $param['dbname'] . "`")->execute();
//                    if ($db_isCreated) {
//                        $delDb = $conn->prepare("DROP DATABASE IF  EXISTS  `" . $param['dbname'] . "`")->execute();
//                        if ($delDb) {
//                            $s = [$step, $m - 1, 'createDB_' . $param['dbname'] . '_delok', '0'];
//                            $res['status'] = 0;
//                            $res['s'] = $s;
//                            $res['msg'] = RmDb::resMsg($s, '创建数据库', '{' . $param['dbname'] . '}数据库删除成功，准备执行创建{' . $param['dbname'] . '}数据库!');
//                            return json($res);
//                        } else {
//                            $s = [$step, $m - 1, 'createDB_' . $param['dbname'] . '_delfail', '0'];
//                            $res['status'] = -2;
//                            $res['s'] = $s;
//                            $res['msg'] = RmDb::resMsg($s, '创建数据库', '{' . $param['dbname'] . '}数据库删除失败，终止运行!', 0);
//                            return json($res);
//                        }
//
//                    } else {//不存在
//
//                        $createDB = $conn->prepare("CREATE DATABASE IF NOT EXISTS  `" . $param['dbname'] . "`")->execute();
//                        if ($createDB) {
//                            $s = [$step, $m, 'createDB_' . $param['dbname'] . '_end', '0'];
//                            $res['status'] = 0;
//                            $res['s'] = $s;
//                            $res['msg'] = RmDb::resMsg($s, '创建数据库', '创建数据库{' . $param['dbname'] . '}成功!');
//                            return json($res);
//                        } else {
//                            $s = [$step, $m, 'createDB__' . $param['dbname'] . '_fail', '0'];
//                            $res['status'] = -2;
//                            $res['s'] = $s;
//                            $res['msg'] = RmDb::resMsg($s, '创建数据库', '创建数据库{' . $param['dbname'] . '}失败，不能连接数据库!', 0);
//                            return json($res);
//
//                        }
//
//                    }
//                } else {
//                    $s = [$step, $m, 'createDB__' . $param['dbname'] . '_fail', '0'];
//                    $res['status'] = -2;
//                    $res['s'] = $s;
//                    $res['msg'] = RmDb::resMsg($s, '创建数据库', '创建数据库{' . $param['dbname'] . '}失败，不能连接数据库!', 0);
//                    return json($res);
//                }
//            }
//
//            if ($s[1] == $m++) {
//                $s = [$step, $m, '', '0'];
//                $res['status'] = 0;
//                $res['msg'] = RmDb::resMsg($s, '创建数据库', '完成第' . $step . '步所有数据库创建！准备第' . ($step + 1) . '步的数据表创建!');
//                $s = [++$step, 0, '', '0'];
//                $res['s'] = $s;
//                return json($res);
//            }
//
//        }



        //第三步创建数据库
        if ($s[0] == ++$step && !intval($s[3])) {
            if ($s[1] == $m++) {
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['s'] = $s;
                $res['msg'] = RmDb::resMsg($s, '创建数据表', '采集的数据库预定义参数已载入，准备获取数据表安装目录!');
                return json($res);
            }
            // 数据库设定
            if ($s[1] == $m++) {
                $conn = RmDb::get_mysql_conn($param);
                $connStatus = RmDb::pdo_ping($conn);
                if ($connStatus) {
                    $sqlFile = 'rmtop.sql';
                    $sqldata = file_get_contents(root_path() . '/install/data/' . $sqlFile);
                    $sqlFormat = $this->sql_split($sqldata, $param['prefix']);
                    //创建写入sql数据库文件到库中 结束
                    // 获取错误信息
                    $counts = count($sqlFormat);
                    for ($n = $ss; $n < $counts; $n++) {
                        $sql = trim($sqlFormat[$n]);
                        if (strstr($sql, 'CREATE TABLE IF NOT EXISTS')) {
                            preg_match('/CREATE TABLE IF NOT EXISTS `([A-Za-z0-9]+)_([^ ]*)`/is', $sql, $matches);
                            $sql = str_replace('`' . $matches[1] . '_', '`' . $param['prefix'], $sql);//替换表前缀
                            $ret = $conn->prepare($sql)->execute();
                            if ($ret) {
                                $s = [$step, $m - 1, 'CREATE_TABLE_' . $matches[2] . '_OK', '0'];
                                $res['status'] = 0;
                                $res['s'] = $s;
                                $res['ss'] = ++$n;
                                $res['msg'] = RmDb::resMsg($s, '创建数据表' . $matches[1] . '_' . $matches[2] . ':', '-第' . $n . '条SQL语句:创建数据表' . $matches[1] . '_' . $matches[2] . '------执行SQL创建成功！-');
                                return json($res);
                            } else {
                                $s = [$step, $m - 1, 'CREATE_TABLE_' . $matches[1] . '_fail', '0'];
                                $res['status'] = -2;
                                $res['s'] = $s;
                                $res['ss'] = ++$n;
                                $res['msg'] = RmDb::resMsg($s, '创建数据表' . $matches[1] . '_' . $matches[2] . ':', '-第' . $n . '条SQL语句:创建数据表' . $matches[1] . '_' . $matches[2] . '------执行SQL创建失败！-', 0);
                                return json($res);
                            }
                        } else {
                            if (trim($sql) == '') continue;
                            if (strstr($sql, 'DROP TABLE')) {
                                preg_match('/DROP TABLE IF EXISTS `([A-Za-z0-9]+)_([^ ]*)`/is', $sql, $matches);
                            } elseif (strstr($sql, 'INSERT INTO')) {
                                preg_match('/INSERT INTO `([A-Za-z0-9]+)_([^ ]*)`/is', $sql, $matches);
                            } else {
                                continue;
                            }
                            $sql = str_replace('`' . trim($matches[1]) . '_', '`' . $param['prefix'], $sql);//替换表前缀
                            $ret = $conn->prepare($sql)->execute();
                            if ($ret) {
                                $s = [$step, $m - 1, 'ExecuteSQL_ _fail', '0'];
                                $res['status'] = 0;
                                $res['s'] = $s;
                                $res['ss'] = ++$n;
                                $res['msg'] = RmDb::resMsg($s, '创建数据表' . $matches[1] . '_' . $matches[2] . ':', '-第' . $n . '条SQL语句:`' . mb_substr($sql, 0, 12) . '...`------执行SQL失败！-', 0);
                                return json($res);
                            }

                        }
                    }
                    //创建成功
                    $s = [$step, $m, 'createTable_' . $param['dbname'] . '_end', '0'];
                    $res['status'] = 0;
                    $res['s'] = $s;
                    $res['ss'] = 0;
                    $res['msg'] = RmDb::resMsg($s, '创建数据表:', '创建{' . $param['dbname'] . '}数据库的数据表全部创建成功!');
                    return json($res);


                } else {
                    $s = [$step, $m, 'createTable_fail', '0'];
                    $res['status'] = -2;
                    $res['s'] = $s;
                    $res['ss'] = 0;
                    $res['msg'] = RmDb::resMsg($s, '创建数据表:', '创建数据库{' . $param['dbName'] . '}的数据表失败，不能连接数据库!', 0);
                    return json($res);
                }
            }

            if ($s[1] == $m++) {
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['msg'] = RmDb::resMsg($s, '创建数据表:', '完成第' . $step . '步所有数据库的数据表创建！准备第' . ($step + 1) . '步的配置文件的安装!');
                $s = [++$step, 0, '', '0'];
                $res['ss'] = 0;
                $res['s'] = $s;
                return json($res);
            }
        }


        //第四步安装配置文件
        if ($s[0] == ++$step && !intval($s[3])) {
            $configFile = 'install.env';
            //读取配置文件，并替换真实配置数据1
            if ($s[1] == $m++) {
//                if (!session('?collection')) {
//                    $s = [$step, $m, '', '0'];
//                    $res['status'] = 0;
//                    $res['s'] = $s;
//                    $res['msg'] = RmDb::resMsg($s, '创建配置文件', '采集的数据库配置文件预定义参数不存在, 返回第一步重新采集！!', 0);
//                    $s = ['1', '0', '', '0'];
//                    $res['s'] = $s;
//                    return json($res);
//                }
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['s'] = $s;
                $res['msg'] = RmDb::resMsg($s, '创建配置文件', '采集的数据库配置文件预定义参数已载入，准备获取配置文件安装目录!');
                return json($res);
            }

            $config_path = '/install/data/' . $configFile;

            if ($s[1] == $m++) {
                $s = [$step, $m, 'get_config_path_ok', '0'];
                $res['status'] = 0;
                $res['s'] = $s;
                $res['msg'] = RmDb::resMsg($s, '创建配置文件', '获取配置文件安装目录并初始配置成功!' . $config_path);
                return json($res);
            }

            if ($s[1] == $m++) {
                $s = [$step, $m, 'get_config_database_write_ready', '0'];
                $res['status'] = 0;
                $res['s'] = $s;
                $res['msg'] = RmDb::resMsg($s, '创建配置文件', '准备读取用户数据库配置参数!');
                return json($res);
            }

            $strConfig = file_get_contents(root_path() . '/install/data/' . $configFile);
            $strConfig = str_replace('#DB_HOST#', $param['host'], $strConfig);
            $strConfig = str_replace('#DB_NAME#', $param['dbname'], $strConfig);
            $strConfig = str_replace('#DB_USER#', $param['user'], $strConfig);
            $strConfig = str_replace('#DB_PWD#', $param['password'], $strConfig);
            $strConfig = str_replace('#DB_PORT#', $param['port'], $strConfig);
            $strConfig = str_replace('#DB_PREFIX#', $param['prefix'], $strConfig);
            $strConfig = str_replace('#DB_CHARSET#', 'utf8', $strConfig);
            $strConfig = str_replace('#DB_DEBUG#', false, $strConfig);

            //写入配置数据
            if ($s[1] == $m++) {
                @chmod(root_path() . '/.env', 0777); //数据库配置文件的地址
                @file_put_contents(root_path() . '/.env', $strConfig); //数据库配置文件的地址
                $s = [$step, $m, 'write_app_config_database_ok', '0'];
                $res['status'] = 0;
                $res['type'] = $config_path;
                $res['s'] = $s;
                $res['msg'] = RmDb::resMsg($s, '创建配置文件', '写入数据库配置文件成功!');
                return json($res);
            }


            //last
            if ($s[1] == $m++) {
                $ip = get_client_ip();
                $host = $_SERVER['HTTP_HOST'];
                $mt_rand_str = getUniqid();
                $curent_version = RmTop::getVersion();
                $str_constant = "<?php" . PHP_EOL . "define('INSTALL_DATE'," . time() . ");" . PHP_EOL . "define('SERIALNUMBER','" . $mt_rand_str . "');
                    ". PHP_EOL . "define('Version','" . $curent_version . "
                    ". PHP_EOL . "define('Ip','" . $ip . "
                    ". PHP_EOL . "define('Host','" . $host . "
                    ');";
                @chmod(root_path() . '/config/', 0777); //数据库配置文件的地址
                @file_put_contents(root_path() . '/config/' . '.constant', $str_constant);

                if (@touch(root_path() . '/config/install.lock')) {
                    $s = [$step, $m, 'create_lock', '0'];
                    $res['status'] = 0;
                    $res['type'] = "install.lock";
                    $res['msg'] = RmDb::resMsg($s, '创建配置文件:', '完成基础配置文件写入！ ');
                    $res['ss'] = 0;
                    $res['s'] = $s;
                    return json($res);
                } else {
                    $s = [$step, $m, 'create_lock', '0'];
                    $res['status'] = -2;
                    $res['type'] = "install.lock";
                    $res['msg'] = RmDb::resMsg($s, '创建配置文件失败:', '请确保目录【config】可写权限');
                    $res['ss'] = 0;
                    $res['s'] = $s;
                    return json($res);
                }
            }


            if ($s[1] == $m++) {
                $s = [$step, $m, 'get_config_database_write_ready', '0'];
                $res['status'] = 0;
                $res['s'] = $s;
                $res['msg'] = RmDb::resMsg($s, '读取路由文件', '准备读取用户读取路由参数!');
                return json($res);
            }


            //last  配置路由文件
            if ($s[1] == $m++) {
                $routeFile = 'app.php';
                $strRoute = file_get_contents(root_path() . '/install/data/' . $routeFile);
                $strRoute = str_replace('#dmain#', $param['domain'], $strRoute);
                if (@file_put_contents(root_path() . '/route/rm.php', $strRoute)){
                    $s = [$step, $m, 'create_lock', '0'];
                    $res['status'] = 0;
                    $res['type'] = "install.lock";
                    $res['msg'] = RmDb::resMsg($s, '创建路由文件:', '路由配置文件创建成功！');
                    $res['ss'] = 0;
                    $res['s'] = $s;
                    return json($res);
                } else {
                    $s = [$step, $m, 'create_lock', '0'];
                    $res['status'] = -2;
                    $res['type'] = "install.lock";
                    $res['msg'] = RmDb::resMsg($s, '创建路由文件失败:', '请确保目录【route】可写权限');
                    $res['ss'] = 0;
                    $res['s'] = $s;
                    return json($res);
                }

            }


            if ($s[1] == $m++) {
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['msg'] = RmDb::resMsg($s, '创建文件:', '完成第' . $step . '步所有配置文件创建！准备第' . ($step + 1) . '步的管理员创始人等初始数据的安装!');
                $s = [++$step, 0, '', '0'];
                $res['s'] = $s;
                return json($res);
            }

        }


        if ($s[0] == ++$step && !intval($s[3])) {
            //return "第五步";完成结束
            if ($s[1] == $m++) {
                $s = [$step, $m, 'get_manage_setting_ready', '0'];
                $res['status'] = 0;
                $res['s'] = $s;
                $res['msg'] = RmDb::resMsg($s, '添加管理员', '准备读取提交的管理员配置参数!');
                return json($res);
            }

            if ($s[1] == $m++) {
                $insert['username'] = $param['admin'];
                $add_managerFlag= AdminBusiness::admin_create($param['adminpass'],$insert);
                if($add_managerFlag){
                    $s = [$step, $m, 'add__manage_ok', '0'];
                    $res['status'] = 0;
                    $res['s'] = $s;
                    $res['flag'] = $add_managerFlag;
                    $res['msg'] = RmDb::resMsg($s, '添加管理员', '写入管理员信息成功!');
                    return json($res);
                }else{
                    $s = [$step, $m, 'add__manage_fail', '0'];
                    $res['status'] =-2;
                    $res['s'] = $s;
                    $res['msg'] = RmDb::resMsg($s, '添加管理员', '写入管理员信息失败!',0);
                    return json($res);
                }
            }

            if ($s[1] == $m++) {
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['msg'] = RmDb::resMsg($s, '成功添加管理员', '完成第' . $step . '步所有信息创建！!');
                $s = [++$step, 0, '', '0'];
                $res['s'] = $s;
                return json($res);
            }
        }


        /**
         * 移除文件
         */
        if ($s[0] == ++$step && !intval($s[3])) {
            if ($s[1] == $m++) {
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['msg'] = RmDb::resMsg($s, '移除安装文件', '读取所以冗余文件!');
                $res['s'] = $s;
                return json($res);
            }


            if ($s[1] == $m++) {
                unlink(root_path().'/route/app.php');
                self::deldir(root_path().'/install/');
                rmdir(root_path().'/install/');
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['msg'] = RmDb::resMsg($s, '移除安装文件', '移除相关冗余文件!');
                $res['s'] = $s;
                return json($res);
            }

            if ($s[1] == $m++) {
                $s = [$step, $m, '', '0'];
                $res['status'] = 0;
                $res['msg'] = RmDb::resMsg($s, '移除安装文件', '完成第' . $step . '成功移除安装文件!');
                $s = [++$step, 0, '', '0'];
                $res['s'] = $s;
                return json($res);
            }

        }


        $arr['step'] = $step;
        $arr['status'] = 'finish';
        $arr['msg'] = "【系统安装成功！】 -----------------------------------------  欢迎使用RmTop-CMS!";
        return json($arr);



    }


    static function deldir($path)
    {
        //如果是目录则继续
        if (is_dir($path)) {
            //扫描一个文件夹内的所有文件夹和文件并返回数组
            $p = scandir($path);
            foreach ($p as $val) {
                //排除目录中的.和..
                if ($val != "." && $val != "..") {
                    //如果是目录则递归子目录，继续操作
                    if (is_dir($path . $val)) {
                        //子目录中操作删除文件夹和文件
                        self::deldir($path . $val . '/');
                        //目录清空后删除空文件夹
                        @rmdir($path . $val . '/');
                    } else {
                        //如果是文件直接删除
                        unlink($path . $val);
                    }
                }
            }
        }


    }



    function sql_split($sql, $tablepre) {

        if ($tablepre != "rtop_")
            $sql = str_replace("rtop_", $tablepre, $sql);

        $sql = preg_replace("/TYPE=(InnoDB|MyISAM|MEMORY)( DEFAULT CHARSET=[^; ]+)?/", "ENGINE=\\1 DEFAULT CHARSET=utf8", $sql);

        $sql = str_replace("\r", "\n", $sql);
        $ret = array();
        $num = 0;
        $queriesarray = explode(";\n", trim($sql));
        unset($sql);
        foreach ($queriesarray as $query) {
            $ret[$num] = '';
            $queries = explode("\n", trim($query));
            $queries = array_filter($queries);
            foreach ($queries as $query) {
                $str1 = substr($query, 0, 1);
                if ($str1 != '#' && $str1 != '-')
                    $ret[$num] .= $query;
            }
            $num++;
        }
        return $ret;
    }



}