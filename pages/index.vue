<script setup>
import EweButton from '../components/EweButton/EweButton.vue'
import IconBunq from '~/assets/icons/bunq--black.svg'
</script>
<template>
  <div class="main-page">
    <div class="container">
      <div class="main-page__sign-in">
        <h1>
          Explore with Me!
        </h1>
        <div class="main-page__sign-in-row">
          <EweButton class="main-page__sign-in-button">
            <template #icon>
              <IconBunq class="main-page__bunq-logo" filled />
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
    <footer class="main-page__footer">
      <img class="main-page__footer-img" src="/images/city.jpg" alt=""/>
    </footer>
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
    transform: translate(-50%,-50%);
  }
  &__sign-in-row {
    margin-top: 5rem;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  &__footer {
    width: 100%;
    position: absolute;
    bottom: -10px;
    overflow: hidden;
  }
  &__footer-img {
    width: 100%;
    object-fit: contain;
  }
  &__bunq-logo {
    width: 6rem;
    height: 6rem;
    object-fit: contain;
    margin: 0 0 0 1.5rem;
  }
}
</style>