export default {
    name: "TheLoginCompnent",

    template:
        `
    <section>
        <h2>
            This is the login component
        </h2>

        <input type="text" placeholder="username" v-model="username">
        <input type="password" placeholder="password" v-model="password">

        <input @click="storeCreds" type="submit" value="save">
    </section>
    `,

    data: function() {
        return {
            username: "",
            password: ""
        }
    },

    methods: {
        storeCreds() {
            window.localStorage.setItem("creds", JSON.stringify({name: this.username, pword: this.password}));
        }
    }
}