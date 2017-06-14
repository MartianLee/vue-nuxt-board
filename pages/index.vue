<template>
  <section class="container">
    <div>
      <logo/>
      <h1 class="title">
        DIARY
      </h1>
      <h2 class="subtitle">
        WRITE YOUR DAY
      </h2>
        <div class="links">
            <nuxt-link to="/diary" class="button--green">Diary</nuxt-link>
            <nuxt-link to="/about" class="button--grey">About</nuxt-link>
        </div>
        <div>

        </div>
        <div class="links">
            <button @click="$store.commit('increment')" class="button--green">{{ $store.state.counter }}</button>
        </div>
    </div>
  </section>
</template>

<script>
import Logo from '~components/Logo.vue'

export default {
  head: {
    script: [
      { src: 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js' }
    ],
    link: [
      { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css?family=Roboto' }
    ]
  },
  components: {
    Logo
  }

}
</script>

<style scoped>
.container
{
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}
.title
{
  font-family: "Quicksand", "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif; /* 1 */
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}
.subtitle
{
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}
.links
{
  padding-top: 15px;
}
</style>
