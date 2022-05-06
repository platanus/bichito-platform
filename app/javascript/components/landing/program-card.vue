<script setup lang='ts'>

const props = defineProps<{
  program: ProgramTheme,
}>();

const icons = ['code-icon-rose', 'code-icon-purple',
  'code-icon-emerald', 'code-icon-orange', 'code-icon-blue'];

const value = props.program.order <= icons.length ?
  props.program.order - 1 : (props.program.order % icons.length);

</script>

<template>
  <div class="flex overflow-hidden flex-col justify-between p-4 space-y-7 w-96 h-72 bg-white border border-slate-200 lg:w-60 lg:h-64">
    <div class="flex overflow-hidden justify-between items-start">
      <div>
        <p class="text-sm text-slate-400">
          Tema {{ program.order }}
        </p>
        <p class="text-lg font-semibold text-slate-800">
          {{ program.title }}
        </p>
      </div>
      <img
        :src="require(`images/${icons[value]}.svg`)"
      >
    </div>
    <div class="line-clamp-6">
      <p class="text-sm">
        {{ program.description }}
      </p>
    </div>
    <p class="text-sm text-slate-400">
      Duración: {{ program.duration }}
    </p>
  </div>
</template>
