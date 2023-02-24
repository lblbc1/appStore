package main

import (
	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
	"lblbc.cn/appStore/config"
	"lblbc.cn/appStore/controllers"
	"lblbc.cn/appStore/repository"
	"lblbc.cn/appStore/services"
)

var (
	db                 *gorm.DB                       = config.SetupDatabase()
	categoryRepository repository.CategoryRepository  = repository.NewCategoryRepository(db)
	noteRepository     repository.AppRepository       = repository.NewAppRepository(db)
	categoryService    services.CategoryService       = services.NewUserService(categoryRepository)
	appService         services.AppService            = services.NewAppService(noteRepository)
	categoryController controllers.CategoryController = controllers.NewCategoryController(categoryService)
	appController      controllers.AppController      = controllers.NewNoteController(appService)
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
