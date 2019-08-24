<template>
  <div>
    <div class="title">
      <h2>My Watch Collection</h2>
    </div>

    <ul class="list-watch">
      <li class="item" v-for="(watchData, index) in this.getWatchCollection" :key="index">
        <router-link :to="{name: 'watchDetails', params: {id: watchData.watch_id}}">
          <span class="watch-image">
            <img v-if="watchData.path" :src="`http://localhost${watchData.path}`" alt="">
            <img v-else src="http://localhost/watch_app/api/uploades/No_image.png" alt="">
          </span>
          <span class="content">
            <span class="watch-info">
              <span class="brand">{{watchData.brands_name}}</span>
              <span class="model">{{watchData.model}}</span>
            </span>
          </span>
        </router-link>
      </li>
    </ul>
  </div>

</template>

<script>
    import {mapState, mapGetters, mapMutations, mapActions} from 'vuex'
    export default {
      name: "WatchCollection",
      computed: {
        ...mapGetters('authenticationServices', ['isAuthenticated']),
        ...mapGetters('watchServices', ['getWatchCollection']),
      },
      methods: {
        ...mapActions('watchServices', ['loadCollection']),
      },
      created() {
        if (!this.isAuthenticated) {
          this.$router.push('/login');
        }

        this.loadCollection();
      }
    }
</script>

<style scoped>
  .list-watch {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin: 0;
    padding: 0;
  }

  .list-watch li,
  .list-watch span {
    display: block;
  }

  .list-watch li {
    list-style: none outside;
    flex: 0 0 46%;
    text-align: center;
    padding: 2rem;
  }

  @media screen and (min-width: 800px){
    .list-watch li {
      flex: 0 0 28%;
    }
  }

  .list-watch .watch-image {
    width: 20rem;
    position: relative;
    overflow: hidden;
    margin: 1rem auto;
    box-shadow: 0 0.2rem 1rem 0 rgba(0, 0, 0, 0.4);
  }

  .list-watch .watch-image:before,
  .list-watch .watch-image:after {
    display: block;
    content: '';
  }

  .list-watch .watch-image:before {
    padding-top: 100%;
  }

  .list-watch .watch-image:after {
    position: absolute;
    top: 0; bottom: 0; left: 0; right: 0;
    z-index: 5;
    box-shadow: 0 0 0 0.2rem rgba(255, 255, 255, 0.5) inset;
  }

  .list-watch .watch-image img {
    display: block;
    position: absolute;
    top: 0; left: 0;
    width: 100%;
    height: auto;
  }

  .list-watch .content > *:first-child {
    margin: 1rem 0;
  }

  .list-watch .watch-info {
    font-size: 2rem;
  }

  .list-watch .watch-info .brand,
  .list-watch .watch-info .model{
    font-weight: bold;
    color: #555;
  }

  .list-watch li.item span.content {
    min-height: 0 ;
  }

  .title {
    text-align: center;

  }

  .title h2 {
    font-weight: bold;
    font-size: 4rem;
  }

  .title h2:after {
    display: block;
    content: '';
    border-bottom: 1px solid #CCC;
    width: 30rem;
    margin: 1rem auto;
  }

  li.item,
  li.item .content {
    padding: 1rem 0;
  }

  li.item div {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
  }

  li.item a {
    text-decoration: none;
  }
</style>
