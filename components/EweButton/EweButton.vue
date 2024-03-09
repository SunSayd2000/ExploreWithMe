<script setup >
const emit = defineEmits(['click'])
const props = defineProps({
  disabled: {
    type: Boolean,
    default: false
  }
})
</script>
<template>
  <button class="ewe-button" :disabled="disabled" @click="emit('click')">
    <span
        class="ewe-button__body"
    >
      <slot name="text"/>
    </span>
  </button>
</template>
<style lang="scss">
.ewe-button {
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0.5rem 1rem;
  border-radius: 0.6rem;
  background: $secondaryColor;
  border: unset;
  &:hover {
    box-shadow: 0 0 6px 0 rgba(0,0,0,.2);
  }
  &__icon {
    margin: 0 0 0 15px;
  }
  &__body {
    color: #FFFFFF;
  }
}
</style>