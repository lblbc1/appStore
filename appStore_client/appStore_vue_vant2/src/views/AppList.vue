 <!--
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 -->
<template>
  <div>
    <div class="header-search">
      <span class="title-text">应用市场</span>
      <div class="search_row">
        <van-icon name="search" />
        <router-link tag="span" to="/appstore/searchApp">点击搜索</router-link>
      </div>
    </div>
    <van-tabs v-model:active="current" @click-tab="tabSelect">
      <van-tab
        v-for="(item, index) in categories"
        :key="index"
        :title="item.name"
      />
    </van-tabs>

    <div>
      <van-list finished-text="到底啦">
        <div class="row" v-for="(item, index) in apps" :key="index">
          <van-image
            class="logo"
            :src="item.logoUrl"
            @click="gotoAppDetail(item.id)"
          />
          <div class="col" @click="gotoAppDetail(item.id)">
            <div class="app-name">{{ item.name }}</div>
            <div class="app-info">
              {{ item.downloadCount }} {{ item.fileSize }}
            </div>
          </div>
          <van-button
            @click="download(item.apkUrl)"
            class="btn"
            type="primary"
            size="large"
            >下载</van-button
          >
        </div>
      </van-list>
    </div>
  </div>
</template>
<script lang="ts">
import { queryCategories, queryAppsByCategory } from '@/common/api'
export default {
  data() {
    return {
      categories: [],
      apps: [],
      current: 0
    }
  },
  mounted() {
    this.queryCategories()
  },
  methods: {
    tabSelect: function (e) {
      this.current = e.currentTarget.dataset.id
      this.queryAppsByCategory()
    },
    queryCategories() {
      queryCategories().then((resp) => {
        this.categories = resp.data
        this.queryAppsByCategory()
      })
    },
    queryAppsByCategory() {
      queryAppsByCategory(this.getCurrentCategoryId()).then((resp) => {
        this.apps = resp.data
      })
    },

    getCurrentCategoryId() {
      return this.categories[this.current].id
    },
    gotoSearch() {
      // uni.navigateTo({
      // 	url: '/pages/search'
      // });
    },
    gotoAppDetail(id) {
      this.$router.push(`/appstore/appDetail?id=${id}`)
    },
    download(apkUrl) {
      location.href = apkUrl
    }
  }
}
</script>

<style scoped>
.header-search {
  display: flex;
  width: 74%;
  height: 20px;
  line-height: 20px;
  margin: 10px 0;
  padding: 5px 0;
}
.title-text {
  padding: 0 10px;
  font-size: 20px;
  border-right: 1px solid #f4f4f4;
}
.search_row {
  font-size: 12px;
  line-height: 21px;
  border-width: 2px;
  border-radius: 20px;
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