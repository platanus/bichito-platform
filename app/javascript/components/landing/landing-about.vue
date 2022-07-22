<template>
  <section
    :style="`background-image: url('${require('images/yellow-background.png')}')`"
    class="flex justify-center h-screen bg-center bg-cover"
  >
    <div class="flex flex-col items-center pt-40 w-9/12 md:pt-64 lg:flex-row lg:pt-0">
      <div class="flex-col space-y-10 lg:mr-20">
        <div class="space-y-4 text-center lg:text-left">
          <p class="text-slate-500 lg:text-xl">
            Nuestra misión
          </p>
          <h2 class="text-3xl font-semibold text-slate-800 lg:text-4xl">
            ¿Quienes somos?
          </h2>
        </div>
        <div class="pb-10 text-lg text-center text-slate-700 lg:text-left">
          Bichito es un proyecto que nace de las ganas de nuestro equipo de acercar a
          los estudiantes jóvenes a la programación. Por eso decidimos  impartir este
          curso de computación avanzada enfocado en alumnos que no tienen conocimientos
          previos, para que conozcan la programación como una herramienta y una posibilidad de
          camino a seguir en un futuro. Mostrándoles la lógica que existe detrás de la programación.
        </div>
      </div>
      <img
        class="w-72 rounded-xl shadow-xl md:w-96"
        :src="require('images/team.jpg')"
        alt="Equipo de Bichito"
      >
    </div>
  </section>
</template>
