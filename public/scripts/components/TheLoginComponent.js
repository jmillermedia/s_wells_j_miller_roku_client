export default {
    name: 'TheLoginComponent',
    template: `
        <div class="container">
            <div class="jumbotron roku-jumbotron">
                <h1 class="display-4">Welcome to Flashback!</h1>
                <p class="lead">Before revisiting your favourite movies, tv shows or music from yesteryear, please log in with a valid username and password.</p>
                <hr class="my-4">
                <form>
                    <div class="form-row align-items-center">
                        <div class="col-md-3 my-1">
                            <label class="sr-only" for="inlineFormInputName">Name</label>
                            <input v-model="input.username" type="text" class="form-control" id="inlineFormInputName" placeholder="username" required>
                        </div>

                        <div class="col-md-3 my-1">
                            <label class="sr-only" for="inlineFormPassword">Name</label>
                            <input v-model="input.password" type="password" class="form-control" id="inlineFormPassword" placeholder="password" required>
                        </div>

                        <div class="col-auto my-1">
                            <button v-on:click.prevent="login()" type="submit" class="btn btn-primary">Go!</button>
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
            if(this.input.username !="" && this.input.password !="") {
                // do login process
                let loginData = JSON.stringify({username: this.input.username, password: this.input.password})

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
                        this.$router.replace({name: 'users'});
                    }
                })
                // .catch((err) = console.error(err));
            } else {
                console.log('a username and password needs to be entered')
            }

        }
    }
}