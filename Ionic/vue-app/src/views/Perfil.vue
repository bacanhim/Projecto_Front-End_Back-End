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