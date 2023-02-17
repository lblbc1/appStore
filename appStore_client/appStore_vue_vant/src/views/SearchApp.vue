 <!--
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 -->
<template>
  <div>
    <div class="header-search">
      <van-search
        v-model="searchKeyword"
        show-action
        placeholder="请输入搜索关键词"
        @search="onSearch"
      />
    </div>
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
import { ref } from 'vue'
import { search } from '@/api/api'
import { useRouter } from 'vue-router'

const router = useRouter()
const apps = ref([])
const searchKeyword = ref('')

const onSearch = async () => {
  const result = await search(searchKeyword.value)
  apps.value = result.data
}

const gotoAppDetail = async (id) => {
  router.push(`/appstore/appDetail?id=${id}`)
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