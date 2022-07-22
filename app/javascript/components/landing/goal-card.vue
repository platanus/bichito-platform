<script setup lang='ts'>

defineProps<{
  goal: Goal,
  iconName: string,
}>();

</script>

<template>
  <div class="flex items-center p-6 m-3 w-full h-28 bg-white rounded-xl border border-slate-200 shadow-xl md:flex-col md:items-start md:mr-3 md:space-y-3 md:h-48">
    <inline-svg
      :src="require(`images/${iconName}.svg`)"
      class="flex-none mr-4 w-12 h-12"
    />
    <p class="text-slate-800 md:text-xl">
      {{ goal.title }}
    </p>
  </div>
</template>
