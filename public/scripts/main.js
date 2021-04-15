import TheMovieThumb from './components/TheMovieThumbnailComponent.js';
import HomePage from './components/TheHomePageComponent.js';
import HeaderComponent from './components/HeaderComponent.js';
import HomeComponent from './components/TheHomeComponent.js';

import FooterComponent from './components/FooterComponent.js';
import LoginPage from './components/TheLoginComponent.js';
import Protected from './components/TheProtectedComponent.js';
import AllUsers from './components/TheAllUsersComponent.js';
// import e from 'express';

(() => {
    console.log('fired!');

    // Register VueRouter plugin with Vue
    // https://stackoverflow.com/questions/50438605/vue-warn-unknown-custom-element-router-view-did-you-register-the-compone

    Vue.use(VueRouter);

    // add our Vue Router here
    const router = new VueRouter({
        routes: [{
                path: "/",
                name: 'root',
                component: LoginPage,
                beforeEnter: (to, from, next) => {
                    //if you're authenticated (set in localstorage), then go to the home page.
                    if (localStorage.getItem('cacheduser')) {
                        let user = JSON.parse(localStorage.getItem('cacheduser'));
                    } else {
                        next();
                    }
                }
            },
            { path: "/login", component: LoginPage },
            { path: "/users", name: 'users', component: AllUsers },
            { path: '/home', name: 'home', component: HomeComponent, props: true }

            //only access this route or section if you're logged in /authenticated
            // {
            //     path: "/admin",
            //     component: Protected,
            //     beforeEnter: (to, from, next) => {
            //         if (!vm.authenticated) {
            //             next('/login');
            //         } else {
            //             next();
            //         }
            //     }
            // }
        ]
    })


    const vm = new Vue({
        data: {
            allMovies: [],
            message: "Hello!",
            authenticated: false,
            user: "",
            isAdmin: false,
            currentUser: JSON.parse(window.localStorage.getItem('cacheduser')) || undefined
        },
        watch: {
            currentUser: (oldvalue, newvalue) => console.log(oldvalue, newvalue)
        },

        created: function() {
            let cachedUser = window.localStorage.getItem('cacheduser');
            if (cachedUser) {
                this.cachedUser = true;
                console.log(cachedUser)
            }
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
            logout() {
                //remove the cached user from local storage, if it exists
                if (localStorage.getItem('cacheduser')) {
                    localStorage.removeItem('cacheduser');
                }

                // return to log in page
                this.$router.push({ name: 'root' });
                this.currentUser = undefined;
            },

            authenticateuser(user) {
                // debugger;
                console.log('YEEEEEEEEEEEHAAAAW', user);
                this.currentUser = user;
            }
        },
        components: {
            'footer-component': FooterComponent,
            'header-component': HeaderComponent
        },
        router
    }).$mount('#app')
})();