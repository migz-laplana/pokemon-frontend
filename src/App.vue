<template>
  <div>
    <h1>welcome to the pokemon test app!</h1>
    <Pokemon />
  </div>
</template>

<script>
import Pokemon from "./components/Pokemon";
export default {
  name: "App",
  components: { Pokemon },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center;
  color: #2c3e50;
  margin-top: 60px; */
}

* {
  margin: 0;
}
</style>
