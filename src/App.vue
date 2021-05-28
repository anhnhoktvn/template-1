<template lang="pug">
BaseApp
</template>

<script lang="ls">
export default _ = 
  created: -> 
      window.S = @
      APP.config.globalProperties.S = @
  mounted: ->>
      F.start?!
</script>