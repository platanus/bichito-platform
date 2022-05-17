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
    class="flex relative flex-col items-center px-4 pb-16 md:pb-14"
  >
    <inline-svg
      :src="require('images/bee-path-2.svg')"
      class="absolute -top-24 -left-16 z-30 h-2/4 rotate-12 md:top-0 md:-left-4 md:rotate-0 lg:left-0 lg:h-auto"
    />
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
    <inline-svg
      :src="require('images/bee-path-3.svg')"
      class="absolute -right-0 -bottom-48 z-30 h-2/4 lg:h-auto"
    />
  </section>
</template>
