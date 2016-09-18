<template>
  <div id="app">
    <img src="images/vapor-logo.png">
    <input v-model="msg">
    <h1>Hello {{ msg }}</h1>
  </div>
</template>

<script>
export default {
  data () {
    return {
      msg: 'Cheft!'
    }
  }
}
</script>

<style>
body {
  font-family: Helvetica, sans-serif;
  color: #35495E;
}

input {
  display: block;
  width: 200px;
  height: 30px;
  font-size: 20px;
  border: 1px solid #41B883;
  color: #35495E;
}
</style>
