<template>
  <div
    class="bg-white border border-solid border-gray-300 shadow-md rounded-md m-10 mt-0"
  >
    <div class="bg-gray-200 p-3 border-b border-gray-400 border-solid">
      <h3 class="text-lg">Devcon Level</h3>
    </div>
    <div class="levels flex flex-row justify-between p-3">
      <div :key="i" v-for="(level, i) in levels" class="defcon rounded">
        <p>{{ i + 1 }}</p>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from '@vue/composition-api';

// import jsonp from "jsonp";

interface AppData {
  levels: number[];
}

export default defineComponent({
  name: 'Defcon',
  setup(): AppData {
    const levels = new Array<number>(5).fill(5);

    return { levels };
  },
});
</script>

<style scoped>
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
