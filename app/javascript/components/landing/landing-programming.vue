<template>
  <section class="flex flex-col items-center py-16 bg-slate-900">
    <div class="flex flex-col items-center xl:w-7/12">
      <h2 class="mb-10 text-2xl font-semibold text-center text-slate-50 lg:text-4xl">
        ¿Qué puedes hacer programando?
      </h2>
    </div>
    <p class="w-10/12 text-center text-slate-100 lg:w-3/4">
      La programación te permitirá enfrentarte a problemas propios de la computación y resolverlos
      de una manera lógica con un lenguaje de programación como herramienta.
      De una forma práctica lograrás aprender gradualmente desde el tratamiento básico de
      variables hasta la programación de algoritmos para construir tus propios juegos.
    </p>
    <div class="relative mt-20">
      <div class="absolute -top-12 left-4 text-slate-100 sm:top-0 sm:left-12">
        <p class="w-6/12 text-xs font-light md:text-base lg:w-6/12">
          Programar nos permite crear interfaces, aplicaciones y esos
          programas que tanto usamos, es la <strong>forma en que le podemos hablar
            y dar instrucciones al computador</strong>
        </p>
      </div>
      <img
        :src="require('images/programming-example.svg')"
        alt="Ejemplo de código animado"
      >
    </div>
  </section>
</template>
