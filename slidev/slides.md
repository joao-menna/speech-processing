---
theme: dracula
comark: true
transition: slide-up
layout: default
---

<div class="flex gap-12 items-center h-full">
  <div class="text-left">
    <h1 class="">Reconhecimento de Voz</h1>
    <h2 class="text-sky-500">& Síntese de Fala (TTS)</h2>
    <span>Inteligência Artificial</span>
  </div>
  <div>
    <p>Alunos:</p>
    <ul>
      <li>Ana Luisa Milchert</li>
      <li>Andrey Garcia dos Santos</li>
      <li>Henrique Maia Cardosa</li>
      <li>Graziela Torres</li>
      <li>João Miguel de Castro Menna</li>
      <li>Ricardo Gabriel Fialho Santos</li>
      <li>Sophia Eggert Freire da Rocha</li>
    </ul>
  </div>
</div>

<style>
  h2 {
    color: #38bdf8 !important;
  }
</style>

---
transition: slide-up
---

# Roteiro

<Toc columns="2" />

---
transition: slide-up
title: Motivação e Aplicações
---

# Por que voz?

- Interface mais natural: humanos falam ~150 palavras/min vs ~40 palavras/min digitando
- Acurácia humana em conversas: acima de 95%
- Mais de 8 bilhões de dispositivos com assistentes de voz no mundo
- Mercado estimado em US$ 26 bilhões até 2026, crescendo 17% ao ano
- Aplicações: Alexa, Siri, Google Assistant, transcrição automática, URA, acessibilidade

---
transition: slide-up
title: O que é ASR - Reconhecimento Automático de Fala
---

# Reconhecimento Automático de Fala (ASR)

<span class="text-sky-500 font-bold">Pipeline básico:</span>

<div class="flex items-center gap-4 mt-4">
  <PipelineCard>Áudio bruto</PipelineCard>
  <ArrowRight />
  <PipelineCard>Extração de features</PipelineCard>
  <ArrowRight />
  <PipelineCard>Modelo acústico</PipelineCard>
  <ArrowRight />
  <PipelineCard>Modelo linguístico</PipelineCard>
  <ArrowRight />
  <PipelineCard>Texto</PipelineCard>
</div>

<br />

- Converte áudio em texto usando modelos probabilísticos ou neurais
- Features mais usadas: MFCC (Mel-Frequency Cepstral Coefficients)
- Modelo acústico: aprende a relação entre som e fonemas
- Modelo linguístico: garante coerência gramatical do texto gerado

---
transition: slide-up
layout: two-cols-header
---

# Processamento do Sinal de Áudio

::left::

<span class="text-sky-500">Amostragem e Features</span>

- Taxa de amostragem: 16 kHz (telefone), 44.1 kHz (HD)
- Teorema de Nyquist: fs >= 2 * fmax
- MFCC: imita a percepção auditiva humana (escala Mel)
- Espectrograma: visualização de frequências ao longo do tempo
- Modelos externos usam espectrogramas como "imagem de áudio"

::right::

<span class="text-sky-500">Pré-processamento</span>

- VAD - Voice Activity Detection: separa fala de silêncio
- Cancelamento de eco (AEC)
- Supressão de ruído (filtro de Wiener)
- Normalização de volume (AGC)
- Janelamento (Hamming Window) antes da FFT para reduzir vazamento espectral

---
transition: slide-up
---

# Evolução dos Modelos de ASR

<div class="flex flex-col gap-4 mt-4">
  <ModelEvolutionNode index="1" years="1950-1980" title="Baseado em regras" description="Templates e DTW - vocabulário muito limitado" />
  <ModelEvolutionNode index="2" years="1980-2000" title="HMM + GMM" description="Modelos estatísticos - base da maioria dos sistemas comerciais" />
  <ModelEvolutionNode index="3" years="2010+" title="DNN Híbrida" description="Redes neurais substituem GMM - grande salto de acurácia" />
  <ModelEvolutionNode index="4" years="2015+" title="End-to-End Neural (CTC)" description="CTC e RNN-T - modelo aprende direto do áudio ao texto" />
  <ModelEvolutionNode index="5" years="2022+" title="Transformers - Whisper" description="OpenAI Whisper Wav2Vec 2.0 - multilíngue, robusto, open-source" />
</div>

---
transition: slide-up
level: 2
---

# Arquiteturas Modernas de ASR

- CTC (Connectionist Temporal Classification): treina sem alinhamento manual entre áudio e texto
- Attention Encoder-Decoder: encoder processa áudio, decoder gera texto com mecanismo de atenção
- Wav2Vec 2.0 (Meta): aprendizado auto-supervisionado - treina sem dados anotados
- Whisper (OpenAI, 2022): transformer treinado em 680k horas; suporta 99 idiomas, incluindo Português Brasileiro
- Whisper é open-source - pode rodar localmente com uma GPU modesta

---
transition: slide-up
level: 2
---

# Como Avaliar um Sistema ASR - WER

<WerCard />

---
transition: slide-up
title: Exemplo prático de ASR
---

<div class="relative size-full">
  <iframe class="absolute inset-0 w-full h-full" src="http://localhost:5173" allow="microphone"></iframe>
</div>

---
transition: slide-up
class: text-center
layout: center
---

<h1>Text-to-Speech (TTS)</h1>
<span class="text-sky-500 text-4xl">Síntese de Fala</span>


---
transition: slide-up
---

# Síntese de Fala (TTS)

<span class="text-sky-500 font-bold">Pipeline básico:</span>

<div class="flex items-center gap-4 mt-4">
  <PipelineCard>Texto bruto</PipelineCard>
  <ArrowRight />
  <PipelineCard>Análise linguística</PipelineCard>
  <ArrowRight />
  <PipelineCard>Modelo acústico</PipelineCard>
  <ArrowRight />
  <PipelineCard>Vocoder</PipelineCard>
  <ArrowRight />
  <PipelineCard>Áudio</PipelineCard>
</div>

<br />

- Análise linguística: normaliza texto (ex: "Dr." -> "Doutor"), define pronúncia e prosódia
- Modelo acústico: gera representação espectral da fala (mel-espectrograma)
- Vocoder: coverte o espectrograma em áudio real (WaveNet, HiFi-GAN)

---
transition: slide-up
---

# Evolução das Abordagens de TTS

<div class="flex flex-col gap-4 mt-4">
  <ModelEvolutionNodeTTS index="1" years="1990-2000" title="Concatenativa" description="Natural em domínio fechado; banco de voz enorme; soa robótico em frases novas" />
  <ModelEvolutionNodeTTS index="2" years="2000-2010" title="Paramétrica (HMM)" description="Menor footprint; controlável; qualidade inferior ao concatenativo" />
  <ModelEvolutionNodeTTS index="3" years="2017+" title="Neural E2E" description="Tacotron, FastSpeech - voz natural e expressiva; exige dados de treino" />
  <ModelEvolutionNodeTTS index="4" years="2023+" title="Zero-Shot" description="Clona qualquer voz com apenas segundos de áudio - XTTS, VALL-E, ElevenLabs" />
</div>

---
transition: slide-up
layout: two-cols-header
---

# Modelos Neurais de TTS

::left::

<span class="text-sky-500">Tacotron 2 (Google, 2018)</span>

- Arquitetura Seq2Seq com mecanismo de atenção
- Encoder: texto -> embeddings
- Decoder: gera mel-espectrograma frame a frame
- Vocoder: WaveNet converte espectrograma em áudio
- Limitação: geração autoregressiva - lenta

::right::

<span class="text-sky-500">FastSpeech (Microsoft, 2021)</span>

- Feed-Forward Transformer - não autoregressivo
- 50x mais rápido que Tacotron em inferência
- Controla pitch, duração e energia explicitamente
- Permite ajustar velocidade, tom e volume por fonema
- Base do Coqui TTS e outros sistemas open-source

---
transition: slide-up
layout: two-cols-header
---

# Clonagem de Voz & Deepfakes

::left::

<span class="text-sky-500">Como funciona</span>

- Speaker Encoder: extrai a "impressão digital" da voz (d-vector)
- TTS Condicional: gera fala com as características dessa voz
- Precisa de apenas 3-30 segundos de áudio
- Modelos: VALL-E (Microsoft), XTTS-v2, ElevenLabs, OpenVoice

::right::

<span class="text-sky-500">Riscos e contra-medidas</span>

- Fraudes telefônicas (golpe do "sequestro")
- Manipulação política - discursos falsos
- Evidências forjadas em processos judiciais
- Contra-medidas: detecção anti-spoofing, watermarking de áudio e legislação

---
transition: slide-up
---

# Desafios Técnicos

- Multilinguismo: modelos performam muito pior em idiomas com poucos dados
- Ambientes ruidosos: ruído de fundo, eco e compressão degradam a acurácia
- Variabilidade de falantes: crianças, sotaques e ritmos atípicos ainda são difíceis
- Latência: ASR em tempo real precisa de < 300ms - modelos grandes são lentos
- Privacidade: assistentes de nuvem gravam e enviam áudio; soluções on-device ganham espaço
- Dados escassos: aprendizado semi-supervisionado (Wav2Vec 2.0) ajuda idiomas de baixo recurso

---
transition: slide-up
layout: two-cols-header
---

# Ferramentas Práticas

::left::

<span class="text-sky-500">ASR</span>

- OpenAI Whisper - open source, pt-BR, roda local
- Vosk - offline, leve, mobile-friendly
- Wav2Vec 2.0 - via Hugging Face Transformers
- Google Cloud Speech-to-Text (API comercial)
- Amazon Transcribe (AWS)

::right::

<span class="text-sky-500">TTS</span>

- Coqui TTS - VITS e XTTS-v2, open source
- edge-tts - voz neural da Microsoft via Python
- Bark (Suno) - síntese expressiva com emoções
- Google Cloud Text-to-Speech (API comercial)
- ElevenLabs - Clonagem de voz state-of-art

---
transition: slide-up
title: Exemplo prático de TTS
---

<div class="relative size-full">
  <iframe class="absolute inset-0 w-full h-full" src="http://localhost:3000"></iframe>
</div>

---
transition: slide-up
---

# Tendências e Futuro

- GPT-4o: processa áudio diretamente, sem pipeline separado de ASR + TTS
- Modelos multimodais unificados - voz, visão e texto num único modelo
- TTS expressivo com emoções dinâmicas e personas personalizadas por usuário
- ASR universal: um único modelo para todos os idiomas e sotaques com > 99% de acurácia
- Processamento on-device: privacidade sem abrir mão da qualidade
- Regulamentação de deepfakes de voz - tema urgente em legislações ao redor do mundo

---
transition: slide-up
---

# Recapitulando

- ASR converte áudio em texto via extração de features (MFCC) + modelos neurais (Transformer)
- TTS converte texto em fala natural via análise linguística + vocoder neural
- Whisper (ASR) e FastSpeech / VITS (TTS) são os principais modelos open source hoje
- Clonagem de voz zero-shot é tecnologia real - levanta sérios desafios éticos
- O futuro aponta para modelos multimodais unificados sem pipelines separados

---
transition: slide-up
layout: center
class: text-center
---

# Créditos

Whisper-Web: <a href="https://github.com/xenova/whisper-web" target="_blank" referrerpolicy="noreferrer noopener">https://github.com/xenova/whisper-web</a>

tts.rocks: <a href="https://github.com/steveseguin/tts.rocks" target="_blank" referrerpolicy="noreferrer noopener">https://github.com/steveseguin/tts.rocks</a>

Framework de apresentação: <a href="https://sli.dev" target="_blank" referrerpolicy="noreferrer noopener">https://sli.dev</a>

<PoweredBySlidev mt-10 />
