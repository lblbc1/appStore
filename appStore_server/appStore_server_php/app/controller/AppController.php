<?php
//厦门大学计算机专业 | 前华为工程师
//专注《零基础学编程系列》  http://lblbc.cn/blog
//包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
//公众号：蓝不蓝编程
declare (strict_types = 1);

namespace app\controller;

use app\model\AppInfo;
use think\facade\Request;

class AppController
{
    public function queryByCategory()
    {
        $categoryId = Request::instance()->param('categoryId');
        $data = AppInfo::alias('a')
            ->join('appstore_app_category aac', 'aac.app_id = a.id')
            ->field('a.id,a.name,a.logo_url logoUrl,a.screenshot_urls screenshotUrls,a.description,a.apk_url apkUrl,a.file_size fileSize,a.download_count downloadCount')
            ->where('aac.category_id', $categoryId)
            ->select();
        return json([
            'code' => 0,
            'msg' => "",
            'data' => $data,
        ]);
    }

    public function query($id)
    {
        $data = AppInfo::where('id', $id)
            ->field('id,name,logo_url logoUrl,screenshot_urls screenshotUrls,description,apk_url apkUrl,file_size fileSize,download_count downloadCount')
            ->find();
        return json([
            'code' => 0,
            'msg' => "",
            'data' => $data,
        ]);
    }

    public function search()
    {
        $keyword = Request::instance()->param('keyword');
        $data = AppInfo::where('name', 'like', '%' . $keyword . '%')
            ->field('id,name,logo_url logoUrl,screenshot_urls screenshotUrls,description,apk_url apkUrl,file_size fileSize,download_count downloadCount')
            ->select();
        return json([
            'code' => 0,
            'msg' => "",
            'data' => $data,
        ]);
    }
}
