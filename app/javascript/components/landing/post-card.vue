<script setup lang='ts'>
interface Props {
  title: string,
  image?: string,
  variant: string,
  bgCards: boolean,
}

withDefaults(defineProps<Props>(), {
  title: 'Actividad Bichito',
  image: undefined,
  variant: 'center',
  bgCards: false,
});

const variantStyles = {
  left: '-rotate-25 mt-32 lg:mt-44 hidden md:block',
  center: 'z-10',
  right: 'rotate-15 z-20 hidden md:block',
};

</script>

<template>
  <div class="flex relative flex-col w-full">
    <div v-if="bgCards">
      <div class="aspect-square absolute z-0 w-full bg-slate-200 rounded-3xl shadow-xl -rotate-25" />
      <div class="aspect-square absolute z-0 w-full bg-slate-100 rounded-3xl shadow-xl -rotate-12" />
    </div>
    <div
      class="flex relative flex-col items-center p-4 md:p-5 w-full h-max bg-white rounded-xl md:rounded-2xl lg:rounded-3xl border border-slate-100 shadow-2xl"
      :class="variantStyles[variant]"
    >
      <div class="aspect-21/20 flex flex-col p-4 mb-4 md:mb-6 w-full bg-slate-200 rounded-xl md:rounded-2xl lg:rounded-3xl " />
      <div class="w-full text-left text-slate-700 md:text-base lg:text-lg">
        {{ title }}
      </div>
    </div>
  </div>
</template>
