<script setup lang='ts'>
import PostCard from './post-card.vue';

const posts = [
  { id: 1, variant: 'left', title: 'Bienvenida 2019' },
  { id: 2, variant: 'center', title: 'Visita a colegio 2021', bgCards: true },
  { id: 3, variant: 'right', title: 'Visita a colegio 2021' },
];

</script>

<template>
  <section class="flex relative flex-col items-center px-4 pb-16 md:pb-14">
    <img
      :src="require('../../../assets/images/bee-path-2.svg')"
      class="z-30 h-2/3 rotate-12 md:rotate-0 absolute -top-12 md:top-0 -left-16 md:-left-4 lg:left-0 md:h-auto"
    >
    <div class="mt-28 w-[80%] md:grid md:grid-cols-3">
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
      class="z-30 h-2/3 absolute -right-64 md:-right-48 lg:right-0 -bottom-32 md:h-auto"
    >
  </section>
</template>
