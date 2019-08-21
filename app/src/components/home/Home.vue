<template>
  <ul class="gallery">
      <li v-for="(link, index) in links" :key="index">
        <img :src="link" alt="Image">
      </li>
  </ul>
</template>

<script>
  import homePage from '../../home-config/homePage'
    export default {
      name: "Home",
      data(){
        return {
          links: []
        }
      },
      created(){
        this.links = homePage.links;
      }
    }
</script>

<style scoped>
  ul.gallery {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding-top: 2rem;
  }

  ul li {
    width: 30%;
    list-style: none;
  }

  ul li img {
    border: 0.4rem black solid;
    padding: 0.9rem;
    box-shadow: 0 0 1rem 0 rgba(0, 0, 0, 0.3);
  }

  @media screen and (max-width: 1260px) {
    ul li{
      width: 50%;
    }
  }

  @media screen and (max-width: 800px) {
    ul li{
      width: 100%;
    }
  }
</style>
