<script setup lang='ts'>
</script>

<template>
  <component
    :is="$attrs.href ? 'a' : 'button'"
    class="p-4 text-sm font-bold text-white rounded-full bg-slate-800 hover:bg-slate-700 hover:shadow-lg sm:px-6 sm:text-base"
    v-bind="$attrs"
  >
    <slot />
  </component>
</template>
