<template>
  <div class="bg-gray-200 wrapper">
    <div class="p-10">
      <input
        placeholder="Jenkins Build URL"
        class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
        val
        type="text"
      />
    </div>

    <div
      class="bg-white border border-solid border-gray-300 shadow-md rounded-md m-10 mt-0"
    >
      <div class="bg-gray-200 p-3 border-b border-gray-400 border-solid">
        <h3 class="text-lg">Devcon Level</h3>
      </div>
      <div class="levels flex flex-row justify-between p-3">
        <div :key="level" v-for="(level, i) in levels" class="defcon rounded">
          <p>{{ i + 1 }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

interface AppData {
  levels: number[];
}

export default Vue.extend({
  data(): AppData {
    return {
      levels: new Array<number>(5).fill(5),
    };
  },
});
</script>

<style>
@tailwind base;
@tailwind components;
@tailwind utilities;

html,
body {
  font-family: "Helvetica Neue", Arial, sans-serif;
}

::placeholder {
  color: #333;
}
</style>

<style scoped>
.wrapper {
  display: block;
  height: 100vh;
  width: 100vw;
  margin: 0 auto;
}

.levels {
  margin: 0 auto;
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
  flex: 1 1 auto;
  height: 240px;
  margin: 0 10px;
  transition: opacity 0.3s ease-in-out;
}

.defcon:first-child {
  margin-left: 0;
}

.defcon:last-child {
  margin-right: 0;
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
