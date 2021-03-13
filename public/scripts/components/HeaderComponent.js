export default {
    name: "HeaderComponent",

    template: `
    <header id="header">
    <div class="mainLogo"><router-link to="/"><img src="/images/MainLogo.png"></router-link></div>
    <nav id="topNav">
        <ul class="navItems">           
            <li class="navItem"><router-link to="/movies">Movies</router-link></li>
            <li class="navItem"><router-link to="/tv-shows">TV Shows</router-link></li>
            <li class="navItem"><router-link to="/music">Music</router-link></li>

        </ul>
    </nav>
    <div class="userImage"><img src="/images/user.png"></div>
    </header>
    `
}