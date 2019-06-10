<template>
  <nav>
    <v-navigation-drawer v-model="sideNav" absolute temporary>
      <v-list>
        <v-list-tile>
          <v-list-tile-action>
            <v-btn flat v-on:click="home">
              <v-icon left dark>supervisor_account</v-icon>Home
            </v-btn>
            <v-btn flat v-on:click="profile">
              <v-icon left dark>supervisor_account</v-icon>Perfil
            </v-btn>
            <v-btn flat v-on:click="eventos">
              <v-icon left dark>room</v-icon>Eventos
            </v-btn>
            <v-btn flat v-on:click="logout">
              <v-icon left dark>exit_to_app</v-icon>Sair
            </v-btn>
            <v-btn flat>
              <v-text-field
                prepend-icon="search"
                type="text"
                name="search"
                placeholder="Search..."
                class="field-control"
                color="black accent-4"
              ></v-text-field>
            </v-btn>
          </v-list-tile-action>
        </v-list-tile>
        <v-list-content></v-list-content>
      </v-list>
    </v-navigation-drawer>
    <v-toolbar>
      <v-toolbar-side-icon @click.native.stop="sideNav = !sideNav">
        <img src="https://cdn3.iconfinder.com/data/icons/mobile-friendly-ui/100/menu-512.png" alt="">
      </v-toolbar-side-icon>
        <img src="../assets/icon.png">
      <v-toolbar-title class="text-uppercase grey--text">
        <span class="font-weigth-light">Ilha</span>
        <span class="text-uppercase black--text font-weigth-bold">Madeira</span>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn flat>
          <v-text-field
            prepend-icon="search"
            type="text"
            name="search"
            placeholder="Search..."
            class="field-control"
            color="black accent-4"
          ></v-text-field>
        </v-btn>
        <v-btn flat v-on:click="home">
          <v-icon left dark>supervisor_account</v-icon>Home
        </v-btn>
        <v-btn flat v-on:click="profile">
          <v-icon left dark>supervisor_account</v-icon>Perfil
        </v-btn>
        <v-btn flat v-on:click="eventos">
          <v-icon left dark>room</v-icon>Eventos
        </v-btn>
        <v-btn flat v-on:click="logout">
          <v-icon left dark>exit_to_app</v-icon>Sair
        </v-btn>
      </v-toolbar-items>
    </v-toolbar>
  </nav>
</template>
<script>
import router from "../router";
import axios from "axios";
export default {
  data() {
    return {
      sideNav: false,
      menuItems: [
        { icon: "supervisor_account", title: "Profile" },
        { icon: "room", title: "Eventos" },
        { icon: "exit_to_app", title: "logout" }
      ]
    };
  },
  methods: {
    home() {
      axios
        .get("/api/home")
        .then(response => {
          console.log(response);
          router.push("/home");
        })
        .catch(errors => {
          console.log(errors.response);
          alert(errors.response);
        });
    },
    profile() {
      axios
        .get("/api/profile")
        .then(response => {
          console.log(response);
          router.push("/profile");
        })
        .catch(errors => {
          console.log(errors.response);
          alert(errors.response);
        });
    },
    logout() {
      axios
        .get("/api/logout")
        .then(response => {
          console.log(response);
          router.push("/");
        })
        .catch(errors => {
          console.log(errors.response);
          alert(errors.response);
        });
    }
  }
};
</script>