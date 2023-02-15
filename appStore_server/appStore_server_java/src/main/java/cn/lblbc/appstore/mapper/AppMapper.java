package cn.lblbc.appstore.mapper;

import cn.lblbc.appstore.bean.AppInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
@Repository
public interface AppMapper {
    @Select(value = "select * from appstore_app where id = #{id}")
    AppInfo query(@Param("id") long id);

    @Select(value = "SELECT aa.* FROM appstore_app_category ac,appstore_app aa WHERE ac.app_id=aa.id AND ac.category_id=#{categoryId}")
    List<AppInfo> queryByCategory(@Param("categoryId") String categoryId);

    @Select(value = "select * from appstore_app where name like #{name}")
    List<AppInfo> queryByName(@Param("name") String name);

}
