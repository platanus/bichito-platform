import { createApp } from 'vue';
import VueSvgInlinePlugin from 'vue-svg-inline-plugin';
import './css/application.css';

import NavBar from './components/shared/nav-bar.vue';
import BichitoButton from './components/shared/bichito-button.vue';
import LandingHero from './components/landing/landing-hero.vue';
import LandingChallenges from './components/landing/landing-challenges.vue';
import LandingPosts from './components/landing/landing-posts.vue';
import LandingInvitation from './components/landing/landing-invitation.vue';
import MemberCard from './components/landing/member-card.vue';
import LandingMembers from './components/landing/landing-members.vue';
import LandingProgramming from './components/landing/landing-programming.vue';
import BichitoFooter from './components/shared/bichito-footer.vue';
import LandingProgram from './components/landing/landing-program.vue';
import LandingAbout from './components/landing/landing-about.vue';

document.addEventListener('DOMContentLoaded', () => {
  const app = createApp({
    components: {
      NavBar,
      LandingHero,
      LandingChallenges,
      LandingPosts,
      LandingInvitation,
      LandingMembers,
      LandingProgramming,
      BichitoFooter,
      LandingProgram,
      LandingAbout,
    },
  });

  app.component('MemberCard', MemberCard);
  app.component('BichitoButton', BichitoButton);
  app.use(VueSvgInlinePlugin);
  app.mount('#vue-app');

  return app;
});
