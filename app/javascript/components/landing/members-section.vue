<script setup lang='ts'>
import { computed } from 'vue';
import MemberCard from './member-card.vue';

const props = defineProps<{
  members: Members,
}>();

const members = computed(() => props.members.members);
</script>

<template>
  <div class="flex flex-col justify-center items-center space-y-4 sm:mx-24">
    <h2 class="mb-10 text-2xl font-semibold text-center text-slate-800 lg:text-4xl">
      Conoce al equipo
    </h2>
    <div class="flex flex-wrap justify-center items-center">
      <member-card
        v-for="member in members"
        :key="member.id"
        :member="member"
      />
    </div>
  </div>
</template>
