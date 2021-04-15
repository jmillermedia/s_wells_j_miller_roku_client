const PosterComponent = {
    name: 'poster-component',
    props: [
        'poster'
    ],
    template: `
    <li class="mediaPiece" :id="poster.cover">
        <a href="#"><img :src='"./images/" + poster.cover' :alt="poster.cover"></a>
    </li>
    `
};

export default PosterComponent;