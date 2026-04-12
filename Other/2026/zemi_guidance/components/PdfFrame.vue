<script setup>
const props = defineProps({
  file: { type: String, required: true },
  height: { type: String, default: '400px' },
})

const base = import.meta.env.BASE_URL
const src = base.endsWith('/') ? base + props.file : base + '/' + props.file
</script>

<template>
  <iframe :src="src" class="w-full border-0" :style="`height: ${height}`" />
</template>
