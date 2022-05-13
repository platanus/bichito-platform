<template>
  <section
    :style="`background-image: url('${require('../../../assets/images/yellow-background.png')}')`"
    class="px-10 my-0 bg-center bg-cover lg:h-screen lg:px-56"
  >
    <div class="container flex flex-col items-center pt-32 pb-32 lg:pt-48 lg:flex-row">
      <div class="flex-col space-y-10 lg:mr-20">
        <div class="space-y-4 text-center lg:text-left">
          <p class="lg:text-xl text-slate-500">
            Nuestra misión
          </p>
          <h2 class="text-3xl font-semibold lg:text-4xl text-slate-800">
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
        class="rounded-xl w-72 md:w-96"
        src="https://placehold.jp/347x347.png"
      >
    </div>
  </section>
</template>
