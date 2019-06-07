<template>
  <v-container grid-list-md>
    <v-layout row wrap>
      <v-flex xs12>
        <v-card>
          <v-card class="mx-auto" style="max-width: 500px">
            <v-toolbar color="black accent-4" cards dark flat>
              <v-card-title class="title font-weight-regular">Sign up</v-card-title>
            </v-toolbar>
            <v-form ref="form" v-model="form" class="pa-3 pt-4">
              <v-text-field
                v-model="name"
                :rules="[rules.name]"
                box
                color="black"
                label="Name"
                type="Name"
              ></v-text-field>
              <v-text-field
                v-model="password"
                :rules="[rules.password, rules.length(10)]"
                box
                color="black"
                counter="10"
                label="Password"
                style="min-height: 96px"
                type="password"
              ></v-text-field>
              <v-text-field v-model="phone" box color="black" label="Phone number" mask="phone"></v-text-field>
              <v-text-field
                v-model="email"
                :rules="[rules.email]"
                box
                color="black"
                label="Email address"
                type="email"
              ></v-text-field>
              <v-textarea v-model="bio" auto-grow box color="black" label="Bio" rows="1"></v-textarea>
              <v-checkbox v-model="agreement" :rules="[rules.required]" color="black">
                <template v-slot:label>
                  I agree to the&nbsp;
                  <a
                    href="#"
                    @click.stop.prevent="dialog = true"
                  >Terms of Service</a>
                  &nbsp;and&nbsp;
                  <a
                    href="#"
                    @click.stop.prevent="dialog = true"
                  >Privacy Policy</a>*
                </template>
              </v-checkbox>
            </v-form>
            <v-divider></v-divider>
            <v-card-actions>
              <v-btn flat @click="$refs.form.reset()">Clear</v-btn>
              <v-spacer></v-spacer>
              <v-btn
                :disabled="!form"
                :loading="isLoading"
                class="white--text"
                color="black accent-4"
                depressed
              >Submit</v-btn>
            </v-card-actions>
            <v-dialog v-model="dialog" absolute max-width="400" persistent>
              <v-card>
                <v-card-title class="headline grey lighten-3">Legal</v-card-title>
                <v-card-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</v-card-text>
                <v-divider></v-divider>
                <v-card-actions>
                  <v-btn flat @click="agreement = false, dialog = false">No</v-btn>
                  <v-spacer></v-spacer>
                  <v-btn
                    class="white--text"
                    color="black accent-4"
                    @click="agreement = true, dialog = false"
                  >Yes</v-btn>
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
export default {
  data: () => ({
    agreement: false,
    bio: "veutify é fixe",
    dialog: false,
    email: undefined,
    name: undefined,
    form: false,
    isLoading: false,
    password: undefined,
    phone: undefined,
    rules: {
      name: v =>
        (v || "").match(/^(?=.*[a-z])(?=.*[A-Z]).+$/) ||
        "Name must contain an upper case letter and lower case",
      email: v => (v || "").match(/@/) || "Please enter a valid email",
      length: len => v =>
        (v || "").length >= len || `Invalid character length, required ${len}`,
      password: v =>
        (v || "").match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+$/) ||
        "Password must contain an upper case letter, a numeric character, and a special character",
      required: v => !!v || "This field is required"
    }
  })
};
</script>