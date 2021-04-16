export default {
    name: 'media-view',
    data: function() {
        return {
            media: null
        }
    },
    props: {

    },
    created() {
        switch (this.$route.params.mediaType) {
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
            fetch(`/api/movies/${this.$route.params.id}`)
                .then(res => res.json())
                .then(data => {
                    this.media = data.map(movie => {
                        movie = {
                            ...movie,
                            ...this.createMediaObject(
                                movie.movies_title,
                                movie.movies_storyline,
                                movie.movies_runtime,
                                movie.movies_year
                            )
                        }
                        movie.ID = movie.movies_id;
                        return movie;
                    })[0];
                })
                .catch((err) => console.error(err));
        },
        getTelevision() {
            fetch(`/api/television/${this.$route.params.id}`)
                .then(res => res.json())
                .then(data => {
                    this.media = data.map(tv => {
                        tv = {
                            ...tv,
                            ...this.createMediaObject(
                                tv.television_title,
                                tv.television_storyline,
                                tv.television_runtime,
                                tv.television_year
                            )
                        }

                        return tv;
                    })[0];
                })
                .catch((err) => console.error(err));
        },
        getMusic() {
            fetch(`/api/music/${this.$route.params.id}`)
                .then(res => res.json())
                .then(data => {
                    this.media = data.map(music => {
                        music = {
                            ...music,
                            ...this.createMediaObject(
                                music.music_title,
                                null,
                                music.music_runtime,
                                music.music_year
                            )
                        }
                        return music;
                    })[0];
                })
                .catch((err) => console.error(err));
        },
        createMediaObject(title, details, runtime, year) {
            const structure = {
                // movies: movies_title, television: television_title, music: music_title
                title,
                // movies: movies_storyline, television: television_storyline, music: null
                details, // Don't render for Music,
                // movies: movies_runtime, television: television_runtime, music: music_runtime
                runtime,
                // movies: movies_year, television: television_year, music: music_year
                year
            }

            return structure;
        }
    },
    template: `
        <div>
            <div class="mediaPreview">
                <div class=" media-container info-Wrap">
                    <h4 class="media-title">{{media.title}}</h4>
                    <p v-if="media.details" class="media-details" v-html="media.details"></p>
                    <span class="media-time">{{media.runtime}}</span>
                    <span class="media-year">Released in {{media.year}}</span>
                </div>
                <video
                    v-if="$route.params.mediaType === 'movie'" 
                    autoplay controls muted :src="'video/' + media.movies_trailer" class="fs-video"></video>
                <video
                    v-if="$route.params.mediaType === 'television'" 
                    autoplay controls muted :src="'video/' + media.television_trailer" class="fs-video"></video>
                <audio controls
                    :src="'images/'+ media.music_track"
                    v-if="$route.params.mediaType === 'music'" 
                ></audio>

            </div>
        </div>
    `
}

const structure = {
    // movies: movies_title, television: television_title, music: music_title
    title: '',
    // movies: movies_storyline, television: television_storyline, music: null
    details: '', // Don't render for Music,
    // movies: movies_runtime, television: television_runtime, music: music_runtime
    runtime: '',
    // movies: movies_year, television: television_year, music: music_year
    year: ''
}