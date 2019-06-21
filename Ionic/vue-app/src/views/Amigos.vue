<template>
  <ion-app>
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
      <ion-list>
        <ion-item>
          <ion-avatar item-start>
            <img src="https://pbs.twimg.com/profile_images/971557554177347584/NNowGsXX_400x400.jpg">
          </ion-avatar>
          <h2>Rita</h2>
          <p></p>
        </ion-item>
        <ion-item>
          <ion-avatar item-start>
            <img src="https://pbs.twimg.com/profile_images/971557554177347584/NNowGsXX_400x400.jpg">
          </ion-avatar>
          <h2>Margarida</h2>
          <p></p>
        </ion-item>
        <ion-item>
          <ion-avatar item-start>
            <img src="https://pbs.twimg.com/profile_images/971557554177347584/NNowGsXX_400x400.jpg">
          </ion-avatar>
          <h2>Jorge</h2>
          <p></p>
        </ion-item>
        <ion-item>
          <ion-avatar item-start>
            <img src="https://pbs.twimg.com/profile_images/971557554177347584/NNowGsXX_400x400.jpg">
          </ion-avatar>
          <h2>Karina</h2>
          <p></p>
        </ion-item>
        <ion-item>
          <ion-avatar item-start>
            <img src="https://pbs.twimg.com/profile_images/971557554177347584/NNowGsXX_400x400.jpg">
          </ion-avatar>
          <h2>Santiago</h2>
          <p></p>
        </ion-item>
      </ion-list>
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
              </ion-tab-button>

              <ion-tab-button tab="Amigos">
                <ion-label>Amigos</ion-label>
                <ion-icon name="contacts"></ion-icon>
                <ion-badge></ion-badge>
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