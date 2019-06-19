<template>
  <ion-app class="ion-page">
    <ion-header>
      <ion-toolbar>
        <ion-row>
          <ion-col align-items-start>
            <ion-title>
              <h5>IlhaMadeira</h5>
            </ion-title>
          </ion-col>
          <ion-col align-items-end>
            <ion-button ion-button color="dark" round>
              <ion-icon name="person"></ion-icon>
            </ion-button>
          </ion-col>
        </ion-row>
      </ion-toolbar>
    </ion-header>
    <ion-content>
      <ion-card color="light">
        <ion-list>
          <ion-item>
            <ion-avatar item-start>
              <img
                src="https://pbs.twimg.com/profile_images/971557554177347584/NNowGsXX_400x400.jpg"
              >
            </ion-avatar>
            <h2>Gil Veloza</h2>
          </ion-item>
          <img src="http://tiny.cc/z8di8y">
          <ion-card-content color="light">
            <p>Gosto de RedBull!!!!!!!!!</p>
          </ion-card-content>
        </ion-list>
        <ion-row>
          <ion-col>
            <ion-button icon-start color="dark" small>
              <ion-icon name="thumbs-up"></ion-icon>
              <div>12 likes</div>
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

        <ion-item>
          <ion-avatar item-start>
            <img src="http://tiny.cc/f5di8y">
          </ion-avatar>
          <h2>Fernando Nunes</h2>
          <p>1 hora atras</p>
        </ion-item>

        <img src="http://tiny.cc/z8di8y">

        <ion-card-content>
          <p>Gosto de RedBull!!!!!!!!!</p>
        </ion-card-content>

        <ion-row>
          <ion-col>
            <ion-button icon-start color="dark" small>
              <ion-icon name="thumbs-up"></ion-icon>
              <div>12 likes</div>
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
      </ion-card>
    </ion-content>
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

            <ion-tab-button tab="definicoes">
              <ion-label>Definições</ion-label>
              <ion-icon name="settings"></ion-icon>
            </ion-tab-button>
          </ion-tab-bar>
        </ion-tabs>
      </ion-toolbar>
    </ion-footer>
  </ion-app>
</template>

<script>
export default {
  name: "home"
};
</script>

<style>
.titleLeft {
  -webkit-padding-start: 0;
  padding-inline-start: 0;
}
</style>