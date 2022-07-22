<script setup lang='ts'>
import GoalCard from './goal-card.vue';

const props = defineProps<{
  goals: Goal[],
}>();

function width() {
  return window.innerWidth;
}

const icons = ['code-icon-rose', 'code-icon-purple',
  'code-icon-emerald', 'code-icon-orange', 'code-icon-blue'];

function goalIcon(index: number) {
  const iconsLength = icons.length;
  const iconNumber = index <= iconsLength ? index : ((index % iconsLength) - 1);

  return icons[iconNumber];
}

const mdScreenSize = 768;

const image = width() >= mdScreenSize ? 'bee-path-linear' : 'bee-path-linear-md';

</script>

<template>
  <section
    id="goals"
    class="flex justify-center pt-64 pb-10 sm:pt-0 md:mt-52 md:mb-28"
  >
    <div class="flex relative flex-col justify-center w-11/12 lg:pt-0 lg:w-9/12">
      <h2 class="pb-8 ml-4 text-3xl font-semibold text-slate-800 sm:text-4xl">
        Nuestros objetivos
      </h2>
      <div class="flex flex-col justify-center items-center space-y-12 w-full">
        <div class="grid z-40 gap-2 sm:grid-cols-2 lg:grid-cols-3">
          <goal-card
            v-for="(goal, index) in props.goals"
            :key="index"
            :goal="goal"
            :icon-name="goalIcon(index)"
          />
        </div>
      </div>
      <inline-svg
        :src="require(`images/${image}.svg`)"
        class="absolute -top-28 left-3 z-0 mt-4 w-10/12 rotate-[10deg] md:-top-32 md:-left-40 md:w-full md:rotate-0"
      />
    </div>
  </section>
</template>
