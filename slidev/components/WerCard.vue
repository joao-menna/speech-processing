<script setup lang="ts">
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
</script>

<template>
    <div class="flex flex-col gap-4">
        <div class="bg-gray-600 w-full text-center text-sm flex flex-col
                    items-start justify-center border border-gray-500 gap-4
                    rounded-lg shadow-md px-4 py-5">
            <span class="text-lg font-bold">WER = (Substituições + Deleções + Inserções) / Total de palavras * 100%</span>
            <span class="text-sm text-gray-300">Ex.: referência = 5 palavras, 1 substituição -> WER = 20%</span>
        </div>
        <table>
            <thead>
                <tr>
                    <th class="font-bold">Modelo</th>
                    <th class="font-bold">WER % (LibriSpeech)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="text-center">Humano</td>
                    <td class="text-center">5.1%</td>
                </tr>
                <tr>
                    <td class="text-center">Whisper Large</td>
                    <td class="text-center">4.2% <FontAwesomeIcon icon="fa-solid fa-check" /></td>
                </tr>
                <tr>
                    <td class="text-center">Google STT</td>
                    <td class="text-center">6.3%</td>
                </tr>
                <tr>
                    <td class="text-center">Wav2Vec 2.0</td>
                    <td class="text-center">8.6%</td>
                </tr>
                <tr>
                    <td class="text-center">DeepSpeech</td>
                    <td class="text-center">12.1%</td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<style scoped>
th {
    text-align: center;
}
</style>
