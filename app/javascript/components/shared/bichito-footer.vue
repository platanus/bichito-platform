<script setup lang='ts'>
</script>

<template>
  <div
    class="absolute inset-x-0 z-10 items-center pt-10 pb-20 bg-slate-900"
  >
    <div class="mx-10 md:flex md:justify-between md:mx-32 lg:mx-56">
      <div>
        <inline-svg
          class="mb-4 w-32 text-white lg:mb-10"
          :src="require('images/bichito-logo.svg')"
          alt="Logo Bichito"
        />
        <div class="flex text-slate-50">
          <p>
            Powered by
          </p>
          <inline-svg
            class="mb-10 w-32 text-white"
            :src="require('images/platanus-logo.svg')"
            alt="Logo Platanus"
          />
        </div>
      </div>
      <div>
        <p class="mb-2 text-xl font-medium text-slate-50">
          Contacto
        </p>
        <p class="text-sm text-slate-300">
          ¿Quieres saber más del proyecto?
        </p>
        <div class="flex text-slate-50">
          <p class="mr-1">
            Escríbenos a
          </p>
          <a
            href="mailto:bichito@platan.us"
            class="text-cyan-300"
          >
            bichito@platan.us
          </a>
        </div>
      </div>
    </div>
  </div>
</template>
