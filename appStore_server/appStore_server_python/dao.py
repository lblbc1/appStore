from sqlalchemy.orm import Session
from sqlalchemy.future import select
import models


def query_categories(db: Session):
    q = db.query(models.Category.id,models.Category.name)
    return q.all()


def query_app_by_category(db: Session, category_id: str):
    q = db.query(models.AppInfo.id, models.AppInfo.logo_url.label("logoUrl"), models.AppInfo.apk_url.label("apkUrl"),
                 models.AppInfo.name, models.AppInfo.screenShot_urls.label("screenShotUrls"),
                 models.AppInfo.description, models.AppInfo.file_size.label("fileSize"),
                 models.AppInfo.download_count.label("downloadCount")) \
        .outerjoin(models.AppCategory, models.AppCategory.app_id == models.AppInfo.id) \
        .where(models.AppCategory.category_id == category_id)
    return q.all()


def query_app(db: Session, app_id: str):
    # sql = select(models.AppInfo.id, models.AppInfo.logo_url.label("logoUrl"), models.AppInfo.apk_url.label("apkUrl"),
    #              models.AppInfo.name, models.AppInfo.screenShot_urls.label("screenShotUrls"),
    #              models.AppInfo.description, models.AppInfo.file_size.label("fileSize"),
    #              models.AppInfo.download_count.label("downloadCount")).where(models.AppInfo.id == app_id)
    # q = db.execute(sql)

    q = db.query(models.AppInfo.id, models.AppInfo.logo_url.label("logoUrl"), models.AppInfo.apk_url.label("apkUrl"),
                 models.AppInfo.name, models.AppInfo.screenShot_urls.label("screenShotUrls"),
                 models.AppInfo.description, models.AppInfo.file_size.label("fileSize"),
                 models.AppInfo.download_count.label("downloadCount")).where(models.AppInfo.id == app_id)
    return q.first()


def search_app(db: Session, keyword: str):
    q = db.query(models.AppInfo.id, models.AppInfo.logo_url.label("logoUrl"), models.AppInfo.apk_url.label("apkUrl"),
                 models.AppInfo.name, models.AppInfo.screenShot_urls.label("screenShotUrls"),
                 models.AppInfo.description, models.AppInfo.file_size.label("fileSize"),
                 models.AppInfo.download_count.label("downloadCount")) \
        .filter(models.AppInfo.name.like('%' + keyword + '%'))
    return q.all()
