<template>
  <div class="wrapper">
    <div class="source">
      <input
        placeholder="Jenkins Build URL"
        class="source-value"
        val
        type="text"
      />
    </div>
    <div class="levels">
      <div :key="level" v-for="level in levels" class="defcon">
        <p>{{ level }}</p>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  data: () => ({
    levels: [1, 2, 3, 4, 5],
  }),

  methods: {
    defconClass(level: number): string {
      return `defcon-${level}`;
    },
  },
});
</script>

<style>
html,
body {
  background: #000;
  color: #000;
  font-family: "Helvetica Neue", Arial, sans-serif;
  height: 100vh;
  width: 100vw;
}

::placeholder {
  color: #333;
}
</style>

<style scoped>
.wrapper {
  display: block;
  height: 100%;
  width: 100%;
  margin: 0 auto;
}

.levels {
  display: flex;
  justify-content: stretch;
  align-content: center;
  align-items: center;
  flex-flow: row nowrap;
  height: 25vw;
  margin: 0 auto;
  min-width: 300px;
  width: 75%;
}

.source-value {
  background: #111;
  border-radius: 10px;
  border: none;
  color: #555;
  display: block;
  font-size: 45px;
  left: 30%;
  margin: 0 auto;
  padding: 5px 8px;
  text-align: center;
}

.source-value:focus {
  background: #444;
  color: #ddd;
  outline: none;
}

.defcon {
  background: red;
  opacity: 0.3;
  border-radius: 10px;
  display: block;
  flex: 1 1 auto;
  float: left;
  height: 240px;
  /* width: 19%; */
  margin-bottom: 5px;
  margin-right: 7px;
  transition: opacity 0.3s ease-in-out;
}

.defcon p {
  font-size: 10.5em;
  font-weight: 600;
  line-height: 220px;
  height: 100%;
  text-align: center;
}

.defcon:hover,
.defcon.active {
  opacity: 1;
}

.defcon:nth-child(1) {
  background-image: radial-gradient(#ffffff 0%, #b5b5b5 150%);
}
.defcon:nth-child(2) {
  background-image: radial-gradient(#efe1e1 0%, #ef0000 150%);
}
.defcon:nth-child(3) {
  background-image: radial-gradient(#efeed9 0%, #efcf00 150%);
}
.defcon:nth-child(4) {
  background-image: radial-gradient(#deffde 0%, #20c200 150%);
}
.defcon:nth-child(5) {
  background-image: radial-gradient(#a8c8ff 0%, #0055ff 150%);
}
</style>
