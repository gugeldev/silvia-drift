# Silvia Drift

Jogo de drift no navegador feito com [three.js](https://threejs.org/), em um único `index.html`. Sem build, sem dependências para instalar.

**▶ Jogar: https://gugeldev.github.io/silvia-drift/**

- Nissan Silvia S15 (drift) e Skyline R34 (carro de rua), cada um com som de motor próprio
- Física de drift com assistência estilo arcade (ou simulação pura, nas configurações)
- Pistas geradas com checkpoints, voltas cronometradas, parciais e fantasma da melhor volta
- Pontuação de drift com combo e multiplicador, minimapa
- Sandbox: um pátio gigante com rampas, saltos, contêineres e cones
- Dia, noite e chuva (pista molhada, gotas no carro e na lente, som de chuva gravado)
- Controle de PS4 / gamepad com gatilhos analógicos e vibração

## Como rodar

```sh
./serve.sh        # http://localhost:8000
./serve.sh 3000   # outra porta
```

Também abre direto do disco (`index.html` via `file://`): modelos e sons estão embutidos em base64 nos arquivos `.js`. É preciso internet para carregar o three.js e a fonte pelos CDNs.

## Controles

| Teclado | Controle (PS4) | Ação |
|---|---|---|
| W / S | R2 / L2 | acelera / freio (ré no automático) |
| A / D | analógico esquerdo | direção |
| — | analógico direito | olhar em volta |
| Espaço | ✕ | freio de mão |
| C | R1 | embreagem |
| E / Q | ○ / □ | sobe / reduz marcha (manual) |
| M | Share | câmbio automático / manual |
| V, 1–6 | L1 | câmera |
| R | △ | volta para o último checkpoint |
| L | ↑ | faróis |
| N | ↓ | ponto morto |
| K | → | chuva |
| T | — | trocar cenário |
| Esc | Options | menu |
| H | — | mostra as teclas |

No menu: ←/→ escolhe o carro, L1/R1 o mapa, △ dia/noite, □ chuva, ✕ joga.

## Créditos

Obras de terceiros cujas licenças exigem atribuição. Cada uma continua sob a sua própria licença (não sob a MIT do código). Os arquivos foram reempacotados (glTF-Transform, Ogg Vorbis, base64) e os sons recortados e transformados em loops; o cabeçalho de cada arquivo em `models/` e `audio/` descreve o que foi feito.

### Modelos 3D

| Arquivo | Obra | Autor | Licença |
|---|---|---|---|
| `models/s15.glb.js` | [Mona Lisa 2001 C-West Silvia S15 Tokyo Drift](https://sketchfab.com/3d-models/mona-lisa-2001-c-west-silvia-s15-tokyo-drift-d245775196204c3393bd368773c0ce12) | [Ddiaz Design](https://sketchfab.com/ddiaz-design) | [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) |
| `models/r34.glb.js` | [Nissan R34 Brians Fast Furious](https://sketchfab.com/3d-models/nissan-r34-brians-fast-furious-wwwvecarzcom-412aa249c2f548eebf64bdb35f3553af) | [vecarz](https://sketchfab.com/heynic) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |
| `models/track.glb.js` | [Drift Race Track Free](https://sketchfab.com/3d-models/drift-race-track-free-b4108132c93f4736957d97e274fbd11e) | [Nicholas-3D](https://sketchfab.com/Nicholas01) | [CC BY-ND 4.0](https://creativecommons.org/licenses/by-nd/4.0/) |

### Sons

| Arquivo | Obra | Autor | Licença |
|---|---|---|---|
| `audio/engine-samples.js`, `audio/engine-v8.js` | loops de motor do projeto [engine-audio](https://github.com/markeasting/engine-audio) | Copyright (c) 2025 Mark Oosting (markeasting) | [MIT](https://github.com/markeasting/engine-audio/blob/main/LICENSE) |
| `audio/engine-r34.js` | [Nissan Skyline GT-R - engine and exhaust sound (YouTube NpqxDM7pejs)](https://commons.wikimedia.org/wiki/File:Nissan_Skyline_GT-R_-_engine_and_exhaust_sound_(YouTube_NpqxDM7pejs).opus) | LowFps | [CC BY 3.0](https://creativecommons.org/licenses/by/3.0/) |
| `audio/engine-r34.js` | [Nissan Skyline R34 - engine and exhaust sound (YouTube 2L4tuUZNQ Q)](https://commons.wikimedia.org/wiki/File:Nissan_Skyline_R34_-_engine_and_exhaust_sound_(YouTube_2L4tuUZNQ_Q).opus) | ApelSINKA | [CC BY 3.0](https://creativecommons.org/licenses/by/3.0/) |
| `audio/rain.js` | [Falling Rain SFX 1 2016-11-19.oga](https://commons.wikimedia.org/wiki/File:Falling_Rain_SFX_1_2016-11-19.oga) | valvalion | [CC BY 3.0](https://creativecommons.org/licenses/by/3.0/) |
| `audio/rain.js` | [Sound of light rainfall.ogg](https://commons.wikimedia.org/wiki/File:Sound_of_light_rainfall.ogg) | Mijesty | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) |

Nissan, Silvia, Skyline e os logotipos que aparecem nos modelos pertencem aos seus donos; este é um projeto de fã, sem vínculo com eles.

## Licença

O código (`index.html`, `serve.sh`) é [MIT](LICENSE): pode baixar, usar, alterar e redistribuir à vontade.

Os modelos e sons seguem as licenças listadas em [Créditos](#créditos). Como o modelo do S15 é CC BY-NC-SA 4.0, o projeto com ele incluído não pode ser usado comercialmente.
