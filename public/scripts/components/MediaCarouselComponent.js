import PosterComponent from './PosterComponent.js';

const { VueperSlides, VueperSlide } = vueperslides;

export default {
    name: "MediaCarouselComponent",
    props: ['genre', 'mediaType'],
    components: {
        'poster-component': PosterComponent,
        VueperSlides,
        VueperSlide
    },
    data: function() {
        return {
            media: []
        }
    },
    created() {
        switch (this.mediaType) {
            case 'music':
                this.getMusic();
                break;
            case 'movie':
                this.getMovies();
                break;
            case 'television':
                this.getTelevision();
                break;
        }
        if (this.mediaType === 'music') {
            this.getMusic()
        }
        // let url = '';

        // if (this.genre.name.indexOf('Music') >= 0) {
        //     url = `/api/music/genre/${this.genre.genre_id}`;
        // } else {
        //     return;
        // }

        // fetch(url)
        //     .then(res => res.json())
        //     .then(data => {
        //         this.media = data;
        //     });
    },
    methods: {
        getMovies() {
            fetch(`/api/movies/genre/${this.genre.genre_id}`)
                .then(res => res.json())
                .then(data => {
                    this.media = data.map(movie => {
                        movie.ID = movie.movies_id;
                        return movie;
                    });
                })
                .catch((err) => console.error(err));
        },
        getTelevision() {
            fetch(`/api/television/genre/${this.genre.genre_id}`)
                .then(res => res.json())
                .then(data => {
                    this.media = data;
                })
                .catch((err) => console.error(err));
        },
        getMusic() {
            console.log(this.genre)
            fetch(`/api/music/genre/${this.genre.ID}`)
                .then(res => res.json())
                .then(data => {
                    this.media = data.map(music => {
                        music.title = music.music_title
                        return music;
                    });
                })
                .catch((err) => console.error(err));
        },
        handleMediaView(item) {
            this.$router.push(`/view/${this.mediaType}/${item.ID}`)
        }
    },
    template: `
    <section class="mediaList">
        <h2 class="mediumTitle">{{genre.genre_name}}</h2>
        <vueper-slides
            class="no-shadow"
            :visible-slides="4"
            :slide-ratio="1 / 4"
            :dragging-distance="70">
            <vueper-slide v-for="item in media" :key="item.ID" :image='"./images/" + item.cover' @click.native="handleMediaView(item)" />
        </vueper-slides>
        <ul class="mediaCarousel">
            <!-- <poster-component  :poster="item"></poster-component> -->
            <!-- <li class="mediaPiece" v-for="cover in media">
                <a href="# "><img src="./images/placeholder.png" alt="cover art"></a>
            </li>
            <li class="mediaPiece">
                <a href="#"><img src="./images/placeholder.png" alt="cover art"></a>
            </li>
            <li class="mediaPiece">
                <a href="#"><img src="./images/placeholder.png" alt="cover art"></a>
            </li>
            <li class="mediaPiece">
                <a href="#"><img src="./images/placeholder.png" alt="cover art"></a>
            </li> -->
        </ul>
    </section>
    `
}