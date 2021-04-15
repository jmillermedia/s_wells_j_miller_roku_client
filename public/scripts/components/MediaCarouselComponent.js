export default {
    name: "MediaCarouselComponent",
    props: ['genre', 'mediaType'],
    data: function() {
        return {
            media: []
        }
    },
    created() {
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
    template: `
    <section class="mediaList">
        <h2 class="mediumTitle">{{genre.genre_name}}</h2>
        <ul class="mediaCarousel">
            <li class="mediaPiece">
                <a href="#"><img src="./images/placeholder.png" alt="cover art"></a>
            </li>
            <li class="mediaPiece">
                <a href="#"><img src="./images/placeholder.png" alt="cover art"></a>
            </li>
            <li class="mediaPiece">
                <a href="#"><img src="./images/placeholder.png" alt="cover art"></a>
            </li>
            <li class="mediaPiece">
                <a href="#"><img src="./images/placeholder.png" alt="cover art"></a>
            </li>
        </ul>
    </section>
    `
}