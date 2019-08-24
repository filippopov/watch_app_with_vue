<template>
  <div id="notifications">
    <div id="loadingBox" class="notification"><span>Loading …</span></div>
    <div id="infoBox" class="notification"><span>Info</span></div>
    <div id="errorBox" class="notification"><span>Error</span></div>
  </div>
</template>

<script>
    export default {
        name: "Notification"
    }
</script>

<style scoped>
  #notifications {
    float: right;
    position: absolute;
    top: 100px;
    right: 0;
    text-align: center;
    margin: 1em;
  }

  .notification {
    font-size: 1.5em;
    color: #ffffff;
    display: none;
    text-align: right;
  }

  .notification>span {
    display: inline-block;
    padding:  0.5em 2em 0.5em 2em;
    border-radius: 10px;
  }

  #loadingBox>span {
    background: #7CB3E9;
  }
  #infoBox>span {
    background: #393;
  }
  #errorBox>span {
    background: #F50;
  }
</style>
