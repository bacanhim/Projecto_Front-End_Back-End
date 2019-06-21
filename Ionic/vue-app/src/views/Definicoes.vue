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
      <ion-list no-border>
        <ion-list-header>Conta</ion-list-header>

        <ion-item>
          <ion-icon name="planet" item-start></ion-icon>Alterar Foto
        </ion-item>

        <ion-item>
          <ion-toggle checked="false"></ion-toggle>
          <ion-label>Notificações</ion-label>
          <ion-icon name="notifications" item-start></ion-icon>
        </ion-item>

        <ion-item>
          <ion-icon name="megaphone" item-start></ion-icon>Anuncios
        </ion-item>

        <ion-item>
          <ion-icon name="logo-bitcoin" item-start></ion-icon>Pagos
        </ion-item>
      </ion-list>

      <ion-list>
        <ion-list-header>Atividade</ion-list-header>

        <ion-item>
          <ion-icon name="time" item-start></ion-icon>Historial
        </ion-item>

        <ion-item>
          <ion-toggle checked="true"></ion-toggle>
          <ion-label>Mostrar localização</ion-label>
          <ion-icon name="locate" item-start></ion-icon>
        </ion-item>

        <ion-item>
          <ion-icon name="heart" item-start></ion-icon>Gostos
        </ion-item>
      </ion-list>

      <ion-list>
        <ion-list-header>Social</ion-list-header>

        <ion-item>
          <ion-icon name="people" item-start></ion-icon>Amigos Chegados
          <ion-note item-end></ion-note>
        </ion-item>

        <ion-item>
          <ion-icon name="person-add" item-start></ion-icon>Encontra Novos Amigos
          <ion-note item-end></ion-note>
        </ion-item>

        <ion-item>
          <ion-icon name="nuclear" item-start></ion-icon>Bloqueados
          <ion-note item-end></ion-note>
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
                <ion-badge></ion-badge>
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