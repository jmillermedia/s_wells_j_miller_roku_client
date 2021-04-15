export default {
    name: "TheUserComponent",

    props: ['liveuser'],

    template: `
    
        <div class="user" @click="navToHome">
            <div class="card-body text-center">
                <img :src="'images/' + liveuser.user_avatar" class="rounded-circle img-fluid">
               
            </div>
            <p class="userTitle">{{ liveuser.user_name }}</p>
        </div>
    `,

    created: function() {
        // check if there's an avatar, if not, set it to a temporaty one.
        if (this.liveuser.user_avatar == null) {
            this.liveuser.user_avatar = "temp_avatar.jpg";
        }
    },

    methods: {
        navToHome() {
            // this should save the user to localstorage so that if they exist, they don't need to log in again
            window.localStorage.setItem('cacheduser', JSON.stringify(this.liveuser));

            //navigate to the home page
            this.$router.push({ name: "home", params: { currentuser: this.liveuser } })
        }
    }
}