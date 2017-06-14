<template>
    <div class="container">
        <div>
            <h1 class="display-2">Write Your Day</h1>
        </div>
        <div class="input">
            <div >
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Title</button>
                    </span>
                    <input type="text" class="form-control" placeholder="How was it today?">
                </div><!-- /input-group -->
            </div>
            <div>
                <textarea class="form-control" rows="10" id="diary_text"></textarea>
            </div>
        </div>
        <div class="text-right">
            <button type="button" class="btn"><nuxt-link to="/diary">Back</nuxt-link></button>
            <button type="button" class="btn"><nuxt-link to="/diary">Write</nuxt-link></button>
        </div>
    </div>
</template>
<script>

</script>
<style scoped>
    .container {
        min-height: 100vh;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
    #diary_text{
        rows: 50%;
    }
</style>
