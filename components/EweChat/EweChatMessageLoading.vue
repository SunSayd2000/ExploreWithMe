<script setup >
const emit = defineEmits(['click'])
</script>
<template>
  <div class="ewe-chat-message-loading__wrapper">
    <div class="ewe-chat-message-loading">
      <img class="ewe-chat-message-loading__img" src="/images/loading.gif" alt="">
    </div>
  </div>

</template>
<style lang="scss">
.ewe-chat-message-loading {
  color: $textColor;
  background-color: $mainColor;
  width: 6rem;
  margin: 1rem 0;
  padding: 1rem 1.4rem;
  border-radius: 1.2rem;
  &__img{
    width: 3rem;
  }
  &__wrapper {
    width: 100%;
    flex: 1 1 100%;
  }
}
</style>