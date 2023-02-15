package cn.lblbc.appstore.service;

import cn.lblbc.appstore.bean.AppInfo;
import cn.lblbc.appstore.mapper.AppMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
@Service
public class AppService {
    @Autowired
    private AppMapper appMapper;

    public AppInfo query(long id) {
        return appMapper.query(id);
    }

    public List<AppInfo> queryByCategory(String categoryId) {
        return appMapper.queryByCategory(categoryId);
    }

    public List<AppInfo> queryByName(String name) {
        return appMapper.queryByName("%" + name + "%");
    }
}
