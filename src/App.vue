<template>
  <div class="bg-gray-200 wrapper">
    <div>
      <Form />
    </div>
    <div>
      <Defcon />
    </div>
  </div>
</template>

<script>
import Form from './components/Form.vue';
import Defcon from './components/Defcon.vue';

export default {
  components: {
    Form,
    Defcon,
  },
};
</script>

<style>
html,
body {
  font-family: 'Helvetica Neue', Arial, sans-serif;
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
</style>
