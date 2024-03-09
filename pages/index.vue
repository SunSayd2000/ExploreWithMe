<script setup>
import EweButton from '../components/EweButton/EweButton.vue'
import IconBunq from '~/assets/icons/bunq--black.svg'
import {useAppFetch} from '~/composables/useAppFetch'

const isDisabled = ref(false)
const signIn = async () => {
  const {data, pending, error} = await useAppFetch("/get-bunq-auth-url");
  isDisabled.value = pending
  if (error) {
    isDisabled.value = false
  }
  location.href = data.value.url
}
</script>
<template>
  <div class="main-page">
    <div class="container">
      <div class="main-page__sign-in">
        <h1>
          Explore with Me!
        </h1>
        <div class="main-page__sign-in-row">
          <EweButton class="main-page__sign-in-button" @click="signIn" :disabled="isDisabled">
            <template #icon>
              <IconBunq class="main-page__bunq-logo" filled/>
            </template>
            <template #text>
              <h4>
                Sign in via
              </h4>
            </template>
          </EweButton>
          <img class="main-page__bunq-logo" src="/images/bunq.png" alt=""/>
        </div>
      </div>
    </div>
  </div>

</template>

<style lang="scss">
.main-page {
  position: relative;
  height: 100%;

  &__sign-in {
    z-index: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    position: absolute;
    left: 50%;
    top: 30%;
    transform: translate(-50%, -50%);
  }

  &__sign-in-row {
    margin-top: 5rem;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  &__bunq-logo {
    width: 6rem;
    height: 6rem;
    object-fit: contain;
    margin: 0 0 0 1.5rem;
  }
}
</style>