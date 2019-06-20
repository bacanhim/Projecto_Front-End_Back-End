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
      <ion-list>
        <ion-item>
          <ion-label floating>Username</ion-label>
          <ion-input type="text" value>
            <ion-textarea placeholder="olaaaa"></ion-textarea>
          </ion-input>
        </ion-item>

        <ion-item>
          <ion-label floating>Password</ion-label>
          <ion-input type="password" value>
            <ion-textarea placeholder="olaaaa"></ion-textarea>
          </ion-input>
        </ion-item>

        <ion-item>
          <ion-label floating>Nome</ion-label>
          <ion-input type="text" value>
            <ion-textarea placeholder="olaaaa"></ion-textarea>
          </ion-input>
        </ion-item>

        <ion-item>
          <ion-label floating>Data de Nascimento</ion-label>
          <ion-input type="text" value>
            <ion-textarea placeholder="olaaaa"></ion-textarea>
          </ion-input>
        </ion-item>

        <ion-item>
          <ion-label floating>Genero</ion-label>
          <ion-input type="texte" value>
            <ion-textarea placeholder="olaaaa"></ion-textarea>
          </ion-input>
        </ion-item>

        <ion-item>
          <ion-label floating>Bio</ion-label>
          <ion-input type="text" value>
            <ion-textarea placeholder="olaaaa"></ion-textarea>
          </ion-input>
        </ion-item>
      </ion-list>

      <div padding>
        <ion-button color="dark">Criar Conta</ion-button>
      </div>

      <ion-text color="dark">
        <h5>Já tens uma conta?</h5>
      </ion-text>

      <p>
        <ion-button color="dark" clear>Login</ion-button>
      </p>
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