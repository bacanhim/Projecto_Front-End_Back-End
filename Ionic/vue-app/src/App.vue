<template>
  <div id="app">
    <ion-app>
      <ion-vue-router/>
    </ion-app>

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

              <ion-tab-button tab="definicoes">
                <ion-label>Definições</ion-label>
                <ion-icon name="settings"></ion-icon>
              </ion-tab-button>
              <ion-tab-button tab="perfil">
                <ion-label>Perfil</ion-label>
                <ion-icon name="settings"></ion-icon>
              </ion-tab-button>
            </ion-tab-bar>
          </ion-tabs>
        </ion-toolbar>
      </ion-footer>
    </div>
  </div>
</template>
<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
