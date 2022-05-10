<script setup lang='ts'>
import ChallengeCard from './challenge-card.vue';

const challenges = [
  { id: 1,
    title: 'Pizzapp',
    stack: 'python',
    level: 'easy',
    description:
      `Programarás una aplicación para pedir pizza y calcular cuánto debe pagar cada persona.
      ¡Usando operaciones matemáticas y prints te asegurarás de que todos paguen!`,
  },
  { id: 2,
    title: 'Chatbot',
    stack: 'python',
    level: 'medium',
    description:
      `Crearás un chatbot que salude, cuente chistes y ser ría.
      ¡Aplicando tus conocimientos de inputs y prints tu chatbot será chistoso!`,
  },
  { id: 3,
    title: 'PrograEats',
    stack: 'python',
    level: 'hard',
    description:
      `Programarás el menú de una app de comida rápida.
      ¡Usando condicionales if, elif y else podrás pedir tu comida favorita!`,
  },
];

</script>

<template>
  <section class="flex flex-col items-center px-8 pt-10 w-full bg-slate-900 lg: lg:px-56 lg:pt-16">
    <div class="flex flex-col items-center w-full lg:items-start ">
      <h1 class="text-xl font-semibold text-center text-white lg:text-3xl lg:text-left ">
        ¿Quieres familiarizarte?
      </h1>
      <div class="pt-8 text-sm text-center text-white lg:pt-5 lg:text-lg lg:text-left">
        Tenemos una recopilación de guías y desafíos que puedes intentar por tu cuenta por mientras
      </div>
    </div>
    <div class="flex overflow-x-auto flex-row pt-11 w-full lg:grid lg:grid-cols-3 lg:gap-8">
      <challenge-card
        v-for="challenge in challenges"
        :key="`challenge-cad-${challenge.id}`"
        :title="challenge.title"
        :stack="challenge.stack"
        :level="challenge.level"
        :description="challenge.description"
      />
    </div>
    <div class="py-16">
      <bichito-button
        href="#challenges"
        theme="yellow"
      >
        Conocer más desafíos
      </bichito-button>
    </div>
  </section>
</template>
