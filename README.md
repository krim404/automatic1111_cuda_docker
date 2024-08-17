# Stable Diffusion WebUI Docker mit CUDA-Unterstützung

Dieses Repository enthält eine Docker-Konfiguration für die Stable Diffusion WebUI von AUTOMATIC1111 mit CUDA-Unterstützung. Die WebUI ermöglicht es, mithilfe von Stable Diffusion auf einfache Weise AI Bilder zu generieren.

## Voraussetzungen

- Docker mit CUDA-Unterstützung (Docker >= 19.03 und NVIDIA Container Toolkit)
- Eine unterstützte NVIDIA-Grafikkarte mit aktuellen Treibern und installiertem CUDA framework

## Verwendung

1. Klone dieses Repository:
   ```
   git clone https://git.krim.dev/library/automatic1111_cuda_docker.git
   cd automatic1111_cuda_docker
   ```

2. Passe die `docker-compose.yml` nach Bedarf an, z.B. um Port-Mappings oder Volumes zu ändern.

3. Starte den Container mit Docker Compose:
   ```
   docker-compose up -d
   ```

4. Öffne die WebUI in deinem Browser unter `http://localhost:7860` (oder dem von dir konfigurierten Port).

5. Um den Container zu stoppen, führe folgenden Befehl aus:
   ```
   docker-compose down
   ```

## Konfiguration

* Das Verzeichnis `stable-diffusion-webui` wird als Volume gemountet, um trainierte Modelle zwischen Container-Neustarts beizubehalten sowie alle Konfigurationen persistent vorzuhalten. 
* Es wird standardmäßig Port 7860 des Containers gemappt.

## Ressourcen

- [AUTOMATIC1111's Stable Diffusion WebUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
- [Stable Diffusion](https://stability.ai/blog/stable-diffusion-public-release)

## Lizenz

Dieses Projekt steht unter der [MIT-Lizenz](LICENSE).