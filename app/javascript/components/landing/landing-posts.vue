<script setup lang='ts'>
import { ref, onMounted } from 'vue';
import PostCard from './post-card.vue';
import postApi from '../../api/post';

const POSTS_LIMIT = 3;
const POSTS_VARIANTS = ['left', 'center', 'right'];

const posts = ref<Post[]>([]);
const loading = ref(true);
const error = ref(false);

async function getPosts() {
  try {
    const response = await postApi.get();
    posts.value = response.data.posts.slice(0, POSTS_LIMIT);
    loading.value = false;
  } catch (e) {
    error.value = true;
  }
}

onMounted(() => {
  getPosts();
});

</script>

<template>
  <section
    v-if="!loading"
    class="flex relative flex-col items-center"
  >
    <div class="flex flex-col items-center pt-28 lg:pt-48">
      <h2 class="mb-10 text-2xl font-semibold text-center text-slate-800 lg:text-4xl">
        Nuestra historia
      </h2>
      <p class="pb-10 w-9/12 lg:text-center">
        Bichito nace de una idea que surgió en la semana Platanus del año 2019,
        como una forma de aportar un granito de arena a la sociedad desde nuestras
        habilidades computinas. Se trata de un taller de introducción a la programación
        donde enseñamos fundamentos de la programación y herramientas básicas como tipos
        de datos, variables, control de flujo, funciones, strings, entre otros.
      </p>
    </div>
    <inline-svg
      :src="require('images/bee-path-2.svg')"
      class="absolute top-12 right-0 scale-50 origin-top-right md:scale-75 lg:scale-100"
    />
    <div class="mt-12 w-[80%] md:grid md:grid-cols-3 md:mt-24">
      <post-card
        v-for="(post, id) in posts "
        :key="`news-card-${post.id}`"
        :variant="POSTS_VARIANTS[id]"
        :title="post.title"
        :image-url="post.imageUrl"
      />
    </div>
  </section>
</template>
