<template>
  <nav>
    <v-navigation-drawer v-model="sideNav" absolute temporary>
      <v-list-tile></v-list-tile>
      <v-list-content>
        <v-btn flat>
          <v-text-field
            v-model="lemail"
            prepend-icon="email"
            type="text"
            name="email"
            placeholder="E-mail"
            class="field-control"
          ></v-text-field>
        </v-btn>
      </v-list-content>
      <v-list-content>
        <v-btn flat>
          <v-text-field
            v-model="lpassword"
            prepend-icon="lock"
            type="password"
            name="password"
            placeholder="Password"
            class="field-control"
          ></v-text-field>
        </v-btn>
      </v-list-content>
      <v-list-content>
        <v-btn v-on:click="login" flat large type="submit" value="Login">Login</v-btn>
      </v-list-content>
    </v-navigation-drawer>
    <v-toolbar>
      <v-toolbar-side-icon @click.native.stop="sideNav = !sideNav">
        <img src="../assets/icon.png">
      </v-toolbar-side-icon>
      <v-toolbar-title class="text-uppercase grey--text">
        <span class="font-weigth-light">Ilha</span>
        <span class="text-uppercase black--text font-weigth-bold">Madeira</span>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn flat>
          <v-text-field
            v-model="lemail"
            prepend-icon="email"
            type="text"
            name="email"
            placeholder="E-mail"
          ></v-text-field>
        </v-btn>
        <v-btn flat>
          <v-text-field
            v-model="lpassword"
            prepend-icon="lock"
            type="password"
            name="password"
            placeholder="Password"
          ></v-text-field>
        </v-btn>
        <v-btn v-on:click="login" flat large value="Login" padding="5 0">Login</v-btn>
      </v-toolbar-items>
    </v-toolbar>
    <Signup/>
  </nav>
</template>

<script>
import router from "../router";
import Signup from "./Signup.vue";
import axios from "axios";
export default {
  name: "Login",
  components:{
    Signup
  },
  data() {
    return {
      sideNav: false,
    }
  },
  methods: {
    login: function() {
      let data = {
        email: this.lemail,
        password: this.lpassword
      };
      console.log(data);
      axios
        .post("/api/login", data)
        .then(response => {
          console.log(response);
          console.log("Logged in");
          router.push("/home");
        })
        .catch(errors => {
          console.log(errors.response.data[2].message);
          alert(errors.response.data[2].message);
        });
    }
  }
};
</script>