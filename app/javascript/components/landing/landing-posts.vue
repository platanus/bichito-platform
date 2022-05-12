<script setup lang='ts'>
import PostCard from './post-card.vue';

const posts = [
  { id: 1, variant: 'left', title: 'Bienvenida 2019' },
  { id: 2, variant: 'center', title: 'Visita a colegio 2021', bgCards: true },
  { id: 3, variant: 'right', title: 'Visita a colegio 2021' },
];

</script>

<template>
  <section class="flex relative flex-col items-center px-4 pb-14">
    <img
      :src="require('../../../assets/images/bee-path-2.svg')"
      class="absolute left-0"
    >
    <div class="grid grid-cols-3 mt-28 w-[80%]">
      <post-card
        v-for="post in posts "
        :key="`news-card-${post.id}`"
        :variant="post.variant"
        :title="post.title"
        :bg-cards="post.bgCards"
      />
    </div>
    <img
      :src="require('../../../assets/images/bee-path-3.svg')"
      class="absolute right-0 -bottom-24"
    >
  </section>
</template>
