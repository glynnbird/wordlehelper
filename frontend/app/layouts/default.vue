<script setup>
   const { search } = useWordList()
</script>
<style>
.inputword {
font-family: monospace, monospace; 
}
</style>
<template>
  <v-app theme="light">
    <v-app-bar density="compact" extended extension-height="70">
      <v-app-bar-title @click="navigateTo('/')" style="user-select:none;">Wordle Helper</v-app-bar-title>
      <template v-slot:extension>
        <v-row>
          <v-col cols="1"></v-col>
          <v-col cols="10">
             <v-text-field class="inputword" maxlength="5" clearable placeholder="Search" v-model="search"></v-text-field>
          </v-col>
          <v-col cols="1"></v-col>
        </v-row>
      </template>
    </v-app-bar>
    <v-main>
      <v-container fluid>
        <Alert></Alert>
        <slot />
      </v-container>
    </v-main>
  </v-app>
</template>
