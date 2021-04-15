export default {
    name: "MediaOptionsComponent",
    props: ['currentMediaType'],
    template: `
    <div class="mediaMenu">
        <div
            :class="{ active: currentMediaType === 'movie'}"
            class="mediaOption" @click="$parent.selectMediaType('movie')">
            <button class="mediaOptionBtn"><img src="./images/movieIcon.png" alt="movies"></button>
            <h3 class="optionTitle">Movies</h3>
        </div>
        <div 
            :class="{ active: currentMediaType === 'television'}"
            class="mediaOption" @click="$parent.selectMediaType('television')" >
            <button class="mediaOptionBtn"><img src="./images/tvIcon.png" alt="television"></button>
            <h3 class="optionTitle">TV Shows</h3>
        </div>
        <div 
            :class="{ active: currentMediaType === 'music'}"
            class="mediaOption" @click="$parent.selectMediaType('music')"  >
            <button class="mediaOptionBtn"><img src="./images/musicIcon.png" alt="music"></button>
            <h3 class="optionTitle">Music</h3>
        </div>
    </div>
    `
}