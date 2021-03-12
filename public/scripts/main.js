import Vue from 'https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.esm.browser.js';
import TheMovieThumb from './components/TheMovieThumbnailComponent.js';
import HomePage from './components/TheHomePageComponent.js';
import LoginPage from './components/TheLoginComponent.js';
import Protected from './components/TheProtectedComponent.js';
// import e from 'express';

(() => {
    console.log('fired!');

    // add our Vue Router here
    const router = new VueRouter({
        routes: [
            { path: "/", component: HomePage },
            { path: "/login", component: LoginPage },

            //only access this route or section if you're logged in /authenticated
            {
                path: "/admin",
                component: Protected,
                beforeEnter: (to, from, next) => {
                    if (!vm.authenticated) {
                        next('/login');
                    } else {
                    next();
                    }
                }
            }
        ]
    })


    const vm = new Vue({
        data: {
            allMovies: [],
            message: "Hello!",
            authenticated: false,
            user: ""
        },

        created: function() {
            if (window.localStorage.getItem("creds")) {
                this.authenticated = true;
                this.user = JSON.parse(window.localStorage.getItem("creds")).name;

            fetch('api/movies')
                .then(res => res.json())
                .then(data => {
                    console.table(data);
                    this.allMovies = data;
                })
                .catch(err => console.error(err));
                }
            },

        methods: {

        },

        components: {
            moviethumb: TheMovieThumb
        },

        router
    }).$mount('#app')
})();