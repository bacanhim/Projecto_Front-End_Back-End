<template>
  <nav>
    <v-navigation-drawer v-model="sideNav" absolute temporary>
      <v-list>
        <v-list-tile v-for="item in menuItems" :key="item.title">
          <v-list-tile-action>
            <v-icon>{{item.icon}}</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>{{item.title}}</v-list-tile-content>
        </v-list-tile>
        <v-list-content>
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
            prepend-icon="search"
            type="text"
            name="search"
            placeholder="Search..."
            class="field-control"
            color="black accent-4"
          ></v-text-field>
        </v-btn>
        <v-btn flat v-for="item in menuItems" :key="item.title">
          <v-icon left dark>{{item.icon}}</v-icon>
          {{item.title}}
        </v-btn>
      </v-toolbar-items>
    </v-toolbar>
  </nav>
</template>

<script>
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
  }
};
</script>
