<script setup lang='ts'>
import { ref } from 'vue';

const props = defineProps<{
  member: Member,
}>();

const hover = ref(false);
const image = props.member.image_url ?? require('images/default-avatar.png');

</script>

<template>
  <div
    class="box-border block relative p-1 w-64 h-52"
    @mouseover="hover =true"
    @mouseleave="hover = false"
  >
    <div
      :class="{ 'z-10 bg-white border-slate-200 border rounded-2xl drop-shadow-xl absolute': hover }"
    >
      <div class="flex flex-col items-center p-3 space-y-2 w-60 cursor-pointer">
        <img
          class="w-24 h-24"
          :src="image"
        >
        <div class="w-40 text-center">
          <p class="truncate">
            {{ member.name }}
          </p>
          <p class="text-slate-400 truncate">
            {{ member.role }}
          </p>
        </div>
        <div
          v-if="hover"
          class="text-sm text-center"
        >
          {{ member.description }}
        </div>
      </div>
    </div>
  </div>
</template>
