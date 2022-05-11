<script setup lang='ts'>
interface Props {
  theme: string,
  size: string,
}
withDefaults(defineProps<Props>(), {
  theme: 'dark',
  size: 'md'
});

const styles = {
  dark: 'bg-slate-800 hover:bg-slate-700 text-white font-bold',
  yellow: 'bg-yellow-200 hover:bg-yellow-100 text-slate-800 font-bold',
  light: 'bg-white border-2 border-slate-200 text-slate-700',
  sm: 'p-2 text-xs',
  md: 'p-4 text-sm',
};

</script>

<template>
  <component
    :is="$attrs.href ? 'a' : 'button'"
    class="text-center rounded-full hover:shadow-lg sm:px-6 sm:text-base w-max"
    :class="[styles[theme], styles[size]]"
    v-bind="$attrs"
  >
    <slot />
  </component>
</template>
