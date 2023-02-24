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

type CategoryService interface {
	QueryCategory() []entity.Category
}

type categoryService struct {
	categoryRepository repository.CategoryRepository
}

func NewUserService(repo repository.CategoryRepository) CategoryService {
	return &categoryService{categoryRepository: repo}
}

func (s *categoryService) QueryCategory() []entity.Category {
	return s.categoryRepository.QueryCategory()
}
