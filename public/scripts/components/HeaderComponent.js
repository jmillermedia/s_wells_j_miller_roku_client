export default {
    name: "HeaderComponent",

    props: ["current-user", "is-admin"],
    updated() {
        console.log(this.currentUser)
    },
    template: `
    <header class="header">

    <div class="mainLogo"><router-link to="/home"><img src="/images/MainLogo.png"></router-link></div>
    <nav id="topNav">
        <ul class="navItems">           
            <li class="navItem"><router-link to="/movies">Movies</router-link></li>
            <li class="navItem"><router-link to="/tv-shows">TV Shows</router-link></li>
            <li class="navItem"><router-link to="/music">Music</router-link></li>

        </ul>
        <ul class="userControls" v-if="currentUser">
            <li v-if="currentUser.user_avatar">
                <img class="small-avatar-rounded" 
                     :src='"images/" + currentUser.user_avatar' 
                     alt="User Avatar">
            </li>
            <li v-if="isAdmin"><i class="fas fa-cog"></i></li>
            <li @click="$parent.logout()"><i class="fas fa-power-off"></i></li>
		</ul>
    </nav>
    <!-- <div class="userImage"><img src="/images/user.png"></div> -->
    </header>
    `
}