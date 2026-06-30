<script setup lang="ts">
defineProps<{
    index: number,
    years: string,
    title: string,
    description: string,
}>()
</script>

<template>
    <div class="flex justify-between items-center size-full text-left p-4 gap-8
                border border-gray-800 rounded-lg shadow-md"
        :class="{ 'bg-gray-500': index % 2 === 0, 'bg-gray-600': index % 2 !== 0 }">
        <div class="w-32 text-sky-400 text-sm">{{ years }}</div>
        <div class="w-96 text-lg font-semibold">{{ title }}</div>
        <div class="w-full text-gray-300 text-sm">{{ description }}</div>
    </div>
</template>
