<script setup lang="ts">
defineProps<{
    index: number,
    years: string,
    title: string,
    description: string,
}>()
</script>

<template>
    <div class="flex justify-between items-center size-full text-left p-4 gap-2
                border border-gray-800 rounded-lg shadow-md"
        :class="{ 'bg-gray-500': index % 2 === 0, 'bg-gray-600': index % 2 !== 0 }">
        <div class="flex flex-col gap-4 w-64">
            <span>{{ title }}</span>
            <span class="text-gray-300 text-sm">{{ years }}</span>
        </div>
        <div class="w-full text-gray-300 text-sm">
            <span>{{ description }}</span>
        </div>
    </div>
</template>
