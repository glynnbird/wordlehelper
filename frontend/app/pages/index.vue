<script setup>
  // composables
  const { $pwa } = useNuxtApp()
  const { filteredWords, search } = useWordList()
</script>
<style>
  .v-card {
    margin-bottom: 10px;
  }
.inputword {
  font-family: monospace, monospace; 
}
.inputword input {
  font-size: 40px;
}
</style>
<template>
  <!-- PWA refresh banner-->
  <v-alert color="warning" v-show="$pwa.needRefresh">
    <h4> New content available, click on reload button to update. </h4>
    <v-btn color="primary" @click="$pwa.updateServiceWorker()">Reload</v-btn>
  </v-alert>

  <v-row>
    <v-col cols="1"></v-col>
    <v-col cols="10">
      <v-text-field class="inputword" maxlength="5" persistent-counter  counter clearable placeholder="Search" v-model="search"></v-text-field>
    </v-col>
    <v-col cols="1"></v-col>
  </v-row>

  <v-list>
    <v-list-item v-for="word in filteredWords">{{ word }}</v-list-item>
  </v-list>
</template>
