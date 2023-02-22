from fastapi import FastAPI, Depends, HTTPException, Response
from starlette.middleware.cors import CORSMiddleware

import dao, networkModels
from database import SessionLocal, engine, Base
from sqlalchemy.orm import Session
import uvicorn

Base.metadata.create_all(bind=engine)  # 数据库初始化，如果没有库或者表，会自动创建

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    # 允许跨域的源列表，例如 ["http://www.example.org"] 等等，["*"] 表示允许任何源
    allow_origins=["*"],
    # 跨域请求是否支持 cookie，默认是 False，如果为 True，allow_origins 必须为具体的源，不可以是 ["*"]
    allow_credentials=False,
    # 允许跨域请求的 HTTP 方法列表，默认是 ["GET"]
    allow_methods=["*"],
    # 允许跨域请求的 HTTP 请求头列表，默认是 []，可以使用 ["*"] 表示允许所有的请求头
    # 当然 Accept、Accept-Language、Content-Language 以及 Content-Type 总之被允许的
    allow_headers=["*"],
    # 可以被浏览器访问的响应头, 默认是 []，一般很少指定
    # expose_headers=["*"]
    # 设定浏览器缓存 CORS 响应的最长时间，单位是秒。默认为 600，一般也很少指定
    # max_age=1000
)


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
