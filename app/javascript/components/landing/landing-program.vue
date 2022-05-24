<script setup lang='ts'>
import { computed, ref } from 'vue';
import ProgramCard from './program-card.vue';
import BichitoButton from '../shared/bichito-button.vue';

const props = defineProps<{
  programThemes: ProgramTheme[],
}>();

const minDisplay = 5;
const display = ref(minDisplay);

const programThemesList = computed(() => props.programThemes.slice(0, display.value));
</script>

<template>
  <div
    id="program"
    class="relative pt-80 pb-16 mx-auto sm:px-0 sm:pt-0"
  >
    <div class="flex relative items-center mb-12 lg:mb-16">
      <h2 class="px-8 text-3xl font-semibold text-slate-800 md:px-12 lg:px-40 lg:text-4xl">
        El programa
      </h2>
      <div>
        <inline-svg
          :src="require('images/bee-path-linear.svg')"
          class="absolute top-4 right-0 mt-4 w-72 md:object-fill md:-bottom-60 md:w-2/3 lg:-top-16"
        />
      </div>
    </div>
    <div class="flex flex-col justify-center items-center space-y-12">
      <div class="flex flex-wrap justify-center items-center">
        <program-card
          v-for="program in programThemesList"
          :key="program.order"
          :program="program"
        />
      </div>
      <div
        v-if="programThemes.length !== minDisplay"
      >
        <div
          v-if="display === minDisplay"
          class="flex flex-col justify-center items-center space-y-6"
        >
          <div class="text-2xl text-slate-700">
            Y mucho más!
          </div>
          <bichito-button
            @click="display = programThemes.length"
          >
            Ver programa completo
          </bichito-button>
        </div>
        <bichito-button
          v-else
          @click="display = minDisplay"
        >
          Ver menos
        </bichito-button>
      </div>
    </div>
  </div>
</template>
