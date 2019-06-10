<template>
  <v-app>
    <router-view/>
    <v-footer dark height="100%" class="pl 0" inset>
      <v-layout row wrap absolute>
        <v-flex>
          <v-card class="flex" flat tile>
            <v-card-title class="teal">
              <strong class="subheading">Mantem-te ligado</strong>

              <v-spacer></v-spacer>

              <v-btn v-for="icon in icons" :key="icon" class="mx-3" dark icon>
                <v-icon size="24px">{{ icon }}</v-icon>
              </v-btn>
            </v-card-title>
            <v-card-actions class="black darken-3 justify-center">
              &copy;2019 —
              <strong>A TEAM</strong>
            </v-card-actions>
          </v-card>
        </v-flex>
      </v-layout>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  data() {
    return {
      drawerOpen: true,

      icons: [
        "fab fa-facebook",
        "fab fa-twitter",
        "fab fa-google-plus",
        "fab fa-linkedin",
        "fab fa-instagram"
      ]
    };
  }
};
</script>