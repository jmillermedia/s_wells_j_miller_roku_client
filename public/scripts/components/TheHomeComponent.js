import MediaOptionsComponent from './MediaOptionsComponent.js';
import MediaCarouselComponent from './MediaCarouselComponent.js';

export default {
    name: "TheHomeComponent",

    props: ['currentuser'],

    components: {

        mediaOptionsComponent: MediaOptionsComponent,
        mediaCarouselComponent: MediaCarouselComponent
    },

    template: `
     <div id="pageWrapper">
        <div class=" mediaPreview">
            <div class=" media-container info-Wrap">
                <h4 class="media-title">{{currentMediaDetails.movies_title}}</h4>
                <p class="media-details" v-html="currentMediaDetails.movies_storyline"></p>
                <span class="media-time">{{currentMediaDetails.movies_runtime}}</span>
                <span class="media-year">Released in {{currentMediaDetails.movies_year}}</span>
            </div>

            
                <video autoplay controls muted :src="'video/' + currentMediaDetails.movies_trailer" class="fs-video"></video>
            
        </div>
        
        <media-options-component :currentMediaType="currentMediaType"></media-options-component>
        <ul class="media-genres">
            <li>
                <a href="action">Action</a>
            </li>
            <li>
                <a href="comedy">Comedy</a>
            </li>
            <li>
                <a href="family">Family</a>
            </li>
            <li>
                <a href="fantasyr">Fantasy</a>
            </li>
            <li>
                <a href="all">All</a>
            </li>
        </ul>
        <media-carousel-component 
            v-if="currentMediaType === null || currentMediaType === 'movie'"
            v-for="genre in movieGenres" 
            :genre="genre" 
            media-type="movie"></media-carousel-component>
        <media-carousel-component 
            v-if="currentMediaType === null || currentMediaType === 'television'"
            v-for="genre in televisionGenres" 
            :genre="genre" 
            media-type="television"></media-carousel-component>
        <media-carousel-component 
            v-if="currentMediaType === null || currentMediaType === 'music'"
            v-for="genre in musicGenres" 
            :genre="genre" 
            media-type="music"></media-carousel-component>
        <!-- <media-carousel-component v-for="genre in genres" :genre="genre"></media-carousel-component>
        <media-carousel-component v-for="genre in genres" :genre="genre"></media-carousel-component> -->
    
    <div class="container">               

        <div class="row"> <!-- 2-up for nav and media info -->
            <!-- <nav class="col-12 col-sm-3 side-nav">
                <ul class="media-type">
                    <li v-for="media in mediaTypes" :data-type="media.description">
                        <span>
                            <i v-bind:class="[media.iconClass]"></i>
                        </span>

                        <span class="d-none d-md-block">{{ media.description }}</span>
                    </li>
                </ul>
            </nav> -->

            <div class="col-12 col-sm-9 media-info">
                <!-- genres for video -->
              

                <div class="thumb-wrapper clearfix">
                    <img v-for="media in retrievedMedia" :src="'images/video/' + media.movies_cover" alt="media thumb" class="img-thumbnail rounded float-left media-thumb" @click="switchCurrentMedia(media)">
                </div>
            </div>
        </div> <!-- end 2-up for media info -->
    </div>
    </div>

    `,

    data() {
        return {
            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: {},

            // could add more media types here in future
            mediaTypes: [
                { iconClass: "fas fa-headphones", description: "audio" },
                { iconClass: "fas fa-film", description: "video" },
                { iconClass: "fas fa-tv", description: "television" }
            ],

            retrievedMedia: [],
            genres: [],
            movieGenres: [],
            televisionGenres: [],
            musicGenres: [],

            currentMediaType: null
        }
    },

    created: function() {
        this.loadMedia(null, 'movies');
        this.getGenres();
        this.$emit('setuser', this.currentuser);
    },

    methods: {
        selectMediaType(mediaType) {
            this.currentMediaType = mediaType
        },
        getGenres() {
            fetch('/api/genres/movie')
                .then(res => res.json())
                .then(data => {
                    this.movieGenres = data
                })
                .catch((err) => console.error(err));
            fetch('/api/genres/television')
                .then(res => res.json())
                .then(data => {
                    this.televisionGenres = data
                })
                .catch((err) => console.error(err));
            fetch('/api/genres/music')
                .then(res => res.json())
                .then(data => {
                    this.musicGenres = data
                })
                .catch((err) => console.error(err));
        },
        loadMedia(filter, mediaType) {
            // fetch data here
            let url = (filter == null) ? `/api/${mediaType}` : `/api/${mediaType}/${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.retrievedMedia = data;

                    // pick a ransom media object from the array
                    this.currentMediaDetails = data[Math.floor(Math.random() * data.length)];
                })
                .catch((err) => console.error(err));
        },

        switchCurrentMedia(media) {
            this.currentMediaDetails = media;
        }
    }
}