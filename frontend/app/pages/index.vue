<script setup>
  // composables
  const { $pwa } = useNuxtApp()
  const { filteredWords } = useWordList()
</script>
<style>
  .v-card {
    margin-bottom: 10px;
  }
</style>
<template>
  <!-- PWA refresh banner-->
  <v-alert color="warning" v-show="$pwa.needRefresh">
    <h4> New content available, click on reload button to update. </h4>
    <v-btn color="primary" @click="$pwa.updateServiceWorker()">Reload</v-btn>
  </v-alert>

  <v-list>
    <v-list-item v-for="word in filteredWords">{{ word }}</v-list-item>
  </v-list>
</template>
