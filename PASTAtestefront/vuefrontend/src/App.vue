<template>
  <v-app>
    <router-view/>
    <v-content>
      <Signup/>
    </v-content>
  </v-app>
</template>

<script>
import Signup from './components/Signup.vue'

export default {
  name: 'App',
  components: {
    Signup
  },
  data () {
    return {
      //
    }
  }
}
</script>
