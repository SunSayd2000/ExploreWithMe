<script setup >
const emit = defineEmits(['click'])
const props = defineProps({
  isMine: {
    type: Boolean,
    required: true
  },
  text: {
    type: String,
    required: true
  },
})
</script>
<template>
  <div class="ewe-chat-message__wrapper">
    <div class="ewe-chat-message"
         :class="{
   'ewe-chat-message--mine': isMine
 }"
    >
      {{ text }}
    </div>
  </div>
</template>
<style lang="scss">
.ewe-chat-message {
  color: $textColor;
  background-color: $mainColor;
  width: fit-content;
  padding: 1rem 1.4rem;
  border-radius: 1.2rem;
  &__wrapper {
    width: 100%;
    flex: 1 1 100%;
  }
  &--mine {
    background-color: $secondaryColor;
    margin: 1rem 0 1rem auto;
  }
}
</style>