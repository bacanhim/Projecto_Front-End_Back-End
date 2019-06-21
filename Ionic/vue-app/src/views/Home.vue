<template>
  <ion-app class="ion-page">
    <ion-header>
      <ion-toolbar>
        <ion-row>
          <ion-col>
            <ion-title>
              <h5>
                <img src="..\assets\icon.png"> IlhaMadeira
              </h5>
            </ion-title>
          </ion-col>
        </ion-row>
      </ion-toolbar>
    </ion-header>

    <ion-content>
      <ion-card color="light">
        <ion-textarea name="input-7-1" placeholder="Escreva-algo.."></ion-textarea>
        <ion-row>
          <ion-col>
            <ion-button icon-start color="dark" small>
              <div>Foto/video</div>
            </ion-button>
          </ion-col>
          <ion-col>
            <ion-button icon-start color="dark" small>
              <div>Enviar</div>
            </ion-button>
          </ion-col>
        </ion-row>
      </ion-card>
      <ion-card color="light" v-for="posts in posts " :key="posts.user_id">
        <ion-item>
          <ion-avatar item-start>
            <img :src="posts.ava">
          </ion-avatar>
          <h2>{{posts.nome}}</h2>
          <p>1 hora atras</p>
        </ion-item>

        <img :src="posts.img">

        <ion-card-content>
          <p>{{posts.descricao}}</p>
        </ion-card-content>

        <ion-row>
          <ion-col>
            <ion-button icon-start color="dark" small>
              <ion-icon name="thumbs-up"></ion-icon>
              <div>{{posts.likes}} likes</div>
            </ion-button>
          </ion-col>
          <ion-col>
            <ion-button icon-start color="dark" small>
              <ion-icon name="text"></ion-icon>
              <div>4 Comments</div>
            </ion-button>
          </ion-col>
          <ion-col align-self-center text-center>
            <ion-note>11h ago</ion-note>
          </ion-col>
        </ion-row>
        <br>
      </ion-card>
    </ion-content>
    <br>
    <br>
    <div style="position: absolute; bottom: 0px; width: 100%">
      <ion-footer>
        <ion-toolbar>
          <ion-tabs>
            <ion-tab tab="home">Home Content</ion-tab>
            <ion-tab tab="settings">Settings Content</ion-tab>

            <ion-tab-bar slot="bottom">
              <ion-tab-button tab="/">
                <ion-label>Inicio</ion-label>
                <ion-icon name="home"></ion-icon>
                <ion-badge></ion-badge>
              </ion-tab-button>

              <ion-tab-button tab="Amigos">
                <ion-label>Amigos</ion-label>
                <ion-icon name="contacts"></ion-icon>
              </ion-tab-button>

              <ion-tab-button tab="Explorar">
                <ion-label>Explorar</ion-label>
                <ion-icon name="search"></ion-icon>
              </ion-tab-button>

              <ion-tab-button tab="perfil">
                <ion-label>Perfil</ion-label>
                <ion-icon name="contact"></ion-icon>
              </ion-tab-button>

              <ion-tab-button tab="definicoes">
                <ion-label>Definições</ion-label>
                <ion-icon name="settings"></ion-icon>
              </ion-tab-button>
            </ion-tab-bar>
          </ion-tabs>
        </ion-toolbar>
      </ion-footer>
    </div>
  </ion-app>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      posts: {}
    };
  },
  methods: {
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
    }
  },
  mounted() {
    this.getPosts();
  }
};
</script>
<style>
.titleLeft {
  -webkit-padding-start: 0;
  padding-inline-start: 0;
}
</style>