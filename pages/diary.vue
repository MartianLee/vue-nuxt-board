<template>
    <div class="container">
        <div>
            <h1 class="display-2">Diary</h1>
            <div class="text-right">
                <button type="button" class="btn"><nuxt-link to="/write">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                </nuxt-link></button>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th class="text-center col-xs-10">제목</th>
                    <th class="text-center col-xs-2">글쓴이</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="dat in data">
                    <td><nuxt-link :to="`/post/${dat.id}`">{{ dat.title }}</nuxt-link></td>
                    <td>{{ dat.userId }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
<script>
  import axios from 'axios'
  import NuxtLink from 'nuxt/dist/app/components/nuxt-link'
  export default{
    components: {NuxtLink},
    async asyncData () {
      let {data} = await axios.get(`http://jsonplaceholder.typicode.com/posts`)
      let titles = []
      data.forEach((post) => {
        titles.push({title: post.title, userId: post.userId, id: post.id})
        // console.log('asdfads')
        // console.log(post.title)
      })
      return {data: titles}
    }
  }
</script>
<style scoped>
    .container {
        min-height: 100vh;
        justify-content: center;
        align-items: center;
        text-align: center;
        padding-right: 10%;
        padding-left: 10%;
    }
</style>
