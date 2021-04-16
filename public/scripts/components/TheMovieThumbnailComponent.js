export default {
    name: "TheMovieThumbnailComponent",

    props: ["movie"],

    template: `
    <div class="allMovies">
        <img  :src='"images/" + movie.movies_cover' alt="movie-thumb" class="movie-thumb">
    </div>
    `
}