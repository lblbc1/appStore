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
        <router-link tag="span" to="/appstore/searchApp"
          >点击搜索</router-link
        >
      </div>
    </div>
    <van-tabs v-model:active="active" @click-tab="onClickTab">
      <van-tab
        v-for="(item, index) in categories"
        :key="index"
        :title="item.name"
      />
    </van-tabs>

    <div>
      <van-list finished-text="到底啦">
        <van-card
          v-for="(item, index) in apps"
          :key="index"
          :desc="item.downloadCount + '  ' + item.fileSize"
          :title="item.name"
          :thumb="item.logoUrl"
          @click="gotoAppDetail(item.id)"
          centered
        />
      </van-list>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onMounted, ref } from 'vue'
import { queryCategories, queryAppsByCategory } from '@/api/api'
import { useRouter } from 'vue-router'

const router = useRouter()
const categories = ref([])
const apps = ref([])
const active = ref(0)
const onClickTab = () => {
  queryApps()
}

const queryCategoryData = async () => {
  const result = await queryCategories()
  categories.value = result.data
  queryApps()
}

const queryApps = async () => {
  let selectedCategoryId = categories.value[active.value].id
  const result = await queryAppsByCategory(selectedCategoryId)
  apps.value = result.data
}

const gotoAppDetail = async (id) => {
  router.push(`/appstore/appDetail?id=${id}`)
}

onMounted(() => {
  queryCategoryData()
})
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
.bottom-wrapper {
  position: fixed;
  bottom: 0;
  right: 0;
}
.add-img {
  color: #418df9;
  margin-bottom: 30px;
  margin-right: 30px;
}
</style>