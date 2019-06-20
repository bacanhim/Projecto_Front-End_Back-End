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
      <ion-item>
        <ion-img src="https://pbs.twimg.com/profile_images/971557554177347584/NNowGsXX_400x400.jpg"></ion-img>
      </ion-item>
      <ion-list>
        <ion-item>
          <ion-label>nome</ion-label>
        </ion-item>
        <ion-item>
          <ion-label>data</ion-label>
        </ion-item>
        <ion-item>
          <ion-label>bio</ion-label>
        </ion-item>
        <ion-item>
          <ion-label>genero</ion-label>
        </ion-item>
        <ion-item>
          <ion-label>o que falta</ion-label>
        </ion-item>
      </ion-list>
    </ion-content>
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