# ⚡ ComfyUI Pro — SageAttention + Nunchaku + LoRA Training

**The fastest, most complete ComfyUI on RunPod.** Pre-configured with SageAttention 2.0 (3x faster attention), Nunchaku v1.2 (4-bit quantized inference), and AI Toolkit for browser-based LoRA training. Deploy and generate in minutes — zero setup required.

---

## 🚀 What You Get

- **ComfyUI** — Latest stable, auto-updated on every boot
- **SageAttention 2.0** — Up to 3x faster attention kernels (INT4/FP8 quantization)
- **Nunchaku v1.2** — 4-bit inference for FLUX.1, SDXL, Qwen-Image, Z-Image (2–3x speedup)
- **AI Toolkit** — Train LoRAs for FLUX, SD 3.5, SDXL, Wan 2.2 in your browser (port 8675)
- **JupyterLab** — Full terminal & system access (port 8888)
- **FileBrowser** — Drag-and-drop model uploads (port 8080)
- **5 Custom Nodes Pre-Installed** — Manager, Crystools, Nunchaku, HF Downloader, Civicomfy

## 🎬 Supported Models & Workflows

| Workflow | Models |
|----------|--------|
| Text-to-Image | FLUX.1, SD 3.5, SDXL, Qwen-Image, Z-Image |
| Image Editing | FLUX.1-Kontext, Qwen-Image-Edit |
| Text-to-Video | WanVideo 2.1/2.2 (14B & 1.3B), HunyuanVideo |
| Image-to-Video | WanVideo I2V, HunyuanVideo I2V |
| LoRA Training | FLUX, SD 3.5, SDXL, Wan 2.2 |
| 4-Bit Inference | All Nunchaku quantized models |

## 🖥️ Recommended GPUs

| GPU | VRAM | Best For |
|-----|------|----------|
| **A40** | 48 GB | Training + large models |
| **RTX 4090** | 24 GB | Fast image generation |
| **RTX 3090** | 24 GB | Budget-friendly |
| **L40 / L40S** | 48 GB | Enterprise workloads |
| **A100 / H100** | 80 GB | Video generation + max throughput |

## 🔌 Ports

| Port | Service |
|:----:|---------|
| **8188** | ComfyUI (Main Interface) |
| **8888** | JupyterLab |
| **8080** | FileBrowser |
| **8675** | AI Toolkit (LoRA Training) |

## ⚙️ Environment Variables (Optional)

| Variable | Description |
|----------|-------------|
| `HF_TOKEN` | HuggingFace token for gated models |
| `CIVITAI_TOKEN` | Civitai API token |
| `COMFYUI_BACKUP` | HF repo ID for backup/restore (e.g. `user/my-backup`) |
| `RESTORE_BACKUP` | Set to `1` to restore on first boot |

## ⚡ Quick Start

1. Deploy on an A40, RTX 4090, or any supported GPU
2. Wait ~3–5 min for first boot (live progress page shown)
3. Connect → **HTTP Service (Port 8188)** → Start generating!

> All data persists in `/workspace` — models, outputs, custom nodes, and settings survive restarts.

---

*Docker Image: `aijubied/comfyui-nunchaku-sage:latest`*
*[📖 Full Documentation on GitHub](https://github.com/ai-jubied/comfyui-nunchaku-sage-v1) • Built by aijubied*
