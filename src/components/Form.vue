<template>
  <div class="p-10">
    <input
      v-model="url"
      placeholder="Jenkins Build URL"
      class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
      type="text"
    />
  </div>
</template>

<script lang="ts">
import { defineComponent, ref } from '@vue/composition-api';

export default defineComponent({
  name: 'Form',
  setup() {
    const url = ref('');

    return { url };
  },
});
</script>
