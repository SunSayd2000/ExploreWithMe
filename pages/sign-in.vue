<script setup>
onMounted(async () => {
  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString);
  const token = useCookie('token', {
    maxAge: 60 * 60 * 24 * 7, // 1 Week
  })
  token.value = urlParams.get('code')
  if(token.value){
    await navigateTo('/explore')
  } else {
    await navigateTo('/')
  }
})

</script>
<template>
  <div>
    Sign in...
  </div>
</template>