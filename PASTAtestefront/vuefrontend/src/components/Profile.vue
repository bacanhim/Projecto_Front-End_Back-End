<template>
  <v-app>
    <Navbar/>
    <v-card class="application--wrap">
      <v-layout row wrap justify-space-between>
        <v-flex xs2>
          <v-card height="350px" width="300px">
            <v-navigation-drawer v-model="drawer" permanent absolute>
              <v-toolbar flat class="transparent">
                <v-list class="pa-0">
                  <v-list-tile avatar>
                    <v-list-tile-avatar>
                      <img src="https://randomuser.me/api/portraits/men/85.jpg">
                    </v-list-tile-avatar>

                    <v-list-tile-content>
                      <v-list-tile-title>John Leider</v-list-tile-title>
                    </v-list-tile-content>
                  </v-list-tile>
                </v-list>
              </v-toolbar>

              <v-list class="pt-0" dense>
                <v-divider></v-divider>

                <v-list-tile v-for="item in items" :key="item.title" @click>
                  <v-list-tile-action>
                    <v-icon>{{ item.icon }}</v-icon>
                  </v-list-tile-action>

                  <v-list-tile-content>
                    <v-list-tile-title>{{ item.title }}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
              </v-list>
            </v-navigation-drawer>
          </v-card>
        </v-flex>
        <v-flex xs2 md5>
          <v-card dark color="grey" class="movecenter">
            <v-textarea name="input-7-1" box auto-grow value="Escreva algo"></v-textarea>
            <v-layout row wrap justify-space-between>
              <v-btn class="white--text" color="black accent-4" depressed>Foto/video</v-btn>
              <v-btn class="white--text" color="black accent-4" depressed>Enviar</v-btn>
            </v-layout>
          </v-card>
        </v-flex>

        <v-flex xs2>
          <v-card dark color="grey" class="movecenter">
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
          </v-card>
        </v-flex>
      </v-layout>
      <v-container>
        <v-layout row justify-center>
          <v-flex xs8>
            <v-card dark color="Grey" class="movecenter">
              <v-card>asfdsagfasf</v-card>
              <v-list class="pt-0" dense>
                <v-layout row wrap align-center justify-space-between>
                  <v-list-tile v-for="publicacao in publicacao " :key="publicacao.title" @click>
                    <v-list-tile-action>
                      <v-icon>{{ publicacao.icon }}</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                      <v-list-tile-title>{{ publicacao.title }}</v-list-tile-title>
                    </v-list-tile-content>
                  </v-list-tile>
                </v-layout>
              </v-list>
            </v-card>
            <v-card dark color="Grey" class="movecenter">
              <v-layout row wrap align-center justify-space-between>
                <v-flex xs8>
                  <v-text-field
                    prepend-icon="comment"
                    type="text"
                    name="comment"
                    placeholder="Comentario..."
                    class="field-control"
                    color="black accent-4"
                  ></v-text-field>
                </v-flex>
                <v-btn flat>Enviar</v-btn>
              </v-layout>
            </v-card>
          </v-flex>
        </v-layout>
        
      </v-container>
    </v-card> 
  </v-app>
</template>
<script>
import Navbar from "../components/Navbar";
export default {
  components: {
    Navbar
  },
  data() {
    return {
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
  }
};
</script>
