export default {
    name: 'TheLoginComponent',
    template: `
        <div class="container">
            <div class="jumbotron roku-jumbotron">
                <h1 class="bigTitle">Welcome to Flashback!</h1>
                <p class="text">Before revisiting your favourite movies, tv shows or music from yesteryear, please log in with a valid username and password.</p>
               
                <form>
                    <div class="input">
                        <div>
                            <label class="sr-only" for="inlineFormInputName">Name</label>
                            <input v-model="input.username" type="text" class="form-control" id="inlineFormInputName" placeholder="username" required>
                        </div>

                        <div class="input">
                            <label class="sr-only" for="inlineFormPassword">Name</label>
                            <input v-model="input.password" type="password" class="form-control" id="inlineFormPassword" placeholder="password" required>
                        </div>

                        <div >
                            <button v-on:click.prevent="login()" type="submit" class="btn">Login</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    `,

    data() {
        return {
            input: {
                username: "",
                password: ""
            },

        }
    },

    methods: {
        login() {
            // check for valid input
            if (this.input.username != "" && this.input.password != "") {
                // do login process
                let loginData = JSON.stringify({ username: this.input.username, password: this.input.password })

                let url = `/ums/admin/login`;

                fetch(url, {
                        method: 'POST',
                        body: loginData,
                        headers: {
                            'Accept': 'application/json, text/plain, */*',
                            'Content-type': `application/json`
                        }
                    })
                    .then(res => res.json())
                    .then(data => {
                        if (data.message) {
                            console.warn(`user doesn't exist or something else broke`)
                        } else {
                            data.user_name = this.input.username;
                            this.$router.push('/users');
                        }
                    })
                    // .catch((err) = console.error(err));
            } else {
                console.log('a username and password needs to be entered')
            }

        }
    }
}