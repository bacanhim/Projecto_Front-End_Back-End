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

    <ion-content class="card-background-page">
      <ion-button flat>
        <ion-textarea
          prepend-icon="search"
          type="text"
          name="search"
          placeholder="Search..."
          class="field-control"
          color="black accent-4"
        ></ion-textarea>
      </ion-button>
      <ion-card>
        <img src>
        <div class="card-title">São Paulo</div>
        <div class="card-subtitle">41 Listings</div>
      </ion-card>

      <ion-card>
        <img src>
        <div class="card-title">Amsterdam</div>
        <div class="card-subtitle">64 Listings</div>
      </ion-card>

      <ion-card>
        <img src>
        <div class="card-title">San Francisco</div>
        <div class="card-subtitle">72 Listings</div>
      </ion-card>

      <ion-card>
        <img src>
        <div class="card-title">Madison</div>
        <div class="card-subtitle">28 Listings</div>
      </ion-card>
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