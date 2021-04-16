const PosterComponent = {
    name: 'poster-component',
    props: [
        'poster'
    ],
    template: `
    <li class="mediaPiece">
        <a href="#"><img :src='"./images/" + poster.cover' :alt="poster.cover"></a>
    </li>
    `
};

export default PosterComponent;