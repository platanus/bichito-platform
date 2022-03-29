import { createApp } from 'vue';
import './css/application.css';


document.addEventListener('DOMContentLoaded', () => {
  const app = createApp({
    components: {
    },
  });

  app.mount('#vue-app');

  return app;
});
