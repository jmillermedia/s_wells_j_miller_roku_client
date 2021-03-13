import HeroLoginComponent from './HeroLoginComponent.js';
import MediaOptionsComponent from './MediaOptionsComponent.js';
import MediaCarouselComponent from './MediaCarouselComponent.js';

export default {
    name: "TheHomePage",

    components: {
        heroLoginComponent: HeroLoginComponent,
        mediaOptionsComponent: MediaOptionsComponent,
        mediaCarouselComponent: MediaCarouselComponent
    },

    template: `
    <div id="pageWrapper">
        <hero-login-component></hero-login-component>
        <media-options-component></media-options-component>
        <media-carousel-component></media-carousel-component>
    </div>
    `
}