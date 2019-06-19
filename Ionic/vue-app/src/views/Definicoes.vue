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
  <ion-list no-border>

    <ion-list-header>
      Classes
    </ion-list-header>

    <ion-item>
      <ion-icon name='planet' item-start></ion-icon>
      Astronomy
      <ion-note item-end>
      To the moon
      </ion-note>
    </ion-item>

    <ion-item>
      <ion-toggle checked="false"></ion-toggle>
      <ion-label>
        Muggle Studies
      </ion-label>
      <ion-icon name='body' item-start></ion-icon>
    </ion-item>

    <ion-item>
      <ion-icon name='leaf' item-start></ion-icon>
      Herbology
      <ion-icon name='rose' item-end color="secondary"></ion-icon>
    </ion-item>

    <ion-item>
      <ion-icon name='flask' item-start></ion-icon>
      Potions
      <ion-note item-end>
      Poisonous
      </ion-note>
    </ion-item>



  </ion-list>


  <ion-list>

    <ion-list-header>
      Activities
    </ion-list-header>

    <ion-item>
      Incantation
      <ion-icon name='color-wand' item-start></ion-icon>
      <ion-note item-end>Crucio!</ion-note>
    </ion-item>

    <ion-item>
      <ion-toggle checked="true"></ion-toggle>
      <ion-label>
        Quidditch Practice
      </ion-label>
      <ion-icon name='brush' item-start></ion-icon>
    </ion-item>


    <ion-item>
      <ion-icon name='wine' item-start></ion-icon>
      Mead Drinking
      <ion-note item-end>Yes please</ion-note>
    </ion-item>


  </ion-list>

  <ion-list>

    <ion-list-header>
      Friends
    </ion-list-header>

    <ion-item>
      <ion-icon name='flash' item-start></ion-icon>
      Harry
      <ion-note item-end>The boy who lived</ion-note>
    </ion-item>

    <ion-item>
      <ion-icon name='book' item-start></ion-icon>
      Hermoine
      <ion-note item-end>Muggle-born</ion-note>
    </ion-item>

    <ion-item>
      <ion-icon name='beer' item-start></ion-icon>
      Ron
      <ion-note item-end>Brilliant!</ion-note>
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