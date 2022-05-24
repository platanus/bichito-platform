<script setup lang='ts'>
</script>

<template>
  <section class="container flex flex-col items-center px-4 mx-auto mt-28 mb-10">
    <div class="flex flex-col items-center sm:w-8/12 xl:w-7/12">
      <h1 class="mb-48 text-2xl font-semibold text-center text-slate-800 sm:mb-12 lg:text-4xl">
        Curso de programación para estudiantes de enseñanza media
      </h1>
    </div>
    <inline-svg
      :src="require('images/bee-path.svg')"
      class="absolute top-48 left-0 px-4 w-full sm:top-36 md:w-11/12 lg:top-24 lg:left-10 lg:w-10/12"
    />
    <img
      :src="require('images/code-picture.png')"
      class="absolute top-52 w-9/12 sm:w-7/12 lg:w-6/12"
    >
    <div class="sm:mt-48 xl:mt-80 2xl:mt-96">
      <bichito-button
        href="#program"
      >
        Conocer más del programa
      </bichito-button>
    </div>
  </section>
</template>
