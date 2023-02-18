import request from '../utils/request'


export const queryCategories = () => {
	return request('', 'appstore/categories', 'get').then(resp => resp.data)
}

export function queryAppsByCategory(categoryId) {
	return request('', `appstore/apps?categoryId=${categoryId}`, 'get').then(resp => resp.data)
}

export function queryApp(id) {
	return request('', `appstore/app/${id}`, 'get').then(resp => resp.data)
}

export function search(keyword) {
	return request('', `appstore/appsBySearch?keyword=${keyword}`, 'get').then(resp => resp.data)
}
