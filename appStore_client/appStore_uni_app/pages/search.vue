//厦门大学计算机专业 | 前华为工程师
//专注《零基础学编程系列》 http://lblbc.cn/blog
//包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
//公众号：蓝不蓝编程
<template>
	<view class="page-wrapper">
		<view class="search_wrapper">
			<view class="search_row">
				<image class="search-img" src="/static/images/search.png"></image>
				<input class="search-input" placeholder="请输入搜索关键词" @input="_bindinput" />
			</view>
			<view class="search-text" :auto-focus="true" @click="searchApp">搜索</view>
		</view>

		<view class="row" :data-id="item.id" v-for="(item, index) in apps" :key="item.k">
			<image class="logo" :src="item.logoUrl" @click="gotoAppDetail(item.id)"></image>
			<div class="col" @click="gotoAppDetail(item.id)">
				<div class="app-name">{{ item.name }}</div>
				<div class="app-info">
					{{ item.downloadCount }} {{ item.fileSize }}
				</div>
			</div>
			<div @click="download(item.apkUrl)" class="btn">下载</div>
		</view>
	</view>
</template>
<script>
	import {
		search
	} from '@/common/api'
	export default {
		data() {
			return {
				apps: [],
				keyword: ''
			}
		},
		methods: {
			_bindinput(e) {
				this.keyword = e.detail.value
			},
			searchApp() {
				search(this.keyword).then(resp => {
					this.apps = resp.data
				})
			},
			gotoAppDetail(id) {
				uni.navigateTo({
					url: '/pages/app-detail?id=' + id
				});
			},
			download(apkUrl) {
				location.href = apkUrl
			}
		}
	}
</script>
<style>
	.page-wrapper {}

	.search_wrapper {
		display: flex;
		background-color: #418df9;
		padding-top: 10px;
		padding-bottom: 10px;
	}

	.search_row {
		display: flex;
		flex-direction: row;
		background-color: white;
		border-radius: 10rem;
		margin-left: 1rem;
		margin-right: 1rem;
		padding-top: 5px;
		padding-bottom: 5px;
		align-items: center;
		flex: 1;
	}

	.search-img {
		height: 20px;
		width: 20px;
		margin-left: 10px;
	}

	.search-text {
		line-height: 30px;
		color: #ffffff;
		margin-left: 10px;
		margin-right: 10px;
	}

	.tab-row {
		padding-top: 15px;
		width: 100%;
		display: flex;
		align-items: center;
		box-sizing: border-box;
		white-space: nowrap;
		background-color: white;
	}

	.tab {
		width: 80px;
		margin-left: 10px;
		margin-right: 10px;
		display: inline-block;
		padding-bottom: 10px;
		text-align: center;
	}

	.tab-selected {
		border-bottom: 2px solid;
		color: #418df9;
	}

	.row {
		display: flex;
		margin-left: 20px;
		margin-top: 20px;
	}

	.col {
		margin-left: 20px;
		font-size: 15px;
		flex: 1;
	}

	.app-name {
		color: #333333;
	}

	.app-info {
		color: #666666;
	}

	.logo {
		width: 50px;
		height: 50px;
	}

	.btn {
		width: 80px;
		height: 40px;
		line-height: 40px;
		border-radius: 2rem;
		background-color: #418df9;
		color: #fff;
		margin-right: 20px;
		text-align: center;
		font-size: 16px;
	}
</style>
