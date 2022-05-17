<script setup lang='ts'>
import { computed } from 'vue';

const props = withDefaults(
  defineProps<{
    theme?: string,
    size?: string,
  }>(),
  {
    theme: 'dark',
    size: 'md',
  },
);

const styles = {
  dark: 'bg-slate-800 hover:bg-slate-700 text-white font-bold',
  yellow: 'bg-yellow-200 hover:bg-yellow-100 text-slate-800 font-bold',
  light: 'bg-white border-2 border-slate-200 text-slate-700',
  sm: 'p-2 text-xs',
  md: 'p-4 text-xl',
};

const sizeVariant = computed(() => styles[props.size as keyof typeof styles]);
const styleVariant = computed(() => styles[props.theme as keyof typeof styles]);

</script>

<template>
  <component
    :is="$attrs.href ? 'a' : 'button'"
    class="w-max text-center rounded-full hover:shadow-lg sm:px-6 sm:text-base"
    :class="[sizeVariant, styleVariant]"
    v-bind="$attrs"
  >
    <slot />
  </component>
</template>
