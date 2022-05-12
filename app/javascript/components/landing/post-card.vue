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
  left: '-rotate-25 mt-44',
  center: 'z-10',
  right: 'rotate-15 z-20',
};

</script>

<template>
  <div class="flex relative flex-col w-full">
    <div v-if="bgCards">
      <div class="aspect-square absolute z-0 w-full bg-slate-200 rounded-3xl shadow-xl -rotate-25" />
      <div class="aspect-square absolute z-0 w-full bg-slate-100 rounded-3xl shadow-xl -rotate-12" />
    </div>
    <div
      class="flex relative flex-col p-5 w-full h-max bg-white rounded-3xl border border-slate-100 shadow-2xl"
      :class="variantStyles[variant]"
    >
      <div class="aspect-21/20 flex flex-col p-4 mx-2 mb-6 w-full bg-slate-200 rounded-3xl lg:mx-0" />
      <div class="text-lg  text-slate-700">
        {{ title }}
      </div>
    </div>
  </div>
</template>
