<template >
  <v-app>
    <Navbar/>
    <v-card class="application--wrap">
      <v-container grid-list-xl>
        <v-layout row wrap justify-space-between>
          <v-layout row wrap align-start justify-center>
            <v-navigation-notification v-model="notification" permanent absolute>
              <v-toolbar flat class="transparent">
                <v-list class="pa-0">
                  <v-list-tile avatar>
                    <v-list-tile-avatar>
                      <img :src="user.ava">
                    </v-list-tile-avatar>

                    <v-list-tile-content>
                      <v-list-tile-title>{{user.nome}}</v-list-tile-title>
                    </v-list-tile-content>
                  </v-list-tile>
                </v-list>
              </v-toolbar>

              <v-list class="pt-0" dense>
                <v-divider></v-divider>

                <v-list-tile v-for="notification in notification" :key="notification.title">
                  <v-list-tile-action>
                    <v-icon>{{ notification.icon }}</v-icon>
                  </v-list-tile-action>

                  <v-list-tile-content>
                    <v-list-tile-title>{{ notification.title }}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
              </v-list>
            </v-navigation-notification>
            <v-flex xs7>
              <v-card dark class="movecenter">
                <v-textarea name="input-7-1" box auto-grow placeholder="Escreva algo..." v-model="texto"></v-textarea>
                <v-layout row wrap align-center justify-space-between>
                  <v-flex offset-xs1>
                    <v-btn class="white--text" color="black accent-4" depressed>Foto/video</v-btn>
                  </v-flex>
                  <v-flex offset-xs4>
                    <v-btn class="white--text" color="black accent-4" depressed v-on:click="postar">Enviar</v-btn>
                  </v-flex>
                </v-layout>
              </v-card>
              <br>
              <br>
              <br>

              <v-card dark flat color="Grey" class="movecenter" v-for="posts in posts " :key="posts.perfil_id">
                <v-layout row wrap align-center justify-space-between>
                  <v-list-tile >
                  <v-flex xs10 offset-xs0 offset-lg1>
                    <v-card dark><v-flex xs12 >{{posts.texto}}</v-flex></v-card>
                  </v-flex>
                  </v-list-tile>
                </v-layout>

                <v-list class="pt-0" dense>
                  <v-container>
                    <v-layout row wrap align-center justify-space-between>
                      <v-list-tile v-for="publicacao in publicacao " :key="publicacao.title">
                        <v-list-tile-action>
                          <v-icon>{{ publicacao.icon }}</v-icon>
                        </v-list-tile-action>
                        <v-list-tile-content>
                          <v-list-tile-title>{{ publicacao.title }}</v-list-tile-title>
                        </v-list-tile-content>
                      </v-list-tile>
                    </v-layout>
                  </v-container>
                  <v-card dark class="movecenter">
                    <v-layout row wrap align-center justify-space-between>
                      <v-flex xs8 offset-xs0 offset-lg1>
                        <v-text-field
                          prepend-icon="comment"
                          type="text"
                          name="comment"
                          placeholder="Comentario..."
                          class="field-control"
                          color="black accent-4"
                        ></v-text-field>
                      </v-flex>

                      <v-btn dark v-on:click="getPosts">Enviar</v-btn>
                      <br>
                    </v-layout>
                  </v-card>
                </v-list>
                <br><br><br>
              </v-card>
            </v-flex>
          </v-layout>
        </v-layout>
      </v-container>
    </v-card>
  </v-app>
</template>

<script>
import router from "../router";
import Navbar from "../components/Navbar";
import axios from "axios";

export default {
  components: {
    Navbar
  },
  data() {
    return {
      user: {},
      posts: {},
      drawer: true,
      items: [
        { title: "Home", icon: "dashboard" },
        { title: "About", icon: "question_answer" }
      ],
      publicacao: [
        { title: "Like", icon: "thumb_up" },
        { title: "Comentario", icon: "comment" },
        { title: "Partilha", icon: "share" }
      ],
      notification: [
        { title: "Chat", icon: "dashboard" },
        { title: "Pagina", icon: "question_answer" },
        { title: "Evento", icon: "question_answer" }
      ],
      right: null
    };
  },
  methods: {
    getUserdata: function() {
      let self = this;
      axios
        .get("/api/user")
        .then(response => {
          console.log(response);
          self.$set(this, "user", response.data.user);
        })
        .catch(errors => {
          console.log(errors);
          router.push("/");
        });
    },
    getPosts: function() {
      let self = this;
      axios
        .get("/api/allposts")
        .then(response => {
          console.log(response);
          self.$set(this, "posts", response.data.posts);
        })
        .catch(errors => {
          console.log(errors);
        });
    },
    postar: function() {
      let texto=  this.texto;
      axios
        .post("/api/post",texto)
        .then(response => {
          console.log(response);
        })
        .catch(errors => {
          console.log(errors);
        });
    },
  },
  mounted() {
    this.getUserdata();
    this.getPosts();
  }
};
</script>