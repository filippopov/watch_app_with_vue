<template>
  <div id="app">
    <page-header></page-header>
    <notification></notification>
    <router-view></router-view>
    <page-footer></page-footer>
  </div>
</template>

<script>
import PageHeader from "./components/common/PageHeader"
import Notification from "./components/common/Notification"
import PageFooter from "./components/common/PageFooter"
export default {
  name: 'App',
  components: {
    PageHeader,
    PageFooter,
    Notification
  },
  data: () => ({
    //
  }),
};
</script>
