<script setup>
import IconSubmit from '~/assets/icons/submit.svg'

const emit = defineEmits(['click'])
const messages = ref([
  {
    isMine: true,
    text: 'BLA BLA BLA BLA very important message'
  },
  {
    isMine: false,
    text: 'BLA BLA BLA BLA very important message'
  }
])
const answers = ref([
  'bla bla bla',
  'ololo ololo'
])
</script>
<template>
  <div class="ewe-chat">
    <div class="ewe-chat__messages-box">
      <template
          v-for="(message,index) in messages"
          :key="index"
      >
        <EweChatMessage
            :is-mine="message.isMine"
            :text="message.text"
        />
      </template>
      <EweChatMessageLoading/>
      <div class="ewe-chat__answers-box">
        <EweChatMessageButton
            v-for="(answer,index) in answers"
            :key="index"
            :text="answer"
        />
      </div>

    </div>
    <div class="ewe-chat__textarea-wrapper">
      <textarea rows="5" cols="60" class="ewe-chat__textarea"/>
      <IconSubmit class="ewe-chat__textarea-icon" filled/>
    </div>
  </div>
</template>
<style lang="scss">
.ewe-chat {
  z-index: 10;
  display: flex;
  justify-content: center;
  width: 100%;
  max-width: 700px;
  min-height: 300px;
  border-radius: 1.2rem;
  flex-wrap: wrap;

  &__messages-box {
    width: 100%;
    min-height: 35rem;
    max-height: 35rem;
    overflow-y: scroll;
    flex: 1 1 100%;
  }

  &__answers-box {
    display: flex;
    width: 100%;
    justify-content: flex-start;
  }

  &__textarea {
    width: 100%;
    margin-top: 1rem;
    padding: 1rem;
    justify-self: flex-end;
    border-radius: 0.8rem;
    border: 1px $successColor solid;
    min-height: 5rem;

    &:focus {
      outline: none;
      border: 2px $successColor solid;
    }
  }

  &__textarea-wrapper {
    position: relative;
  }

  &__textarea-icon {
    cursor: pointer;
    position: absolute;
    bottom: 1rem;
    right: 1rem;

    &:hover {
      fill: $successColor!important;
    }
  }
}
@media (max-width: map-get($breakpoints, "sm")) {
  .ewe-chat__messages-box {
    min-height: 22rem;
    max-height: 22rem;
    overflow-y: scroll;
  }
}
</style>