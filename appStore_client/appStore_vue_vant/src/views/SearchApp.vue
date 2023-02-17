 <!--
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 -->
<template>
  <div>
  <van-nav-bar left-text="返回" left-arrow @click-left="onClickLeft">
  <template #right>
    <div class="header-search">
      <van-search
        v-model="searchKeyword"
        placeholder="请输入搜索关键词"
        @search="onSearch"
      />
    </div>
  </template>

</van-nav-bar>

    
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

<script setup lang="ts">
import { ref } from 'vue'
import { search } from '@/api/api'
import { useRouter } from 'vue-router'

const router = useRouter()
const apps = ref([])
const searchKeyword = ref('')
const onClickLeft = () => history.back()
const onSearch = async () => {
  const result = await search(searchKeyword.value)
  apps.value = result.data
}

const gotoAppDetail = async (id) => {
  router.push(`/appstore/appDetail?id=${id}`)
}

const download = async (apkUrl) => {
  location.href = apkUrl
}
</script>

<style scoped>
.header-search {
  display: flex;
  height: 20px;
  width: 100%;
  line-height: 20px;
  margin: 10px 0;
  padding: 5px 0;
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
  border-radius: 2rem;
  background-color: #418df9;
  color: #fff;
  margin-right: 20px;
}
</style>