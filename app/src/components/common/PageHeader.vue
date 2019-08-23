<template>
  <div id="menu-container">
    <input type="checkbox" name="main-nav-toggle" id="main-nav-toggle">
    <header>

      <p class="site-title"><router-link :to="{name: 'home'}">Watch App</router-link></p>

      <label id="toggle" for="main-nav-toggle">Menu</label>

      <nav class="main">
        <ul>
          <li><router-link :to="{name: 'home'}">Home</router-link></li>
          <template v-if="!isAuthenticated">
            <li><router-link :to="{name: 'login'}">Login</router-link></li>
            <li><router-link :to="{name: 'register'}">Register</router-link></li>
          </template>
          <template v-else>
            <li>
              <a href="#">My Watches</a>
              <ul>
                <li>
                  <a href="#">Watch Collection</a>
                </li>
                <li><a href="#">Add To Watch Collection</a></li>
              </ul>
            </li>
            <li><a @click="onLogout" id="logout">Logout</a></li>
          </template>









          <!--<li><a href="#">About</a></li>-->
          <!--<li>-->
            <!--<a href="#">Products</a>-->
            <!--<ul>-->
              <!--<li>-->
                <!--<a href="#">Men</a>-->
                <!--<ul>-->
                  <!--<li><a href="#">Large</a></li>-->
                  <!--<li><a href="#">X-Large</a></li>-->
                  <!--<li><a href="#">Huge</a></li>-->
                <!--</ul>-->
              <!--</li>-->
              <!--<li><a href="#">Women</a></li>-->
              <!--<li>-->
                <!--<a href="#">Kids</a>-->
                <!--<ul>-->
                  <!--<li><a href="#">Large</a></li>-->
                  <!--<li><a href="#">X-Large</a></li>-->
                  <!--<li><a href="#">Huge</a></li>-->
                <!--</ul>-->
              <!--</li>-->
            <!--</ul>-->
          <!--</li>-->
          <!--<li><a href="#">Stuff</a></li>-->
          <!--<li><a href="#">Contacts</a></li>-->
        </ul>
      </nav>
    </header>
  </div>
</template>

<script>
  import {mapState, mapGetters, mapMutations, mapActions} from 'vuex'
  export default {
    name: "PageHeader",
    computed: {
      ...mapGetters('authenticationServices', ['isAuthenticated']),
    },
    methods: {
      ...mapActions('authenticationServices', ['logoutUser']),
      onLogout(){
        this.logoutUser();
      }
    }
  }
</script>

<style scoped>
  #menu-container > header:first-of-type {
    border-bottom: 2px solid #333;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
  }

  .site-title {
    font-size: 2rem;
    text-transform: uppercase;
    padding: 1rem 0;
  }

  .site-title a {
    text-decoration: none;
    color: #000;
  }

  nav.main {
    display: flex;
    z-index: 100000;
  }

  nav.main ul {
    padding: 0.5rem;
    margin: 0;
    background: #FFF;
  }

  nav.main > ul {
    display: flex;
  }

  nav.main ul ul {
    /*display: none;*/
    opacity: 0;
    pointer-events: none;
    position: absolute;
    width: 12rem;
    transition: opacity 0.1s ease-out, transform 0.2s ease-in;
    transform: translateY(2rem);
  }

  nav.main > ul > li > ul {
    top: 100%;
    left: -0.5rem;
  }

  nav.main > ul > li > ul  li  ul{
    top: -0.5rem;
    left: inherit;
    right: 100%;
  }

  nav.main li {
    display: block;
    list-style: none outside;
    position: relative;
  }

  nav.main > ul > li:not(:last-child) {
    padding-right: 0.5rem;
  }

  nav.main > ul ul > li:not(:last-child) {
    padding-bottom: 0.5rem;
  }

  nav.main a {
    display: block;
    padding: 0.5rem 1rem;
    background: #333;
    color: #FFF;
    text-decoration: none;
    border-radius: 0.3rem;
  }

  nav.main li:hover > a{
    background: #060;
  }

  #main-nav-toggle {
    display: none;
  }

  #logout {
    cursor: pointer;
  }

  @media screen and (max-width: 800px) {
    nav.main {
      display: none;
    }

    nav.main > ul {
      display: block;
    }

    nav.main ul ul {
      opacity: 1;
      pointer-events: inherit;
      width: auto;
      position: static;
      transform: translate(0, 0);
      padding: 0.5rem 0 0.5rem 1.5rem;
    }

    nav.main ul ul a {
      background: #CCC;
      color: black;
    }

    nav.main > ul > li:not(:last-child) {
      padding: 0 0 0.5rem 0;
    }

    #main-nav-toggle:checked + header nav.main{
      display: block;
      flex: 1 0 100%;
    }
  }

  @media screen and (min-width: 800px) {
    #toggle {
      display: none;
    }

    nav.main li:hover > ul {
      opacity: 1;
      pointer-events: inherit;
      transform: translateY(0);
    }
  }
</style>
