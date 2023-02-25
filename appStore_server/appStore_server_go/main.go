package main

import (
	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
	"lblbc.cn/appStore/config"
	"lblbc.cn/appStore/controllers"
	"lblbc.cn/appStore/repository"
)

var (
	db                 *gorm.DB                       = config.SetupDatabase()
	repo               repository.Repository          = repository.CreateAppRepository(db)
	categoryController controllers.CategoryController = controllers.NewCategoryController(repo)
	appController      controllers.AppController      = controllers.NewNoteController(repo)
)

func main() {
	defer config.CloseDatabaseConnection(db)
	r := gin.Default()

	r.GET("appstore/categories", categoryController.QueryCategory)

	r.GET("appstore/apps", func(ctx *gin.Context) {
		categoryId := ctx.Query("categoryId")
		appController.QueryByCategory(categoryId, ctx)
	})

	r.GET("appstore/app/:id", appController.QueryById)
	r.GET("appstore/appsBySearch", appController.Search)

	r.Run(":8080")
}
