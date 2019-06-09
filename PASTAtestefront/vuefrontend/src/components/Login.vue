<template>
  <nav>
    <v-navigation-drawer v-model="sideNav" absolute temporary>
      <v-list>
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
              prepend-icon="lock"
              type="password"
              name="password"
              placeholder="Password"
              class="field-control"
            ></v-text-field>
          </v-btn>
        </v-list-content>
        <v-list-content>
          <v-btn flat large type="submit" value="Login">Login</v-btn>
        </v-list-content>
      </v-list>
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
            prepend-icon="email"
            type="text"
            name="email"
            placeholder="E-mail"
            class="field-control"
          ></v-text-field>
        </v-btn>
        <v-btn flat>
          <v-text-field
            prepend-icon="lock"
            type="password"
            name="password"
            placeholder="Password"
            class="field-control"
          ></v-text-field>
        </v-btn>
        <v-btn flat large type="submit" value="Login" padding="5 0">Login</v-btn>
      </v-toolbar-items>
    </v-toolbar>
    <Signup/>
  </nav>
</template>

<script>
import router from "../router";
import Signup from "./Signup.vue";
export default {
  name: "App",
    data() {
    return {
      sideNav: false
    };
  },
  components: {
    Signup
  },
  methods: {
    login: e => {
      e.preventDefault();
      let email = e.target.elements.email.value;
      let password = e.target.elements.password.value;
      let login = () => {
        let data = {
          email: email,
          password: password
        };
        axios.post("/login", data).then(response => {
          console.log("Logged in");
          router.push("/dashboard");
        });
      };
      login();
    }
  }
};
</script>



