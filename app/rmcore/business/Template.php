<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/7/6
 * Time: 10:47 下午
 */


namespace app\rmcore\business;



use ZipArchive;

class Template
{
    /**
     * 返回当前模版数据
     * @return array
     */
   static  function tempList(): array
    {
        if (!file_exists(public_path().'/template/')){
            mkdir(public_path().'/template/');
        }
        $files = scandir(public_path().'/template/');
        $list = [];
        foreach ($files as $key=>$file) {
            if ($file != '.' && $file != '..') {
                    $list[$key]['name'] = $file ;
                    $list[$key]['image'] = '/template/'.$file.'/rmtop-img.png' ;
            }
        }
        return $list;
    }


    /**
     * 导出当前模板
     */
    static function exportTemplate(){
        $tempPath = root_path().'/public/template/'.Config::get_value_for_enName("tmp_path").'/'.Config::get_value_for_enName("tmp_path").".zip";
        $file = fopen ( $tempPath, "rb" );
        //告诉浏览器这是一个文件流格式的文件
        Header ( "Content-type: application/octet-stream" );
        //请求范围的度量单位
        Header ( "Accept-Ranges: bytes" );
        //Content-Length是指定包含于请求或响应中数据的字节长度
        Header ( "Accept-Length: " . filesize ( $tempPath ) );
        //用来告诉浏览器，文件是可以当做附件被下载，下载后的文件名称为$file_name该变量的值。
        Header ( "Content-Disposition: attachment; filename=" . Config::get_value_for_enName("tmp_path").".zip" );
        //读取文件内容并直接输出到浏览器
        echo fread ($file, filesize ($tempPath) );
        fclose ( $file );
        unlink($tempPath);//删除当前文件
        exit ();
    }

    /**
     * 导入当前模板
     */
    static function importTemplate($tempPath): bool
    {
        $zip = new ZipArchive;
        $res = $zip->open($tempPath);
        if ($res) {
//            var_dump($tempPath);
            //解压缩到test文件夹
            $zip->extractTo(public_path().'/template/');
            $zip->close();
            return true;
        } else {
            return false;
        }
    }

    /**
     * 切换模板操作
     */
    static function switchTemplate(){

    }


    /**
     * 模板开发环境
     */
    static function devTemplate(){

    }



    function explodeData($path,$temName){
        $zip = new ZipArchive;
        $filename = $path.'/'."$temName.zip";
        if($zip->open($filename, ZIPARCHIVE::CREATE)===TRUE) {
            $this->addFileToZip($path, $zip,$temName); //调用方法，对要打包的根目录进行操作，并将ZipArchive的对象传递给方法
            $zip->close(); //关闭处理的zip文件

        }
    }

    public function addFileToZip($path,$zip,$temName){
        $handler=opendir($path); //打开当前文件夹由$path指定。
        while(($filename=readdir($handler))!==false){
            if($filename != "." && $filename != ".."){//文件夹文件名字为'.'和‘..'，不要对他们进行操作
                if(is_dir($path."/".$filename)){// 如果读取的某个对象是文件夹，则递归
                        $this->addFileToZip($path."/".$filename, $zip,$temName);
                    }else{ //将文件加入zip对象
                        $str = $path."/".$filename;
                        $zip->addFile($path."/".$filename,substr($str,strrpos($str,"$temName")));
                    }
            }

        }
        @closedir($handler);
    }


}