<script setup>
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
  <div class="ewe-chat-message-button"
       :class="{
   'ewe-chat-message--mine': isMine
 }"
       @click="emit('click')"
  >
    {{ text }}
  </div>
</template>
<style lang="scss">
.ewe-chat-message-button {
  cursor: pointer;
  color: $textColor;
  background-color: $secondaryColor;
  width: fit-content;
  padding: 1rem 1.4rem;
  border-radius: 1.2rem;
  margin: 0 0.5rem 1rem 0;
  transition: transform 200ms ease-in-out;

  &:hover {
    box-shadow: 0 0 6px 0 rgba(0, 0, 0, .2);
    transform: translate(0, -0.2rem);
  }
}
</style>