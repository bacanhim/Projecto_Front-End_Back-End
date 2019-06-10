<template>
  <v-container grid-list-md>
    <v-layout row wrap>
      <v-flex xs12>
        <v-card>
          <v-card class="mx-auto" style="max-width: 500px">
            <v-toolbar color="black accent-4" cards dark flat>
              <v-card-title class="title font-weight-regular">Registar</v-card-title>
            </v-toolbar>
            <v-form ref="form" v-model="form" class="pa-3 pt-4">
              <v-text-field
                v-model="sname"
                :rules="[rules.name]"
                box
                color="black"
                label="Nome"
                type="Name"
              ></v-text-field>
              <v-text-field
                v-model="spassword"
                :rules="[rules.password, rules.length(10)]"
                box
                color="black"
                counter="10"
                label="Palavra-passe"
                style="min-height: 96px"
                type="password"
              ></v-text-field>
              <v-text-field
                v-model="sphone"
                box
                color="black"
                label="Numero de telemovel"
                mask="## #### ###"
              ></v-text-field>
              <v-text-field
                v-model="semail"
                :rules="[rules.email]"
                box
                color="black"
                label="E-mail"
                type="email"
              ></v-text-field>
              <v-textarea v-model="sbio" auto-grow box color="black" label="Bio" rows="1"></v-textarea>
              <v-checkbox v-model="agreement" :rules="[rules.required]" color="black">
                <template v-slot:label>
                  Eu concordo&nbsp;
                  <a
                    href="#"
                    @click.stop.prevent="dialog = true"
                  >Termos de serviço</a>
                  &nbsp;e&nbsp;
                  <a
                    href="#"
                    @click.stop.prevent="dialog = true"
                  >Politicas de privacidade</a>*
                </template>
              </v-checkbox>
            </v-form>
            <v-divider></v-divider>
            <v-card-actions>
              <v-btn flat @click="$refs.form.reset()">Limpar formulário</v-btn>
              <v-spacer></v-spacer>
              <v-btn
                v-on:click="signup"
                :disabled="!form"
                :loading="isLoading"
                class="white--text"
                color="black accent-4"
                depressed
              >Registar</v-btn>
            </v-card-actions>
            <v-dialog v-model="dialog" absolute max-width="400" persistent>
              <v-card>
                <v-card-title class="headline grey lighten-3">Legal</v-card-title>
                <v-card-text>
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                  culpa qui officia deserunt mollit anim id est laborum.
                </v-card-text>
                <v-divider></v-divider>
                <v-card-actions>
                  <v-btn flat @click="agreement = false, dialog = false">Nao</v-btn>
                  <v-spacer></v-spacer>
                  <v-btn
                    class="white--text"
                    color="black accent-4"
                    @click="agreement = true, dialog = false"
                  >Sim</v-btn>
                </v-card-actions>
              </v-card>
            </v-dialog>
          </v-card>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>
<script>
import router from "../router";
import axios from "axios";
export default {
  data: () => ({
    agreement: false,
    bio: "",
    dialog: false,
    email: undefined,
    name: undefined,
    form: false,
    isLoading: false,
    password: undefined,
    phone: undefined,
    rules: {
      name: v =>
        (v || " ").match(/^(?=.*[a-z])(?=.*[A-Z]).+$/) ||
        "O nome deve conter uma letra maiucula",
      email: v => (v || "").match(/@/) || "Introduza um endereço de e-mail valido",
      length: len => v =>
        (v || " ").length >= len || "A palavra-passe deve conter no minimo 10 caracteres.",
      password: v =>
        (v || " ").match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+$/) ||
        "A password deve conter uma letra maiuscula, um numero, e um caracter especial.",
      required: v => !!v || "Tem de aceitar politicas de privacidade e termos de serviço para poder registar-se."
    }
  }),
  methods: {
    signup: function() {
      let data = {
        nome: this.sname,
        bio:this.sbio,
        email: this.semail,
        password: this.spassword,
        numero:this.sphone
      };
      console.log(data);
      axios
        .post("/api/signup", data)
        .then(response => {
          console.log(response);
          router.push("/home");
        })
        .catch(errors => {
          console.log(errors.response.data[2].message);
          alert(errors.response.data[2].message);
        });
    }
  }
};
</script>