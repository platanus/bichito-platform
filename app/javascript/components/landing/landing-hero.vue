<script setup lang='ts'>
</script>

<template>
  <section class="container flex relative flex-col items-center px-4 mx-auto mt-28 mb-10 space-y-12">
    <div class="flex flex-col items-center sm:w-8/12 xl:w-7/12">
      <h1 class="text-2xl font-semibold text-center text-slate-800 lg:text-4xl">
        Curso de programación para estudiantes de enseñanza media
      </h1>
    </div>
    <inline-svg
      :src="require('images/bee-path.svg')"
      class="absolute -top-10 -left-0 px-4 w-full sm:-top-12 sm:-left-12 lg:-top-4 lg:-left-20"
    />
    <img
      :src="require('images/code-picture.png')"
      class="z-20 w-9/12 sm:w-7/12 lg:w-6/12"
      alt="Consola con código de ejemplo"
    >
    <div class="z-10">
      <bichito-button
        href="#goals"
      >
        Conocer más del programa
      </bichito-button>
    </div>
  </section>
</template>
