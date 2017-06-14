<template>
    <div class="container">
        <h1>{{title}}</h1>
        <div>
            <p>
                {{body}}
            </p>
        </div>
        <h3>댓글</h3>
        <div>
            <div v-for="comment in comments">
                <div class="row">
                    <div class="col-xs-1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></div>
                    <div class="col-xs-5">{{ comment.name }}</div>
                    <div class="col-xs-1"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></div>
                    <div class="col-xs-5">{{ comment.email }}</div>
                </div>
                <div class="row">
                    <div class="col-xs-1"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></div>
                    <div class="col-xs-11">
                        <p>
                            {{ comment.body }}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
  import axios from 'axios'
  export default {
    validate ({ params }) {
      // Must be a number
      return /^\d+$/.test(params.id)
    },
    async asyncData ({params, error}) {
      return await axios.all([
        axios.get(`https://jsonplaceholder.typicode.com/posts/${params.id}`),
        axios.get(`https://jsonplaceholder.typicode.com/posts/${params.id}/comments`)
      ]).then(axios.spread((postResponse, commentsResponse) => {
        return { title: postResponse.data.title, body: postResponse.data.body, comments: commentsResponse.data }
      })).catch((thrown) => {
        let msg = ''
        if (thrown.response.status === 404) {
          msg = 'Page not found'
        } else {
          msg = 'Unkown error'
        }
        error({ statusCode: thrown.response.status, msg })
      })

/*
        return await axios.get(`https://jsonplaceholder.typicode.com/posts/${params.id}`)
        .then(({data}) => {
          let response = await axios.get(`https://jsonplaceholder.typicode.com/posts/${params.id}/comments`)
          let data  = response.data;
          let comment = data.comment;
          console.log(`https://jsonplaceholder.typicode.com/posts/${params.id}/comments`)
          console.log(comment)
          console.log(data)
          return { title: data.title, body: data.body, comments: comment }
        }).catch((e) => {
          error({ statusCode: 404, message: 'Post not found' })
        })
*/
    }
  }
</script>
<style>
    .container {
        min-height: 100vh;
        justify-content: center;
        align-items: center;
        padding-right: 10%;
        padding-left: 10%;
    }
</style>
