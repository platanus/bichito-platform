import { createApp } from 'vue';
import './css/application.css';

import NavBar from './components/shared/nav-bar.vue';
import BichitoButton from './components/shared/bichito-button.vue';
import LandingHero from './components/landing/landing-hero.vue';
import LandingChallenges from './components/landing/landing-challenges.vue';
import LandingPosts from './components/landing/landing-posts.vue';
import LandingInvitation from './components/landing/landing-invitation.vue';
import MemberCard from './components/landing/member-card.vue';
import MembersSection from './components/landing/members-section.vue';

document.addEventListener('DOMContentLoaded', () => {
  const app = createApp({
    components: {
      NavBar,
      LandingHero,
      LandingChallenges,
      LandingPosts,
      LandingInvitation,
      MembersSection,
    },
  });

  app.component('BichitoButton', BichitoButton);
  app.component('MemberItem', MemberCard);
  app.mount('#vue-app');

  return app;
});
