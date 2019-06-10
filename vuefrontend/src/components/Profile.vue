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
                <v-list-tile>
                  <v-list-tile-action>
                    <v-icon>question_answer</v-icon>
                  </v-list-tile-action>
                  <v-list-tile-content>
                    <v-list-tile-title>Perfil ID: {{user.perfil_id}}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>

                <v-list-tile>
                  <v-list-tile-action>
                    <v-icon>question_answer</v-icon>
                  </v-list-tile-action>
                  <v-list-tile-content>
                    <v-list-tile-title>Genero: {{user.gender}}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
                  <v-list-tile>
                  <v-list-tile-action>
                    <v-icon>question_answer</v-icon>
                  </v-list-tile-action>
                  <v-list-tile-content>
                    <v-list-tile-title>Data de Nascimento: {{user.data_nasc.slice(0,10)}}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>

                <v-list-tile>
                  <v-list-tile-action>
                    <v-icon>dashboard</v-icon>
                  </v-list-tile-action>

                  <v-list-tile-content>
                    <v-list-tile-title>BIO: {{user.bio}}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>

                <v-list-tile>
                  <v-list-tile-action>
                    <v-icon>question_answer</v-icon>
                  </v-list-tile-action>
                  <v-list-tile-content>
                    <v-list-tile-title>Telemovel: {{user.numero}}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>



                <v-divider></v-divider>

                <v-list-tile>
                  <v-container grid-list-sm fluid>
                    <v-layout row wrap>
                      <v-flex v-for="n in 9" :key="n" xs4 d-flex>
                        <v-card flat tile class="d-flex">
                          <v-img
                            :src="`https://picsum.photos/500/300?image=${n * 5 + 10}`"
                            :lazy-src="`https://picsum.photos/10/6?image=${n * 5 + 10}`"
                            aspect-ratio="1"
                            class="grey lighten-2"
                          >
                            <template v-slot:placeholder>
                              <v-layout fill-height align-center justify-center ma-0>
                                <v-progress-circular indeterminate color="grey lighten-5"></v-progress-circular>
                              </v-layout>
                            </template>
                          </v-img>
                        </v-card>
                      </v-flex>
                    </v-layout>
                  </v-container>
                </v-list-tile>
              </v-list>
            </v-navigation-notification>
            <v-flex xs7>
              <v-card dark class="movecenter">
                <v-textarea name="input-7-1" box auto-grow placeholder="Escreva algo..."></v-textarea>
                <v-layout row wrap align-center justify-space-between>
                  <v-flex offset-xs1>
                    <v-btn class="white--text" color="black accent-4" depressed>Foto/video</v-btn>
                  </v-flex>
                  <v-flex offset-xs4>
                    <v-btn class="white--text" color="black accent-4" depressed>Enviar</v-btn>
                  </v-flex>
                </v-layout>
              </v-card>
              <br>
              <br>
              <br>

              <v-card dark color="Grey" class="movecenter">
                <v-layout justify-end>
                  <v-menu bottom left>
                    <template v-slot:activator="{ on }">
                      <v-btn dark icon v-on="on">
                        <v-icon>more_vert</v-icon>
                      </v-btn>
                    </template>

                    <v-list>
                      <v-list-tile>
                        <v-list-tile-title><v-btn dark small v-model:="posts.publicacao_id" v-on:click="deletepost"> Apagar</v-btn></v-list-tile-title>
                      </v-list-tile>
                    </v-list>
                  </v-menu>
                </v-layout>
                <v-layout row wrap align-center justify-space-between>
                  <v-list-tile v-for="posts in posts " :key="posts.perfil_id" >
                  <v-flex xs10 offset-xs0 offset-lg1>
                    <v-card dark><v-flex xs12 >{{posts.texto}}</v-flex></v-card>
                  </v-flex>
                  </v-list-tile>
                </v-layout>

                <v-list class="pt-0" dense>
                  <v-container>
                    <v-layout row wrap align-center justify-space-between>
                      <v-list-tile v-for="publicacao in publicacao " :key="publicacao" >
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

                      <v-btn dark>Enviar</v-btn>
                      <br>
                    </v-layout>
                  </v-card>
                </v-list>
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
      posts:{},
      drawer: true,
      items: [
        { title: "Nome", icon: "dashboard" },
        { title: "Genero", icon: "question_answer" },
        { title: "Amigos", icon: "dashboard" },
        { title: "Data de Nascimento", icon: "dashboard" },
        { title: "biografia", icon: "question_answer" }
      ],
      publicacao: [
        { title: "Like", icon: "thumb_up" },
        { title: "Comentario", icon: "comment" },
        { title: "Partilha", icon: "share" }
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
    postar: function() {
      var id = this.posts.publicacao_id;
      console.log(id);
    },
    getPosts: function() {
      let self = this;
      axios
        .get("/api/myposts")
        .then(response => {
          console.log(response);
          self.$set(this, "posts", response.data.posts);
        })
        .catch(errors => {
          console.log(errors);
        });
    }
  },
  mounted() {
    this.getUserdata();
    this.postar();
    this.getPosts();
  }
};
</script>