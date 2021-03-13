export default {
    name: "MediaOptionsComponent",

    template: `
    <div class="mediaMenu">
        <div class="mediaOption">
            <button class="mediaOptionBtn"><img src="./images/movieIcon.png" alt="movies"></button>
            <h3 class="optionTitle">Movies</h3>
        </div>
        <div class="mediaOption">
            <button class="mediaOptionBtn"><img src="./images/tvIcon.png" alt="television"></button>
            <h3 class="optionTitle">TV Shows</h3>
        </div>
        <div class="mediaOption">
            <button class="mediaOptionBtn"><img src="./images/musicIcon.png" alt="music"></button>
            <h3 class="optionTitle">Music</h3>
        </div>
    </div>
    `
}