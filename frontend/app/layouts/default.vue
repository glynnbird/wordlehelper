<script setup>

</script>
<template>
  <v-app theme="light">
    <v-app-bar density="compact">
      <v-app-bar-title @click="navigateTo('/')" style="user-select:none;">Wordle Helper</v-app-bar-title>
    </v-app-bar>
    <v-main>
      <v-container fluid>
        <Alert></Alert>
        <slot />
      </v-container>
    </v-main>
  </v-app>
</template>
