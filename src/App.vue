<template>
  <div class="hello">
    <img alt="Vue logo" src="./assets/logo.png">
    <h1>Random Fact:</h1>
    <button @click="fetchData">Click Me!</button>
    <p v-if="fact">{{ fact }}</p>
  </div>
</template>

<script>
export default {
  props: {
    msg: String,
  },
  data() {
    return {
      fact: "",
    };
  },
  methods: {
    fetchData() {
      fetch('https://facts-by-api-ninjas.p.rapidapi.com/v1/facts', {
        method: "GET",
        headers: {
          'x-rapidapi-key': 'cb4545bcdamsh167c0cb6685f900p14e854jsn9f8035654a5b',
          'x-rapidapi-host': 'facts-by-api-ninjas.p.rapidapi.com',
        },
      })
        .then((response) => {
          response.json().then((data) => {
            this.fact = data[0].fact;
          });
        })
        .catch((err) => {
          console.error(err);
        });
    },
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

button {
padding: 12px 32px;
font-size: 16px;
border-radius: 8px;
}
</style>
