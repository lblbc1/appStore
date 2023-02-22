from pydantic import BaseModel
from typing import List, Optional


class BaseResponse(BaseModel):
    code: int
    msg: str


class CategoryResp(BaseModel):
    id: str
    name: str


class AppInfoResp(BaseModel):
    id: str
    name: str
    logoUrl: str
    screenShotUrls: str
    description: str
    apkUrl: str
    fileSize: str
    downloadCount: str


class QueryCategoryListResp(BaseResponse):
    data: List[CategoryResp] = None


class QueryAppResp(BaseResponse):
    data: AppInfoResp = None


class QueryAppListResp(BaseResponse):
    data: List[AppInfoResp] = None
