<template>
  <div>
    <h1 style="margin-top: 10px;">pokemon component</h1>
    <input type="text" v-model="searchText"> 
    <button @click="searchPokemon(searchText)">get info for this</button>
    <div>
      <img :src="image" :alt="name" width="100">
      <p>Name: {{name}} </p>
      <p>Types: {{types}}</p>
      <p>Moves:</p>
      <div class="list-container">
        <div class="move" v-for="(move, index) in moves" :key="index">{{move}}</div>
      </div>
  
    </div>
  </div>
</template>

<script>
export default {
  name: "Pokemon",
  data() {
    return {
      searchText: "",
      name: "",
      types: "",
      moves: [],
      image: "",
    };
  },
  methods: {
    async searchPokemon(input) {
      try {
        const res = await fetch(`http://localhost:3000/searchPokemon/${input}`);
        const data = await res.json();
        console.log(data);
        const { name, image, moves, types } = data;
        this.name = name;
        this.types = types.map((type) => type.type.name).join(", ");
        this.moves = moves.map((move) => move.move.name);
        this.image = image;
      } catch (err) {
        alert("Something went wrong. Check console.");
        console.log(err);
      }
      this.searchText = "";
    },
  },
};
</script>

<style scoped>
.list-container {
  display: flex;
  flex-wrap: wrap;
}

.move {
  padding: 10px;
}
</style>