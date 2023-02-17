 <!--
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 -->
<template>
  <van-nav-bar
    name="编辑"
    left-text="返回"
    left-arrow
    @click-left="onClickLeft"
  />
  <div class="row">
    <van-image class="logo" :src="logoUrl" />
  </div>
  <div class="row">
    <div>{{ name }}</div>
  </div>
  <div class="row">
    <div>{{ downloadCount }} {{ fileSize }}</div>
  </div>
  <van-divider />
  <div class="row">
    <van-image
      v-for="(item, index) in screenShots"
      :key="index"
      :src="item"
      radius="10"
    />
  </div>
  <div v-html="description" class="description"> </div>
  <div class="bottom-wrapper">
    <van-button
      @click="download"
      class="btn"
      type="primary"
      size="large"
      >下载</van-button
    >
  </div>
</template>

<script setup lang="ts">
import { onMounted, ref } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { queryApp } from '@/api/api'

const route = useRoute()
const appId = ref('')
const name = ref('')
const downloadCount = ref('')
const fileSize = ref('')
const apkUrl = ref('')
const logoUrl = ref('')
const screenShots = ref([])
const description = ref('')

const onClickLeft = () => history.back()

const queryData = async (id) => {
  const result = await queryApp(id)
  name.value = result.data.name
  downloadCount.value = result.data.downloadCount
  fileSize.value = result.data.fileSize
  logoUrl.value = result.data.logoUrl
  apkUrl.value = result.data.apkUrl
  screenShots.value = result.data.screenShotUrls.split(',')
  description.value = result.data.description.replaceAll(/\\n/g,'<br>')
}

const download = async () => {
  location.href = apkUrl.value
}

onMounted(() => {
  appId.value = route.query.id.toString()
  queryData(appId.value)
})
</script>

<style scoped>
.row {
  display: flex;
  width: 100%;
  justify-content: center;
}
.logo {
  width: 3rem;
  height: 3rem;
}
.bottom-wrapper {
  position: fixed;
  bottom: 0;
  width: 100%;
  text-align: center;
  margin-bottom: 30px;
}
.description{
  margin-top: 20px;
  margin-left: 10px;
  margin-right: 10px;
  font-size: medium;
}
.btn {
  width: 200px;
  height: 40px;
  border-radius: 2rem;
  background-color: #418df9;
  color: #fff;
}
</style>