<template>
  <ion-app class="ion-page">
    <ion-header>
      <ion-toolbar>
        <ion-row>
          <ion-col>
            <ion-title>
              <h5>
                <img src="..\assets\icon.png">  IlhaMadeira
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
  </ion-app>
</template>

<script>
</script>

<style>
.titleLeft {
  -webkit-padding-start: 0;
  padding-inline-start: 0;
}
</style>