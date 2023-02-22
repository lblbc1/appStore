from fastapi import FastAPI, Depends, HTTPException, Response

import dao, networkModels
from database import SessionLocal, engine, Base
from sqlalchemy.orm import Session
import uvicorn

Base.metadata.create_all(bind=engine)  # 数据库初始化，如果没有库或者表，会自动创建

app = FastAPI()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.get("/appstore/categories", response_model=networkModels.QueryCategoryListResp)
def query_categories(db: Session = Depends(get_db)):
    categories = dao.query_categories(db=db)
    return {"code": 0, "msg": "", "data": categories}


@app.get("/appstore/apps", response_model=networkModels.QueryAppListResp)
def query_app_by_category(categoryId: str, db: Session = Depends(get_db)):
    apps = dao.query_app_by_category(db=db, category_id=categoryId)
    return {"code": 0, "msg": "", "data": apps}


@app.get("/appstore/app/{app_id}", response_model=networkModels.QueryAppResp)
def query_app(app_id: str, db: Session = Depends(get_db)):
    app = dao.query_app(db=db, app_id=app_id)
    return {"code": 0, "msg": "", "data": app}


@app.get("/appstore/appsBySearch", response_model=networkModels.QueryAppListResp)
def query_app(keyword: str, db: Session = Depends(get_db)):
    apps = dao.search_app(db=db, keyword=keyword)
    return {"code": 0, "msg": "", "data": apps}


if __name__ == '__main__':
    uvicorn.run(app=app, host="192.168.31.10", port=8080)
