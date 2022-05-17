<script setup lang='ts'>
import { computed } from 'vue';

const props = withDefaults(
  defineProps<{
    kind: string,
    stack: string,
    title: string,
    difficulty: string,
    description: string,
    link?: string,
    showMore?: boolean,
  }>(),
  {
    kind: 'challenge',
    stack: 'python',
    title: 'Pizzapp',
    difficulty: 'easy',
    description: '',
    link: '',
    showMore: false,
  },
);

const difficultyStyles = {
  easy: 'bg-green-100 text-green-800',
  medium: 'bg-yellow-100 text-yellow-800',
  hard: 'bg-red-100 text-red-800',
};

const difficultyNames = {
  easy: 'baja',
  medium: 'media',
  hard: 'alta',
};

const kindNames = {
  challenge: 'Desafío',
  homework: 'Guía',
};

const kindVariant = computed(() => kindNames[props.kind as keyof typeof kindNames]);
const difficultyVariant = computed(() => difficultyNames[props.difficulty as keyof typeof difficultyNames]);
const difficultyStyleVariant = computed(() => difficultyStyles[props.difficulty as keyof typeof difficultyStyles]);

</script>

<template>
  <div class="aspect-5/4 flex flex-col p-4 mx-2 space-y-4 min-w-[85%] bg-white rounded-3xl md:mx-0 md:w-full">
    <div class="flex flex-row justify-between w-full ">
      <div class="text-sm font-light text-gray-500">
        {{ kindVariant }}
      </div>
      <div class="flex flex-row">
        <img
          :src="require(`images/${stack}.png`)"
          class="mr-1 w-6 h-6 "
        >
        <div class="text-xs font-light text-gray-500">
          {{ stack }}
        </div>
      </div>
    </div>
    <div class="text-2xl text-slate-700">
      {{ title }}
    </div>

    <div
      class="px-2 my-1 w-max text-sm rounded-xl"
      :class="difficultyStyleVariant"
    >
      Dificultad {{ difficultyVariant }}
    </div>

    <div class="text-sm text-slate-400">
      {{ description }}
    </div>
    <div class="flex flex-col grow justify-end items-center">
      <bichito-button
        v-if="link && showMore"
        :href="link"
        target="_blank"
        theme="light"
        size="sm"
      >
        Comenzar desafío
      </bichito-button>
    </div>
  </div>
</template>
