export default {
    name: "FooterComponent",

    template: `
    <footer id="footer">
    <div class="footer-group-wrap">
        <div class="mainLogo"><img src='/images/mainLogo.png'></div>
        <div class="footerSocials">INSERT SOCIALS HERE</div>
    </div>
    <nav id="bottomNav">
        <ul class="navItems">
            <li class="navItem"><a href="#">Terms of Use</a></li>
            <li class="navItem"><a href="#">Privacy</a></li>
            <li class="navItem"><a href="#">Legal</a></li>
        </ul>
    </nav>
    <div>
        <h2 class="copywrite">© Roku Flashback 2020</h2>
        <button class="backToTop">
            <a href="#">Back to Top</a>
        </button>
    </div>
    </footer>
    `
}