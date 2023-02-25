<?php
//厦门大学计算机专业 | 前华为工程师
//专注《零基础学编程系列》  http://lblbc.cn/blog
//包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
//公众号：蓝不蓝编程

use think\facade\Route;

Route::get('appstore/categories', 'CategoryController/queryCategory');
Route::get('appstore/apps', 'AppController/queryByCategory');
Route::get('appstore/app/:id', 'AppController/query');
Route::get('appstore/appsBySearch', 'AppController/search');