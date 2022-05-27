<script setup lang='ts'>
import { ref, onMounted } from 'vue';
import ChallengeCard from './challenge-card.vue';
import challengeApi from '../../api/challenge';

const challenges = ref<Challenge[]>([]);
const loading = ref(true);
const error = ref(false);
const CHALLENGES_LIMIT = 3;
const SHOW_MORE_CHALLENGES = process.env.SHOW_MORE_CHALLENGES === 'true';

async function getChallenges() {
  try {
    const response = await challengeApi.get();
    challenges.value = response.data.challenges.slice(0, CHALLENGES_LIMIT);
    loading.value = false;
  } catch (e) {
    error.value = true;
  }
}

onMounted(() => {
  getChallenges();
});

</script>

<template>
  <section class="flex flex-col items-center px-8 pt-10 w-full bg-slate-900 md:pt-16 lg:px-56">
    <div class="flex flex-col items-center w-full md:items-start ">
      <h1 class="text-xl font-semibold text-center text-white md:text-3xl md:text-left ">
        ¿Quieres familiarizarte?
      </h1>
      <div class="pt-8 text-sm text-center text-white md:pt-5 md:text-lg md:text-left">
        Tenemos una recopilación de guías y desafíos que puedes intentar por tu cuenta por mientras
      </div>
    </div>
    <div
      v-if="!loading"
      class="flex overflow-x-auto flex-row pt-11 w-full md:grid md:grid-cols-3 md:gap-8"
    >
      <challenge-card
        v-for="challenge in challenges"
        :key="`challenge-cad-${challenge.id}`"
        :title="challenge.title"
        :kind="challenge.kind"
        :stack="challenge.stack"
        :difficulty="challenge.difficulty"
        :description="challenge.description"
        :link="challenge.link"
        :show-more="SHOW_MORE_CHALLENGES"
      />
    </div>
    <div class="py-16">
      <bichito-button
        test-id="show-more-button"
        v-if="SHOW_MORE_CHALLENGES"
        href="#challenges"
        theme="yellow"
      >
        Conocer más desafíos
      </bichito-button>
    </div>
  </section>
</template>
