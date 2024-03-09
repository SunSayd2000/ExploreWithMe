<template>
    <main class="main">
      <slot/>
      <footer class="main__footer">
        <img class="main__footer-img" src="/images/city.jpg" alt=""/>
      </footer>
    </main>
</template>

<script>
export default {
  name: "default",
};
</script>
<style lang="scss">
.main {
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
}
</style>