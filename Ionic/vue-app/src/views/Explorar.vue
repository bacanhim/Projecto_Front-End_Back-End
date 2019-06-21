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

    <ion-content class="card-background-page">
      <ion-button color="light"  size="large" >
        <ion-icon name="search"></ion-icon>
        <ion-textarea
          prepend-icon="search"
          type="text"
          name="search"
          placeholder="Search..."
          class="field-control"
          color="dark"
        ></ion-textarea>
      </ion-button>
      <ion-card>
        <img
          src="https://prideofmadeira.pt/media/k2/items/cache/c1572c59821062c96d0fc33ad32a2983_XL.jpg"
        >
        <div class="card-title">Calheta</div>
        <div class="card-subtitle">25 Fontes</div>
      </ion-card>

      <ion-card>
        <img
          src="https://www.academiajovemvoluntario.org/Content/Regioes/Regiao_1/Imagens/Img_04062018095439.jpg"
        >
        <div class="card-title">Santana</div>
        <div class="card-subtitle">Pico Ruivo</div>
      </ion-card>

      <ion-card>
        <img
          src="https://www.visitmachico.com/images/DescobrirMachico/Descobrir_Machico_1914x736.jpg"
        >
        <div class="card-title">Machico</div>
        <div class="card-subtitle">Baia de MAchico</div>
      </ion-card>

      <ion-card>
        <img
          src="http://www.discoveringmadeira.com/media/discovering-madeira-imageLinkfunchal-bay-by-night-slideshow-1280x7202.jpg"
        >
        <div class="card-title">Fucnhal</div>
        <div class="card-subtitle">Baia do Fucnhal</div>
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
              </ion-tab-button>

              <ion-tab-button tab="Amigos">
                <ion-label>Amigos</ion-label>
                <ion-icon name="contacts"></ion-icon>
              </ion-tab-button>

              <ion-tab-button tab="Explorar">
                <ion-label>Explorar</ion-label>
                <ion-icon name="search"></ion-icon>
                <ion-badge></ion-badge>
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