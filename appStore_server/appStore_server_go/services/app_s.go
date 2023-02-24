package services

/*
厦门大学计算机专业 | 前华为工程师
专注《零基础学编程系列》  http://lblbc.cn/blog
包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
公众号：蓝不蓝编程
*/
import (
	"lblbc.cn/appStore/entity"
	"lblbc.cn/appStore/repository"
)

type AppService interface {
	QueryById(noteId string) entity.AppInfo
	Search(keyword string) []entity.AppInfo
	QueryByCategory(categoryId string) []entity.AppInfo
}

type appService struct {
	appRepository repository.AppRepository
}

func NewAppService(repo repository.AppRepository) AppService {
	return &appService{appRepository: repo}
}

func (s *appService) QueryById(id string) entity.AppInfo {
	return s.appRepository.QueryByID(id)
}

func (s *appService) Search(keyword string) []entity.AppInfo {
	return s.appRepository.Search(keyword)
}

func (s *appService) QueryByCategory(categoryId string) []entity.AppInfo {
	return s.appRepository.QueryByCategory(categoryId)
}
