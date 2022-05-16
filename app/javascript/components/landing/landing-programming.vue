<template>
  <section class="container flex flex-col items-center px-4 mx-auto mt-28">
    <div class="flex flex-col items-center xl:w-7/12">
      <h2 class="mb-10 text-2xl font-semibold text-center text-slate-800 lg:text-4xl">
        ¿Qué puedes hacer programando?
      </h2>
    </div>
    <p class="w-10/12 lg:w-3/4 text-center">
      La programación te permitirá enfrentarte a problemas propios de la computación y resolverlos
      de una manera lógica con un lenguaje de programación como herramienta.
      De una forma práctica lograrás aprender gradualmente desde el tratamiento básico de
      variables hasta la programación de algoritmos para construir tus propios juegos.
    </p>
    <div class="relative mt-20">
      <div class="absolute -top-12 left-4 sm:left-12 sm:top-0">
        <p class="text-xs w-6/12 lg:w-6/12 font-light md:text-base">
          Programar nos permite crear interfaces, aplicaciones y esos
          programas que tanto usamos, es la <strong>forma en que le podemos hablar
          y dar instrucciones al computador</strong>
        </p>
      </div>
      <img
        :src="require('images/programming-example.svg')"
      >
    </div>
  </section>
</template>
