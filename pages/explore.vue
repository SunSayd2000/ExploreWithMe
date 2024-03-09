<script setup>
import EweChat from '../components/EweChat/EweChat.vue'
</script>
<template>
<div class="explore">
  <div class="container">
    <div class="explore__chat">
      <EweChat/>
    </div>
  </div>
</div>
</template>
<style lang="scss">
.explore {
  height: 100%;
  z-index: 1;
  &__chat {
    display: flex;
    align-items: center;
    justify-content: center;
    padding-top: 1rem;
  }
}
</style>