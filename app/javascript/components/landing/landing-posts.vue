<script setup lang='ts'>
import { ref, computed, onMounted } from 'vue';
import PostCard from './post-card.vue';
import postApi from '../../api/post';


const POSTS_LIMIT = 3;
const POSTS_VARIANTS = ['left', 'center', 'right'];

const posts = ref(null);
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
    class="flex relative flex-col items-center px-4 pb-16 md:pb-14"
  >
    <img
      :src="require('../../../assets/images/bee-path-2.svg')"
      class="z-30 h-2/3 rotate-12 md:rotate-0 absolute -top-12 md:top-0 -left-16 md:-left-4 lg:left-0 md:h-auto"
    >
    <div class="mt-28 w-[80%] md:grid md:grid-cols-3">
      <post-card
        v-for="(post, id) in posts "
        :key="`news-card-${post.id}`"
        :variant="POSTS_VARIANTS[id]"
        :title="post.title"
        :image-url="post.imageUrl"
        :bg-cards="post.bgCards"
      />
    </div>
    <img
      :src="require('../../../assets/images/bee-path-3.svg')"
      class="z-30 h-2/3 absolute -right-64 md:-right-48 lg:right-0 -bottom-32 md:h-auto"
    >
  </section>
</template>
