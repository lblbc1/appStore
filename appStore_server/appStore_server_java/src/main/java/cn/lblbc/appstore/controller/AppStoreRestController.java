package cn.lblbc.appstore.controller;

import cn.lblbc.appstore.bean.AppInfo;
import cn.lblbc.appstore.bean.Category;
import cn.lblbc.appstore.service.AppService;
import cn.lblbc.appstore.service.AppCategoryService;
import cn.lblbc.base.Resp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
@RestController
@RequestMapping("/appstore")
public class AppStoreRestController {

    @Autowired
    private AppService appService;
    @Autowired
    private AppCategoryService appCategoryService;

    @GetMapping("categories")
    public Resp<List<Category>> queryCategory() {
        Resp<List<Category>> resp = new Resp<>();
        resp.setData(appCategoryService.query());
        return resp;
    }

    @GetMapping("apps")
    public Resp<List<AppInfo>> queryByCategory(@RequestParam("categoryId") String categoryId) {
        Resp<List<AppInfo>> resp = new Resp<>();
        resp.setData(appService.queryByCategory(categoryId));
        return resp;
    }

    @GetMapping("appsBySearch")
    public Resp<List<AppInfo>> search(@RequestParam("keyword") String keyword) {
        Resp<List<AppInfo>> resp = new Resp<>();
        resp.setData(appService.queryByName(keyword));
        return resp;
    }

    @GetMapping("/app/{id}")
    public Resp<AppInfo> query(@PathVariable long id) {
        Resp<AppInfo> resp = new Resp<>();
        resp.setData(appService.query(id));
        return resp;
    }

}
