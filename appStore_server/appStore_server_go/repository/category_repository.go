package repository

/*
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
*/
import (
	"gorm.io/gorm"
	"lblbc.cn/appStore/entity"
)

type CategoryRepository interface {
	QueryCategory() []entity.Category
}

func NewCategoryRepository(db *gorm.DB) CategoryRepository {
	return &dbConnection{connection: db}
}

func (db *dbConnection) QueryCategory() []entity.Category {
	var categories []entity.Category
	db.connection.Find(&categories)
	return categories
}
