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

type AppRepository interface {
	QueryByCategory(categoryId string) []entity.AppInfo
	QueryByID(bookID string) entity.AppInfo
	Search(keyword string) []entity.AppInfo
}

type dbConnection struct {
	connection *gorm.DB
}

func NewAppRepository(connection *gorm.DB) AppRepository {
	return &dbConnection{connection: connection}
}

func (db *dbConnection) QueryByID(id string) entity.AppInfo {
	var data entity.AppInfo
	db.connection.Find(&data, id)
	return data
}

func (db *dbConnection) Search(keyword string) []entity.AppInfo {
	var apps []entity.AppInfo
	db.connection.Where("Name like ?", "%"+keyword+"%").Find(&apps)
	return apps
}

func (db *dbConnection) QueryByCategory(categoryId string) []entity.AppInfo {
	var apps []entity.AppInfo
	db.connection.Joins("left join appstore_app_category on appstore_app.id = appstore_app_category.App_id").Where("Category_id = ?", categoryId).Find(&apps)
	return apps
}
