<template>
    <section class="container">
        <h1>About page</h1>
        <p>
            This Diary is made by Seonghwa Lee.
            He loves the world and he wants to change the world more lovely.
        </p>
        <div class="links">
            <nuxt-link to="/" class="button--green">Home</nuxt-link>
            <a href="https://nuxtjs.org/" target="_blank" class="button--grey">Documentation</a>
            <a href="https://github.com/nuxt/nuxt.js" target="_blank" class="button--grey">GitHub</a>
        </div>
    </section>
</template>

<script>
  import HeadCard from '~components/head-card.vue'

  export default {
    head: {
      title: 'About Page',
      meta: [
        { hid: 'description', name: 'description', content: 'About page description' }
      ]
    },
    components: {
      HeadCard
    }
  }
</script>

<style scoped>
    .container {
        text-align: center;
        margin-top: 150px;
        font-size: 20px;
    }
</style>
