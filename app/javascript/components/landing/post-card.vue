<script setup lang='ts'>
import { computed } from 'vue';

const props = withDefaults(
  defineProps<{
    title: string,
    imageUrl?: string,
    variant: string,
  }>(),
  {
    title: 'Actividad Bichito',
    imageUrl: undefined,
    variant: 'center',
  },
);

const variantStyles = {
  left: '-rotate-25 mt-32 lg:mt-44 hidden md:block',
  center: 'z-10',
  right: 'rotate-15 z-20 hidden md:block',
};

const currentVariant = computed(() => variantStyles[props.variant as keyof typeof variantStyles]);
</script>

<template>
  <div class="flex relative flex-col w-full">
    <div v-if="variant === 'center'">
      <div class="aspect-square absolute z-0 w-full bg-slate-200 rounded-3xl shadow-xl -rotate-25" />
      <div class="aspect-square absolute z-0 w-full bg-slate-100 rounded-3xl shadow-xl -rotate-12" />
    </div>
    <div
      class="flex relative flex-col items-center p-4 w-full h-max bg-white rounded-xl border border-slate-100 shadow-2xl md:p-5 lg:rounded-2xl"
      :class="currentVariant"
    >
      <img
        v-if="imageUrl"
        :src="imageUrl"
        class="aspect-21/20 flex object-cover flex-col mb-4 w-full rounded-2xl md:mb-6 "
      >
      <div
        v-else
        class="aspect-21/20 flex flex-col p-4 mb-4 w-full bg-slate-200 rounded-xl md:mb-6 md:rounded-2xl "
      />
      <div class="w-full text-left text-slate-700 md:text-base lg:text-lg">
        {{ title }}
      </div>
    </div>
  </div>
</template>
